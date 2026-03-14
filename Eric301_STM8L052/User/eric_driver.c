#include "eric_driver.h"
#include <string.h>
#include <stdio.h>
#include "menu.h"
#include "eric_proc.h"
#include "st7565r_lcd.h"

U_BUF u1buf;
KEY_CTR key = {0, 0, 0};
const EPROM_RW dindex[90] =
{
    //第一页地址0xa0，第一行用于保存统计记录，保留出来
    //{0xa0,0},  {0xa0,10},  {0xa0,20},  {0xa0,30},  {0xa0,40},  {0xa0,50},  {0xa0,60},  {0xa0,70},  {0xa0,80},  {0xa0,90},
    {0xa0, 100}, {0xa0, 110}, {0xa0, 120}, {0xa0, 130}, {0xa0, 140}, {0xa0, 150}, {0xa0, 160}, {0xa0, 170}, {0xa0, 180}, {0xa0, 190},
    {0xa0, 200}, {0xa0, 210}, {0xa0, 220}, {0xa0, 230}, {0xa0, 240},
    //第一页地址0xa2
    {0xa2, 0},  {0xa2, 10},  {0xa2, 20},  {0xa2, 30},  {0xa2, 40},  {0xa2, 50},  {0xa2, 60},  {0xa2, 70},  {0xa2, 80},  {0xa2, 90},
    {0xa2, 100}, {0xa2, 110}, {0xa2, 120}, {0xa2, 130}, {0xa2, 140}, {0xa2, 150}, {0xa2, 160}, {0xa2, 170}, {0xa2, 180}, {0xa2, 190},
    {0xa2, 200}, {0xa2, 210}, {0xa2, 220}, {0xa2, 230}, {0xa2, 240},
    //第一页地址0xa4
    {0xa4, 0},  {0xa4, 10},  {0xa4, 20},  {0xa4, 30},  {0xa4, 40},  {0xa4, 50},  {0xa4, 60},  {0xa4, 70},  {0xa4, 80},  {0xa4, 90},
    {0xa4, 100}, {0xa4, 110}, {0xa4, 120}, {0xa4, 130}, {0xa4, 140}, {0xa4, 150}, {0xa4, 160}, {0xa4, 170}, {0xa4, 180}, {0xa4, 190},
    {0xa4, 200}, {0xa4, 210}, {0xa4, 220}, {0xa4, 230}, {0xa4, 240},
    //第一页地址0xa6
    {0xa6, 0},  {0xa6, 10},  {0xa6, 20},  {0xa6, 30},  {0xa6, 40},  {0xa6, 50},  {0xa6, 60},  {0xa6, 70},  {0xa6, 80},  {0xa6, 90},
    {0xa6, 100}, {0xa6, 110}, {0xa6, 120}, {0xa6, 130}, {0xa6, 140}, {0xa6, 150}, {0xa6, 160}, {0xa6, 170}, {0xa6, 180}, {0xa6, 190},
    {0xa6, 200}, {0xa6, 210}, {0xa6, 220}, {0xa6, 230}, {0xa6, 240}
};

SHOWDATA data_index =
{
    .r = 0,
    .w = 0,
    .used = 0,
};


/*******************************************************************************
****入口参数：无
****出口参数：无
****函数备注：非精确延时函数
*******************************************************************************/
void Delay(__IO uint16_t nCount)
{
    /* Decrement nCount value */
    while (nCount != 0)
    {
        nCount--;
    }
}
/*******************************************************************************
****入口参数：无
****出口参数：无
****函数备注：时钟配置函数函数
*******************************************************************************/
void CLK_Config(void)
{

#if 0 //外部晶振
    /* Select HSE as system clock source */
    CLK_SYSCLKSourceSwitchCmd(ENABLE);//使能时钟切换
    CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_HSE);//选择内部高速时钟作为时钟源
    /* system clock prescaler: 1*/
    CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_1);//设置系统时钟分频
    while (CLK_GetSYSCLKSource() != CLK_SYSCLKSource_HSE)//等待时钟稳定
    {}
#else
    /* Select HSE as system clock source */
    CLK_SYSCLKSourceSwitchCmd(ENABLE);//使能时钟切换
    CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_HSI);//选择内部高速时钟作为时钟源
    /* system clock prescaler: 1*/
    CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_1);//设置系统时钟分频
    while (CLK_GetSYSCLKSource() != CLK_SYSCLKSource_HSI)//等待时钟稳定
    {}

#endif
}

/*******************************************************************************
**函数名称：void TIM2_Init()     Name: void TIM2_Init()
**功能描述：初始化定时器2
**入口参数：无
**输出：无
*******************************************************************************/
void TIM2_Init(void)
{
    CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);          	    //使能定时器2时钟
    TIM2_TimeBaseInit(TIM2_Prescaler_64, TIM2_CounterMode_Up,
                      25 - 1);   //100us定时，16M晶振，设置内部定时器2为128分频，向上计数，计数器时钟=主时钟16MHz / 128 = 125KHz
    //TIM2_TimeBaseInit(TIM2_Prescaler_64  , TIM2_CounterMode_Up , 25-1); //200us定时，8M晶振
    TIM2_ITConfig(TIM2_IT_Update, ENABLE);      //使能向上计数溢出中断
    TIM2_ARRPreloadConfig(ENABLE);  //使能定时器2自动重载功能
    TIM2_Cmd(ENABLE);               //启动定时器2开始计数
}


void TIM4_Init(void)
{
    CLK_PeripheralClockConfig(CLK_Peripheral_TIM4, ENABLE); //使能定时器2时钟
    //TIM4_TimeBaseInit(TIM4_Prescaler_128  , 250);   	    //2ms,  16M/128=125K
    //TIM4_TimeBaseInit(TIM4_Prescaler_4096  , 78);   		//20ms , 16M晶振
    //TIM4_TimeBaseInit(TIM4_Prescaler_2048  , 78);   		//20ms ，8M晶振
    //TIM4_TimeBaseInit(TIM4_Prescaler_8192  , 195);   		//100ms, 16M
    TIM4_TimeBaseInit(TIM4_Prescaler_16384, 244);   		//250ms, 16M
    TIM4_ITConfig(TIM4_IT_Update, ENABLE);     	//使能向上计数溢出中断
    TIM4_ARRPreloadConfig(ENABLE);  				//使能定时器2自动重载功能
    TIM4_Cmd(ENABLE);               				//启动定时器2开始计数
}

void Uart1_Init(void)
{
    //端口重映射，去掉注释之后USART1为PA2-TX、PA3-RX；注释之后USART1为TX-PC5、RX-PC6；复位之后USART会自动恢复至PC5、PC6
    //SYSCFG_REMAPPinConfig(REMAP_Pin_USART1TxRxPortA,ENABLE);

    CLK_PeripheralClockConfig(CLK_Peripheral_USART1, ENABLE);
    GPIO_Init(GPIOC, GPIO_Pin_3, GPIO_Mode_Out_PP_High_Fast);//TXD
    GPIO_Init(GPIOC, GPIO_Pin_2, GPIO_Mode_In_PU_No_IT);//RXD
    USART_DeInit(USART1);       //复位UART1
    /*
     * 将UART1配置为：
     * 波特率 = 115200
     * 数据位 = 8
     * 1位停止位
     * 无校验位
     * 使能接收和发送
     */

    USART_Init(USART1, 9600, USART_WordLength_8b, USART_StopBits_1, USART_Parity_No, (USART_Mode_Tx | USART_Mode_Rx));
    USART_ClearITPendingBit(USART1, USART_IT_RXNE);
    USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);//开启接收中断
    USART_Cmd(USART1, ENABLE);  //使能UART2
}


void Uart1_Send(uint8_t *data, uint16_t len)
{
    uint16_t i;

    for (i = 0; i < len; i++)
    {
        USART_SendData8(USART1, (uint8_t)(*(data + i)));
        /* Loop until the end of transmission */
        while (USART_GetFlagStatus(USART1, USART_FLAG_TC) == RESET);
    }
}

uint16_t Uart1_Recv(uint8_t *buf)
{
    uint16_t i = 0;

    while (u1buf.r != u1buf.w)
    {
        buf[i] = u1buf.recbuf[u1buf.r];
        u1buf.r = (u1buf.r + 1) % UBUFLEN;
        i++;
    }
    u1buf.revn = 0;
    return i;
}

uint16_t Check_U1buf(void)
{
    static uint16_t r1 = 0, r2 = 0;

    r2 = r1;
    r1 = u1buf.revn;
    if ((r1 == r2) && (r1 > 0))
        return r1;
    else
        return 0;
}


/****************************************************************************
* 名称：I2C_WriteByte(uint8_t addr,uint8_t data)
* 功能：进行IIC的写操作。
* 入口参数： uint8_t addr 寄存器的地址
* uint8_t data 写入的数据
* 出口参数：无
* 说明：对触摸屏的寄存器进行写入操作，变量都是16进制
****************************************************************************/

void I2C_WriteByte(uint8_t paddr, uint8_t addr, uint8_t data)
{
    uint16_t n = 2000;

    while (I2C_GetFlagStatus(I2C1, I2C_FLAG_BUSY)) //等待空闲
    {
        if (--n == 0)
            return;
    };

    I2C_GenerateSTART(I2C1, ENABLE);//开启I2C1
    n = 2000;
    while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT)) /*EV5,主模式*/
    {
        if (--n == 0)
            return;
    };

    I2C_Send7bitAddress(I2C1, paddr, I2C_Direction_Transmitter);//器件地址 -- 默认0xa0
    n = 2000;
    while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED))
    {
        if (--n == 0)
            return;
    };

    I2C_SendData(I2C1, addr);//寄存器地址
    n = 2000;
    while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED))
    {
        if (--n == 0)
            return;
    };

    I2C_SendData(I2C1, data);//发送数据
    n = 2000;
    while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED))
    {
        if (--n == 0)
            return;
    };
    I2C_AcknowledgeConfig(I2C1, ENABLE);

    I2C_GenerateSTOP(I2C1, ENABLE);//停止位，关闭I2C1总线
}


/****************************************************************************
* 名称：uint8_t I2C_ReadByte(uint8_t addr)
* 功能：进行IIC的读操作。
* 入口参数： uint8_t addr 寄存器的地址
* 出口参数： uint8_t i 保存读到的数据并作为参数返回
* 说明：对触摸屏的寄存器进行读出操作，变量都是16进制，IIC写操作要
先写寄存器再进行读寄存器的操作，否则会失败
****************************************************************************/
uint8_t I2C_ReadByte(uint8_t paddr, uint8_t addr)
{
    uint8_t i;
    uint16_t n = 2000;

    while (I2C_GetFlagStatus(I2C1, I2C_FLAG_BUSY))
    {
        if (--n == 0)
            return 0;
    };

    I2C_GenerateSTART(I2C1, ENABLE);//开启I2C1
    n = 2000;
    while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT)) /*EV5,主模式*/
    {
        if (--n == 0)
            return 0;
    };

    I2C_Send7bitAddress(I2C1, paddr, I2C_Direction_Transmitter);//器件地址 -- 默认0xA0
    n = 2000;
    while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED))
    {
        if (--n == 0)
            return 0;
    };

    I2C_SendData(I2C1, addr);//寄存器地址
    n = 2000;
    while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED))
    {
        if (--n == 0)
            return 0;
    };



    I2C_GenerateSTART(I2C1, ENABLE);//开启I2C1
    n = 2000;
    while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT)) /*EV5,主模式*/
    {
        if (--n == 0)
            return 0;
    };

    I2C_Send7bitAddress(I2C1, paddr, I2C_Direction_Receiver);//器件地址 -- 默认0xA0
    n = 2000;
    while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED))
    {
        if (--n == 0)
            return 0;
    };

    n = 2000;
    while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_RECEIVED))
    {
        if (--n == 0)
            return 0;
    };

    i = I2C_ReceiveData(I2C1); //读取数据

    I2C_AcknowledgeConfig(I2C1, DISABLE);

    I2C_GenerateSTOP(I2C1, ENABLE);//关闭I2C1总线


    return i;

}


void Save_Stat(uint8_t *p)//保存统计数据
{
    uint8_t i;

    Delay(IIC_TIMEOUT);
    for (i = 0; i < 70; i++)
    {
        I2C_WriteByte(0xa0, i, *(p + i));
        Delay(IIC_TIMEOUT);
    }
}

void Load_Stat(uint8_t *p)//读取统计数据
{
    uint8_t i;

    for (i = 0; i < 70; i++)
    {
        *(p + i) = I2C_ReadByte(0xa0, i);
        Delay(IIC_TIMEOUT);
    }
}

void IIC_Init(void)//当A2为底电平时，4页的设备地址(页地址，查找页)分别为a0H，a2H，a4H，a6H
{
    CLK_PeripheralClockConfig(CLK_Peripheral_I2C1, ENABLE);
    I2C_DeInit(I2C1);
    I2C_Init(I2C1, I2C_MAX_STANDARD_FREQ, 0x30, I2C_Mode_I2C, I2C_DutyCycle_2, I2C_Ack_Enable,
             I2C_AcknowledgedAddress_7bit);
    I2C_Cmd(I2C1, ENABLE);
    I2C_AcknowledgeConfig(I2C1, ENABLE);

}

void Save_Data(uint8_t *p)
{
    uint8_t i;

    if (p == 0)
        return;

    for (i = 0; i < 10; i++)
    {
        I2C_WriteByte(dindex[data_index.w].paddr, dindex[data_index.w].daddr + i, *(p + i));
        Delay(IIC_TIMEOUT);
    }
    data_index.w = (data_index.w + 1) % 90;
    if (data_index.used < 90)
        data_index.used++;
}

uint8_t Load_Data(uint8_t lr, uint8_t *p)
{
    uint8_t i;

    if (1 == lr) //增减标识+
    {
        if (data_index.used) //有效数据
        {
            if (data_index.r != data_index.w - 1)
            {
                data_index.r = (data_index.r + 1) % 90;
            }
            else
            {
                data_index.r = 0;
            }

            if (data_index.r != data_index.w)
            {
                for (i = 0; i < 10; i++)
                {
                    *(p + i) = I2C_ReadByte(dindex[data_index.r].paddr, dindex[data_index.r].daddr + i);
                    Delay(IIC_TIMEOUT);
                }

                return 1;
            }
        }
    }
    else if (0 == lr) //-
    {
        if (data_index.used) //有效数据
        {
            if (data_index.r)
            {
                data_index.r = (data_index.r - 1) % 90;
            }
            else
            {
                if (data_index.used < 90)
                    data_index.r = data_index.w - 1;
                else
                    data_index.r = 89;
            }

            if (data_index.r != data_index.w)
            {
                for (i = 0; i < 10; i++)
                {
                    *(p + i) = I2C_ReadByte(dindex[data_index.r].paddr, dindex[data_index.r].daddr + i);
                    Delay(IIC_TIMEOUT);
                }

                return 1;
            }
        }
    }
    else//显示当前读指针数据
    {
        if (data_index.used) //有效数据
        {
            if (data_index.r != data_index.w)
            {
                for (i = 0; i < 10; i++)
                {
                    *(p + i) = I2C_ReadByte(dindex[data_index.r].paddr, dindex[data_index.r].daddr + i);
                    Delay(IIC_TIMEOUT);
                }
                return 1;
            }
        }
    }

    return 0;
}


void init_rtc(void)
{
    RTC_InitTypeDef RTC_InitStr;
    RTC_TimeTypeDef RTC_TimeStr;
    RTC_DateTypeDef RTC_DateStr;
    static uint8_t tag = 0;


    FLASH_Unlock(FLASH_MemType_Data);
    //FLASH_ProgramByte(0x1000,0x55);
    tag = FLASH_ReadByte(0x1000);
    FLASH_Lock(FLASH_MemType_Data);

#if 0//内部低速时钟
    /* LSI */
    CLK_RTCClockConfig(CLK_RTCCLKSource_LSI, CLK_RTCCLKDiv_1);
    CLK_PeripheralClockConfig(CLK_Peripheral_RTC, ENABLE);

    RTC_InitStr.RTC_HourFormat = RTC_HourFormat_24;
    RTC_InitStr.RTC_AsynchPrediv = 0x7C;
    RTC_InitStr.RTC_SynchPrediv = 0x012F;
    RTC_Init(&RTC_InitStr);
#else//外部低速时钟
    /* LSE */
    CLK_LSEConfig(CLK_LSE_ON);
    while (CLK_GetFlagStatus(CLK_FLAG_LSERDY) == RESET);
    CLK_RTCClockConfig(CLK_RTCCLKSource_LSE, CLK_RTCCLKDiv_1);
    CLK_PeripheralClockConfig(CLK_Peripheral_RTC, ENABLE);

    RTC_InitStr.RTC_HourFormat = RTC_HourFormat_24;
    RTC_InitStr.RTC_AsynchPrediv = 127;
    RTC_InitStr.RTC_SynchPrediv = 255;
    RTC_Init(&RTC_InitStr);
#endif
    if (1) /* DEBUG: force RTC re-init; restore to (tag != 0x55) after debug */
    {
        FLASH_Unlock(FLASH_MemType_Data);
        FLASH_ProgramByte(0x1000, 0x55);
        FLASH_Lock(FLASH_MemType_Data);

        RTC_TimeStructInit(&RTC_TimeStr);
        RTC_TimeStr.RTC_Hours = 17;
        RTC_TimeStr.RTC_Minutes = 46;
        RTC_TimeStr.RTC_Seconds = 00;
        RTC_SetTime(RTC_Format_BIN, &RTC_TimeStr);

        RTC_DateStructInit(&RTC_DateStr);
        RTC_DateStr.RTC_WeekDay = RTC_Weekday_Thursday;
        RTC_DateStr.RTC_Date = 12;
        RTC_DateStr.RTC_Month = RTC_Month_March;
        RTC_DateStr.RTC_Year = 26;
        RTC_SetDate(RTC_Format_BIN, &RTC_DateStr);
    }
}

void rtc_set_datetime(void)
{
    RTC_DateTypeDef RTC_DateStr;
    RTC_TimeTypeDef RTC_TimeStr;
    uint8_t tag = 0;

    while (RTC_WaitForSynchro() != SUCCESS);
    RTC_GetDate(RTC_Format_BIN, &RTC_DateStr);//先读一次
    RTC_GetTime(RTC_Format_BIN, &RTC_TimeStr);

    if (RTC_DateStr.RTC_Year != adjustdt.dt[0])
        tag = 1;
    if (RTC_DateStr.RTC_Month != (RTC_Month_TypeDef)adjustdt.dt[1])
        tag = 1;
    if (RTC_DateStr.RTC_Date != adjustdt.dt[2])
        tag = 1;
    if (RTC_TimeStr.RTC_Hours = adjustdt.dt[3])
        tag = 1;
    if (RTC_TimeStr.RTC_Minutes = adjustdt.dt[4])
        tag = 1;

    if (tag)
    {
        RTC_DateStr.RTC_Year = adjustdt.dt[0];
        RTC_DateStr.RTC_Month = (RTC_Month_TypeDef)adjustdt.dt[1];
        RTC_DateStr.RTC_Date = adjustdt.dt[2];

        RTC_TimeStr.RTC_Hours = adjustdt.dt[3];
        RTC_TimeStr.RTC_Minutes = adjustdt.dt[4];
        //RTC_TimeStr.RTC_Seconds = adjustdt.dt[5];//秒不改

        while (RTC_WaitForSynchro() != SUCCESS);
        RTC_SetDate(RTC_Format_BIN, &RTC_DateStr);
        RTC_SetTime(RTC_Format_BIN, &RTC_TimeStr);
    }
}

void rtc_get_datetime(void)
{
    RTC_DateTypeDef RTC_DateStr;
    RTC_TimeTypeDef RTC_TimeStr;

    while (RTC_WaitForSynchro() != SUCCESS);

    RTC_GetDate(RTC_Format_BIN, &RTC_DateStr);
    RTC_GetTime(RTC_Format_BIN, &RTC_TimeStr);

    adjustdt.dt[0] = RTC_DateStr.RTC_Year & 0xff;
    adjustdt.dt[1] = RTC_DateStr.RTC_Month & 0xff;
    adjustdt.dt[2] = RTC_DateStr.RTC_Date & 0xff;

    adjustdt.dt[3] = RTC_TimeStr.RTC_Hours & 0xff;
    adjustdt.dt[4] = RTC_TimeStr.RTC_Minutes & 0xff;
    adjustdt.dt[5] = RTC_TimeStr.RTC_Seconds & 0xff;
}



uint8_t Read_Key(void)
{
    uint8_t kval = 0;

    if (!K_UP)					//按下是低电平
    {
        //return KEY_UP;
        kval += KEY_UP;
    }

    if (!K_DOWN)				//按下是低电平
    {
        //return KEY_DOWN;
        kval += KEY_DOWN;
    }

    if (!K_LEFT)				//按下是低电平
    {
        //return KEY_LEFT;
        kval += KEY_LEFT;
    }

    if (!K_RIGHT)				//按下是低电平
    {
        //return KEY_RIGHT;
        kval += KEY_RIGHT;
    }

    if (!K_MENU)				//按下是低电平
    {
        //return KEY_MENU;
        kval += KEY_MENU;
    }

    //return 0;
    return kval;
}


uint8_t Scan_Key(void)
{
    switch (key.state)
    {
        case 0:
            key.val = Read_Key();
            if (key.val) //首次按下键
            {
                if (key.dly < 3) //8
                {
                    key.dly = 3; //8
                    key.state = 1;
                }
            }
            else if (key.dly)
                key.dly--;
            break;
        case 1:
            if (key.dly)
                key.dly--;
            else 				  	   //延时去抖动再读键值
            {
                if (key.val == Read_Key()) //确认按键
                {
                    key.state = 2;
                    key.dly = 100;	 //用于长按计时
                }
                else
                    key.state = 0;
            }
            break;
        case 2:
            if (0 == Read_Key())		 //按键弹起，确认一次按键事件
            {
                key.state = 0;
                key.dly = 0;
                SendMsg(&MsgSystem, MSG_KEY_TIMER, key.val, 0);
                return key.val;
            }
            else					   //按键一直未弹起，触发一次长按事件
            {
                if (key.dly)
                    key.dly--;
                else
                {
                    key.dly = 20;
                    key.state = 0;
                    key.val += 100;		 //长按，当前键值+100
                    SendMsg(&MsgSystem, MSG_KEY_TIMER, key.val, 0);
                    return key.val;
                }
            }
            break;

        default :
            key.state = 0;
            break;
    }
    return 0;
}


#if 0

void Adc_Config(void)
{
    CLK_PeripheralClockConfig(CLK_Peripheral_ADC1, ENABLE); //开启ADC1时钟

    ADC_Init(ADC1, ADC_ConversionMode_Single, ADC_Resolution_12Bit, ADC_Prescaler_1); //连续转换，12位，转换时钟1分频

    ADC_Cmd(ADC1, ENABLE); //ADC使能
    ADC_VrefintCmd(ENABLE); //使能内部参考电压
    ADC_ChannelCmd(ADC1, ADC_Channel_Vrefint, ENABLE); //使能内部参考电压通道
}


uint16_t Adc_Getvcc(void)
{
    static uint16_t adc1_value = 0;
    static uint32_t value = 0;

    ADC_Cmd(ADC1, ENABLE); //ADC使能

    ADC_SoftwareStartConv(ADC1); //开启软件转换
    while (!ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC)); //等待转换结束
    ADC_ClearFlag(ADC1, ADC_FLAG_EOC); //清除对应标志
    adc1_value = ADC_GetConversionValue(ADC1); //获取转换值
    value = (uint32_t)1224 * 4096 / adc1_value; //获得VDD电压，单位mv

    ADC_Cmd(ADC1, DISABLE);
    return (uint16_t)value;
}

#else //DMA方式

uint16_t dmabuf[10]  = {0};
uint32_t Verfin = 0;//电源电压*1000
void ADC_Config(void)
{
    /* Enable ADC1 clock */
    CLK_PeripheralClockConfig(CLK_Peripheral_ADC1, ENABLE);
    /* Initialize and configure ADC1 */
    ADC_Init(ADC1, ADC_ConversionMode_Continuous, ADC_Resolution_12Bit, ADC_Prescaler_1);
    ADC_SamplingTimeConfig(ADC1, ADC_Group_FastChannels, ADC_SamplingTime_24Cycles);

    /* Enable ADC1 */
    ADC_Cmd(ADC1, ENABLE);
    ADC_VrefintCmd(ENABLE);

    /* Enable ADC1 Channels 24 */
    ADC_ChannelCmd(ADC1, ADC_Channel_Vrefint, ENABLE); /* connected to ADC_Channel_Vrefint */

}

void DMA_Config(void)
{
    /* Enable DMA1 clock */
    CLK_PeripheralClockConfig(CLK_Peripheral_DMA1, ENABLE);
    /* Connect ADC to DMA channel 0 */
    SYSCFG_REMAPDMAChannelConfig(REMAP_DMA1Channel_ADC1ToChannel0);//ADC通道要remap
    //BUFFER_SIZE
    DMA_Init(DMA1_Channel0,
             (uint32_t)&dmabuf,
             (uint16_t) & (ADC1->DRH),
             10,
             DMA_DIR_PeripheralToMemory,
             DMA_Mode_Circular,
             DMA_MemoryIncMode_Inc,
             DMA_Priority_High,
             DMA_MemoryDataSize_HalfWord);
    /* DMA Channel0 enable */
    DMA_Cmd(DMA1_Channel0, ENABLE);
    /* Enable DMA1 channel0 Transfer complete interrupt */
    DMA_ITConfig(DMA1_Channel0, DMA_ITx_TC, ENABLE);
    /* DMA enable */
    DMA_GlobalCmd(ENABLE);
    ADC_DMACmd(ADC1, ENABLE);
}

#endif



