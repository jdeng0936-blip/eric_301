#include "menu.h"
#include "st7565r_lcd.h"
#include "eric_driver.h"
#include "eric_proc.h"

#include "string.h"


void DspOne(void);
void DspOne_Plus(void);
void DspTwo(void);
void DspTwo_Plus(void);
void DspThree(void);
void DspFour(void);
void DspSix(void);
void Left_Four(void);
void Right_Four(void);
void DspFive(void);
void Up_Five(void);
void Down_Five(void);
void Left_Five(void);
void Right_Five(void);
void Menu_Five(void);
void Show_Phase_Rec(void);
void show_datetime(void);
void Menu_Four(void);
void Sys_Reset(void);


volatile uint8_t menu_index=4;	  //按键转向值
//菜单表
const TMenuStruct MenuTab[MENU_NUM]=
{
    { 0,  0,  0,  7,  1,  5,  DspOne,0,0,0,0,0},        //显示第一层第一个菜单，ABC总数统计
    { 1,  1,  1,  0,  2,  5,  DspOne_Plus,0,0,0,0,0},   //显示第一层第一个菜单，ABC总数统计
    { 2,  2,  2,  1,  3,  5,  DspTwo,0,0,0,0,0},        //显示第一层第二个菜单，AD\BD\CD\AB\BC\BC 统计
    { 3,  3,  3,  2,  4,  5,  DspTwo_Plus,0,0,0,0,0},   //显示第一层第二个菜单，AD\BD\CD\AB\BC\BC 统计
    { 4,  4,  4,  3,  7,  6,  DspThree,0,0,0,0,0},	   //显示第一层第三个菜单，时间显示

    { 5,  5,  5,  5,  5,  0,  DspFour,0,0,Left_Four,Right_Four,Menu_Four}, //第一、二个菜单回车后的操作，历史记录回顾，100条
    { 6,  6,  6,  6,  6,  4,  DspFive,Up_Five,Down_Five,Left_Five,Right_Five,Menu_Five},//时间设定
    { 7,  7,  7,  4,  0,  7,  DspSix,0,0,0,0,0},        // 第8屏 RS485 通信状态
};

TAdjust adjustdt=
{
    .index = 0,
    .dt = {24,1,1,0,0,0,0,0,0,1,0,0},
    .pos ={{1,41},{1,65},{1,89},{3,25},{3,49},{3,73}, {5,57},{5,73},{5,89},{5,105}, {7,94},{3,105}}
};

char datestr[16];
char timestr[16];
char tempstr[16];
uint8_t delay_halt=HALT_TIMEOUT;
uint8_t language=0;

void Menu_Proc(uint8_t Keyvalue,uint32_t phalen)
{
    static uint8_t i,last_menu=99;
    static uint8_t disp_tag=0,key_val=0;

    if(disp_tag)
    {
        disp_tag--;
        if(disp_tag==0)
        {
            delay_halt=HALT_TIMEOUT;
            GPIO_Init(GPIOB,GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|GPIO_Pin_5|GPIO_Pin_6|GPIO_Pin_7,GPIO_Mode_Out_PP_High_Fast);//LCD
            LCD_BKLIGHT_0;//背光关
            lcd_init();
            last_menu=0;
            menu_index=0;

            for(i=0; i<10; i++)
                Delay(0xffff);

            clear_screen();
            DspOne();

            ADC_Cmd(ADC1, ENABLE);
            ADC_DMACmd(ADC1, ENABLE);
            Delay(10000);
            ADC_SoftwareStartConv(ADC1); //开启软件转换

            return;
        }
    }

    switch(Keyvalue)
    {
    case KEY_LEFT_DOWN://恢复出厂设置（长按left + down）
        Sys_Reset();
        return;

    case KEY_UP:                         //上, 找出新的菜单状态编号
        menu_index=MenuTab[menu_index].keyup;
        delay_halt=HALT_TIMEOUT;
        break;

    case KEY_DOWN:                       //下, 找出新的菜单状态编号
        menu_index=MenuTab[menu_index].keydown;
        delay_halt=HALT_TIMEOUT;
        break;

    case KEY_LEFT:                       //左
        menu_index=MenuTab[menu_index].keyleft;
        delay_halt=HALT_TIMEOUT;
        break;

    case KEY_RIGHT:                      //右
        menu_index=MenuTab[menu_index].keyright;
        delay_halt=HALT_TIMEOUT;
        break;

    case KEY_MENU:                       //回车键,找出新的菜单状态编号
        menu_index=MenuTab[menu_index].keymenu;
        delay_halt=HALT_TIMEOUT;
        break;

    case FRESH_DATA:					//数据有刷新，需重新显示，并进行数据存储，数据发送
        if((menu_index>=0) && (menu_index<=3))
        {
            MenuTab[menu_index].OnShow();
        }
        delay_halt=HALT_TIMEOUT;
        if(phalen)
        {
            rtc_get_datetime();
            Record_SaveNew((uint8_t *)adjustdt.dt, phalen);
            //通过rs232发送数据
        }

        return;

    case FRESH_TIME:					//时间刷新，需重新显示
        if(menu_index==4||menu_index==6)
            MenuTab[menu_index].OnShow();
        if(delay_halt--)//按键动作、雷击事件显示完成，延时HALT_TIMEOUT秒后进入省电状态
        {
            if(0==delay_halt)
            {
                if((strokeA.tim_trg>0)&&(strokeB.tim_trg>0)&&(strokeC.tim_trg>0))//三相雷击停止设备进入休眠状态，等待外部中断唤醒
                {

                    Storage_SaveAllStats();//先保存统计数据
                    if(System_GetMode())//进入省电模式
                    {
                        LCD_BKLIGHT_0;
                        clear_screen();
                        GPIO_Init(GPIOB,GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|GPIO_Pin_5|GPIO_Pin_6|GPIO_Pin_7,GPIO_Mode_Out_OD_Low_Slow);//LCD 控制脚省电处理
                        //GPIO_SetBits(GPIOB,GPIO_Pin_7);
                        disp_tag=2;
                        halt();
                    }
                    else//AC模式自动切换回第一屏
                    {
                        last_menu=0;
                        menu_index=0;
                        clear_screen();
                        DspOne();
                    }
                }
                else
                    delay_halt=3;
            }
        }
        return;
    default:   		                    //按键值错误的处理
        key_val=Keyvalue;
        //break;
        return;

    }

    if(menu_index <= 6)
    {
        if(last_menu != menu_index)//菜单切换
        {
            if ((Keyvalue==KEY_MENU)&&(MenuTab[last_menu].OnMenu !=0))//执行菜单跳转前的保存工作
                MenuTab[last_menu].OnMenu();

            clear_screen();//切换屏前清屏

            if(MenuTab[menu_index].OnShow != 0)
                MenuTab[menu_index].OnShow();

        }
        else//原菜单内操作
        {
            if ((Keyvalue==KEY_UP)&&(MenuTab[menu_index].OnUp !=0))
                MenuTab[menu_index].OnUp();
            if ((Keyvalue==KEY_DOWN)&&(MenuTab[menu_index].OnDown !=0))
                MenuTab[menu_index].OnDown();
            if ((Keyvalue==KEY_LEFT)&&(MenuTab[menu_index].OnLeft !=0))
                MenuTab[menu_index].OnLeft();
            if ((Keyvalue==KEY_RIGHT)&&(MenuTab[menu_index].OnRight !=0))
                MenuTab[menu_index].OnRight();
        }
    }
    last_menu=menu_index;//保存上一次菜单值，用于识别菜单是否已跳转
}

// 提取数据行显示组件，减少代码体积（不再依赖空格对齐，改为固定坐标绘制各列）
static void Draw_Stat_Columns(uint8_t row, const char* label, uint32_t count, uint32_t val)
{
    char buf[12];
    
    // 第一列：相别 (X=2)
    show_str_8x12(row, 2, (uint8_t *)label);
    
    // 第二列：次数 (X=48, 靠右对齐)
    mini_sprintf(buf, "%5ld", count);
    show_str_8x12(row, 48, (uint8_t *)buf);
    
    // 第三列：数值/时长 (X=88, 靠右对齐)
    // 对于微秒或大数值，最多7位数字 (9999999)，加上前导空格刚好填充到末尾
    mini_sprintf(buf, "%6ld", val);
    show_str_8x12(row, 80, (uint8_t *)buf); // 88->80以留足更长数字空间
}

// 绘制表格标题行（第1页：箭头+页标题）和表头行（第2页：列名）
static void Draw_Table_Header(const char* title, uint8_t page_num)
{
    // 行1：顶部标题栏
    show_str_7x8(1, 1, "<");             // 左翻页角标
    show_str_7x8(1, 10, (uint8_t *)title); // 标题
    show_str_7x8(1, 120, ">");           // 右翻页角标
    
    // 页码 x/8
    {
        uint8_t buf[4] = {'0', '/', '8', 0};
        buf[0] = '0' + page_num;
        show_str_7x8(1, 95, buf);
    }
    
    // 行2：固定坐标表头 (字体为 7x8 小字)
    // 对应 Draw_Stat_Columns 的数据坐标： Phase(X=2) | Times(X=48) | MAX(X=80)
    // 因为这排全是英文，直接写三次偏移显示是最稳的。
    show_str_7x8(2, 2,  "PHASE");
    show_str_7x8(2, 54, "TIMES");
    show_str_7x8(2, 94, "MAX_uS");
}



// 提取页码显示组件（零开销，无需sprintf）
static void Draw_Page_Num(uint8_t page)
{
    uint8_t buf[4] = {'0', '/', '8', 0};
    buf[0] = '0' + page;
    show_str_7x8(1, 80, buf);
}

///////////////ABC总数统计//////////////////////////////////////////
void DspOne(void)
{
    show_str_8x12(1,1,"<");
    if(adjustdt.dt[11])
    {
        show_hz_12x12(1,14,"MO");
        show_hz_12x12(1,44,"UW]_");
    }
    else
        show_str_7x8(1,26,"_SINGLE_L");
    show_str_8x12(1,120,">");

    Draw_Stat_Columns(3, "A-D", Record_GetStat(A)->tscount, Record_GetStat(A)->tlmax);
    Draw_Stat_Columns(5, "B-D", Record_GetStat(B)->tscount, Record_GetStat(B)->tlmax);
    Draw_Stat_Columns(7, "C-D", Record_GetStat(C)->tscount, Record_GetStat(C)->tlmax);
}


void DspOne_Plus(void)
{
    show_str_8x12(1,1,"<");
    if(adjustdt.dt[11])
    {
        show_hz_12x12(1,14,"MO");
        show_hz_12x12(1,44,"UW]_");
    }
    else
        show_str_7x8(1,26,"_SINGLE_L");
    show_str_8x12(1,120,">");

    Draw_Stat_Columns(3, "A-B", Record_GetStat(AB)->tscount, Record_GetStat(AB)->tlmax);
    Draw_Stat_Columns(5, "A-C", Record_GetStat(AC)->tscount, Record_GetStat(AC)->tlmax);
    Draw_Stat_Columns(7, "B-C", Record_GetStat(BC)->tscount, Record_GetStat(BC)->tlmax);
}


////////////////AD\BD\CD\AB\BC\BC 统计//////////////////////////////
void DspTwo(void)
{
    show_str_8x12(1,1,"<");
    show_hz_12x12(1,14,"u");
    if(adjustdt.dt[11])
    {
        show_hz_12x12(1,26,"]gM");
        show_hz_12x12(1,66,"eY[");
    }
    else
        show_str_7x8(1,26,"_TOTAL__L");
    show_str_8x12(1,102,"EG");
    show_str_8x12(1,120,">");

    Draw_Stat_Columns(3, "A-D", Record_GetStat(A)->tscount, Record_GetStat(A)->tltotal);
    Draw_Stat_Columns(5, "B-D", Record_GetStat(B)->tscount, Record_GetStat(B)->tltotal);
    Draw_Stat_Columns(7, "C-D", Record_GetStat(C)->tscount, Record_GetStat(C)->tltotal);
}

void DspTwo_Plus(void)
{
    show_str_8x12(1,1,"<");
    show_hz_12x12(1,14,"w");
    if(adjustdt.dt[11])
    {
        show_hz_12x12(1,26,"]gM");
        show_hz_12x12(1,66,"eY[");
    }
    else
        show_str_7x8(1,26,"_TOTAL__L");
    show_str_8x12(1,102,"EG");
    show_str_8x12(1,120,">");

    Draw_Stat_Columns(3, "A-B", Record_GetStat(AB)->tscount, Record_GetStat(AB)->tltotal);
    Draw_Stat_Columns(5, "A-C", Record_GetStat(AC)->tscount, Record_GetStat(AC)->tltotal);
    Draw_Stat_Columns(7, "B-C", Record_GetStat(BC)->tscount, Record_GetStat(BC)->tltotal);
}


////////////////////日期时间显示////////////////////////////////////
void DspThree(void)
{
    char buf[20];
    uint16_t zhen=0;//整数
    uint16_t xiao=0;//小数

    zhen=Verfin/1000;
    xiao=Verfin%1000;
    xiao=xiao/10;

    memset(buf,0,20);
    show_str_8x12(1,1,UI_ICON_ARROW_L);

    show_hz_12x12(1,14,"y");
    if(adjustdt.dt[11])
    {
        show_hz_12x12(1,26,"]m]]o");
    }
    else
        show_str_7x8(1,26,UI_TITLE_CONFIG);

    show_str_8x12(1,120,UI_ICON_ARROW_R);

    if(System_GetMode())
    {
        if(Verfin>2800)//显示电量多少
            show_str_8x12(3,110,UI_ICON_BATT_FULL);
        else if(Verfin > 2600 && Verfin <=2800)
            show_str_8x12(3,110,UI_ICON_BATT_HIGH);
        else if(Verfin >2400 && Verfin <=2600)
            show_str_8x12(3,110,UI_ICON_BATT_MID);
        else if(Verfin <=2400 )
            show_str_8x12(3,110,UI_ICON_BATT_LOW);

        mini_sprintf(buf,"%d;%02dV",zhen,xiao);//显示电池电压
        show_str_8x12(5,96,(uint8_t *)buf);
    }
    else
    {
        show_str_8x12(3,98,UI_ICON_LANG_CN);
        mini_sprintf(buf,"     ");
        show_str_8x12(5,88,(uint8_t *)buf);//3,70
    }
    rtc_get_datetime();
    adjustdt.dt[10]=0;
    mini_sprintf(datestr, "%04d-%02d-%02d",adjustdt.dt[0]+2000,adjustdt.dt[1],adjustdt.dt[2]);
    mini_sprintf(timestr, "%02d:%02d:%02d",adjustdt.dt[3],adjustdt.dt[4],adjustdt.dt[5]);
    show_str_8x12(3,8,(uint8_t *)datestr);//24
    show_str_8x12(5,14,(uint8_t *)timestr);//32

    adjustdt.dt[6]= 0xff&(selfid/1000000);
    adjustdt.dt[7]= (selfid/10000)%100;
    adjustdt.dt[8]= (selfid/100)%100;
    adjustdt.dt[9]= selfid%100;
    memset(tempstr,0,16);
    mini_sprintf(tempstr,"ID:%02d%02d%02d%02d",adjustdt.dt[6],adjustdt.dt[7],adjustdt.dt[8],adjustdt.dt[9]);
    show_str_8x12(7,2,(uint8_t *)tempstr);
    
    show_str_7x8(8, 100, "V1.0"); // 添加固件版本
}
///////////////////历史记录回顾100条////////////////////////////////

void Show_Phase_Rec(void)
{
    char buf[20];
    uint8_t phase=0;
    uint32_t tlen=0;

    show_str_8x12(1,1,UI_ICON_ARROW_L);
    show_str_8x12(1,120,UI_ICON_ARROW_R);

    if(adjustdt.dt[11])
        show_hz_12x12(1,24,"ACEG");//事件记录
    else
        show_str_7x8(1,24,UI_TITLE_RECORD);

    memset(buf,0,20);
    mini_sprintf(buf,"%03d",data_index.r+1);
    show_str_8x12(1,88,(uint8_t *)buf);

    memset(buf,0,20);
    mini_sprintf(buf, "%04d-%02d-%02d",Record_GetLRecd()->year+2000,Record_GetLRecd()->mon,Record_GetLRecd()->day);
    show_str_8x12(3,8,(uint8_t *)buf);

    memset(buf,0,20);
    mini_sprintf(buf, "%02d:%02d:%02d",Record_GetLRecd()->hour,Record_GetLRecd()->min,Record_GetLRecd()->sec);
    show_str_8x12(5,14,(uint8_t *)buf);

    tlen=(Record_GetLRecd()->pl & 0x00ffffff);
    phase=(Record_GetLRecd()->pl & 0xff000000)>>24;

    memset(buf,0,20);
    switch(phase)
    {
    case 1: mini_sprintf(buf,"A-D"); break;
    case 2: mini_sprintf(buf,"B-D"); break;
    case 3: mini_sprintf(buf,"A-B"); break;
    case 4: mini_sprintf(buf,"C-D"); break;
    case 5: mini_sprintf(buf,"A-C"); break;
    case 6: mini_sprintf(buf,"B-C"); break;
    default: buf[0] = 0; break;
    }
    show_str_8x12(7, 2, (uint8_t *)buf);

    // X=40: tlen value
    memset(buf,0,20);
    mini_sprintf(buf,"%7ld",tlen);
    show_str_8x12(7, 40, (uint8_t *)buf);

    // X=100: Cond UI
    if(adjustdt.dt[11])
        show_hz_12x12(7,100,"QS");
    else
        show_str_7x8(7,100,UI_TITLE_COND);

    Draw_Page_Num(6);
}

void DspFour(void)
{
    if(adjustdt.dt[11])
        show_hz_12x12(1,24,"ACEG");//事件记录
    else
        show_str_7x8(1,24,UI_TITLE_RECORD);


    if(data_index.used)//有效数据
    {
        if(data_index.w>0)
            data_index.r=data_index.w-1;
        else
            data_index.r=89;
    }
    else
        data_index.r=0;

    if(Record_LoadHistory(2))
    {
        Show_Phase_Rec();
    }
}

void Left_Four(void)
{
    clear_screen();
    if(Record_LoadHistory(0))
    {
        Show_Phase_Rec();
    }
}

void Right_Four(void)
{
    clear_screen();
    if(Record_LoadHistory(1))
    {
        Show_Phase_Rec();
    }

}

//////////////////时间设定//////////////////////////////////////////
void show_datetime(void)
{
    static uint8_t flag=1;

    show_str_8x12(1,1,UI_ICON_ARROW_L);
    show_str_8x12(1,120,UI_ICON_ARROW_R);
    show_str_8x12(3,1,"R");
    show_str_8x12(7,1,"S");

    Draw_Page_Num(7);

    mini_sprintf(datestr, "%04d-%02d-%02d",adjustdt.dt[0]+2000,adjustdt.dt[1],adjustdt.dt[2]);
    mini_sprintf(timestr, "%02d:%02d:%02d",adjustdt.dt[3],adjustdt.dt[4],adjustdt.dt[5]);
    show_str_8x12(1,25,(uint8_t *)datestr);//3
    show_str_8x12(3,25,(uint8_t *)timestr);//6

    memset(tempstr,0,16);
    mini_sprintf(tempstr,"ID: %02d%02d%02d%02d",adjustdt.dt[6],adjustdt.dt[7],adjustdt.dt[8],adjustdt.dt[9]);
    show_str_8x12(5,25,(uint8_t *)tempstr);


    if(adjustdt.dt[10])//出厂设置
        show_str_8x12(adjustdt.pos[10].y,adjustdt.pos[10].x,"J");
    else
        show_str_8x12(adjustdt.pos[10].y,adjustdt.pos[10].x,"K");

    if(adjustdt.dt[11])//中文界面下显示 “EN”
    {
        show_hz_12x12(7,25,"ikmo]");//"出厂设置"
        show_str_8x12(adjustdt.pos[11].y,adjustdt.pos[11].x,"WK");
    }
    else//英文界面下显示 “中”
    {
        show_hz_12x12(7,25,"]]]]]");
        show_str_7x8(7,25,"DEFAULT");
        show_hz_12x12(adjustdt.pos[11].y,adjustdt.pos[11].x,"a");
    }



    memset(tempstr,0,16);
    if(flag)
    {
        flag=0;
    }
    else
    {
        flag=1;
        tempstr[0]=0x20;
        tempstr[1]=0x20;
    }
    show_str_8x12(adjustdt.pos[adjustdt.index].y,adjustdt.pos[adjustdt.index].x,(uint8_t *)tempstr);
}


void DspFive(void)
{
    show_datetime();

}

void Up_Five(void)
{
    if(adjustdt.index==10)//Y/N 恢复出厂设置
    {
        if(adjustdt.dt[adjustdt.index])
            adjustdt.dt[adjustdt.index]=0;
        else
            adjustdt.dt[adjustdt.index]=1;
    }
    else if(adjustdt.index==11)//中/英 
    {
        if(adjustdt.dt[adjustdt.index])
            adjustdt.dt[adjustdt.index]=0;
        else
            adjustdt.dt[adjustdt.index]=1;
    }
    else
    {
        adjustdt.dt[adjustdt.index]++;
        if(adjustdt.index==1)//月份
        {
            if(adjustdt.dt[adjustdt.index]>12)
                adjustdt.dt[adjustdt.index]=1;
        }
        else if(adjustdt.index==2)//日
        {
            if(adjustdt.dt[adjustdt.index]>31)
                adjustdt.dt[adjustdt.index]=1;
        }
        else if(adjustdt.index==3)//24小时制
        {
            if(adjustdt.dt[adjustdt.index]>23)
                adjustdt.dt[adjustdt.index]=0;
        }
        else if(adjustdt.index==4)//分
        {
            if(adjustdt.dt[adjustdt.index]>59)
                adjustdt.dt[adjustdt.index]=0;
        }
        else if(adjustdt.index==5)//秒
        {
            if(adjustdt.dt[adjustdt.index]>59)
                adjustdt.dt[adjustdt.index]=0;
        }
        else if(adjustdt.index>5 && adjustdt.index<10 )//ID 6 ~ 9
        {
            if(adjustdt.dt[adjustdt.index]>99)
                adjustdt.dt[adjustdt.index]=0;
        }

    }
    show_datetime();
}

void Down_Five(void)
{
    if(adjustdt.index==0)//年
    {
        if(adjustdt.dt[adjustdt.index]>0)
            adjustdt.dt[adjustdt.index]--;
    }
    else if(adjustdt.index==1)//月份
    {
        if(adjustdt.dt[adjustdt.index]>=1)
            adjustdt.dt[adjustdt.index]--;
        if(adjustdt.dt[adjustdt.index]==0)
            adjustdt.dt[adjustdt.index]=12;
    }
    else if(adjustdt.index==2)//日
    {

        if(adjustdt.dt[adjustdt.index]>=1)
            adjustdt.dt[adjustdt.index]--;
        if(adjustdt.dt[adjustdt.index]==0)
            adjustdt.dt[adjustdt.index]=31;
    }
    else if(adjustdt.index==3)//24小时制
    {
        if(adjustdt.dt[adjustdt.index]>0)
            adjustdt.dt[adjustdt.index]--;
        else if(adjustdt.dt[adjustdt.index]==0)
            adjustdt.dt[adjustdt.index]=23;
    }
    else if(adjustdt.index==4)//分
    {
        if(adjustdt.dt[adjustdt.index]>0)
            adjustdt.dt[adjustdt.index]--;
        else if(adjustdt.dt[adjustdt.index]==0)
            adjustdt.dt[adjustdt.index]=59;
    }
    else if(adjustdt.index==5)//秒
    {
        if(adjustdt.dt[adjustdt.index]>0)
            adjustdt.dt[adjustdt.index]--;
        else if(adjustdt.dt[adjustdt.index]==0)
            adjustdt.dt[adjustdt.index]=59;
    }
    else if(adjustdt.index>5 && adjustdt.index<10 )//ID
    {
        if(adjustdt.dt[adjustdt.index]>0)
            adjustdt.dt[adjustdt.index]--;
        else if(adjustdt.dt[adjustdt.index]==0)
            adjustdt.dt[adjustdt.index]=99;
    }
    else if(adjustdt.index==10)//Y/N
    {
        if(adjustdt.dt[adjustdt.index])
            adjustdt.dt[adjustdt.index]=0;
        else
            adjustdt.dt[adjustdt.index]=1;
    }
    else if(adjustdt.index==11)//中/英
    {
        if(adjustdt.dt[adjustdt.index])
            adjustdt.dt[adjustdt.index]=0;
        else
            adjustdt.dt[adjustdt.index]=1;
    }
    show_datetime();

}

void Left_Five(void)
{
    //show_str_7x8(adjustdt.pos[adjustdt.index].y,adjustdt.pos[adjustdt.index].x,"  ");
    if(adjustdt.index)
        adjustdt.index--;
    else
        adjustdt.index=11;
    //show_str_7x8(adjustdt.pos[adjustdt.index].y,adjustdt.pos[adjustdt.index].x,"--");

}

void Right_Five(void)
{
    //show_str_7x8(adjustdt.pos[adjustdt.index].y,adjustdt.pos[adjustdt.index].x,"  ");
    adjustdt.index=(adjustdt.index+1)%12;
    //show_str_7x8(adjustdt.pos[adjustdt.index].y,adjustdt.pos[adjustdt.index].x,"--");
}

void Menu_Five(void)
{
    uint32_t id=0;

    rtc_set_datetime();

    id=(adjustdt.dt[6]*1000000) + (adjustdt.dt[7]*10000) + (adjustdt.dt[8]*100) + adjustdt.dt[9];
    if(id!=selfid)
    {
        selfid=id;
        r485id=(selfid&0xff);
    }
    
    // 统一存储
    Storage_SaveSettings(adjustdt.dt[11], adjustdt.dt[6], adjustdt.dt[7], adjustdt.dt[8], adjustdt.dt[9]);

    if(adjustdt.dt[10])//恢复出厂设置
    {
        Sys_Reset();
    }
}

////////////////////RS485通信状态显示//////////////////////////////
void DspSix(void)
{
    //clear_screen();
    if(adjustdt.dt[11])
        show_hz_12x12(1,24,"RS485 ]g");// RS485 通信
    else
        show_str_7x8(1,24,"RS485_COM");

    show_str_8x12(1,104,UI_ICON_TIMES); // battery mask

    // Row 3: 地址 / 波特率 (ADDR: 1, BAUD: 9600)
    Draw_Stat_Columns(3, "ADR", r485id, 9600); // reuse format string
    
    // Row 5: TX
    Draw_Stat_Columns(5, "TX", 0, 0); 
    
    // Row 7: RX 
    Draw_Stat_Columns(7, "RX", 0, 0);

    Draw_Page_Num(8);
}


void Menu_Four(void)
{
    Storage_ClearHistory();
}


void Sys_Reset(void)
{
    Storage_FactoryReset();
}


