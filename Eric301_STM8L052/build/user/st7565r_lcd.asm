;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module st7565r_lcd
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _logo
	.globl _char_7x8
	.globl _hz_12x12
	.globl _char_8x12
	.globl _ST7565_IO_Delay
	.globl _GPIO_ResetBits
	.globl _GPIO_SetBits
	.globl _ST7565_Write
	.globl _writec
	.globl _writed
	.globl _lcd_init
	.globl _lcd_address
	.globl _clear_screen
	.globl _show_str_8x12
	.globl _show_str_7x8
	.globl _show_hz_12x12
	.globl _show_pic_128x64
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	User/st7565r_lcd.c: 20: void ST7565_IO_Delay(__IO uint16_t t)
; genLabel
;	-----------------------------------------
;	 function ST7565_IO_Delay
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_ST7565_IO_Delay:
	pushw	x
; genReceive
	ldw	(0x01, sp), x
;	User/st7565r_lcd.c: 23: while (t != 0)
; genLabel
00101$:
; genIfx
	ldw	x, (0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00104$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00120$.
;	User/st7565r_lcd.c: 25: t--;
; genAssign
	ldw	x, (0x01, sp)
; genMinus
	decw	x
; genAssign
	ldw	(0x01, sp), x
; genGoto
	jra	00101$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00104$:
;	User/st7565r_lcd.c: 27: }
; genEndFunction
	popw	x
	ret
;	Total ST7565_IO_Delay function size at codegen: 2 bytes.
;	User/st7565r_lcd.c: 30: void ST7565_Write(uint8_t dat,uint8_t rs) //rs == 1 data rs==0  cmd
; genLabel
;	-----------------------------------------
;	 function ST7565_Write
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_ST7565_Write:
	pushw	x
; genReceive
	ld	(0x01, sp), a
;	User/st7565r_lcd.c: 34: IO_ST7565_CS_0;
; genSend
	ld	a, #0x10
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_ResetBits
;	User/st7565r_lcd.c: 35: if(!rs)
; genIfx
	tnz	(0x05, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00141$.
;	User/st7565r_lcd.c: 37: IO_ST7565_RS_0; //Command
; genSend
	ld	a, #0x08
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_ResetBits
; genGoto
	jra	00114$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/st7565r_lcd.c: 41: IO_ST7565_RS_1;
; genSend
	ld	a, #0x08
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_SetBits
;	User/st7565r_lcd.c: 44: for(i=0; i<8; i++)
; genLabel
00114$:
; genAssign
	clr	(0x02, sp)
; genLabel
00108$:
;	User/st7565r_lcd.c: 46: IO_ST7565_SCK_0;
; genSend
	ld	a, #0x20
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_ResetBits
;	User/st7565r_lcd.c: 47: if(dat&0x80)
; genAnd
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrpl	00105$
; peephole j8 removed jra by using inverse jump logic
; peephole j30 removed unused label 00142$.
; skipping generated iCode
;	User/st7565r_lcd.c: 48: IO_ST7565_SDA_1;
; genSend
	ld	a, #0x40
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_SetBits
; genGoto
	jra	00106$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	User/st7565r_lcd.c: 50: IO_ST7565_SDA_0;
; genSend
	ld	a, #0x40
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_ResetBits
; genLabel
00106$:
;	User/st7565r_lcd.c: 51: IO_ST7565_SCK_1;
; genSend
	ld	a, #0x20
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_SetBits
;	User/st7565r_lcd.c: 52: dat<<=1;
; genLeftShiftLiteral
	sll	(0x01, sp)
;	User/st7565r_lcd.c: 44: for(i=0; i<8; i++)
; genPlus
	inc	(0x02, sp)
; genCmp
; genCmpTnz
	ld	a, (0x02, sp)
	cp	a, #0x08
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00108$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00143$.
; skipping generated iCode
;	User/st7565r_lcd.c: 55: IO_ST7565_CS_1;
; genSend
	ld	a, #0x10
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_SetBits
;	User/st7565r_lcd.c: 56: IO_ST7565_RS_1;
; genSend
	ld	a, #0x08
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_SetBits
; genLabel
; peephole j30 removed unused label 00110$.
;	User/st7565r_lcd.c: 58: }
; genEndFunction
	popw	x
	popw	x
	pop	a
	jp	(x)
;	Total ST7565_Write function size at codegen: 4 bytes.
;	User/st7565r_lcd.c: 60: void writec(uint8_t com)
; genLabel
;	-----------------------------------------
;	 function writec
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_writec:
; genReceive
;	User/st7565r_lcd.c: 62: ST7565_Write(com,0);
; genIPush
	push	#0x00
; genSend
; genCall
	call	_ST7565_Write
; genLabel
; peephole j30 removed unused label 00101$.
;	User/st7565r_lcd.c: 63: }
; genEndFunction
	ret
;	Total writec function size at codegen: 1 bytes.
;	User/st7565r_lcd.c: 65: void writed(uint8_t dat)
; genLabel
;	-----------------------------------------
;	 function writed
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_writed:
; genReceive
;	User/st7565r_lcd.c: 67: ST7565_Write(dat,1);
; genIPush
	push	#0x01
; genSend
; genCall
	call	_ST7565_Write
; genLabel
; peephole j30 removed unused label 00101$.
;	User/st7565r_lcd.c: 68: }
; genEndFunction
	ret
;	Total writed function size at codegen: 1 bytes.
;	User/st7565r_lcd.c: 71: void lcd_init(void)
; genLabel
;	-----------------------------------------
;	 function lcd_init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_lcd_init:
;	User/st7565r_lcd.c: 73: IO_ST7565_CS_0;
; genSend
	ld	a, #0x10
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_ResetBits
;	User/st7565r_lcd.c: 74: IO_ST7565_RST_0;
; genSend
	ld	a, #0x04
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_ResetBits
;	User/st7565r_lcd.c: 75: ST7565_IO_Delay(1000);
; genSend
	ldw	x, #0x03e8
; genCall
	call	_ST7565_IO_Delay
;	User/st7565r_lcd.c: 76: IO_ST7565_RST_1;
; genSend
	ld	a, #0x04
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_SetBits
;	User/st7565r_lcd.c: 77: ST7565_IO_Delay(1000);
; genSend
	ldw	x, #0x03e8
; genCall
	call	_ST7565_IO_Delay
;	User/st7565r_lcd.c: 78: ST7565_Write(0xE2,0); //Soft Reset
; genIPush
	push	#0x00
; genSend
	ld	a, #0xe2
; genCall
	call	_ST7565_Write
;	User/st7565r_lcd.c: 79: ST7565_Write(0xA2,0); //Duty bias set  0xA2 is light 0xA3 is dark
; genIPush
	push	#0x00
; genSend
	ld	a, #0xa2
; genCall
	call	_ST7565_Write
;	User/st7565r_lcd.c: 81: ST7565_Write(0xA0,0); //ADC select S0->S131(?????S1-S128)
; genIPush
	push	#0x00
; genSend
	ld	a, #0xa0
; genCall
	call	_ST7565_Write
;	User/st7565r_lcd.c: 82: ST7565_Write(0xC8,0); //com1 --> com64
; genIPush
	push	#0x00
; genSend
	ld	a, #0xc8
; genCall
	call	_ST7565_Write
;	User/st7565r_lcd.c: 83: ST7565_Write(0x23,0); //V0 Voltage Regulator Internal Resistor Ratio Set 0x20~0x27
; genIPush
	push	#0x00
; genSend
	ld	a, #0x23
; genCall
	call	_ST7565_Write
;	User/st7565r_lcd.c: 84: ST7565_IO_Delay(500);
; genSend
	ldw	x, #0x01f4
; genCall
	call	_ST7565_IO_Delay
;	User/st7565r_lcd.c: 85: ST7565_Write(0x81,0); //V0 voltage set first cmd
; genIPush
	push	#0x00
; genSend
	ld	a, #0x81
; genCall
	call	_ST7565_Write
;	User/st7565r_lcd.c: 86: ST7565_Write(0x2f & 0x3F,0); //following V0 voltage set 0x00~0x3F
; genIPush
	push	#0x00
; genSend
	ld	a, #0x2f
; genCall
	call	_ST7565_Write
;	User/st7565r_lcd.c: 87: ST7565_IO_Delay(500);
; genSend
	ldw	x, #0x01f4
; genCall
	call	_ST7565_IO_Delay
;	User/st7565r_lcd.c: 88: ST7565_Write(0xF8,0); //Booster Ratio Select Mode Set first cmd
; genIPush
	push	#0x00
; genSend
	ld	a, #0xf8
; genCall
	call	_ST7565_Write
;	User/st7565r_lcd.c: 89: ST7565_Write(0x00 & 0x03,0); //following Booset Ratio Register Set 0x00~0x03
; genIPush
	push	#0x00
; genSend
	clr	a
; genCall
	call	_ST7565_Write
;	User/st7565r_lcd.c: 90: ST7565_IO_Delay(500);
; genSend
	ldw	x, #0x01f4
; genCall
	call	_ST7565_IO_Delay
;	User/st7565r_lcd.c: 91: ST7565_Write(0x2F,0); //power control all on
; genIPush
	push	#0x00
; genSend
	ld	a, #0x2f
; genCall
	call	_ST7565_Write
;	User/st7565r_lcd.c: 92: ST7565_IO_Delay(500);
; genSend
	ldw	x, #0x01f4
; genCall
	call	_ST7565_IO_Delay
;	User/st7565r_lcd.c: 93: ST7565_Write(0x40 + 0x00,0); //0x40 + Display Start Line(0)
; genIPush
	push	#0x00
; genSend
	ld	a, #0x40
; genCall
	call	_ST7565_Write
;	User/st7565r_lcd.c: 94: clear_screen();
; genCall
	call	_clear_screen
;	User/st7565r_lcd.c: 95: ST7565_Write(0xAF,0); //Display ON: 0xaf, OFF:0xae
; genIPush
	push	#0x00
; genSend
	ld	a, #0xaf
; genCall
	call	_ST7565_Write
;	User/st7565r_lcd.c: 97: show_pic_128x64();
; genCall
	call	_show_pic_128x64
;	User/st7565r_lcd.c: 98: LCD_BKLIGHT_1;//背光开
; genSend
	ld	a, #0x02
; genSend
	ldw	x, #0x5005
; genCall
; genLabel
; peephole j30 removed unused label 00101$.
;	User/st7565r_lcd.c: 100: }
; genEndFunction
	jp	_GPIO_SetBits
; peephole 52 removed unreachable ret.
;	Total lcd_init function size at codegen: 1 bytes.
;	User/st7565r_lcd.c: 103: void lcd_address(uint8_t page,uint8_t column)
; genLabel
;	-----------------------------------------
;	 function lcd_address
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_lcd_address:
; genReceive
	ld	xl, a
;	User/st7565r_lcd.c: 105: column=column-1; //我们平常所说的第 1 列，在 LCD 驱动 IC 里是第 0 列。所以在这里减去 1.
; genCast
; genAssign
; genMinus
	dec	(0x03, sp)
; peephole 16 applied dec on (0x03, sp) instead of a.
;	User/st7565r_lcd.c: 106: page=page-1;
; genCast
; genAssign
	ld	a, xl
; genMinus
	dec	a
;	User/st7565r_lcd.c: 107: writec(0xb0+page); //设置页地址。每页是 8 行。一个画面的 64 行被分成 8 个页。我们平常所说的第 1 页，在 LCD 驱动IC 里是第 0 页，所以在这里减去 1*/
; genCast
; genAssign
; genPlus
	add	a, #0xb0
; genSend
; genCall
	call	_writec
;	User/st7565r_lcd.c: 108: writec(((column>>4)&0x0f)+0x10); //设置列地址的高 4 位
; genRightShiftLiteral
	ld	a, (0x03, sp)
	swap	a
; genCast
; genAssign
; genAnd
	and	a, #15
; peephole 130 combined 'and-and' (0x0f, 0x0f) into 'and' (15).
; genPlus
	add	a, #0x10
; genSend
; genCall
	call	_writec
;	User/st7565r_lcd.c: 109: writec(column&0x0f); //设置列地址的低 4 位
; genAssign
	ld	a, (0x03, sp)
; genAnd
	and	a, #0x0f
; genSend
; genCall
	call	_writec
; genLabel
; peephole j30 removed unused label 00101$.
;	User/st7565r_lcd.c: 110: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
;	Total lcd_address function size at codegen: 3 bytes.
;	User/st7565r_lcd.c: 112: void clear_screen(void)
; genLabel
;	-----------------------------------------
;	 function clear_screen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_clear_screen:
	push	a
;	User/st7565r_lcd.c: 116: for(i=0; i<8; i++)
; genAssign
	clr	(0x01, sp)
; genLabel
00105$:
;	User/st7565r_lcd.c: 118: lcd_address(1+i,1);
; genCast
; genAssign
	ld	a, (0x01, sp)
; genPlus
	inc	a
; genIPush
	push	#0x01
; genSend
; genCall
	call	_lcd_address
;	User/st7565r_lcd.c: 119: for(j=0; j<128; j++)
; genAssign
	clr	a
; genLabel
00103$:
;	User/st7565r_lcd.c: 121: writed(0x00);
; genSend
	push	a
	clr	a
; genCall
	call	_writed
	pop	a
;	User/st7565r_lcd.c: 119: for(j=0; j<128; j++)
; genPlus
	inc	a
; genCmp
; genCmpTnz
	cp	a, #0x80
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00103$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00132$.
; skipping generated iCode
;	User/st7565r_lcd.c: 116: for(i=0; i<8; i++)
; genPlus
	inc	(0x01, sp)
; genCmp
; genCmpTnz
	ld	a, (0x01, sp)
	cp	a, #0x08
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00105$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00133$.
; skipping generated iCode
; genLabel
; peephole j30 removed unused label 00107$.
;	User/st7565r_lcd.c: 125: }
; genEndFunction
	pop	a
	ret
;	Total clear_screen function size at codegen: 2 bytes.
;	User/st7565r_lcd.c: 128: void show_str_8x12(uint16_t page,uint16_t column,uint8_t *text)
; genLabel
;	-----------------------------------------
;	 function show_str_8x12
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 9 bytes.
_show_str_8x12:
	sub	sp, #9
; genReceive
	ldw	(0x06, sp), x
;	User/st7565r_lcd.c: 130: uint16_t i=0,j,k,n;
; genAssign
	clrw	x
	ldw	(0x04, sp), x
;	User/st7565r_lcd.c: 132: while(text[i]>0x00)
; skipping iCode since result will be rematerialized
; genLabel
00113$:
; genPlus
	ldw	x, (0x0e, sp)
	addw	x, (0x04, sp)
; genPointerGet
	ld	a, (x)
; genIfx
	ld	(0x09, sp), a
; peephole 31a removed redundant tnz.
	jrne	00194$
	jp	00120$
00194$:
;	User/st7565r_lcd.c: 148: i++;
; genPlus
	ldw	x, (0x04, sp)
	incw	x
	ldw	(0x01, sp), x
;	User/st7565r_lcd.c: 134: if((text[i]>=0x30)&&(text[i]<=0x56))
; genCmp
; genCmpTnz
; peephole j5 changed absolute to relative unconditional jump.
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00195$.
; skipping generated iCode
; genCmp
; genCmpTnz
	ld	a, (0x09, sp)
	cp	a, #0x30
	jrc	00108$
; peephole 42 removed redundant load of a from (0x09, sp).
	cp	a, #0x56
; peephole j5 changed absolute to relative unconditional jump.
	jrugt	00108$
; peephole j17 removed jp by using inverse jump logic
; peephole j30 removed unused label 00196$.
; skipping generated iCode
;	User/st7565r_lcd.c: 136: j=text[i]-0x30;
; genCast
; genAssign
; genMinus
	ld	a, (0x09, sp)
	sub	a, #0x30
	ld	(0x09, sp), a
; genCast
; genAssign
	clr	(0x08, sp)
; genGoto
	jra	00130$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	User/st7565r_lcd.c: 138: else if(text[i]==0x20)//空格,
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x20
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00198$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00105$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00199$.
; skipping generated iCode
;	User/st7565r_lcd.c: 140: j=16;
; genAssign
	ldw	x, #0x0010
	ldw	(0x08, sp), x
; genGoto
	jra	00130$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	User/st7565r_lcd.c: 142: else if(text[i]==0x2d)
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x2d
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00201$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00202$.
; skipping generated iCode
;	User/st7565r_lcd.c: 144: j=15;
; genAssign
	ldw	x, #0x000f
	ldw	(0x08, sp), x
; genGoto
	jra	00130$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/st7565r_lcd.c: 148: i++;
; genAssign
	ldw	y, (0x01, sp)
	ldw	(0x04, sp), y
;	User/st7565r_lcd.c: 149: continue;
; genGoto
	jra	00113$
; peephole j5 changed absolute to relative unconditional jump.
;	User/st7565r_lcd.c: 152: for(n=0; n<2; n++)
; genLabel
00130$:
; genLeftShiftLiteral
	sll	(0x09, sp)
	rlc	(0x08, sp)
	sll	(0x09, sp)
	rlc	(0x08, sp)
	sll	(0x09, sp)
	rlc	(0x08, sp)
	sll	(0x09, sp)
	rlc	(0x08, sp)
; genPlus
	ldw	x, (0x08, sp)
	addw	x, #(_char_8x12+0)
	ldw	(0x03, sp), x
; genAssign
	clrw	x
	ldw	(0x08, sp), x
; genLabel
00118$:
;	User/st7565r_lcd.c: 154: lcd_address(page+n,column);
; genCast
; genAssign
	ld	a, (0x0d, sp)
	ld	xl, a
; genCast
; genAssign
	ld	a, (0x07, sp)
; genCast
; genAssign
	push	a
	ld	a, (0x0a, sp)
	ld	(0x06, sp), a
	pop	a
; genPlus
	add	a, (0x05, sp)
; genIPush
	pushw	x
	addw	sp, #1
; genSend
; genCall
	call	_lcd_address
;	User/st7565r_lcd.c: 155: for(k=0; k<8; k++)
; genAssign
	clrw	y
; genLabel
00116$:
;	User/st7565r_lcd.c: 157: writed(char_8x12[j][k+8*n]);/*显示ASCII 字到 LCD 上，y 为页地址，x 为列地址，最后为数据*/
; genCast
; genAssign
	ldw	x, y
; genLeftShiftLiteral
	ld	a, (0x05, sp)
	sll	a
	sll	a
	sll	a
; genCast
; genAssign
; genPlus
	pushw	x
	add	a, (2, sp)
	popw	x
; genPlus
	clrw	x
	ld	xl, a
	addw	x, (0x03, sp)
; genPointerGet
	ld	a, (x)
; genSend
	pushw	y
; genCall
	call	_writed
	popw	y
;	User/st7565r_lcd.c: 155: for(k=0; k<8; k++)
; genPlus
	incw	y
; genCast
; genAssign
	ldw	x, y
; genCmp
; genCmpTnz
	cpw	x, #0x0008
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00116$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00203$.
; skipping generated iCode
;	User/st7565r_lcd.c: 152: for(n=0; n<2; n++)
; genPlus
	ldw	x, (0x08, sp)
	incw	x
; peephole j30 removed unused label 00204$.
; genCast
; genAssign
	ldw	(0x08, sp), x
; peephole 4w removed redundant load from (0x08, sp) into x.
; genCmp
; genCmpTnz
	cpw	x, #0x0002
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00118$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00205$.
; skipping generated iCode
;	User/st7565r_lcd.c: 160: i++;
; genAssign
	ldw	y, (0x01, sp)
	ldw	(0x04, sp), y
;	User/st7565r_lcd.c: 161: column+=8;
; genCast
; genAssign
	ldw	x, (0x0c, sp)
; genPlus
	addw	x, #0x0008
; genCast
; genAssign
; genAssign
	ldw	(0x0c, sp), x
; genGoto
	jp	00113$
; genLabel
00120$:
;	User/st7565r_lcd.c: 164: }
; genEndFunction
	ldw	x, (10, sp)
	addw	sp, #15
	jp	(x)
;	Total show_str_8x12 function size at codegen: 5 bytes.
;	User/st7565r_lcd.c: 167: void show_str_7x8(uint16_t page,uint16_t column,uint8_t *text)
; genLabel
;	-----------------------------------------
;	 function show_str_7x8
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 8 bytes.
_show_str_7x8:
	sub	sp, #8
; genReceive
	ldw	(0x05, sp), x
;	User/st7565r_lcd.c: 169: uint16_t i=0,j,k;
; genAssign
	clrw	x
	ldw	(0x03, sp), x
;	User/st7565r_lcd.c: 171: while(text[i]>0x00)
; skipping iCode since result will be rematerialized
; genLabel
00109$:
; genPlus
	ldw	x, (0x0d, sp)
	addw	x, (0x03, sp)
; genPointerGet
	ld	a, (x)
; genIfx
	ld	(0x08, sp), a
; peephole 31a removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00114$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00166$.
;	User/st7565r_lcd.c: 183: i++;
; genPlus
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x01, sp), x
;	User/st7565r_lcd.c: 173: if((text[i]>=0x30)&&(text[i]<=0x7b))
; genCmp
; genCmpTnz
; peephole j5 changed absolute to relative unconditional jump.
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00167$.
; skipping generated iCode
; genCmp
; genCmpTnz
	ld	a, (0x08, sp)
	cp	a, #0x30
	jrc	00105$
; peephole 42 removed redundant load of a from (0x08, sp).
	cp	a, #0x7b
; peephole j5 changed absolute to relative unconditional jump.
	jrugt	00105$
; peephole j17 removed jp by using inverse jump logic
; peephole j30 removed unused label 00168$.
; skipping generated iCode
;	User/st7565r_lcd.c: 175: j=text[i]-0x30;
; genCast
; genAssign
; genMinus
	ld	a, (0x08, sp)
	sub	a, #0x30
	ld	(0x08, sp), a
; genCast
; genAssign
	clr	(0x07, sp)
; genGoto
	jra	00106$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	User/st7565r_lcd.c: 177: else if(text[i]==0x20)//' '空格,
; genCmpEQorNE
	ld	a, (0x08, sp)
	cp	a, #0x20
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00170$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00171$.
; skipping generated iCode
;	User/st7565r_lcd.c: 179: j=16;
; genAssign
	ldw	x, #0x0010
	ldw	(0x07, sp), x
; genGoto
	jra	00106$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/st7565r_lcd.c: 183: i++;
; genAssign
	ldw	y, (0x01, sp)
	ldw	(0x03, sp), y
;	User/st7565r_lcd.c: 184: continue;
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00106$:
;	User/st7565r_lcd.c: 187: lcd_address(page,column);
; genCast
; genAssign
	ld	a, (0x0c, sp)
	ld	xl, a
; genCast
; genAssign
	ld	a, (0x06, sp)
; genIPush
	pushw	x
	addw	sp, #1
; genSend
; genCall
	call	_lcd_address
;	User/st7565r_lcd.c: 188: for(k=0; k<8; k++)
; genLeftShiftLiteral
	sll	(0x08, sp)
	rlc	(0x07, sp)
	sll	(0x08, sp)
	rlc	(0x07, sp)
	sll	(0x08, sp)
	rlc	(0x07, sp)
; genPlus
	ldw	x, (0x07, sp)
	addw	x, #(_char_7x8+0)
	ldw	(0x03, sp), x
; genAssign
	clrw	x
	ldw	(0x07, sp), x
; genLabel
00112$:
;	User/st7565r_lcd.c: 190: writed(char_7x8[j][k]);/*显示ASCII 字到 LCD 上，y 为页地址，x 为列地址，最后为数据*/
; genPlus
	ldw	x, (0x03, sp)
	addw	x, (0x07, sp)
; genPointerGet
	ld	a, (x)
; genSend
; genCall
	call	_writed
;	User/st7565r_lcd.c: 188: for(k=0; k<8; k++)
; genPlus
	ldw	x, (0x07, sp)
	incw	x
; peephole j30 removed unused label 00172$.
; genCast
; genAssign
	ldw	(0x07, sp), x
; peephole 4w removed redundant load from (0x07, sp) into x.
; genCmp
; genCmpTnz
	cpw	x, #0x0008
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00112$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00173$.
; skipping generated iCode
;	User/st7565r_lcd.c: 192: i++;
; genAssign
	ldw	y, (0x01, sp)
	ldw	(0x03, sp), y
;	User/st7565r_lcd.c: 193: column+=8;//横
; genCast
; genAssign
	ldw	x, (0x0b, sp)
; genPlus
	addw	x, #0x0008
; genCast
; genAssign
; genAssign
	ldw	(0x0b, sp), x
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00114$:
;	User/st7565r_lcd.c: 195: }
; genEndFunction
	ldw	x, (9, sp)
	addw	sp, #14
	jp	(x)
;	Total show_str_7x8 function size at codegen: 5 bytes.
;	User/st7565r_lcd.c: 197: void show_hz_12x12(uint16_t page,uint16_t column,uint8_t *text)
; genLabel
;	-----------------------------------------
;	 function show_hz_12x12
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 11 bytes.
_show_hz_12x12:
	sub	sp, #11
; genReceive
	ldw	(0x06, sp), x
;	User/st7565r_lcd.c: 199: uint16_t i=0,j,k,n;
; genAssign
	clrw	y
;	User/st7565r_lcd.c: 201: while(text[i]>0x00)
; skipping iCode since result will be rematerialized
; genLabel
00107$:
; genPlus
	ldw	x, y
	addw	x, (0x10, sp)
; genPointerGet
	ld	a, (x)
; genIfx
	ld	(0x0b, sp), a
; peephole 31a removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00114$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00174$.
;	User/st7565r_lcd.c: 214: i++;
; genPlus
	ldw	x, y
	incw	x
	ldw	(0x01, sp), x
;	User/st7565r_lcd.c: 203: if((text[i]>=0x41)&&(text[i]<=0x82))
; genCmp
; genCmpTnz
; peephole j5 changed absolute to relative unconditional jump.
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00175$.
; skipping generated iCode
; genCmp
; genCmpTnz
	ld	a, (0x0b, sp)
	cp	a, #0x41
	jrc	00104$
; peephole 42 removed redundant load of a from (0x0b, sp).
	cp	a, #0x82
; peephole j5 changed absolute to relative unconditional jump.
	jrugt	00104$
; peephole j17 removed jp by using inverse jump logic
; peephole j30 removed unused label 00176$.
; skipping generated iCode
;	User/st7565r_lcd.c: 205: j=text[i]-0x41;
; genCast
; genAssign
	ld	a, (0x0b, sp)
; genMinus
	sub	a, #0x41
; genCast
; genAssign
	clrw	x
;	User/st7565r_lcd.c: 206: for(n=0; n<2; n++)
; genMult
; genMultLit
	ld	xl, a
	pushw	x
	sllw	x
	addw	x, (1, sp)
	sllw	x
	sllw	x
	addw	sp, #2
; genPlus
	addw	x, #(_hz_12x12+0)
	ldw	(0x03, sp), x
; genAssign
	clrw	x
	ldw	(0x08, sp), x
; genLabel
00112$:
;	User/st7565r_lcd.c: 208: lcd_address(page+n,column);
; genCast
; genAssign
	ld	a, (0x0f, sp)
	ld	xl, a
; genCast
; genAssign
	ld	a, (0x07, sp)
; genCast
; genAssign
	push	a
	ld	a, (0x0a, sp)
	ld	(0x06, sp), a
	pop	a
; genPlus
	add	a, (0x05, sp)
; genIPush
	pushw	x
	addw	sp, #1
; genSend
; genCall
	call	_lcd_address
;	User/st7565r_lcd.c: 209: for(k=0; k<12; k++)
; genAssign
	clrw	x
	ldw	(0x0a, sp), x
; genLabel
00110$:
;	User/st7565r_lcd.c: 211: writed(hz_12x12[j][k+12*n]);/*显示ASCII 字到 LCD 上，y 为页地址，x 为列地址，最后为数据*/
; genCast
; genAssign
	ld	a, (0x0b, sp)
; genMult
	push	a
	ld	a, (0x06, sp)
	ld	xl, a
	ld	a, #0x0c
	mul	x, a
	pop	a
; genCast
; genAssign
; genPlus
	pushw	x
	add	a, (2, sp)
	popw	x
; genPlus
	clrw	x
	ld	xl, a
	addw	x, (0x03, sp)
; genPointerGet
	ld	a, (x)
; genSend
; genCall
	call	_writed
;	User/st7565r_lcd.c: 209: for(k=0; k<12; k++)
; genPlus
	ldw	x, (0x0a, sp)
	incw	x
; peephole j30 removed unused label 00177$.
; genCast
; genAssign
	ldw	(0x0a, sp), x
; peephole 4w removed redundant load from (0x0a, sp) into x.
; genCmp
; genCmpTnz
	cpw	x, #0x000c
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00110$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00178$.
; skipping generated iCode
;	User/st7565r_lcd.c: 206: for(n=0; n<2; n++)
; genPlus
	ldw	x, (0x08, sp)
	incw	x
; peephole j30 removed unused label 00179$.
; genCast
; genAssign
	ldw	(0x08, sp), x
; peephole 4w removed redundant load from (0x08, sp) into x.
; genCmp
; genCmpTnz
	cpw	x, #0x0002
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00112$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00180$.
; skipping generated iCode
;	User/st7565r_lcd.c: 214: i++;
; genAssign
	ldw	y, (0x01, sp)
;	User/st7565r_lcd.c: 215: column+=12;
; genCast
; genAssign
	ldw	x, (0x0e, sp)
; genPlus
	addw	x, #0x000c
; genCast
; genAssign
; genAssign
	ldw	(0x0e, sp), x
; genGoto
	jra	00107$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00104$:
;	User/st7565r_lcd.c: 218: i++;
; genAssign
	ldw	y, (0x01, sp)
; genGoto
	jra	00107$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00114$:
;	User/st7565r_lcd.c: 221: }
; genEndFunction
	ldw	x, (12, sp)
	addw	sp, #17
	jp	(x)
;	Total show_hz_12x12 function size at codegen: 5 bytes.
;	User/st7565r_lcd.c: 225: void show_pic_128x64(void)
; genLabel
;	-----------------------------------------
;	 function show_pic_128x64
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_show_pic_128x64:
	sub	sp, #4
;	User/st7565r_lcd.c: 228: uint16_t k=16;
; genAssign
	ldw	x, #0x0010
	ldw	(0x01, sp), x
;	User/st7565r_lcd.c: 230: for(j=1; j<=8; j++)
; skipping iCode since result will be rematerialized
; genAssign
	ld	a, #0x01
	ld	(0x03, sp), a
; genLabel
00105$:
;	User/st7565r_lcd.c: 232: lcd_address(j,0);
; genIPush
	push	#0x00
; genSend
	ld	a, (0x04, sp)
; genCall
	call	_lcd_address
;	User/st7565r_lcd.c: 233: for(i=0; i<128; i++)
; genAssign
	ldw	x, (0x01, sp)
; genAssign
	clr	(0x04, sp)
; genLabel
00103$:
;	User/st7565r_lcd.c: 235: writed(logo[k++]);
; genPlus
	ldw	y, x
	addw	y, #(_logo+0)
; genPlus
	incw	x
; genPointerGet
	ld	a, (y)
; genSend
	pushw	x
; genCall
	call	_writed
	popw	x
;	User/st7565r_lcd.c: 233: for(i=0; i<128; i++)
; genPlus
	inc	(0x04, sp)
; genCmp
; genCmpTnz
	ld	a, (0x04, sp)
	cp	a, #0x80
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00103$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00132$.
; skipping generated iCode
;	User/st7565r_lcd.c: 230: for(j=1; j<=8; j++)
; genAssign
	ldw	(0x01, sp), x
; genPlus
	inc	(0x03, sp)
; genCmp
; genCmpTnz
	ld	a, (0x03, sp)
	cp	a, #0x08
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00105$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00133$.
; skipping generated iCode
; genLabel
; peephole j30 removed unused label 00107$.
;	User/st7565r_lcd.c: 238: }
; genEndFunction
	addw	sp, #4
	ret
;	Total show_pic_128x64 function size at codegen: 3 bytes.
	.area CODE
	.area CONST
	.area CONST
_char_8x12:
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x30	; 48	'0'
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x1c	; 28
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0xc6	; 198
	.db #0xfc	; 252
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x38	; 56	'8'
	.db #0x2e	; 46
	.db #0x27	; 39
	.db #0x21	; 33
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x1c	; 28
	.db #0x86	; 134
	.db #0x82	; 130
	.db #0xc6	; 198
	.db #0x7c	; 124
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x1c	; 28
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x31	; 49	'1'
	.db #0x1f	; 31
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xe0	; 224
	.db #0x78	; 120	'x'
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x62	; 98	'b'
	.db #0x22	; 34
	.db #0x62	; 98	'b'
	.db #0xc2	; 194
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x30	; 48	'0'
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0xc6	; 198
	.db #0x42	; 66	'B'
	.db #0xc6	; 198
	.db #0x9c	; 156
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x30	; 48	'0'
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x82	; 130
	.db #0xf2	; 242
	.db #0x7e	; 126
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3f	; 63
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x7c	; 124
	.db #0xc6	; 198
	.db #0x82	; 130
	.db #0xc6	; 198
	.db #0x7c	; 124
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x1f	; 31
	.db #0x31	; 49	'1'
	.db #0x20	; 32
	.db #0x31	; 49	'1'
	.db #0x1f	; 31
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0xfc	; 252
	.db #0x86	; 134
	.db #0x02	; 2
	.db #0x86	; 134
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x1c	; 28
	.db #0x31	; 49	'1'
	.db #0x21	; 33
	.db #0x31	; 49	'1'
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0x70	; 112	'p'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x3f	; 63
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x3f	; 63
	.db #0x38	; 56	'8'
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0xcc	; 204
	.db #0x78	; 120	'x'
	.db #0x30	; 48	'0'
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x31	; 49	'1'
	.db #0x1f	; 31
	.db #0x0e	; 14
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0c	; 12
	.db #0x38	; 56	'8'
	.db #0x30	; 48	'0'
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x30	; 48	'0'
	.db #0x1c	; 28
	.db #0x0c	; 12
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1c	; 28
	.db #0xf8	; 248
	.db #0xe0	; 224
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x38	; 56	'8'
	.db #0x1f	; 31
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0xfc	; 252
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xfc	; 252
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x3c	; 60
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0x3c	; 60
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x78	; 120	'x'
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x1e	; 30
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x20	; 32
	.db #0x30	; 48	'0'
	.db #0x38	; 56	'8'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x38	; 56	'8'
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xfe	; 254
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0x70	; 112	'p'
	.db #0xf8	; 248
	.db #0xdc	; 220
	.db #0xce	; 206
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area CODE
	.area CONST
_hz_12x12:
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0xff	; 255
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x42	; 66	'B'
	.db #0xc2	; 194
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0xce	; 206
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x92	; 146
	.db #0xbf	; 191
	.db #0xaa	; 170
	.db #0xba	; 186
	.db #0xcf	; 207
	.db #0xba	; 186
	.db #0xc4	; 196
	.db #0xab	; 171
	.db #0x92	; 146
	.db #0xae	; 174
	.db #0xc2	; 194
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x0e	; 14
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0e	; 14
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0xa2	; 162
	.db #0xae	; 174
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0xff	; 255
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0xae	; 174
	.db #0xe2	; 226
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0x90	; 144
	.db #0x8e	; 142
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0xff	; 255
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0xf2	; 242
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe2	; 226
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x51	; 81	'Q'
	.db #0x95	; 149
	.db #0x15	; 21
	.db #0x95	; 149
	.db #0xf5	; 245
	.db #0x95	; 149
	.db #0x15	; 21
	.db #0x9f	; 159
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xd2	; 210
	.db #0x32	; 50	'2'
	.db #0x92	; 146
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0xff	; 255
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0xfc	; 252
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0xf2	; 242
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xff	; 255
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x80	; 128
	.db #0x20	; 32
	.db #0x18	; 24
	.db #0x87	; 135
	.db #0x74	; 116	't'
	.db #0x84	; 132
	.db #0x04	; 4
	.db #0x14	; 20
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0xa5	; 165
	.db #0x27	; 39
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0xf2	; 242
	.db #0x00	; 0
	.db #0xf9	; 249
	.db #0xa9	; 169
	.db #0xab	; 171
	.db #0xfd	; 253
	.db #0xad	; 173
	.db #0xab	; 171
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x5f	; 95
	.db #0x55	; 85	'U'
	.db #0xf5	; 245
	.db #0x15	; 21
	.db #0x55	; 85	'U'
	.db #0xd5	; 213
	.db #0x5f	; 95
	.db #0xd0	; 208
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xd0	; 208
	.db #0x3f	; 63
	.db #0xd0	; 208
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x48	; 72	'H'
	.db #0x88	; 136
	.db #0x08	; 8
	.db #0xff	; 255
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xff	; 255
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0xe4	; 228
	.db #0x24	; 36
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0xff	; 255
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x44	; 68	'D'
	.db #0x40	; 64
	.db #0xfc	; 252
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0xfd	; 253
	.db #0x21	; 33
	.db #0xa1	; 161
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0xff	; 255
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1c	; 28
	.db #0x64	; 100	'd'
	.db #0x85	; 133
	.db #0x06	; 6
	.db #0x84	; 132
	.db #0x64	; 100	'd'
	.db #0x1c	; 28
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x22	; 34
	.db #0xa2	; 162
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x22	; 34
	.db #0xbe	; 190
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x98	; 152
	.db #0xd4	; 212
	.db #0xb3	; 179
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x64	; 100	'd'
	.db #0xd4	; 212
	.db #0x4d	; 77	'M'
	.db #0xc6	; 198
	.db #0x54	; 84	'T'
	.db #0xe4	; 228
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x1e	; 30
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1e	; 30
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0xf2	; 242
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0xcf	; 207
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x4f	; 79	'O'
	.db #0xd0	; 208
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x17	; 23
	.db #0xd5	; 213
	.db #0x55	; 85	'U'
	.db #0x57	; 87	'W'
	.db #0x7d	; 125
	.db #0x57	; 87	'W'
	.db #0x55	; 85	'U'
	.db #0xd5	; 213
	.db #0x17	; 23
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0e	; 14
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x8d	; 141
	.db #0xc5	; 197
	.db #0x65	; 101	'e'
	.db #0x3d	; 61
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0b	; 11
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x0d	; 13
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0xfd	; 253
	.db #0xd9	; 217
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xc1	; 193
	.db #0xa1	; 161
	.db #0x91	; 145
	.db #0xf9	; 249
	.db #0xfd	; 253
	.db #0x81	; 129
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0b	; 11
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x3d	; 61
	.db #0x3d	; 61
	.db #0x25	; 37
	.db #0xe5	; 229
	.db #0xc5	; 197
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0f	; 15
	.area CODE
	.area CONST
_char_7x8:
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x64	; 100	'd'
	.db #0x72	; 114	'r'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x4a	; 74	'J'
	.db #0x4c	; 76	'L'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x7e	; 126
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x4e	; 78	'N'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x42	; 66	'B'
	.db #0x32	; 50	'2'
	.db #0x0a	; 10
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x34	; 52	'4'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x72	; 114	'r'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x62	; 98	'b'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x62	; 98	'b'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0xc4	; 196
	.db #0xb4	; 180
	.db #0xaa	; 170
	.db #0xba	; 186
	.db #0x6a	; 106	'j'
	.db #0x26	; 38
	.db #0x1c	; 28
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x16	; 22
	.db #0x16	; 22
	.db #0x18	; 24
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x54	; 84	'T'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x44	; 68	'D'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x42	; 66	'B'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x74	; 116	't'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x0e	; 14
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x0e	; 14
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x60	; 96
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x42	; 66	'B'
	.db #0x62	; 98	'b'
	.db #0x46	; 70	'F'
	.db #0xbc	; 188
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x54	; 84	'T'
	.db #0x30	; 48	'0'
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x7e	; 126
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x30	; 48	'0'
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x0e	; 14
	.db #0x10	; 16
	.db #0x78	; 120	'x'
	.db #0x1e	; 30
	.db #0x1c	; 28
	.db #0x60	; 96
	.db #0x1c	; 28
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x62	; 98	'b'
	.db #0x34	; 52	'4'
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x78	; 120	'x'
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x62	; 98	'b'
	.db #0x52	; 82	'R'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x46	; 70	'F'
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x38	; 56	'8'
	.db #0x68	; 104	'h'
	.db #0x3e	; 62
	.db #0x0e	; 14
	.db #0x38	; 56	'8'
	.db #0x78	; 120	'x'
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x7e	; 126
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb0	; 176
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0xd0	; 208
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7a	; 122	'z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xfa	; 250
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x78	; 120	'x'
	.db #0x08	; 8
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x7c	; 124
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x60	; 96
	.db #0x70	; 112	'p'
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x88	; 136
	.db #0xb0	; 176
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x58	; 88	'X'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.area CODE
	.area CONST
_logo:
	.db #0x12	; 18
	.db #0x34	; 52	'4'
	.db #0x56	; 86	'V'
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0xc1	; 193
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xc1	; 193
	.db #0xc3	; 195
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x8f	; 143
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x0f	; 15
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0xc3	; 195
	.db #0xe3	; 227
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xc1	; 193
	.db #0x83	; 131
	.db #0x87	; 135
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x87	; 135
	.db #0x83	; 131
	.db #0xc1	; 193
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x83	; 131
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x87	; 135
	.db #0x81	; 129
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x83	; 131
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x83	; 131
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0x81	; 129
	.db #0x87	; 135
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x87	; 135
	.db #0x83	; 131
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x87	; 135
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x83	; 131
	.db #0xc1	; 193
	.db #0xe3	; 227
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc7	; 199
	.db #0x83	; 131
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xe0	; 224
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
