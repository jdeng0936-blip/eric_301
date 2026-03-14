#include "stm8l15x.h"


/* user BSP config*/
#define  IO_ST7565_CS_0   GPIO_ResetBits(GPIOB,GPIO_Pin_4)
#define  IO_ST7565_CS_1   GPIO_SetBits(GPIOB,GPIO_Pin_4)

#define  IO_ST7565_SDA_0  GPIO_ResetBits(GPIOB,GPIO_Pin_6)
#define  IO_ST7565_SDA_1  GPIO_SetBits(GPIOB,GPIO_Pin_6)

#define  IO_ST7565_SCK_0  GPIO_ResetBits(GPIOB,GPIO_Pin_5)
#define  IO_ST7565_SCK_1  GPIO_SetBits(GPIOB,GPIO_Pin_5)

#define  IO_ST7565_RST_0  GPIO_ResetBits(GPIOB,GPIO_Pin_2)
#define  IO_ST7565_RST_1  GPIO_SetBits(GPIOB,GPIO_Pin_2)

#define  IO_ST7565_RS_0   GPIO_ResetBits(GPIOB,GPIO_Pin_3)
#define  IO_ST7565_RS_1   GPIO_SetBits(GPIOB,GPIO_Pin_3)

#define  LCD_BKLIGHT_1	  GPIO_SetBits(GPIOB,GPIO_Pin_1)
#define  LCD_BKLIGHT_0    GPIO_ResetBits(GPIOB,GPIO_Pin_1)

void ST7565_Write(uint8_t dat,uint8_t rs);
void lcd_address(uint8_t page,uint8_t column);
void clear_screen(void);
void show_str_7x8(uint16_t page,uint16_t column,uint8_t *text);
void show_str_8x12(uint16_t page,uint16_t column,uint8_t *text);
void show_hz_12x12(uint16_t page,uint16_t column,uint8_t *text);
void show_line(uint16_t page,uint16_t column,uint8_t tag);
void show_pic_128x64(void);

void writec(uint8_t com);
void writed(uint8_t dat);
void lcd_init(void);






