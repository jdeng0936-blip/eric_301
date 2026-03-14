#include "stm8l15x.h"

#define A       1
#define B       2
#define C       4
#define AB      3
#define BC      6
#define AC      5

#define MSG_LEN         32

#define MSG_TIMER       1//定时器消息
#define MSG_KEY_TIMER   2//按键+1s时钟消息
#define MSG_COUNT       3//统计计数
#define MSG_ADC         4//ADC采样完成


//#pragma pack(1)


typedef struct //高压冲击记录结构体
{
	uint8_t  tim_trg;//计时器启动标识
	uint32_t tim_s;  //起始时间
	uint32_t tim_e;  //结束时间
	uint32_t tim_len;//时长
} TStroke_Rec;

typedef struct      //消息结构体
{
	uint8_t  msgtype;   //消息类型
	uint32_t msgval1;   //参数1
	uint32_t msgval2;   //参数2
} TMSG;

typedef struct      //消息队列控制
{
	uint8_t w;
	uint8_t r;
	TMSG msg[MSG_LEN];
} MsgQue;

typedef struct//雷击事件记录内容结构体 10 bytes
{
	uint8_t year;
	uint8_t mon;
	uint8_t day;
	uint8_t hour;
	uint8_t min;
	uint8_t sec;
	uint32_t pl;//高字节标识相别，低3字节标识雷击时长
} Trecord;

typedef struct//雷击参数统计结构体 10 bytes
{
	uint16_t tscount;//次数
	uint32_t tlmax;//当前时长
	uint32_t tltotal;//总时长
} Tstat;

//485通信数据包结构
#define RS485_AQ_PktLen 8   //485主机数据包长8字节

typedef struct//14 byte，用于485传输
{
	uint16_t index;//记录索引
	uint16_t phase;//相别
	uint16_t tlen;//时长
	uint16_t ym;//年月
	uint16_t dh;//日小时
	uint16_t ms;//分秒
	uint16_t batt;//电池电压x100
} Rs485u16Rlt;

typedef struct//主机下发询问数据包结构体 8 bytes
{
	uint8_t     addrID;//从机地址 1~254
	uint8_t     funID;//功能码 0x03
	uint16_t    staddr;//起始地址，大端模式(一个地址对应一个u16数据)
	uint16_t    offset;//偏移量，大端模式
	uint16_t    crc;//小端模式
} PKT_485M_Query;

typedef struct//从机应答数据包结构体 变长
{
	uint8_t     addrID;//从机地址1~254
	uint8_t     funID;//功能码0x03
	uint8_t     length;//数据长度(主机要求的数据    偏移量x2，以字节计算的数据长度)
	uint8_t     buf[125];//数据区(大端模式) + crc(小端模式)
} PKT_485C_AckQuery;

typedef struct//主机下发配置数据包结构体
{
    uint8_t 	addrID;//从机地址 1~254
    uint8_t 	funID;//功能码 0x10
    uint16_t 	staddr;//起始地址，大端模式(一个地址对应一个u16数据)
    uint16_t 	offset;//偏移量，大端模式
    uint8_t  	length;//数据长度(主机要求的数据	偏移量x2，以字节计算的数据长度)
    uint8_t  	buf[81]; //数据区(大端模式) + crc(小端模式)
} PTK_485M_Cfg;



uint16_t CRC_GetModbus16(uint8_t *pdata, int len);
void InitMsg(MsgQue *msgq);
void SendMsg(MsgQue *msgq, uint8_t type, uint32_t val1, uint32_t val2);
TMSG *RevMsg(MsgQue *msgq);
uint16_t Pkt_485ackquery(uint8_t addrID, uint8_t funID, uint16_t saddr, uint16_t offset, Rs485u16Rlt *rlt, uint8_t *packet);
void Rs485_Proc(void);
void Chk_State(void);


void A_Fxn(void);
void B_Fxn(void);
void C_Fxn(void);

// 存储管理与业务逻辑解耦
void Storage_Init(void);
void Storage_SaveSettings(uint8_t lang, uint8_t id_b3, uint8_t id_b2, uint8_t id_b1, uint8_t id_b0);
void Storage_ClearHistory(void);
void Storage_FactoryReset(void);

// 系统全局状态封装
uint8_t System_GetMode(void);
void System_InitMode(void);

// 统计与记录封装
Tstat* Record_GetStat(uint8_t phase);
Trecord* Record_GetRecd(void);
Trecord* Record_GetLRecd(void);

void Storage_SaveAllStats(void);
void Record_SaveNew(uint8_t* timeData, uint32_t phalen);
uint8_t Record_LoadHistory(uint8_t mode);

void mini_sprintf(char *buffer, const char *format, ...);
extern volatile uint32_t ticks;
extern MsgQue MsgSystem;

extern TStroke_Rec strokeA;
extern TStroke_Rec strokeB;
extern TStroke_Rec strokeC;
extern uint8_t  single_trg;//单次触发标识
extern uint32_t selfid;
extern uint8_t r485id;


