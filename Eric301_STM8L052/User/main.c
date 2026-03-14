//////////////////////////////////////////////////////////////////////////////////

//******************************************************************************/
#include "stm8l15x.h"
#include <stdio.h>
#include "eric_proc.h"
#include "st7565r_lcd.h"
#include "string.h"
#include "menu.h"
#include "eric_driver.h"
#include "stm8l15x_itc.h"


/*******************************************************************************
//stm8是大端模式

*******************************************************************************/
int main(void)
{
    TMSG *msg;
    uint8_t  i = 0, phase = 0;
    uint32_t tlen = 0, interval = 0, phase32 = 0, val = 0;
    static uint8_t last_ph = 0; //上一次的相位
    static uint32_t last_t = 0; //相邻上一次触发的时间，用于比较两次是不是相邻两项（如AB）同时导通
    static char version[32] = "Eric301 V1.2\r\n2024-4-10";

    Delay(30000);
    CLK_Config();
    Delay(30000);
    init_rtc();
    Delay(30000);



    GPIO_Init(GPIOC, GPIO_Pin_4, GPIO_Mode_In_PU_IT); //输入上拉
    System_InitMode(); //读取AC_DEL(PC4)以决定是电池供电还是AC供电
    Delay(30000);

    //所有IO输出低电平
    GPIO_Init(GPIOA, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
    GPIO_Init(GPIOB, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
    GPIO_Init(GPIOC, 0xEC, GPIO_Mode_Out_PP_Low_Slow);//除PC0，PC1(I2C1)，PC4
    GPIO_Init(GPIOD, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
    GPIO_Init(GPIOE, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
    GPIO_Init(GPIOF, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);

    GPIO_Init(KEY_PORT, KEY_PINS, GPIO_Mode_In_PU_IT);//初始化按键,PE0~4
    GPIO_Init(GPIOB, GPIO_Pin_1 | GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_6 | GPIO_Pin_7,
              GPIO_Mode_Out_PP_High_Fast); //LCD
    GPIO_Init(GPIOD, GPIO_Pin_5 | GPIO_Pin_6 | GPIO_Pin_7, GPIO_Mode_In_PU_IT); //phase A、B、C

    lcd_init();
    //show_pic_128x64();
    //show_str_7x8(8,1,"ABCD0123456789");
    for (i = 0; i < 200; i++)
    {
        Delay(0xffff);
    }

    EXTI_DeInit(); //恢复中断的所有设置

    ITC_SetSoftwarePriority(TIM2_UPD_OVF_TRG_BRK_IRQn, ITC_PriorityLevel_3);
    ITC_SetSoftwarePriority(EXTI0_IRQn, ITC_PriorityLevel_1);
    ITC_SetSoftwarePriority(EXTI1_IRQn, ITC_PriorityLevel_1);
    ITC_SetSoftwarePriority(EXTI2_IRQn, ITC_PriorityLevel_1);
    ITC_SetSoftwarePriority(EXTI3_IRQn, ITC_PriorityLevel_1);
    ITC_SetSoftwarePriority(EXTI4_IRQn, ITC_PriorityLevel_1);

    ITC_SetSoftwarePriority(EXTI5_IRQn, ITC_PriorityLevel_1);
    ITC_SetSoftwarePriority(EXTI6_IRQn, ITC_PriorityLevel_1);
    ITC_SetSoftwarePriority(EXTI7_IRQn, ITC_PriorityLevel_1);

    EXTI_SetPinSensitivity(EXTI_Pin_0, EXTI_Trigger_Rising); //外部中断0，上沿触发，PE0，用于唤醒设备
    EXTI_SetPinSensitivity(EXTI_Pin_1, EXTI_Trigger_Rising); //外部中断1，上沿触发，PE1
    EXTI_SetPinSensitivity(EXTI_Pin_2, EXTI_Trigger_Rising); //外部中断2，上沿触发，PE2
    EXTI_SetPinSensitivity(EXTI_Pin_3, EXTI_Trigger_Rising); //外部中断3，上沿触发，PE3
    EXTI_SetPinSensitivity(EXTI_Pin_4, EXTI_Trigger_Rising_Falling); //外部中断4，上沿触发，PE4,PC4

    EXTI_SetPinSensitivity(EXTI_Pin_5, EXTI_Trigger_Rising_Falling);//外部中断5，上下沿触发，PD5
    EXTI_SetPinSensitivity(EXTI_Pin_6, EXTI_Trigger_Rising_Falling);//外部中断6，上下沿触发，PD6
    EXTI_SetPinSensitivity(EXTI_Pin_7, EXTI_Trigger_Rising_Falling);//外部中断7，上下沿触发，PD7

    if (System_GetMode() == 0)
    {
        Uart1_Init();
        Uart1_Send((uint8_t *)version, 32);
    }

    TIM2_Init();
    TIM4_Init();
    IIC_Init();//数据记录库初始化
    Storage_Init(); //加载系统设置和系统统计数据

    ADC_Config();
    DMA_Config();

    PWR_FastWakeUpCmd(ENABLE);  //快速唤醒使能
    PWR_UltraLowPowerCmd(ENABLE);//超低功耗
    enableInterrupts();//使能中断

    SendMsg(&MsgSystem, MSG_KEY_TIMER, KEY_RIGHT,  0); //开机显示第一个菜单
    ADC_SoftwareStartConv(ADC1); //开启软件转换

    WWDG_Init(0x7f, 0x7f);
    while (1)
    {
        msg = RevMsg(&MsgSystem);  //由消息触发
        if (msg == 0)
        {
            continue;
        }

        if (msg->msgtype == MSG_TIMER)
        {
            A_Fxn();
            B_Fxn();
            C_Fxn();

            if (System_GetMode() == 0) //AC
            {
                Rs485_Proc();    //rs485通信处理
            }
            Chk_State();

        }
        else if (msg->msgtype == MSG_KEY_TIMER)
        {
            Menu_Proc(msg->msgval1, msg->msgval2);
        }
        else if (msg->msgtype == MSG_COUNT)
        {
            phase = (msg->msgval1 >> 24) & 0xff;
            if (phase == A || phase == B || phase == C)
            {
                tlen = (msg->msgval1 & 0x00ffffff); //时长
                interval = msg->msgval2 > last_t ? msg->msgval2 - last_t : last_t - msg->msgval2;
                if (interval <= 5) //间隔小于5ms判定为两相同时雷击
                {
                    Record_GetStat(phase + last_ph)->tscount += 1; //两相总次数统计
                    Record_GetStat(phase + last_ph)->tltotal += tlen; //两相总时长统计
                    Record_GetStat(phase + last_ph)->tlmax = tlen;
                    phase += last_ph;
                    phase32 = phase;
                    SendMsg(&MsgSystem, MSG_KEY_TIMER, FRESH_DATA, (0x00ffffff & tlen) | (phase32 << 24));
                    Storage_SaveAllStats(); //掉电保护：立即保存统计数据
                }
                else//否则属于单次雷击
                {
                    if (single_trg == 1)
                    {
                        Record_GetStat(phase)->tscount += 1; //A相总次数统计
                        Record_GetStat(phase)->tltotal += tlen; //A相总时长统计
                        Record_GetStat(phase)->tlmax = tlen;
                        phase32 = phase;
                        SendMsg(&MsgSystem, MSG_KEY_TIMER, FRESH_DATA, (0x00ffffff & tlen) | (phase32 << 24));
                        Storage_SaveAllStats(); //掉电保护：立即保存统计数据
                    }
                }
                single_trg = 0;

                last_ph = phase;
                last_t = msg->msgval2; //保存上一次触发时间
            }
        }
        else if (msg->msgtype == MSG_ADC) //检测电池电压
        {
            if (msg->msgval1)
            {
                val = msg->msgval1 / 10;
                uint32_t new_v = (uint32_t)(5017600 / val);
                if (Verfin == 0) {
                    Verfin = new_v;
                } else {
                    Verfin = (Verfin * 7 + new_v) >> 3; // IIR 平滑滤波 (避免图标频繁跳动)
                }
            }
        }

    }
}



