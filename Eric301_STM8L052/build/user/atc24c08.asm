;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module atc24c08
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ATC24C08_I2C_Init
	.globl _I2C_WriteOneByteDataToSlave
	.globl _I2C_ReadOneByteDataFromSlave
	.globl _delay_100ms
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
;	User/atc24c08.c: 42: void delay_100ms(void)
; genLabel
;	-----------------------------------------
;	 function delay_100ms
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_delay_100ms:
;	User/atc24c08.c: 48: for(i=0;i<255;i++)//2*255个指令周期
; genAssign
	clrw	x
;	User/atc24c08.c: 50: for(j=0;j<255;j++);//2*255个指令周期
; genLabel
00110$:
; genAssign
	ld	a, #0xff
; genLabel
00105$:
; genMinus
; genIfx
	dec	a
; peephole 24 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00105$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00133$.
;	User/atc24c08.c: 48: for(i=0;i<255;i++)//2*255个指令周期
; genPlus
	incw	x
; genCmp
; genCmpTnz
	ld	a, xl
	cp	a, #0xff
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00110$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00134$.
; skipping generated iCode
; genLabel
; peephole j30 removed unused label 00108$.
;	User/atc24c08.c: 60: }
; genEndFunction
	ret
;	Total delay_100ms function size at codegen: 1 bytes.
;	User/atc24c08.c: 78: uint8_t I2C_ReadOneByteDataFromSlave(uint8_t address)
; genLabel
;	-----------------------------------------
;	 function I2C_ReadOneByteDataFromSlave
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_I2C_ReadOneByteDataFromSlave:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	User/atc24c08.c: 88: I2C1->CR2 |= I2C_CR2_START;//产生一个起始条件
; genPointerGet
; genOr
; genPointerSet
	bset	0x5211, #0
; peephole 202x replaced 'or' by 'bset' ('0x5211').
;	User/atc24c08.c: 90: while(!((I2C1->SR1 & I2C_SR1_SB)));//读SR1寄存器，清除SB标志位
; genLabel
00101$:
; genPointerGet
	ld	a, 0x5217
; genAnd
	srl	a
; peephole j5 changed absolute to relative unconditional jump.
	jrnc	00101$
; peephole j6 removed jra by using inverse jump logic
; peephole j30 removed unused label 00223$.
; skipping generated iCode
;	User/atc24c08.c: 92: _5NOPS;//根据数据手册,检测到标志位后,需插入5个NOP进行延时
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	User/atc24c08.c: 98: I2C1->DR=0xA0;//发送从设备地址
; genPointerSet
	mov	0x5216+0, #0xa0
;	User/atc24c08.c: 100: while(!((I2C1->SR1 & I2C_SR1_ADDR)));//读SR1寄存器，清除ADDR标志位
; genLabel
00104$:
; genPointerGet
	ld	a, 0x5217
; genAnd
	bcp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00104$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00224$.
; skipping generated iCode
;	User/atc24c08.c: 102: _5NOPS;//根据数据手册,检测到标志位后,需插入5个NOP进行延时
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	User/atc24c08.c: 104: if(!(I2C1->SR3 & I2C_SR3_TRA))return 1;//读SR3寄存器，清除ADDR标志位
; genPointerGet
	ld	a, 0x5219
; genAnd
	bcp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00108$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00225$.
; skipping generated iCode
; genReturn
	ld	a, #0x01
	jra	00123$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	User/atc24c08.c: 114: I2C1->DR=address;
; genPointerSet
	ldw	x, #0x5216
	ld	a, (0x02, sp)
	ld	(x), a
;	User/atc24c08.c: 116: while(!((I2C1->SR1 & I2C_SR1_BTF)));//等待地址发送完成
; genLabel
00109$:
; genPointerGet
	ld	a, 0x5217
; genAnd
	bcp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00109$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00226$.
; skipping generated iCode
;	User/atc24c08.c: 118: _5NOPS;//根据数据手册,检测到标志位后,需插入5个NOP进行延时
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	User/atc24c08.c: 124: I2C1->CR2 |= I2C_CR2_START;//重复产生一个起始条件
; genPointerGet
; genOr
; genPointerSet
	bset	0x5211, #0
; peephole 202x replaced 'or' by 'bset' ('0x5211').
;	User/atc24c08.c: 126: while(!((I2C1->SR1 & I2C_SR1_SB)));//读SR1寄存器，清除SB标志位
; genLabel
00112$:
; genPointerGet
	ld	a, 0x5217
; genAnd
	srl	a
; peephole j5 changed absolute to relative unconditional jump.
	jrnc	00112$
; peephole j6 removed jra by using inverse jump logic
; peephole j30 removed unused label 00227$.
; skipping generated iCode
;	User/atc24c08.c: 128: _5NOPS;//根据数据手册,检测到标志位后,需插入5个NOP进行延时
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	User/atc24c08.c: 134: I2C1->DR=0xA1;//发送从设备地址
; genPointerSet
	mov	0x5216+0, #0xa1
;	User/atc24c08.c: 136: while(!((I2C1->SR1 & I2C_SR1_ADDR)));//读SR1寄存器，清除ADDR标志位
; genLabel
00115$:
; genPointerGet
	ld	a, 0x5217
; genAnd
	bcp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00115$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00228$.
; skipping generated iCode
;	User/atc24c08.c: 138: _5NOPS;//根据数据手册,检测到标志位后,需插入5个NOP进行延时
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	User/atc24c08.c: 140: if((I2C1->SR3 & I2C_SR3_TRA))return 1;//读SR3寄存器，清除ADDR标志位
; genPointerGet
; genAnd
; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x5219').
; peephole j5 changed absolute to relative unconditional jump.
	btjf	0x5219, #2, 00120$
; peephole j33 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00229$.
; skipping generated iCode
; genReturn
	ld	a, #0x01
	jra	00123$
; peephole j5 changed absolute to relative unconditional jump.
;	User/atc24c08.c: 142: while(!((I2C1->SR1 & I2C_SR1_RXNE)));//等待地址发送完成
; genLabel
00120$:
; genPointerGet
; genAnd
; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x5217').
; peephole j5 changed absolute to relative unconditional jump.
	btjf	0x5217, #6, 00120$
; peephole j33 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00230$.
; skipping generated iCode
;	User/atc24c08.c: 148: I2C1->CR2 |= I2C_CR2_STOP;
; genPointerGet
; genOr
; genPointerSet
	bset	0x5211, #1
; peephole 202x replaced 'or' by 'bset' ('0x5211').
;	User/atc24c08.c: 154: t=I2C1->DR;
; genPointerGet
	ld	a, 0x5216
;	User/atc24c08.c: 158: return t;
; genReturn
	ld	(0x01, sp), a
; peephole 4a removed redundant load from (0x01, sp) into a.
; genLabel
00123$:
;	User/atc24c08.c: 160: }
; genEndFunction
	popw	x
	ret
;	Total I2C_ReadOneByteDataFromSlave function size at codegen: 2 bytes.
;	User/atc24c08.c: 178: uint8_t I2C_WriteOneByteDataToSlave(uint8_t address,uint8_t dat)
; genLabel
;	-----------------------------------------
;	 function I2C_WriteOneByteDataToSlave
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_I2C_WriteOneByteDataToSlave:
	push	a
; genReceive
	ld	xl, a
;	User/atc24c08.c: 186: I2C1->CR2 |= I2C_CR2_START;//产生一个起始条件
; genPointerGet
; genOr
; genPointerSet
	bset	0x5211, #0
; peephole 202x replaced 'or' by 'bset' ('0x5211').
;	User/atc24c08.c: 188: while(!((I2C1->SR1 & I2C_SR1_SB)));
; genLabel
00101$:
; genPointerGet
	ld	a, 0x5217
; genAnd
	srl	a
; peephole j5 changed absolute to relative unconditional jump.
	jrnc	00101$
; peephole j6 removed jra by using inverse jump logic
; peephole j30 removed unused label 00207$.
; skipping generated iCode
;	User/atc24c08.c: 190: _5NOPS;//根据数据手册,检测到标志位后,需插入5个NOP进行延时
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	User/atc24c08.c: 192: I2C1->DR=0xA0;
; genPointerSet
	mov	0x5216+0, #0xa0
;	User/atc24c08.c: 198: while(!((I2C1->SR1 & I2C_SR1_ADDR)));
; genLabel
00104$:
; genPointerGet
	ld	a, 0x5217
; genAnd
	bcp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00104$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00208$.
; skipping generated iCode
;	User/atc24c08.c: 200: _5NOPS;//根据数据手册,检测到标志位后,需插入5个NOP进行延时
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	User/atc24c08.c: 202: if(!(I2C1->SR3 & I2C_SR3_TRA))return 1;//读SR3寄存器，清除ADDR标志位
; genPointerGet
	ld	a, 0x5219
; genAnd
	bcp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00109$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00209$.
; skipping generated iCode
; genReturn
	ld	a, #0x01
	jra	00121$
; peephole j5 changed absolute to relative unconditional jump.
;	User/atc24c08.c: 208: while(!((I2C1->SR1 & I2C_SR1_TXE)));
; genLabel
00109$:
; genPointerGet
; genAnd
	ld	a, 0x5217
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jrpl	00109$
; peephole j8 removed jra by using inverse jump logic
; peephole j30 removed unused label 00210$.
; skipping generated iCode
;	User/atc24c08.c: 210: I2C1->DR=address;
; genPointerSet
	ldw	y, #0x5216
	ld	a, xl
	ld	(y), a
;	User/atc24c08.c: 216: while(!((I2C1->SR1 & I2C_SR1_TXE)));
; genLabel
00112$:
; genPointerGet
; genAnd
	ld	a, 0x5217
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jrpl	00112$
; peephole j8 removed jra by using inverse jump logic
; peephole j30 removed unused label 00211$.
; skipping generated iCode
;	User/atc24c08.c: 218: I2C1->DR=dat;
; genPointerSet
	ldw	x, #0x5216
	ld	a, (0x04, sp)
	ld	(x), a
;	User/atc24c08.c: 220: while(!((I2C1->SR1 & I2C_SR1_TXE)));
; genLabel
00115$:
; genPointerGet
; genAnd
	ld	a, 0x5217
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jrpl	00115$
; peephole j8 removed jra by using inverse jump logic
; peephole j30 removed unused label 00212$.
; skipping generated iCode
;	User/atc24c08.c: 222: while(!((I2C1->SR1 & I2C_SR1_BTF)));
; genLabel
00118$:
; genPointerGet
	ld	a, 0x5217
; genAnd
	bcp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00118$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00213$.
; skipping generated iCode
;	User/atc24c08.c: 224: _5NOPS;//根据数据手册,检测到标志位后,需插入5个NOP进行延时
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	genInline
	nop
;	User/atc24c08.c: 230: I2C1->CR2 |= I2C_CR2_STOP;
; genPointerGet
; genOr
; genPointerSet
	bset	0x5211, #1
; peephole 202x replaced 'or' by 'bset' ('0x5211').
;	User/atc24c08.c: 232: return 0;
; genReturn
	clr	a
; genLabel
00121$:
;	User/atc24c08.c: 234: }
; genEndFunction
	addw	sp, #1
	popw	x
	addw	sp, #1
	jp	(x)
;	Total I2C_WriteOneByteDataToSlave function size at codegen: 6 bytes.
;	User/atc24c08.c: 253: void ATC24C08_I2C_Init(void)
; genLabel
;	-----------------------------------------
;	 function ATC24C08_I2C_Init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ATC24C08_I2C_Init:
;	User/atc24c08.c: 259: CLK->PCKENR1 |= CLK_PCKENR1_I2C1;//
; genPointerGet
; genOr
; genPointerSet
	bset	0x50c3, #3
; peephole 202x replaced 'or' by 'bset' ('0x50c3').
;	User/atc24c08.c: 261: I2C1->CR1 &= (uint8_t)(~I2C_CR1_PE);
; genPointerGet
; genAnd
; genPointerSet
	bres	0x5210, #0
; peephole 204x replaced 'and' by 'bres' ('0x5210').
;	User/atc24c08.c: 267: I2C1->FREQR = 0x02;//2MHz
; genPointerSet
	mov	0x5212+0, #0x02
;	User/atc24c08.c: 285: I2C1->CCRH = 0; //Standard mode I2C
; genPointerSet
	mov	0x521c+0, #0x00
;	User/atc24c08.c: 287: I2C1->CCRL = 10;    //SCK低电平时间配置
; genPointerSet
	mov	0x521b+0, #0x0a
;	User/atc24c08.c: 301: I2C1->TRISER = 3;//in standard mode, the maximum allowed SCL rise time is 1000 ns.
; genPointerSet
	mov	0x521d+0, #0x03
;	User/atc24c08.c: 306: I2C1->CR1 |= I2C_CR1_PE;//
; genPointerGet
; genOr
; genPointerSet
	bset	0x5210, #0
; peephole 202x replaced 'or' by 'bset' ('0x5210').
; genLabel
; peephole j30 removed unused label 00101$.
;	User/atc24c08.c: 310: }
; genEndFunction
	ret
;	Total ATC24C08_I2C_Init function size at codegen: 1 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
