/*硬件连接*/

// PC0<--->SDA   PC1---->SCL

/****************************************************************************************

*开发环境:IAR for stm8 v6.5.3

*硬件平台:STM8L-DISCOVERY

*功能说明:通过硬件I2C等待的方法,实现对24C02寄存器的读写,借助IAR软件的调试功能,查看变量的数值

*作    者：茗风

****************************************************************************************/

#include "stm8l15x.h"

#include"stdbool.h"

#include"stdint.h"


#define  _5NOPS     __asm__("nop");__asm__("nop");__asm__("nop");__asm__("nop"); __asm__("nop")//用于I2C读写延时

/******************************************************************************************************

*  名    称：void delay_10ms(uint8_t x_ms)

*  功    能：延时10ms

*  入口参数：无

*  出口参数：无

*  说    明：

*  范    例：无

******************************************************************************************************/

void delay_100ms(void)

{

  uint8_t i,j;

  for(i=0;i<255;i++)//2*255个指令周期

    for(j=0;j<255;j++);//2*255个指令周期

  // delay_10ms共消耗 x_ms*2*255+2*x_ms个指令周期  

  // 255*2*255+2*255=130610us=130ms

  // 此延时函数，延时时间为130ms

  // 16M/8/2=1M 一个指令周期为1us

}

/******************************************************************************************************

* 名 称： uint8_t I2C_ReadOneByteDataFromSlave(uint8_t address)

* 功 能：从I2C从设备中读取一字节的数据

* 入口参数：address:读取数据的寄存器地址

* 出口参数：返回一个从I2C从设备指定地址读到的数据

* 说 明：

* 范 例：无

******************************************************************************************************/

uint8_t I2C_ReadOneByteDataFromSlave(uint8_t address)

{

  volatile uint8_t t;

  

  //----------I2C起始信号--------------

  I2C1->CR2 |= I2C_CR2_START;//产生一个起始条件

  while(!((I2C1->SR1 & I2C_SR1_SB)));//读SR1寄存器，清除SB标志位

  _5NOPS;//根据数据手册,检测到标志位后,需插入5个NOP进行延时

  

  //-------发送写I2C从器件地址---------

  I2C1->DR=0xA0;//发送从设备地址

  while(!((I2C1->SR1 & I2C_SR1_ADDR)));//读SR1寄存器，清除ADDR标志位

  _5NOPS;//根据数据手册,检测到标志位后,需插入5个NOP进行延时

  if(!(I2C1->SR3 & I2C_SR3_TRA))return 1;//读SR3寄存器，清除ADDR标志位

  //  0: Data bytes received

  //  1: Data bytes transmitted

  

  //-----写I2C从器件寄存器地址--------

  I2C1->DR=address;

  while(!((I2C1->SR1 & I2C_SR1_BTF)));//等待地址发送完成

  _5NOPS;//根据数据手册,检测到标志位后,需插入5个NOP进行延时

  

  //--------I2C重复起始信号-----------

  I2C1->CR2 |= I2C_CR2_START;//重复产生一个起始条件

  while(!((I2C1->SR1 & I2C_SR1_SB)));//读SR1寄存器，清除SB标志位

  _5NOPS;//根据数据手册,检测到标志位后,需插入5个NOP进行延时

  

  //-------发送读I2C从器件地址---------

  I2C1->DR=0xA1;//发送从设备地址

  while(!((I2C1->SR1 & I2C_SR1_ADDR)));//读SR1寄存器，清除ADDR标志位

  _5NOPS;//根据数据手册,检测到标志位后,需插入5个NOP进行延时

  if((I2C1->SR3 & I2C_SR3_TRA))return 1;//读SR3寄存器，清除ADDR标志位

  while(!((I2C1->SR1 & I2C_SR1_RXNE)));//等待地址发送完成

  

  //-------------停止信号-------------

  I2C1->CR2 |= I2C_CR2_STOP;

  

  //-------------读取数据-------------

  t=I2C1->DR;

  

  return t;

}

/******************************************************************************************************

* 名 称：void I2C_WriteOneByteDataToSlave(uint8_t address,uint8_t dat)

* 功 能：写入一字节的数据到I2C设备中

* 入口参数：address:写入的数据存储地址    dat:待写入的数据

* 出口参数：无

* 说 明： 通过MSTM8L硬件写入I2C设备一个字节的数据

* 范 例：无

******************************************************************************************************/

uint8_t I2C_WriteOneByteDataToSlave(uint8_t address,uint8_t dat)

{

  volatile uint8_t t;

  //----------I2C起始信号--------------

  I2C1->CR2 |= I2C_CR2_START;//产生一个起始条件

  while(!((I2C1->SR1 & I2C_SR1_SB)));

  _5NOPS;//根据数据手册,检测到标志位后,需插入5个NOP进行延时

  I2C1->DR=0xA0;

  

  //--------写I2C从器件地址-----------

  while(!((I2C1->SR1 & I2C_SR1_ADDR)));

  _5NOPS;//根据数据手册,检测到标志位后,需插入5个NOP进行延时

  if(!(I2C1->SR3 & I2C_SR3_TRA))return 1;//读SR3寄存器，清除ADDR标志位

  

  //-----写I2C从器件寄存器地址--------

  while(!((I2C1->SR1 & I2C_SR1_TXE)));

  I2C1->DR=address;

  

  //-------写I2C数据到寄存器中--------

  while(!((I2C1->SR1 & I2C_SR1_TXE)));

  I2C1->DR=dat;

  while(!((I2C1->SR1 & I2C_SR1_TXE)));

  while(!((I2C1->SR1 & I2C_SR1_BTF)));

  _5NOPS;//根据数据手册,检测到标志位后,需插入5个NOP进行延时

  

  //-------------停止信号-------------

  I2C1->CR2 |= I2C_CR2_STOP;

  return 0;

}


/******************************************************************************************************

* 名 称： IIC_init()

* 功 能：初始化IIC

* 入口参数：无

* 出口参数：无

* 说 明：PC0--SDA   PC1--SCL

* 范 例：无

******************************************************************************************************/

void ATC24C08_I2C_Init(void)

{

  //----打开IIC外设时钟----

  CLK->PCKENR1 |= CLK_PCKENR1_I2C1;//

  I2C1->CR1 &= (uint8_t)(~I2C_CR1_PE);

  

  //----I2C输入时钟频率选择----

  I2C1->FREQR = 0x02;//2MHz

  /*  The allowed range is between 1 MHz and 16 MHz

  000000: not allowed

  000001: 1 MHz

  000010: 2 MHz

  ...

  010000: 16 MHz                                 */

  

  //----配置时钟控制寄存器----

  I2C1->CCRH = 0; //Standard mode I2C

  I2C1->CCRL = 10;    //SCK低电平时间配置

  //I2C的SCK时钟设置为100KHz,则SCK周期为10us

  //因为I2C1_FREQR_FREQ=0x02,即I2C输入时钟频率为2M,周期为0.5us

  //CCR=10时,SCK的低电平时间为tlow=10*0.5us=5us,SCk高电平时间为thigh=10*0.5us=5us

  //所以CCR=10时,SCK输出频率为100KHz

  

  //----配置上升时间寄存器----

  I2C1->TRISER = 3;//in standard mode, the maximum allowed SCL rise time is 1000 ns.

  //1 us / 0.5 us = 2 + 1


  I2C1->CR1 |= I2C_CR1_PE;//

  

}


#if 0 /* Test main — disabled, real main() is in main.c */
void main(void)

{

  static uint8_t tmp=0;

  ATC24C08_I2C_Init();

//  __asm__("rim");               //enable interrupts

  I2C_WriteOneByteDataToSlave(0x02,0x84);

  delay_100ms();

  tmp=I2C_ReadOneByteDataFromSlave(0x02);

  __asm__("nop");

  while(1)

  {

    __asm__("wfi");

  }

}
#endif


