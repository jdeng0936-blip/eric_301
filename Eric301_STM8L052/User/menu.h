#include "stm8l15x.h"

#define MENU_NUM 		8     //菜单长度volatile uint8 KeyFuncIndex=0; 
#define HALT_TIMEOUT      255       //调试模式：禁止息屏 (原值15)

//#pragma pack(1)

// UI 常量与特殊字体映射宏
#define UI_ICON_BATT_FULL  "LMN"
#define UI_ICON_BATT_HIGH  "OMN"
#define UI_ICON_BATT_MID   "OPN"
#define UI_ICON_BATT_LOW   "OPQ"

#define UI_ICON_ARROW_L    "<"
#define UI_ICON_ARROW_R    ">"
#define UI_ICON_TIMES      "EG"      // "次" 或类似单位
#define UI_ICON_LANG_CN    "TUV"     // "中文" 字模映射
#define UI_TITLE_ENG       "ENG"

#define UI_TITLE_SINGLE    "_SINGLE_L"
#define UI_TITLE_TOTAL     "_TOTAL__L"
#define UI_TITLE_CONFIG    "___CONFIG"
#define UI_TITLE_RECORD    "RECORD"
#define UI_TITLE_COND      "COND"    // 条件/其它

typedef struct				  //菜单结构体
{
    uint8_t index;            //当 前菜单索引号
    uint8_t keyup;            //上 键时转向的状态索引号
    uint8_t keydown;          //下 键时转向的状态索引号
    uint8_t keyleft;          //左
    uint8_t keyright;         //右
    uint8_t keymenu;          //菜单键时转向的状态索引号

    void (*OnShow)(void);         //当前状态应该执行的菜单显示和操作功能
    void (*OnUp)(void);
    void (*OnDown)(void);
    void (*OnLeft)(void);
    void (*OnRight)(void);
    void (*OnMenu)(void);
} TMenuStruct;

typedef struct
{
    uint8_t y;
    uint8_t x;
} TPos;

typedef struct
{
    uint8_t index;//当前位置
    uint8_t dt[12];//当前位置的数据
    TPos pos[12];//当前位置的坐标
} TAdjust;


extern TAdjust adjustdt;
extern char datestr[16];
extern char timestr[16];
extern char tempstr[16];
extern uint8_t delay_halt;
extern uint8_t language;

void Menu_Proc(uint8_t Keyvalue,uint32_t phalen);



