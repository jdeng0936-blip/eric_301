#include "stm8l15x.h"

//定义LED与按键接口
#define KEY_PORT  GPIOE
#define KEY_PINS  GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4

//使用位操作定义
/*
#define K_UP		GPIO_ReadInputDataBit(GPIOE,GPIO_Pin_0)//pe0
#define K_DOWN 		GPIO_ReadInputDataBit(GPIOE,GPIO_Pin_4)//pe4
#define K_LEFT 		GPIO_ReadInputDataBit(GPIOE,GPIO_Pin_1)//pe1
#define K_RIGHT 	GPIO_ReadInputDataBit(GPIOE,GPIO_Pin_3)//pe3
#define K_MENU  	GPIO_ReadInputDataBit(GPIOE,GPIO_Pin_2)//pe2
*/

#define K_LEFT		GPIO_ReadInputDataBit(GPIOE,GPIO_Pin_0)//pe0
#define K_RIGHT 	GPIO_ReadInputDataBit(GPIOE,GPIO_Pin_1)//pe1
#define K_MENU  	GPIO_ReadInputDataBit(GPIOE,GPIO_Pin_2)//pe2
#define K_UP 	    GPIO_ReadInputDataBit(GPIOE,GPIO_Pin_3)//pe3
#define K_DOWN		GPIO_ReadInputDataBit(GPIOE,GPIO_Pin_4)//pe4


//****定义键值*****************
#define KEY_UP					1
#define KEY_DOWN                2
#define KEY_LEFT                4
#define KEY_RIGHT               7
#define KEY_MENU                12

#define KEY_LEFT_DOWN			106		  //长按left + down

#define FRESH_DATA				98		  //系统键值，刷新数据	
#define FRESH_TIME  			99		  //系统键值，刷新时间

#define IIC_TIMEOUT				2000

//#pragma pack(1)

struct _KEY_CTR
{
    uint8_t   val;
    uint8_t   state;
    uint16_t  dly;
};
typedef struct _KEY_CTR KEY_CTR;

struct _EPROM_RW//EPROM地址列表
{
	uint8_t paddr;//页地址
	uint8_t daddr;//数据地址
};
typedef struct _EPROM_RW EPROM_RW; 

struct _SHOWDATA//数据显示索引控制
{
	uint8_t r;
	uint8_t w;
	uint8_t used;	
};
typedef struct _SHOWDATA SHOWDATA;

#define UBUFLEN	256

struct _U_BUF	//通道缓冲区结构
{
    uint16_t r;				//读指针
    uint16_t w;				//写指针
    uint16_t revn;			//有效数据
    uint8_t recbuf[UBUFLEN]; //缓存
};
typedef struct _U_BUF U_BUF;

extern U_BUF u1buf;
extern const EPROM_RW datactr[90];
extern SHOWDATA data_index;


void Delay(__IO uint16_t nCount);
void CLK_Config(void);
void TIM2_Init(void);
void TIM4_Init(void);

void Uart1_Init(void);
void Uart1_Send(uint8_t *data,uint16_t len);


void IIC_Init(void);
uint8_t I2C_ReadByte(uint8_t paddr,uint8_t addr);
void I2C_WriteByte(uint8_t paddr,uint8_t addr,uint8_t data);

void init_rtc(void);
void rtc_set_datetime(void);
void rtc_get_datetime(void);
uint8_t Scan_Key(void);
void Save_Data(uint8_t *p);
uint8_t Load_Data(uint8_t lr ,uint8_t *p);
void Save_Stat(uint8_t* p);//保存统计数据
void Load_Stat(uint8_t* p);//读取统计数据



extern uint16_t dmabuf[10];
extern uint32_t Verfin;//电源电压*1000
void ADC_Config(void);
void DMA_Config(void);





