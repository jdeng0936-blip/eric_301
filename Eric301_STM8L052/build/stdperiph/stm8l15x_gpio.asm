;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_gpio
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_DeInit
	.globl _GPIO_Init
	.globl _GPIO_ExternalPullUpConfig
	.globl _GPIO_Write
	.globl _GPIO_WriteBit
	.globl _GPIO_SetBits
	.globl _GPIO_ResetBits
	.globl _GPIO_ToggleBits
	.globl _GPIO_ReadInputData
	.globl _GPIO_ReadOutputData
	.globl _GPIO_ReadInputDataBit
	.globl _GPIO_ReadOutputDataBit
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 96: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
; genLabel
;	-----------------------------------------
;	 function GPIO_DeInit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_GPIO_DeInit:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 98: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
; genPlus
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0004, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 99: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
; genPointerSet
	clr	(y)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 100: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
; genPlus
	ldw	x, y
; genPointerSet
; peephole 10i moved addition of offset into instruction
	clr	(0x02, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 101: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0003, x)
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 102: }
; genEndFunction
	ret
;	Total GPIO_DeInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 133: void GPIO_Init(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
; genLabel
;	-----------------------------------------
;	 function GPIO_Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 9 bytes.
_GPIO_Init:
	sub	sp, #9
; genReceive
	ldw	(0x08, sp), x
; genReceive
	ld	(0x07, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 143: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
; genPlus
	ldw	x, (0x08, sp)
	addw	x, #0x0004
; genPointerGet
	ldw	(0x03, sp), x
; peephole 13 removed redundant load from (0x03, sp) into x.
	ld	a, (x)
; genCpl
	push	a
	ld	a, (0x08, sp)
	cpl	a
	ld	(0x06, sp), a
	pop	a
; genAnd
	and	a, (0x05, sp)
; genPointerSet
	ldw	x, (0x03, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 159: GPIOx->DDR |= GPIO_Pin;
; genPlus
	ldw	x, (0x08, sp)
	incw	x
	incw	x
	ldw	(0x01, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 149: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
; genAnd
	tnz	(0x0c, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrpl	00105$
; peephole j8 removed jra by using inverse jump logic
; peephole j30 removed unused label 00143$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 153: GPIOx->ODR |= GPIO_Pin;
; genCast
; genAssign
	ldw	x, (0x08, sp)
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 151: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
; genAnd
	push	a
	ld	a, (0x0d, sp)
	bcp	a, #0x10
	pop	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00144$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 153: GPIOx->ODR |= GPIO_Pin;
; genOr
	or	a, (0x07, sp)
; genPointerSet
	ld	(x), a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 156: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
; genAnd
	and	a, (0x05, sp)
; genPointerSet
	ld	(x), a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 159: GPIOx->DDR |= GPIO_Pin;
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genOr
	or	a, (0x07, sp)
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
; genGoto
	jra	00106$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 163: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genAnd
	and	a, (0x05, sp)
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
; genLabel
00106$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 172: GPIOx->CR1 |= GPIO_Pin;
; genPlus
	ldw	x, (0x08, sp)
	addw	x, #0x0003
; genPointerGet
	ld	a, (x)
	ld	(0x06, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 170: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
; genAnd
	ld	a, (0x0c, sp)
	bcp	a, #0x40
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00145$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 172: GPIOx->CR1 |= GPIO_Pin;
; genOr
	ld	a, (0x06, sp)
	or	a, (0x07, sp)
; genPointerSet
	ld	(x), a
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 175: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
; genAnd
	ld	a, (0x06, sp)
	and	a, (0x05, sp)
; genPointerSet
	ld	(x), a
; genLabel
00109$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 143: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
; genPointerGet
	ldw	x, (0x03, sp)
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 182: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
; genAnd
	push	a
	ld	a, (0x0d, sp)
	bcp	a, #0x20
	pop	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00111$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00146$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 184: GPIOx->CR2 |= GPIO_Pin;
; genOr
	or	a, (0x07, sp)
; genPointerSet
	ldw	x, (0x03, sp)
	ld	(x), a
; genGoto
	jra	00113$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00111$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 187: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
; genAnd
	and	a, (0x05, sp)
; genPointerSet
	ldw	x, (0x03, sp)
	ld	(x), a
; genLabel
00113$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 190: }
; genEndFunction
	addw	sp, #9
	popw	x
	pop	a
	jp	(x)
;	Total GPIO_Init function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 209: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function GPIO_ExternalPullUpConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_GPIO_ExternalPullUpConfig:
	push	a
; genReceive
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 217: GPIOx->CR1 |= GPIO_Pin;
; genPlus
	addw	x, #0x0003
; genPointerGet
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 215: if (NewState != DISABLE) /* External Pull-Up Set*/
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 217: GPIOx->CR1 |= GPIO_Pin;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 220: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 222: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total GPIO_ExternalPullUpConfig function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 248: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t GPIO_PortVal)
; genLabel
;	-----------------------------------------
;	 function GPIO_Write
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_GPIO_Write:
; genReceive
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 250: GPIOx->ODR = GPIO_PortVal;
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 251: }
; genEndFunction
	ret
;	Total GPIO_Write function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 270: void GPIO_WriteBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, BitAction GPIO_BitVal)
; genLabel
;	-----------------------------------------
;	 function GPIO_WriteBit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_GPIO_WriteBit:
	push	a
; genReceive
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 278: GPIOx->ODR |= GPIO_Pin;
; genCast
; genAssign
; genPointerGet
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 276: if (GPIO_BitVal != RESET)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 278: GPIOx->ODR |= GPIO_Pin;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 283: GPIOx->ODR &= (uint8_t)(~GPIO_Pin);
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 285: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total GPIO_WriteBit function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 303: void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
; genLabel
;	-----------------------------------------
;	 function GPIO_SetBits
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_GPIO_SetBits:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 305: GPIOx->ODR |= GPIO_Pin;
; genCast
; genAssign
; genPointerGet
	ld	a, (x)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 306: }
; genEndFunction
	pop	a
	ret
;	Total GPIO_SetBits function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 324: void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
; genLabel
;	-----------------------------------------
;	 function GPIO_ResetBits
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_GPIO_ResetBits:
	push	a
; genReceive
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 326: GPIOx->ODR &= (uint8_t)(~GPIO_Pin);
; genCast
; genAssign
; genPointerGet
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 327: }
; genEndFunction
	pop	a
	ret
;	Total GPIO_ResetBits function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 336: void GPIO_ToggleBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
; genLabel
;	-----------------------------------------
;	 function GPIO_ToggleBits
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_GPIO_ToggleBits:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 338: GPIOx->ODR ^= GPIO_Pin;
; genCast
; genAssign
; genPointerGet
	ld	a, (x)
; genXor
	xor	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 339: }
; genEndFunction
	pop	a
	ret
;	Total GPIO_ToggleBits function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 347: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
; genLabel
;	-----------------------------------------
;	 function GPIO_ReadInputData
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_GPIO_ReadInputData:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 349: return ((uint8_t)GPIOx->IDR);
; genAssign
; genPointerGet
	ld	a, (0x1, x)
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 350: }
; genEndFunction
	ret
;	Total GPIO_ReadInputData function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 358: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
; genLabel
;	-----------------------------------------
;	 function GPIO_ReadOutputData
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_GPIO_ReadOutputData:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 360: return ((uint8_t)GPIOx->ODR);
; genPointerGet
	ld	a, (x)
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 361: }
; genEndFunction
	ret
;	Total GPIO_ReadOutputData function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 378: BitStatus GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
; genLabel
;	-----------------------------------------
;	 function GPIO_ReadInputDataBit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_GPIO_ReadInputDataBit:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 380: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
; genAssign
; genPointerGet
	ld	a, (0x1, x)
; genAnd
	and	a, (0x01, sp)
; genCast
	neg	a
	clr	a
	rlc	a
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 381: }
; genEndFunction
	addw	sp, #1
	ret
;	Total GPIO_ReadInputDataBit function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 389: BitStatus GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
; genLabel
;	-----------------------------------------
;	 function GPIO_ReadOutputDataBit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_GPIO_ReadOutputDataBit:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 391: return ((BitStatus)(GPIOx->ODR & (uint8_t)GPIO_Pin));
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, (0x01, sp)
; genCast
	neg	a
	clr	a
	rlc	a
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_gpio.c: 392: }
; genEndFunction
	addw	sp, #1
	ret
;	Total GPIO_ReadOutputDataBit function size at codegen: 3 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
