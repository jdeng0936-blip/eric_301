;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_usart
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_GetClockFreq
	.globl _USART_DeInit
	.globl _USART_Init
	.globl _USART_ClockInit
	.globl _USART_Cmd
	.globl _USART_SetPrescaler
	.globl _USART_SendBreak
	.globl _USART_ReceiveData8
	.globl _USART_ReceiveData9
	.globl _USART_SendData8
	.globl _USART_SendData9
	.globl _USART_ReceiverWakeUpCmd
	.globl _USART_SetAddress
	.globl _USART_WakeUpConfig
	.globl _USART_HalfDuplexCmd
	.globl _USART_SmartCardCmd
	.globl _USART_SmartCardNACKCmd
	.globl _USART_SetGuardTime
	.globl _USART_IrDAConfig
	.globl _USART_IrDACmd
	.globl _USART_DMACmd
	.globl _USART_ITConfig
	.globl _USART_GetFlagStatus
	.globl _USART_ClearFlag
	.globl _USART_GetITStatus
	.globl _USART_ClearITPendingBit
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 148: void USART_DeInit(USART_TypeDef* USARTx)
; genLabel
;	-----------------------------------------
;	 function USART_DeInit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_USART_DeInit:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 154: (void) USARTx->DR;
; genAssign
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
; genPointerGet
; Dummy read
	ld	a, (0x1, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 156: USARTx->BRR2 = USART_BRR2_RESET_VALUE;  /* Set USART_BRR2 to reset value 0x00 */
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0003, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 157: USARTx->BRR1 = USART_BRR1_RESET_VALUE;  /* Set USART_BRR1 to reset value 0x00 */
; genPlus
	ldw	x, y
; genPointerSet
; peephole 10i moved addition of offset into instruction
	clr	(0x02, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 159: USARTx->CR1 = USART_CR1_RESET_VALUE;  /* Set USART_CR1 to reset value 0x00 */
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0004, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 160: USARTx->CR2 = USART_CR2_RESET_VALUE;  /* Set USART_CR2 to reset value 0x00 */
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0005, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 161: USARTx->CR3 = USART_CR3_RESET_VALUE;  /* Set USART_CR3 to reset value 0x00 */
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0006, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 162: USARTx->CR4 = USART_CR4_RESET_VALUE;  /* Set USART_CR4 to reset value 0x00 */
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0007, x)
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 163: }
; genEndFunction
	ret
;	Total USART_DeInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 192: void USART_Init(USART_TypeDef* USARTx, uint32_t BaudRate, USART_WordLength_TypeDef
; genLabel
;	-----------------------------------------
;	 function USART_Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 11 bytes.
_USART_Init:
	sub	sp, #11
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 210: USARTx->CR1 &= (uint8_t)(~(USART_CR1_PCEN | USART_CR1_PS | USART_CR1_M));
; genPlus
	ldw	(0x0a, sp), x
; peephole 13 removed redundant load from (0x0a, sp) into x.
	addw	x, #0x0004
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0xe9
; genPointerSet
	ld	(0x09, sp), a
; peephole 4a removed redundant load from (0x09, sp) into a.
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 213: USARTx->CR1 |= (uint8_t)((uint8_t)USART_WordLength | (uint8_t)USART_Parity);
; genOr
	ld	a, (0x12, sp)
	or	a, (0x14, sp)
; genOr
	or	a, (0x09, sp)
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 216: USARTx->CR3 &= (uint8_t)(~USART_CR3_STOP);
; genPlus
	ldw	x, (0x0a, sp)
	addw	x, #0x0006
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0xcf
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 218: USARTx->CR3 |= (uint8_t)USART_StopBits;
; genOr
	or	a, (0x13, sp)
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 221: USARTx->BRR1 &= (uint8_t)(~USART_BRR1_DIVM);
; genPlus
	ldw	x, (0x0a, sp)
	incw	x
	incw	x
; genPointerGet
; Dummy read
	ldw	(0x01, sp), x
; peephole 13 removed redundant load from (0x01, sp) into x.
	ld	a, (x)
; genPointerSet
	ldw	x, (0x01, sp)
	clr	(x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 223: USARTx->BRR2 &= (uint8_t)(~USART_BRR2_DIVM);
; genPlus
	ldw	x, (0x0a, sp)
	addw	x, #0x0003
; genPointerGet
	ldw	(0x03, sp), x
; peephole 13 removed redundant load from (0x03, sp) into x.
	ld	a, (x)
; genAnd
	and	a, #0x0f
; genPointerSet
	ldw	x, (0x03, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 225: USARTx->BRR2 &= (uint8_t)(~USART_BRR2_DIVF);
; genPointerSet
	ldw	x, (0x03, sp)
	clr	(x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 227: BaudRate_Mantissa  = (uint32_t)(CLK_GetClockFreq() / BaudRate );
; genCall
	call	_CLK_GetClockFreq
	ldw	(0x08, sp), x
; genIPush
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
; genIPush
	ldw	x, (0x0c, sp)
	pushw	x
	pushw	y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 229: USARTx->BRR2 = (uint8_t)((BaudRate_Mantissa >> (uint8_t)8) & (uint8_t)0xF0);
; genCall
	call	__divulong
	addw	sp, #8
	ldw	(0x05, sp), y
; genGetByte
	ld	a, xh
; genAnd
	and	a, #0xf0
	ld	(0x09, sp), a
; genPointerSet
	ldw	y, (0x03, sp)
	ld	a, (0x09, sp)
	ld	(y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 231: USARTx->BRR2 |= (uint8_t)(BaudRate_Mantissa & (uint8_t)0x0F);
; genCast
; genAssign
	ld	a, xl
; genAnd
	and	a, #0x0f
; genOr
	or	a, (0x09, sp)
; genPointerSet
	ldw	y, (0x03, sp)
	ld	(y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 233: USARTx->BRR1 = (uint8_t)(BaudRate_Mantissa >> (uint8_t)4);
; genCast
; genAssign
; genRightShiftLiteral
	ld	a, #0x10
	div	x, a
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 236: USARTx->CR2 &= (uint8_t)~(USART_CR2_TEN | USART_CR2_REN);
; genPlus
	ldw	x, (0x0a, sp)
	addw	x, #0x0005
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0xf3
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 238: USARTx->CR2 |= (uint8_t)USART_Mode;
; genOr
	or	a, (0x15, sp)
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 239: }
; genEndFunction
	ldw	x, (12, sp)
	addw	sp, #21
	jp	(x)
;	Total USART_Init function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 264: void USART_ClockInit(USART_TypeDef* USARTx, USART_Clock_TypeDef USART_Clock,
; genLabel
;	-----------------------------------------
;	 function USART_ClockInit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 5 bytes.
_USART_ClockInit:
	sub	sp, #5
; genReceive
; genReceive
	ld	(0x05, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 275: USARTx->CR3 &= (uint8_t)~(USART_CR3_CPOL | USART_CR3_CPHA | USART_CR3_LBCL);
; genPlus
	addw	x, #0x0006
; genPointerGet
	ldw	(0x01, sp), x
; peephole 13 removed redundant load from (0x01, sp) into x.
	ld	a, (x)
; genAnd
	and	a, #0xf8
	ld	(0x03, sp), a
; genPointerSet
	ldw	x, (0x01, sp)
	ld	a, (0x03, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 277: USARTx->CR3 |= (uint8_t)((uint8_t)((uint8_t)(USART_CPOL | (uint8_t)USART_CPHA ) | USART_LastBit));
; genOr
	ld	a, (0x08, sp)
	or	a, (0x09, sp)
	ld	(0x04, sp), a
; genCast
; genAssign
	ld	a, (0x0a, sp)
; genOr
	or	a, (0x04, sp)
; genCast
; genAssign
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 275: USARTx->CR3 &= (uint8_t)~(USART_CR3_CPOL | USART_CR3_CPHA | USART_CR3_LBCL);
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 279: if (USART_Clock != USART_Clock_Disable)
; genIfx
	tnz	(0x05, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 281: USARTx->CR3 |= (uint8_t)(USART_CR3_CLKEN); /* Set the Clock Enable bit */
; genOr
	or	a, #0x08
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 285: USARTx->CR3 &= (uint8_t)(~USART_CR3_CLKEN); /* Clear the Clock Enable bit */
; genAnd
	and	a, #0xf7
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 287: }
; genEndFunction
	ldw	x, (6, sp)
	addw	sp, #10
	jp	(x)
;	Total USART_ClockInit function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 296: void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function USART_Cmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_USART_Cmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 300: USARTx->CR1 &= (uint8_t)(~USART_CR1_USARTD); /**< USART Enable */
; genPlus
	addw	x, #0x0004
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 298: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 300: USARTx->CR1 &= (uint8_t)(~USART_CR1_USARTD); /**< USART Enable */
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 304: USARTx->CR1 |= USART_CR1_USARTD;  /**< USART Disable (for low power consumption) */
; genOr
	or	a, #0x20
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 306: }
; genEndFunction
	pop	a
	ret
;	Total USART_Cmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 329: void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler)
; genLabel
;	-----------------------------------------
;	 function USART_SetPrescaler
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_USART_SetPrescaler:
; genReceive
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 332: USARTx->PSCR = USART_Prescaler;
; genPlus
	addw	x, #0x000a
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 333: }
; genEndFunction
	ret
;	Total USART_SetPrescaler function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 340: void USART_SendBreak(USART_TypeDef* USARTx)
; genLabel
;	-----------------------------------------
;	 function USART_SendBreak
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_USART_SendBreak:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 342: USARTx->CR2 |= USART_CR2_SBK;
; genPlus
	addw	x, #0x0005
; genPointerGet
	ld	a, (x)
; genOr
	or	a, #0x01
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 343: }
; genEndFunction
	ret
;	Total USART_SendBreak function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 382: uint8_t USART_ReceiveData8(USART_TypeDef* USARTx)
; genLabel
;	-----------------------------------------
;	 function USART_ReceiveData8
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_USART_ReceiveData8:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 384: return USARTx->DR;
; genAssign
; genPointerGet
	ld	a, (0x1, x)
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 385: }
; genEndFunction
	ret
;	Total USART_ReceiveData8 function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 392: uint16_t USART_ReceiveData9(USART_TypeDef* USARTx)
; genLabel
;	-----------------------------------------
;	 function USART_ReceiveData9
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_USART_ReceiveData9:
	pushw	x
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 396: temp = ((uint16_t)(((uint16_t)((uint16_t)USARTx->CR1 & (uint16_t)USART_CR1_R8)) << 1));
; genAssign
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
; genPointerGet
	ld	a, (0x4, x)
; genCast
; genAssign
; peephole 3 removed dead clrw of x.
; genAnd
	and	a, #0x80
	ld	xl, a
	clr	a
	ld	xh, a
; genLeftShiftLiteral
	sllw	x
	ldw	(0x01, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 397: return (uint16_t)( ((uint16_t)((uint16_t)USARTx->DR) | temp) & ((uint16_t)0x01FF));
; genAssign
; genPointerGet
	ld	a, (0x1, y)
; genCast
; genAssign
; peephole 3 removed dead clrw of x.
; genOr
	or	a, (0x02, sp)
	ld	xl, a
	ld	a, (0x01, sp)
; genAnd
	and	a, #0x01
	ld	xh, a
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 398: }
; genEndFunction
	addw	sp, #2
	ret
;	Total USART_ReceiveData9 function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 405: void USART_SendData8(USART_TypeDef* USARTx, uint8_t Data)
; genLabel
;	-----------------------------------------
;	 function USART_SendData8
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_USART_SendData8:
; genReceive
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 408: USARTx->DR = Data;
; genPlus
	incw	x
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 409: }
; genEndFunction
	ret
;	Total USART_SendData8 function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 418: void USART_SendData9(USART_TypeDef* USARTx, uint16_t Data)
; genLabel
;	-----------------------------------------
;	 function USART_SendData9
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_USART_SendData9:
	sub	sp, #3
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 423: USARTx->CR1 &= ((uint8_t)~USART_CR1_T8);
; genPlus
	ldw	(0x02, sp), x
; peephole 13 removed redundant load from (0x02, sp) into x.
	addw	x, #0x0004
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	(0x01, sp), a
; peephole 4a removed redundant load from (0x01, sp) into a.
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 426: USARTx->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & USART_CR1_T8);
; genRightShiftLiteral
	ldw	y, (0x06, sp)
	srlw	y
	srlw	y
; genCast
; genAssign
	ld	a, yl
; genAnd
	and	a, #0x40
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 429: USARTx->DR   = (uint8_t)(Data);
; genPlus
	ldw	x, (0x02, sp)
	incw	x
; genCast
; genAssign
	ld	a, (0x07, sp)
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 430: }
; genEndFunction
	ldw	x, (4, sp)
	addw	sp, #7
	jp	(x)
;	Total USART_SendData9 function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 473: void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function USART_ReceiverWakeUpCmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_USART_ReceiverWakeUpCmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 480: USARTx->CR2 |= USART_CR2_RWU;
; genPlus
	addw	x, #0x0005
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 477: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 480: USARTx->CR2 |= USART_CR2_RWU;
; genOr
	or	a, #0x02
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 485: USARTx->CR2 &= ((uint8_t)~USART_CR2_RWU);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 487: }
; genEndFunction
	pop	a
	ret
;	Total USART_ReceiverWakeUpCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 496: void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address)
; genLabel
;	-----------------------------------------
;	 function USART_SetAddress
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_USART_SetAddress:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 502: USARTx->CR4 &= ((uint8_t)~USART_CR4_ADD);
; genPlus
	addw	x, #0x0007
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0xf0
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 504: USARTx->CR4 |= USART_Address;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 505: }
; genEndFunction
	pop	a
	ret
;	Total USART_SetAddress function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 515: void USART_WakeUpConfig(USART_TypeDef* USARTx, USART_WakeUp_TypeDef USART_WakeUp)
; genLabel
;	-----------------------------------------
;	 function USART_WakeUpConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_USART_WakeUpConfig:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 519: USARTx->CR1 &= ((uint8_t)~USART_CR1_WAKE);
; genPlus
	addw	x, #0x0004
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 520: USARTx->CR1 |= (uint8_t)USART_WakeUp;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 521: }
; genEndFunction
	pop	a
	ret
;	Total USART_WakeUpConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 566: void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function USART_HalfDuplexCmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_USART_HalfDuplexCmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 572: USARTx->CR5 |= USART_CR5_HDSEL;  /**< USART Half Duplex Enable  */
; genPlus
	addw	x, #0x0008
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 570: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 572: USARTx->CR5 |= USART_CR5_HDSEL;  /**< USART Half Duplex Enable  */
; genOr
	or	a, #0x08
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 576: USARTx->CR5 &= (uint8_t)~USART_CR5_HDSEL; /**< USART Half Duplex Disable */
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 578: }
; genEndFunction
	pop	a
	ret
;	Total USART_HalfDuplexCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 644: void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function USART_SmartCardCmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_USART_SmartCardCmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 651: USARTx->CR5 |= USART_CR5_SCEN;
; genPlus
	addw	x, #0x0008
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 648: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 651: USARTx->CR5 |= USART_CR5_SCEN;
; genOr
	or	a, #0x20
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 656: USARTx->CR5 &= ((uint8_t)(~USART_CR5_SCEN));
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 658: }
; genEndFunction
	pop	a
	ret
;	Total USART_SmartCardCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 667: void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function USART_SmartCardNACKCmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_USART_SmartCardNACKCmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 674: USARTx->CR5 |= USART_CR5_NACK;
; genPlus
	addw	x, #0x0008
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 671: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 674: USARTx->CR5 |= USART_CR5_NACK;
; genOr
	or	a, #0x10
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 679: USARTx->CR5 &= ((uint8_t)~(USART_CR5_NACK));
; genAnd
	and	a, #0xef
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 681: }
; genEndFunction
	pop	a
	ret
;	Total USART_SmartCardNACKCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 690: void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime)
; genLabel
;	-----------------------------------------
;	 function USART_SetGuardTime
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_USART_SetGuardTime:
; genReceive
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 693: USARTx->GTR = USART_GuardTime;
; genPlus
	addw	x, #0x0009
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 694: }
; genEndFunction
	ret
;	Total USART_SetGuardTime function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 751: void USART_IrDAConfig(USART_TypeDef* USARTx, USART_IrDAMode_TypeDef USART_IrDAMode)
; genLabel
;	-----------------------------------------
;	 function USART_IrDAConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_USART_IrDAConfig:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 757: USARTx->CR5 |= USART_CR5_IRLP;
; genPlus
	addw	x, #0x0008
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 755: if (USART_IrDAMode != USART_IrDAMode_Normal)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 757: USARTx->CR5 |= USART_CR5_IRLP;
; genOr
	or	a, #0x04
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 761: USARTx->CR5 &= ((uint8_t)~USART_CR5_IRLP);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 763: }
; genEndFunction
	pop	a
	ret
;	Total USART_IrDAConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 772: void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function USART_IrDACmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_USART_IrDACmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 781: USARTx->CR5 |= USART_CR5_IREN;
; genPlus
	addw	x, #0x0008
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 778: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 781: USARTx->CR5 |= USART_CR5_IREN;
; genOr
	or	a, #0x02
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 786: USARTx->CR5 &= ((uint8_t)~USART_CR5_IREN);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 788: }
; genEndFunction
	pop	a
	ret
;	Total USART_IrDACmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 818: void USART_DMACmd(USART_TypeDef* USARTx, USART_DMAReq_TypeDef USART_DMAReq,
; genLabel
;	-----------------------------------------
;	 function USART_DMACmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_USART_DMACmd:
	push	a
; genReceive
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 829: USARTx->CR5 |= (uint8_t) USART_DMAReq;
; genPlus
	addw	x, #0x0008
; genPointerGet
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 825: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 829: USARTx->CR5 |= (uint8_t) USART_DMAReq;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 835: USARTx->CR5 &= (uint8_t)~USART_DMAReq;
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 837: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total USART_DMACmd function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 939: void USART_ITConfig(USART_TypeDef* USARTx, USART_IT_TypeDef USART_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function USART_ITConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 9 bytes.
_USART_ITConfig:
	sub	sp, #9
; genReceive
	ldw	(0x08, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 946: usartreg = (uint8_t)((uint16_t)USART_IT >> 0x08);
; genCast
; genAssign
	ldw	x, (0x0c, sp)
; genGetByte
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 948: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)USART_IT & (uint8_t)0x0F));
; genCast
; genAssign
	ld	a, (0x0d, sp)
; genAnd
	and	a, #0x0f
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x08, sp), a
	pop	a
	tnz	a
	jreq	00154$
00153$:
	sll	(0x07, sp)
	dec	a
	jrne	00153$
00154$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 953: if (usartreg == 0x01)
; genCmpEQorNE
	ld	a, xh
	dec	a
	jrne	00156$
	ld	a, #0x01
	ld	(0x01, sp), a
; peephole j5 changed absolute to relative unconditional jump.
	.byte 0xc5
; peephole jrf7 used bcp opcode to jump over 2-byte instruction.
00156$:
	clr	(0x01, sp)
00157$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 955: USARTx->CR1 |= itpos;
; genPlus
	ldw	y, (0x08, sp)
	addw	y, #0x0004
	ldw	(0x02, sp), y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 957: else if (usartreg == 0x05)
; genCmpEQorNE
	ld	a, xh
	sub	a, #0x05
	jrne	00159$
	inc	a
; peephole 51 used inc to get #1 into a.
	ld	(0x04, sp), a
; peephole j5 changed absolute to relative unconditional jump.
	.byte 0xc5
; peephole jrf7 used bcp opcode to jump over 2-byte instruction.
00159$:
	clr	(0x04, sp)
00160$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 959: USARTx->CR5 |= itpos;
; genPlus
	ldw	x, (0x08, sp)
	addw	x, #0x0008
	ldw	(0x05, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 964: USARTx->CR2 |= itpos;
; genPlus
	ldw	x, (0x08, sp)
	addw	x, #0x0005
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 950: if (NewState != DISABLE)
; genIfx
	tnz	(0x0e, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00114$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00161$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 953: if (usartreg == 0x01)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00162$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 955: USARTx->CR1 |= itpos;
; genPointerGet
	ldw	x, (0x02, sp)
	ld	a, (x)
; genOr
	or	a, (0x07, sp)
; genPointerSet
	ldw	x, (0x02, sp)
	ld	(x), a
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 957: else if (usartreg == 0x05)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00163$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 959: USARTx->CR5 |= itpos;
; genPointerGet
	ldw	x, (0x05, sp)
	ld	a, (x)
; genOr
	or	a, (0x07, sp)
; genPointerSet
	ldw	x, (0x05, sp)
	ld	(x), a
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 964: USARTx->CR2 |= itpos;
; genPointerGet
	ld	a, (x)
; genOr
	or	a, (0x07, sp)
; genPointerSet
	ld	(x), a
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00114$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 972: USARTx->CR1 &= (uint8_t)(~itpos);
; genCpl
	cpl	(0x07, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 970: if (usartreg == 0x01)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00111$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00164$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 972: USARTx->CR1 &= (uint8_t)(~itpos);
; genPointerGet
	ldw	x, (0x02, sp)
	ld	a, (x)
; genAnd
	and	a, (0x07, sp)
; genPointerSet
	ldw	x, (0x02, sp)
	ld	(x), a
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00111$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 974: else if (usartreg == 0x05)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00165$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 976: USARTx->CR5 &= (uint8_t)(~itpos);
; genPointerGet
	ldw	x, (0x05, sp)
	ld	a, (x)
; genAnd
	and	a, (0x07, sp)
; genPointerSet
	ldw	x, (0x05, sp)
	ld	(x), a
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 981: USARTx->CR2 &= (uint8_t)(~itpos);
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, (0x07, sp)
; genPointerSet
	ld	(x), a
; genLabel
00116$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 984: }
; genEndFunction
	ldw	x, (10, sp)
	addw	sp, #14
	jp	(x)
;	Total USART_ITConfig function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1002: FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, USART_FLAG_TypeDef USART_FLAG)
; genLabel
;	-----------------------------------------
;	 function USART_GetFlagStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_USART_GetFlagStatus:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1009: if (USART_FLAG == USART_FLAG_SBK)
; genCast
; genAssign
	ldw	y, (0x04, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1011: if ((USARTx->CR2 & (uint8_t)USART_FLAG) != (uint8_t)0x00)
; genCast
; genAssign
	ld	a, (0x05, sp)
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1009: if (USART_FLAG == USART_FLAG_SBK)
; genCmpEQorNE
	cpw	y, #0x0101
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00134$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00108$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00135$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1011: if ((USARTx->CR2 & (uint8_t)USART_FLAG) != (uint8_t)0x00)
; genAssign
; genPointerGet
	ld	a, (0x5, x)
; genAnd
; genIfx
	and	a, (0x01, sp)
; peephole 23 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00136$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1014: status = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1019: status = RESET;
; genAssign
	clr	a
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1024: if ((USARTx->SR & (uint8_t)USART_FLAG) != (uint8_t)0x00)
; genPointerGet
	ld	a, (x)
; genAnd
; genIfx
	and	a, (0x01, sp)
; peephole 23 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00137$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1027: status = SET;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1032: status = RESET;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00105$:
	clr	a
00109$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1036: return status;
; genReturn
; genLabel
; peephole j30 removed unused label 00110$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1037: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #5
	jp	(x)
;	Total USART_GetFlagStatus function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1060: void USART_ClearFlag(USART_TypeDef* USARTx, USART_FLAG_TypeDef USART_FLAG)
; genLabel
;	-----------------------------------------
;	 function USART_ClearFlag
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_USART_ClearFlag:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1065: USARTx->SR = (uint8_t)((uint16_t)~((uint16_t)USART_FLAG));
; genCast
; genAssign
; genCast
; genAssign
	ldw	y, (0x03, sp)
; genCpl
	cplw	y
	ld	a, yl
; genCast
; genAssign
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1066: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #4
	jp	(x)
;	Total USART_ClearFlag function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1083: ITStatus USART_GetITStatus(USART_TypeDef* USARTx, USART_IT_TypeDef USART_IT)
; genLabel
;	-----------------------------------------
;	 function USART_GetITStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 9 bytes.
_USART_GetITStatus:
	sub	sp, #9
; genReceive
	ldw	(0x08, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1096: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)USART_IT & (uint8_t)0x0F));
; genCast
; genAssign
	ld	a, (0x0d, sp)
; genAnd
	ld	xl, a
; peephole 4 removed redundant load from xl into a.
	and	a, #0x0f
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x04, sp), a
	pop	a
	tnz	a
	jreq	00179$
00178$:
	sll	(0x03, sp)
	dec	a
	jrne	00178$
00179$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1098: itmask1 = (uint8_t)((uint8_t)USART_IT >> (uint8_t)4);
; genRightShiftLiteral
	ld	a, xl
	swap	a
	and	a, #0x0f
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1100: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x08, sp), a
	pop	a
	tnz	a
	jreq	00181$
00180$:
	sll	(0x07, sp)
	dec	a
	jrne	00180$
00181$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1103: if (USART_IT == USART_IT_PE)
; genCast
; genAssign
	ldw	y, (0x0c, sp)
	ldw	(0x01, sp), y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1109: if (((USARTx->SR & itpos) != (uint8_t)0x00) && enablestatus)
; genCast
; genAssign
	ldw	y, (0x08, sp)
	ldw	(0x04, sp), y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1103: if (USART_IT == USART_IT_PE)
; genCmpEQorNE
	ldw	x, (0x01, sp)
	cpw	x, #0x0100
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00183$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00118$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00184$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1106: enablestatus = (uint8_t)((uint8_t)USARTx->CR1 & itmask2);
; genAssign
	ldw	y, (0x08, sp)
; genPointerGet
	ldw	(0x01, sp), y
	ldw	x, y
; peephole 15 replaced load from (0x01, sp) into x by load from y into x.
	ld	a, (0x4, x)
; genAnd
	and	a, (0x07, sp)
	ld	(0x07, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1109: if (((USARTx->SR & itpos) != (uint8_t)0x00) && enablestatus)
; genPointerGet
	ldw	x, (0x04, sp)
	ld	a, (x)
; genAnd
; genIfx
	and	a, (0x03, sp)
; peephole 23 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00185$.
; genIfx
	tnz	(0x07, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00186$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1112: pendingbitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jra	00119$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1117: pendingbitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jra	00119$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00118$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1124: enablestatus = (uint8_t)((uint8_t)USARTx->CR2 & itmask2);
; genAssign
	ldw	x, (0x08, sp)
; genPointerGet
	ld	a, (0x5, x)
; genAnd
	and	a, (0x07, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1121: else if (USART_IT == USART_IT_OR)
; genCmpEQorNE
	ldw	x, (0x01, sp)
	cpw	x, #0x0235
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00188$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00115$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00189$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1124: enablestatus = (uint8_t)((uint8_t)USARTx->CR2 & itmask2);
; genAssign
	ld	(0x06, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1127: temp = (uint8_t)(USARTx->CR5 & USART_CR5_EIE);
; genAssign
	ldw	x, (0x08, sp)
; genPointerGet
	ld	a, (0x8, x)
; genAnd
	and	a, #0x01
	ld	(0x07, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1129: if (( (USARTx->SR & itpos) != 0x00) && ((enablestatus || temp)))
; genPointerGet
	ldw	x, (0x04, sp)
	ld	a, (x)
; genAnd
; genIfx
	and	a, (0x03, sp)
; peephole 23 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00106$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00190$.
; genIfx
	tnz	(0x06, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00105$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00191$.
; genIfx
	tnz	(0x07, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00106$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00192$.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1132: pendingbitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jra	00119$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00106$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1137: pendingbitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jra	00119$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00115$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1144: enablestatus = (uint8_t)((uint8_t)USARTx->CR2 & itmask2);
; genAssign
	ld	(0x07, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1146: if (((USARTx->SR & itpos) != (uint8_t)0x00) && enablestatus)
; genPointerGet
	ldw	x, (0x04, sp)
	ld	a, (x)
; genAnd
; genIfx
	and	a, (0x03, sp)
; peephole 23 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00111$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00193$.
; genIfx
	tnz	(0x07, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00111$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00194$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1149: pendingbitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1154: pendingbitstatus = RESET;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00111$:
	clr	a
00119$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1159: return  pendingbitstatus;
; genReturn
; genLabel
; peephole j30 removed unused label 00120$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1160: }
; genEndFunction
	ldw	x, (10, sp)
	addw	sp, #13
	jp	(x)
;	Total USART_GetITStatus function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1183: void USART_ClearITPendingBit(USART_TypeDef* USARTx, USART_IT_TypeDef USART_IT)
; genLabel
;	-----------------------------------------
;	 function USART_ClearITPendingBit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_USART_ClearITPendingBit:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1188: USARTx->SR &= (uint8_t)(~USART_SR_TC);
; genCast
; genAssign
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1189: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #4
	jp	(x)
;	Total USART_ClearITPendingBit function size at codegen: 5 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
