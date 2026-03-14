;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_i2c
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_GetClockFreq
	.globl _I2C_DeInit
	.globl _I2C_Init
	.globl _I2C_Cmd
	.globl _I2C_GeneralCallCmd
	.globl _I2C_GenerateSTART
	.globl _I2C_GenerateSTOP
	.globl _I2C_SoftwareResetCmd
	.globl _I2C_StretchClockCmd
	.globl _I2C_ARPCmd
	.globl _I2C_AcknowledgeConfig
	.globl _I2C_OwnAddress2Config
	.globl _I2C_DualAddressCmd
	.globl _I2C_AckPositionConfig
	.globl _I2C_SMBusAlertConfig
	.globl _I2C_FastModeDutyCycleConfig
	.globl _I2C_Send7bitAddress
	.globl _I2C_SendData
	.globl _I2C_ReceiveData
	.globl _I2C_TransmitPEC
	.globl _I2C_CalculatePEC
	.globl _I2C_PECPositionConfig
	.globl _I2C_GetPEC
	.globl _I2C_DMACmd
	.globl _I2C_DMALastTransferCmd
	.globl _I2C_ITConfig
	.globl _I2C_ReadRegister
	.globl _I2C_CheckEvent
	.globl _I2C_GetLastEvent
	.globl _I2C_GetFlagStatus
	.globl _I2C_ClearFlag
	.globl _I2C_GetITStatus
	.globl _I2C_ClearITPendingBit
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 141: void I2C_DeInit(I2C_TypeDef* I2Cx)
; genLabel
;	-----------------------------------------
;	 function I2C_DeInit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_I2C_DeInit:
; genReceive
	exgw	x, y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 143: I2Cx->CR1 = I2C_CR1_RESET_VALUE;
; genPointerSet
	clr	(y)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 144: I2Cx->CR2 = I2C_CR2_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 10j moved addition of offset into instruction
	clr	(0x01, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 145: I2Cx->FREQR = I2C_FREQR_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 10i moved addition of offset into instruction
	clr	(0x02, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 146: I2Cx->OARL = I2C_OARL_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0003, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 147: I2Cx->OARH = I2C_OARH_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0004, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 148: I2Cx->OAR2 = I2C_OAR2_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0005, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 149: I2Cx->ITR = I2C_ITR_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x000a, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 150: I2Cx->CCRL = I2C_CCRL_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x000b, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 151: I2Cx->CCRH = I2C_CCRH_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x000c, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 152: I2Cx->TRISER = I2C_TRISER_RESET_VALUE;
; genPlus
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, #0x02
	ld	(0x000d, y), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 153: }
; genEndFunction
	ret
;	Total I2C_DeInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 184: void I2C_Init(I2C_TypeDef* I2Cx, uint32_t OutputClockFrequency, uint16_t OwnAddress,
; genLabel
;	-----------------------------------------
;	 function I2C_Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 19 bytes.
_I2C_Init:
	sub	sp, #19
; genReceive
	ldw	(0x12, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 190: uint8_t tmpccrh = 0;
; genAssign
	clr	(0x11, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 203: input_clock = (uint8_t) (CLK_GetClockFreq() / 1000000);
; genCall
	call	_CLK_GetClockFreq
; genIPush
	push	#0x40
	push	#0x42
	push	#0x0f
	push	#0x00
; genIPush
	pushw	x
	pushw	y
; genCall
	call	__divulong
	addw	sp, #8
	ld	a, xl
; genCast
; genAssign
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 207: I2Cx->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
; genPlus
	ldw	x, (0x12, sp)
	incw	x
	incw	x
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0xc0
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 209: I2Cx->FREQR |= input_clock;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 213: I2Cx->CR1 &= (uint8_t)(~I2C_CR1_PE);
; genCast
; genAssign
	ldw	y, (0x12, sp)
; genPointerGet
	ldw	(0x02, sp), y
	ldw	x, y
; peephole 15 replaced load from (0x02, sp) into x by load from y into x.
	ld	a, (x)
; genAnd
	and	a, #0xfe
; genPointerSet
	ldw	x, (0x02, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 216: I2Cx->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
; genPlus
	ldw	x, (0x12, sp)
	addw	x, #0x000c
; genPointerGet
	ldw	(0x04, sp), x
; peephole 13 removed redundant load from (0x04, sp) into x.
	ld	a, (x)
; genAnd
	and	a, #0x30
; genPointerSet
	ldw	x, (0x04, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 217: I2Cx->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
; genPlus
	ldw	x, (0x12, sp)
	addw	x, #0x000b
; genPointerGet
; Dummy read
	ldw	(0x06, sp), x
; peephole 13 removed redundant load from (0x06, sp) into x.
	ld	a, (x)
; genPointerSet
	ldw	x, (0x06, sp)
	clr	(x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 228: result = (uint32_t) ((input_clock * 1000000) / (OutputClockFrequency * 3));
; genCast
; genAssign
	ld	a, (0x01, sp)
	clrw	x
	clr	(0x0d, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 249: I2Cx->TRISER = (uint8_t)tmpval;
; genPlus
	ldw	y, (0x12, sp)
	addw	y, #0x000d
	ldw	(0x08, sp), y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 228: result = (uint32_t) ((input_clock * 1000000) / (OutputClockFrequency * 3));
; genIPush
	push	a
	pushw	x
	clr	a
	push	a
; genIPush
	push	#0x40
	push	#0x42
	push	#0x0f
	push	#0x00
; genCall
	call	__mullong
	addw	sp, #8
; genCast
; genAssign
	ldw	(0x0c, sp), x
	ldw	(0x0a, sp), y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 220: if (OutputClockFrequency > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
; genCmp
; genCmpTnz
	ldw	x, #0x86a0
	cpw	x, (0x18, sp)
	ld	a, #0x01
	sbc	a, (0x17, sp)
	clr	a
	sbc	a, (0x16, sp)
	jrc	00141$
	jp	00109$
00141$:
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 223: tmpccrh = I2C_CCRH_FS;
; genAssign
	ld	a, #0x80
	ld	(0x11, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 225: if (I2C_DutyCycle == I2C_DutyCycle_2)
; genIfx
	tnz	(0x1d, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00142$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 228: result = (uint32_t) ((input_clock * 1000000) / (OutputClockFrequency * 3));
; genIPush
	ldw	x, (0x18, sp)
	pushw	x
	ldw	x, (0x18, sp)
	pushw	x
; genIPush
	push	#0x03
	clrw	x
	pushw	x
	push	#0x00
; genCall
	call	__mullong
	addw	sp, #8
; genIPush
	pushw	x
	pushw	y
; genIPush
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
; genCall
	call	__divulong
	addw	sp, #8
	ldw	(0x0f, sp), x
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 233: result = (uint32_t) ((input_clock * 1000000) / (OutputClockFrequency * 25));
; genIPush
	ldw	x, (0x18, sp)
	pushw	x
	ldw	x, (0x18, sp)
	pushw	x
; genIPush
	push	#0x19
	clrw	x
	pushw	x
	push	#0x00
; genCall
	call	__mullong
	addw	sp, #8
	ldw	(0x10, sp), x
	ldw	(0x0e, sp), y
; genIPush
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
; genIPush
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 235: tmpccrh |= I2C_CCRH_DUTY;
; genCall
	call	__divulong
	addw	sp, #8
	ldw	(0x0f, sp), x
; genAssign
	ld	a, #0xc0
	ld	(0x11, sp), a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 239: if (result < (uint16_t)0x01)
; genCmp
; genCmpTnz
	ldw	x, (0x0f, sp)
	cpw	x, #0x0001
	ld	a, yl
	sbc	a, #0x00
	ld	a, yh
	sbc	a, #0x00
; peephole j5 changed absolute to relative unconditional jump.
	jrnc	00105$
; peephole j6 removed jra by using inverse jump logic
; peephole j30 removed unused label 00143$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 242: result = (uint16_t)0x0001;
; genAssign
	clrw	x
	incw	x
	ldw	(0x0f, sp), x
	clrw	y
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 248: tmpval = ((input_clock * 3) / 10) + 1;
; genCast
; genAssign
	ld	a, (0x01, sp)
	clrw	x
; genMult
; genMultLit
	ld	xl, a
	pushw	x
	sllw	x
	addw	x, (1, sp)
	addw	sp, #2
; genIPush
	pushw	y
	push	#0x0a
	push	#0x00
; genSend
; genCall
	call	__divsint
	ld	a, xl
	popw	y
; genCast
; genAssign
; genPlus
	inc	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 249: I2Cx->TRISER = (uint8_t)tmpval;
; genCast
; genAssign
; genPointerSet
	ldw	x, (0x08, sp)
	ld	(x), a
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00109$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 256: result = (uint16_t)((input_clock * 1000000) / (OutputClockFrequency << (uint8_t)1));
; genLeftShiftLiteral
	ldw	x, (0x18, sp)
	ldw	y, (0x16, sp)
	sllw	x
	rlcw	y
; genIPush
	pushw	x
	pushw	y
; genIPush
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
; genCall
	call	__divulong
	addw	sp, #8
; genCast
; genAssign
; genCast
; genAssign
; peephole 3 removed dead clrw of y.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 259: if (result < (uint16_t)0x0004)
; genCmp
; genCmpTnz
	ldw	(0x0f, sp), x
; peephole 13 removed redundant load from (0x0f, sp) into x.
	cpw	x, #0x0004
	clr	a
	sbc	a, #0x00
	clr	a
	sbc	a, #0x00
; peephole j5 changed absolute to relative unconditional jump.
	jrnc	00107$
; peephole j6 removed jra by using inverse jump logic
; peephole j30 removed unused label 00144$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 262: result = (uint16_t)0x0004;
; genAssign
	ldw	x, #0x0004
	ldw	(0x0f, sp), x
; peephole 3 removed dead clrw of y.
; genLabel
00107$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 268: I2Cx->TRISER = (uint8_t)((uint8_t)input_clock + (uint8_t)1);
; genPlus
	ld	a, (0x01, sp)
	inc	a
; genPointerSet
	ldw	x, (0x08, sp)
	ld	(x), a
; genLabel
00110$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 273: I2Cx->CCRL = (uint8_t)result;
; genCast
; genAssign
	ld	a, (0x10, sp)
; genPointerSet
	ldw	x, (0x06, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 274: I2Cx->CCRH = (uint8_t)((uint8_t)((uint8_t)((uint8_t)result >> 8) & I2C_CCRH_CCR) | tmpccrh);
; genPointerSet
	ldw	x, (0x04, sp)
	ld	a, (0x11, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 277: I2Cx->CR1 |= (uint8_t)(I2C_CR1_PE | I2C_Mode);
; genPointerGet
	ldw	x, (0x02, sp)
	ld	a, (x)
	ld	(0x11, sp), a
; genOr
	ld	a, (0x1c, sp)
	or	a, #0x01
; genOr
	or	a, (0x11, sp)
; genPointerSet
	ldw	x, (0x02, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 280: I2Cx->CR2 |= (uint8_t)I2C_Ack;
; genPlus
	ldw	x, (0x12, sp)
	incw	x
; genPointerGet
	ld	a, (x)
; genOr
	or	a, (0x1e, sp)
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 283: I2Cx->OARL = (uint8_t)(OwnAddress);
; genPlus
	ldw	x, (0x12, sp)
; genCast
; genAssign
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
	ld	a, (0x1b, sp)
	ld	(0x0003, x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 284: I2Cx->OARH = (uint8_t)((uint8_t)(I2C_AcknowledgedAddress | I2C_OARH_ADDCONF ) | \
; genPlus
	ldw	y, (0x12, sp)
	addw	y, #0x0004
; genOr
	ld	a, (0x1f, sp)
	or	a, #0x40
	ld	(0x11, sp), a
; genAnd
	clr	a
	ld	xl, a
	ld	a, (0x1a, sp)
	and	a, #0x03
	ld	xh, a
; genRightShiftLiteral
	ld	a, #0x80
	div	x, a
; genCast
; genAssign
	ld	a, xl
; genOr
	or	a, (0x11, sp)
; genPointerSet
	ld	(y), a
; genLabel
; peephole j30 removed unused label 00111$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 286: }
; genEndFunction
	ldw	x, (20, sp)
	addw	sp, #31
	jp	(x)
;	Total I2C_Init function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 295: void I2C_Cmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_Cmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_Cmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 304: I2Cx->CR1 |= I2C_CR1_PE;
; genCast
; genAssign
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 301: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 304: I2Cx->CR1 |= I2C_CR1_PE;
; genOr
	or	a, #0x01
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 309: I2Cx->CR1 &= (uint8_t)(~I2C_CR1_PE);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 311: }
; genEndFunction
	pop	a
	ret
;	Total I2C_Cmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 320: void I2C_GeneralCallCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_GeneralCallCmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_GeneralCallCmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 329: I2Cx->CR1 |= I2C_CR1_ENGC;
; genCast
; genAssign
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 326: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 329: I2Cx->CR1 |= I2C_CR1_ENGC;
; genOr
	or	a, #0x40
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 334: I2Cx->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 336: }
; genEndFunction
	pop	a
	ret
;	Total I2C_GeneralCallCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 347: void I2C_GenerateSTART(I2C_TypeDef* I2Cx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_GenerateSTART
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_GenerateSTART:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 356: I2Cx->CR2 |= I2C_CR2_START;
; genPlus
	incw	x
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 353: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 356: I2Cx->CR2 |= I2C_CR2_START;
; genOr
	or	a, #0x01
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 361: I2Cx->CR2 &= (uint8_t)(~I2C_CR2_START);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 363: }
; genEndFunction
	pop	a
	ret
;	Total I2C_GenerateSTART function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 372: void I2C_GenerateSTOP(I2C_TypeDef* I2Cx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_GenerateSTOP
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_GenerateSTOP:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 381: I2Cx->CR2 |= I2C_CR2_STOP;
; genPlus
	incw	x
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 378: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 381: I2Cx->CR2 |= I2C_CR2_STOP;
; genOr
	or	a, #0x02
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 386: I2Cx->CR2 &= (uint8_t)(~I2C_CR2_STOP);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 388: }
; genEndFunction
	pop	a
	ret
;	Total I2C_GenerateSTOP function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 397: void I2C_SoftwareResetCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_SoftwareResetCmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_SoftwareResetCmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 405: I2Cx->CR2 |= I2C_CR2_SWRST;
; genPlus
	incw	x
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 402: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 405: I2Cx->CR2 |= I2C_CR2_SWRST;
; genOr
	or	a, #0x80
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 410: I2Cx->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 412: }
; genEndFunction
	pop	a
	ret
;	Total I2C_SoftwareResetCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 421: void I2C_StretchClockCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_StretchClockCmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_StretchClockCmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 429: I2Cx->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
; genCast
; genAssign
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 426: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 429: I2Cx->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 435: I2Cx->CR1 |= I2C_CR1_NOSTRETCH;
; genOr
	or	a, #0x80
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 437: }
; genEndFunction
	pop	a
	ret
;	Total I2C_StretchClockCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 446: void I2C_ARPCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_ARPCmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_ARPCmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 454: I2Cx->CR1 |= I2C_CR1_ARP;
; genCast
; genAssign
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 451: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 454: I2Cx->CR1 |= I2C_CR1_ARP;
; genOr
	or	a, #0x10
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 460: I2Cx->CR1 &= (uint8_t)(~I2C_CR1_ARP);
; genAnd
	and	a, #0xef
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 462: }
; genEndFunction
	pop	a
	ret
;	Total I2C_ARPCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 471: void I2C_AcknowledgeConfig(I2C_TypeDef* I2Cx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_AcknowledgeConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_AcknowledgeConfig:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 479: I2Cx->CR2 |= I2C_CR2_ACK;
; genPlus
	incw	x
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 476: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 479: I2Cx->CR2 |= I2C_CR2_ACK;
; genOr
	or	a, #0x04
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 484: I2Cx->CR2 &= (uint8_t)(~I2C_CR2_ACK);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 486: }
; genEndFunction
	pop	a
	ret
;	Total I2C_AcknowledgeConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 494: void I2C_OwnAddress2Config(I2C_TypeDef* I2Cx, uint8_t Address)
; genLabel
;	-----------------------------------------
;	 function I2C_OwnAddress2Config
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_OwnAddress2Config:
	push	a
; genReceive
; genReceive
	ld	yl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 499: tmpreg = I2Cx->OAR2;
; genPlus
	addw	x, #0x0005
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 502: tmpreg &= (uint8_t)(~I2C_OAR2_ADD2);
; genAnd
	and	a, #0x01
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 505: tmpreg |= (uint8_t) ((uint8_t)Address & (uint8_t)0xFE);
; genAnd
	ld	a, yl
	and	a, #0xfe
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 508: I2Cx->OAR2 = tmpreg;
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 509: }
; genEndFunction
	pop	a
	ret
;	Total I2C_OwnAddress2Config function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 518: void I2C_DualAddressCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_DualAddressCmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_DualAddressCmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 526: I2Cx->OAR2 |= I2C_OAR2_ENDUAL;
; genPlus
	addw	x, #0x0005
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 523: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 526: I2Cx->OAR2 |= I2C_OAR2_ENDUAL;
; genOr
	or	a, #0x01
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 531: I2Cx->OAR2 &= (uint8_t)(~I2C_OAR2_ENDUAL);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 533: }
; genEndFunction
	pop	a
	ret
;	Total I2C_DualAddressCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 545: void I2C_AckPositionConfig(I2C_TypeDef* I2Cx, I2C_AckPosition_TypeDef I2C_AckPosition)
; genLabel
;	-----------------------------------------
;	 function I2C_AckPositionConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_AckPositionConfig:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 551: I2Cx->CR2 &= (uint8_t)(~I2C_CR2_POS);
; genPlus
	incw	x
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 553: I2Cx->CR2 |= (uint8_t)I2C_AckPosition;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 554: }
; genEndFunction
	pop	a
	ret
;	Total I2C_AckPositionConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 565: void I2C_SMBusAlertConfig(I2C_TypeDef* I2Cx, I2C_SMBusAlert_TypeDef I2C_SMBusAlert)
; genLabel
;	-----------------------------------------
;	 function I2C_SMBusAlertConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_SMBusAlertConfig:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 574: I2Cx->CR2 |= (uint8_t)I2C_CR2_ALERT;
; genPlus
	incw	x
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 571: if (I2C_SMBusAlert != I2C_SMBusAlert_High)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 574: I2Cx->CR2 |= (uint8_t)I2C_CR2_ALERT;
; genOr
	or	a, #0x20
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 579: I2Cx->CR2 &= (uint8_t)(~I2C_CR2_ALERT);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 581: }
; genEndFunction
	pop	a
	ret
;	Total I2C_SMBusAlertConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 592: void I2C_FastModeDutyCycleConfig(I2C_TypeDef* I2Cx, I2C_DutyCycle_TypeDef I2C_DutyCycle)
; genLabel
;	-----------------------------------------
;	 function I2C_FastModeDutyCycleConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_I2C_FastModeDutyCycleConfig:
; genReceive
; genReceive
	ld	yl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 601: I2Cx->CCRH |= I2C_CCRH_DUTY;
; genPlus
	addw	x, #0x000c
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 598: if (I2C_DutyCycle == I2C_DutyCycle_16_9)
; genCmpEQorNE
	push	a
	ld	a, yl
	cp	a, #0x40
	pop	a
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00114$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00115$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 601: I2Cx->CCRH |= I2C_CCRH_DUTY;
; genOr
	or	a, #0x40
; genPointerSet
	ld	(x), a
; genGoto
	ret
; peephole j2e replaced jump by return.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 606: I2Cx->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 608: }
; genEndFunction
	ret
;	Total I2C_FastModeDutyCycleConfig function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 621: void I2C_Send7bitAddress(I2C_TypeDef* I2Cx, uint8_t Address, I2C_Direction_TypeDef I2C_Direction)
; genLabel
;	-----------------------------------------
;	 function I2C_Send7bitAddress
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_I2C_Send7bitAddress:
; genReceive
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 628: if (I2C_Direction != I2C_Direction_Transmitter)
; genIfx
	tnz	(0x03, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 631: Address |= OAR1_ADD0_Set;
; genOr
	or	a, #0x01
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 636: Address &= OAR1_ADD0_Reset;
; genAnd
	and	a, #0xfe
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 639: I2Cx->DR = Address;
; genPlus
	addw	x, #0x0006
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 640: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
;	Total I2C_Send7bitAddress function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 664: void I2C_SendData(I2C_TypeDef* I2Cx, uint8_t Data)
; genLabel
;	-----------------------------------------
;	 function I2C_SendData
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_I2C_SendData:
; genReceive
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 667: I2Cx->DR = Data;
; genPlus
	addw	x, #0x0006
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 668: }
; genEndFunction
	ret
;	Total I2C_SendData function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 676: uint8_t I2C_ReceiveData(I2C_TypeDef* I2Cx)
; genLabel
;	-----------------------------------------
;	 function I2C_ReceiveData
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_I2C_ReceiveData:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 679: return ((uint8_t)I2Cx->DR);
; genAssign
; genPointerGet
	ld	a, (0x6, x)
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 680: }
; genEndFunction
	ret
;	Total I2C_ReceiveData function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 705: void I2C_TransmitPEC(I2C_TypeDef* I2Cx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_TransmitPEC
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_TransmitPEC:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 713: I2Cx->CR2 |= I2C_CR2_PEC;
; genPlus
	incw	x
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 710: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 713: I2Cx->CR2 |= I2C_CR2_PEC;
; genOr
	or	a, #0x10
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 718: I2Cx->CR2 &= (uint8_t)(~I2C_CR2_PEC);
; genAnd
	and	a, #0xef
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 720: }
; genEndFunction
	pop	a
	ret
;	Total I2C_TransmitPEC function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 729: void I2C_CalculatePEC(I2C_TypeDef* I2Cx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_CalculatePEC
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_CalculatePEC:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 737: I2Cx->CR1 |= I2C_CR1_ENPEC;
; genCast
; genAssign
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 734: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 737: I2Cx->CR1 |= I2C_CR1_ENPEC;
; genOr
	or	a, #0x20
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 742: I2Cx->CR1 &= (uint8_t)(~I2C_CR1_ENPEC);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 744: }
; genEndFunction
	pop	a
	ret
;	Total I2C_CalculatePEC function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 755: void I2C_PECPositionConfig(I2C_TypeDef* I2Cx, I2C_PECPosition_TypeDef I2C_PECPosition)
; genLabel
;	-----------------------------------------
;	 function I2C_PECPositionConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_PECPositionConfig:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 761: I2Cx->CR2 &= (uint8_t)(~I2C_CR2_POS);
; genPlus
	incw	x
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 763: I2Cx->CR2 |= (uint8_t)I2C_PECPosition;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 764: }
; genEndFunction
	pop	a
	ret
;	Total I2C_PECPositionConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 772: uint8_t I2C_GetPEC(I2C_TypeDef* I2Cx)
; genLabel
;	-----------------------------------------
;	 function I2C_GetPEC
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_I2C_GetPEC:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 775: return (I2Cx->PECR);
; genAssign
; genPointerGet
	ld	a, (0xe, x)
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 776: }
; genEndFunction
	ret
;	Total I2C_GetPEC function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 803: void I2C_DMACmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_DMACmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_DMACmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 811: I2Cx->ITR |= I2C_ITR_DMAEN;
; genPlus
	addw	x, #0x000a
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 808: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 811: I2Cx->ITR |= I2C_ITR_DMAEN;
; genOr
	or	a, #0x08
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 816: I2Cx->ITR &= (uint8_t)(~I2C_ITR_DMAEN);
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 818: }
; genEndFunction
	pop	a
	ret
;	Total I2C_DMACmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 827: void I2C_DMALastTransferCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_DMALastTransferCmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_DMALastTransferCmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 835: I2Cx->ITR |= I2C_ITR_LAST;
; genPlus
	addw	x, #0x000a
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 832: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 835: I2Cx->ITR |= I2C_ITR_LAST;
; genOr
	or	a, #0x10
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 840: I2Cx->ITR &= (uint8_t)(~I2C_ITR_LAST);
; genAnd
	and	a, #0xef
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 842: }
; genEndFunction
	pop	a
	ret
;	Total I2C_DMALastTransferCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 954: void I2C_ITConfig(I2C_TypeDef* I2Cx, I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function I2C_ITConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_ITConfig:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 963: I2Cx->ITR |= (uint8_t)I2C_IT;
; genPlus
	addw	x, #0x000a
; genCast
; genAssign
	ld	a, (0x05, sp)
; genPointerGet
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 960: if (NewState != DISABLE)
; genIfx
	tnz	(0x06, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 963: I2Cx->ITR |= (uint8_t)I2C_IT;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 968: I2Cx->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 970: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #6
	jp	(x)
;	Total I2C_ITConfig function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 994: uint8_t I2C_ReadRegister(I2C_TypeDef* I2Cx, I2C_Register_TypeDef I2C_Register)
; genLabel
;	-----------------------------------------
;	 function I2C_ReadRegister
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_I2C_ReadRegister:
	sub	sp, #4
; genReceive
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 996: __IO uint16_t tmp = 0;
; genAssign
	clr	(0x02, sp)
	clr	(0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1000: tmp = (uint16_t) I2Cx;
; genCast
; genAssign
; genAssign
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1001: tmp += I2C_Register;
; genCast
; genAssign
; genCast
; genAssign
	ldw	(0x01, sp), x
; peephole 13 removed redundant load from (0x01, sp) into x.
; genCast
; genAssign
	ld	(0x04, sp), a
	clr	(0x03, sp)
; genPlus
	addw	x, (0x03, sp)
; genCast
; genAssign
; genAssign
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1004: return (*(__IO uint8_t *) tmp);
; genCast
; genAssign
	ldw	(0x01, sp), x
; peephole 13 removed redundant load from (0x01, sp) into x.
; genPointerGet
	ld	a, (x)
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1005: }
; genEndFunction
	addw	sp, #4
	ret
;	Total I2C_ReadRegister function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1044: ErrorStatus I2C_CheckEvent(I2C_TypeDef* I2Cx, I2C_Event_TypeDef I2C_Event)
; genLabel
;	-----------------------------------------
;	 function I2C_CheckEvent
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 8 bytes.
_I2C_CheckEvent:
	sub	sp, #8
; genReceive
	exgw	x, y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1046: __IO uint16_t lastevent = 0x00;
; genAssign
	clrw	x
	ldw	(0x01, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1054: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
; genCast
; genAssign
	ldw	x, (0x0b, sp)
; genCmpEQorNE
	ldw	(0x03, sp), x
; peephole 13 removed redundant load from (0x03, sp) into x.
	cpw	x, #0x0004
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00124$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00125$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1056: lastevent = I2Cx->SR2 & I2C_SR2_AF;
; genAssign
; genPointerGet
	ld	a, (0x8, y)
; genAnd
	and	a, #0x04
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genAssign
	ldw	(0x01, sp), x
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1060: flag1 = I2Cx->SR1;
; genAssign
	ldw	x, y
; genPointerGet
	ld	a, (0x7, x)
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1061: flag2 = I2Cx->SR3;
; genAssign
; genPointerGet
	ld	a, (0x9, y)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1062: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
; genCast
; genAssign
	ld	xh, a
; peephole 1 removed dead clear of a.
; genLeftShiftLiteral
	clr	(0x06, sp)
; genCast
; genAssign
	clr	(0x07, sp)
; genOr
; genAssign
	ldw	(0x01, sp), x
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1065: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
; genAnd
	ld	a, (0x02, sp)
	and	a, (0x04, sp)
	ld	xl, a
	ld	a, (0x01, sp)
	and	a, (0x03, sp)
; genCmpEQorNE
	ld	xh, a
	cpw	x, (0x03, sp)
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00127$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00105$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00128$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1068: status = SUCCESS;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1073: status = ERROR;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00105$:
	clr	a
00106$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1077: return status;
; genReturn
; genLabel
; peephole j30 removed unused label 00107$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1078: }
; genEndFunction
	ldw	x, (9, sp)
	addw	sp, #12
	jp	(x)
;	Total I2C_CheckEvent function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1095: I2C_Event_TypeDef I2C_GetLastEvent(I2C_TypeDef* I2Cx)
; genLabel
;	-----------------------------------------
;	 function I2C_GetLastEvent
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 6 bytes.
_I2C_GetLastEvent:
	sub	sp, #6
; genReceive
	exgw	x, y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1097: __IO uint16_t lastevent = 0;
; genAssign
	clrw	x
	ldw	(0x01, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1101: if ((I2Cx->SR2 & I2C_SR2_AF) != 0x00)
; genAssign
	ldw	x, y
; genPointerGet
	ld	a, (0x8, x)
; genAnd
	bcp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1103: lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
; genAssign
	ldw	x, #0x0004
	ldw	(0x01, sp), x
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1108: flag1 = I2Cx->SR1;
; genAssign
	ldw	x, y
; genPointerGet
	ld	a, (0x7, x)
; genCast
; genAssign
	ld	xl, a
	clr	(0x03, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1109: flag2 = I2Cx->SR3;
; genAssign
; genPointerGet
	ld	a, (0x9, y)
; genCast
; genAssign
	ld	xh, a
; peephole 1 removed dead clear of a.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1112: lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
; genLeftShiftLiteral
	clr	(0x06, sp)
; genOr
; genAssign
	ldw	(0x01, sp), x
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1115: return (I2C_Event_TypeDef)lastevent;
; genCast
; genAssign
	ldw	x, (0x01, sp)
; genReturn
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1116: }
; genEndFunction
	addw	sp, #6
	ret
;	Total I2C_GetLastEvent function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1152: FlagStatus I2C_GetFlagStatus(I2C_TypeDef* I2Cx, I2C_FLAG_TypeDef I2C_FLAG)
; genLabel
;	-----------------------------------------
;	 function I2C_GetFlagStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_I2C_GetFlagStatus:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1154: uint8_t tempreg = 0;
; genAssign
	clr	(0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1162: regindex = (uint8_t)((uint16_t)I2C_FLAG >> 8);
; genCast
; genAssign
	ldw	y, (0x04, sp)
; genGetByte
	ld	a, yh
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1164: switch (regindex)
; genCmpEQorNE
	cp	a, #0x01
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00101$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00140$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00143$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x03
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00103$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00146$.
; skipping generated iCode
; genGoto
	jra	00105$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1167: case 0x01:
; genLabel
00101$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1168: tempreg = (uint8_t)I2Cx->SR1;
; genAssign
; genPointerGet
	ld	a, (0x7, x)
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1169: break;
; genGoto
	jra	00105$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1172: case 0x02:
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1173: tempreg = (uint8_t)I2Cx->SR2;
; genAssign
; genPointerGet
	ld	a, (0x8, x)
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1174: break;
; genGoto
	jra	00105$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1177: case 0x03:
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1178: tempreg = (uint8_t)I2Cx->SR3;
; genAssign
; genPointerGet
	ld	a, (0x9, x)
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1183: }
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1186: if ((tempreg & (uint8_t)I2C_FLAG ) != 0)
; genCast
; genAssign
	ld	a, (0x05, sp)
; genAnd
; genIfx
	and	a, (0x01, sp)
; peephole 23 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00107$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00148$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1189: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1194: bitstatus = RESET;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00107$:
	clr	a
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1197: return bitstatus;
; genReturn
; genLabel
; peephole j30 removed unused label 00109$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1198: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #5
	jp	(x)
;	Total I2C_GetFlagStatus function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1229: void I2C_ClearFlag(I2C_TypeDef* I2Cx, I2C_FLAG_TypeDef I2C_FLAG)
; genLabel
;	-----------------------------------------
;	 function I2C_ClearFlag
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_I2C_ClearFlag:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1236: flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
; genCast
; genAssign
	ldw	y, (0x03, sp)
; genAnd
	clr	a
	ld	yh, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1238: I2Cx->SR2 = (uint8_t)((uint16_t)(~flagpos));
; genPlus
	addw	x, #0x0008
; genCpl
	cplw	y
	ld	a, yl
; genCast
; genAssign
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1239: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #4
	jp	(x)
;	Total I2C_ClearFlag function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1264: ITStatus I2C_GetITStatus(I2C_TypeDef* I2Cx, I2C_IT_TypeDef I2C_IT)
; genLabel
;	-----------------------------------------
;	 function I2C_GetITStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 6 bytes.
_I2C_GetITStatus:
	sub	sp, #6
; genReceive
	exgw	x, y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1267: __IO uint8_t enablestatus = 0;
; genAssign
	clr	(0x03, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1273: tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_IT & ITEN_Mask)) >> 8);
; genCast
; genAssign
	ldw	x, (0x09, sp)
	ldw	(0x04, sp), x
; genAnd
	clr	(0x02, sp)
	ld	a, (0x04, sp)
	and	a, #0x07
; genGetByte
; genCast
; genAssign
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1276: enablestatus = (uint8_t)(I2Cx->ITR & ( uint8_t)tempregister);
; genAssign
	ldw	x, y
; genPointerGet
	push	a
	ld	a, (0xa, x)
	ld	(0x07, sp), a
	pop	a
; genCast
; genAssign
; genAnd
	and	a, (0x06, sp)
	ld	(0x03, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1278: if ((uint16_t)((uint16_t)I2C_IT & REGISTER_Mask) == REGISTER_SR1_Index)
; genAnd
	clr	a
	ld	xl, a
	ld	a, (0x04, sp)
	and	a, #0x30
	ld	xh, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1281: if (((I2Cx->SR1 & (uint8_t)I2C_IT) != RESET) && enablestatus)
; genCast
; genAssign
	ld	a, (0x0a, sp)
	ld	(0x06, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1278: if ((uint16_t)((uint16_t)I2C_IT & REGISTER_Mask) == REGISTER_SR1_Index)
; genCmpEQorNE
	cpw	x, #0x0100
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00150$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00110$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00151$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1281: if (((I2Cx->SR1 & (uint8_t)I2C_IT) != RESET) && enablestatus)
; genAssign
; genPointerGet
	ld	a, (0x7, y)
; genAnd
; genIfx
	and	a, (0x06, sp)
; peephole 23 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00152$.
; genIfx
	tnz	(0x03, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00153$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1284: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jra	00111$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1289: bitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jra	00111$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00110$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1295: if (((I2Cx->SR2 & (uint8_t)I2C_IT) != RESET) && enablestatus)
; genAssign
; genPointerGet
	ld	a, (0x8, y)
; genAnd
; genIfx
	and	a, (0x06, sp)
; peephole 23 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00106$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00154$.
; genIfx
	tnz	(0x03, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00106$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00155$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1298: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1303: bitstatus = RESET;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00106$:
	clr	a
00111$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1307: return  bitstatus;
; genReturn
; genLabel
; peephole j30 removed unused label 00112$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1308: }
; genEndFunction
	ldw	x, (7, sp)
	addw	sp, #10
	jp	(x)
;	Total I2C_GetITStatus function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1340: void I2C_ClearITPendingBit(I2C_TypeDef* I2Cx, I2C_IT_TypeDef I2C_IT)
; genLabel
;	-----------------------------------------
;	 function I2C_ClearITPendingBit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_I2C_ClearITPendingBit:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1348: flagpos = (uint16_t)I2C_IT & FLAG_Mask;
; genCast
; genAssign
	ldw	y, (0x03, sp)
; genAnd
	clr	a
	ld	yh, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1351: I2Cx->SR2 = (uint8_t)((uint16_t)~flagpos);
; genPlus
	addw	x, #0x0008
; genCpl
	cplw	y
	ld	a, yl
; genCast
; genAssign
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1352: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #4
	jp	(x)
;	Total I2C_ClearITPendingBit function size at codegen: 5 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
