;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_wwdg
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WWDG_Init
	.globl _WWDG_SetWindowValue
	.globl _WWDG_SetCounter
	.globl _WWDG_Enable
	.globl _WWDG_GetCounter
	.globl _WWDG_SWReset
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 119: void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
; genLabel
;	-----------------------------------------
;	 function WWDG_Init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_WWDG_Init:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 124: WWDG->WR = WWDG_WR_RESET_VALUE;
; genPointerSet
	mov	0x50d4+0, #0x7f
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 125: WWDG->CR = (uint8_t)(WWDG_CR_WDGA | Counter);
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x50d3, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 126: WWDG->WR = (uint8_t)((uint8_t)BIT_MASK & (uint8_t) WindowValue);
; genAnd
	ld	a, (0x03, sp)
	and	a, #0x7f
; genPointerSet
	ld	0x50d4, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 127: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
;	Total WWDG_Init function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 135: void WWDG_SetWindowValue(uint8_t WindowValue)
; genLabel
;	-----------------------------------------
;	 function WWDG_SetWindowValue
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_WWDG_SetWindowValue:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 137: __IO uint8_t tmpreg = 0;
; genAssign
	clr	(0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 143: tmpreg |= (uint8_t) (WindowValue & (uint8_t) BIT_MASK);
; genAnd
	and	a, #0x7f
; genOr
	or	a, (0x01, sp)
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 146: WWDG->WR = tmpreg;
; genPointerSet
	ldw	x, #0x50d4
	ld	a, (0x01, sp)
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 147: }
; genEndFunction
	pop	a
	ret
;	Total WWDG_SetWindowValue function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 156: void WWDG_SetCounter(uint8_t Counter)
; genLabel
;	-----------------------------------------
;	 function WWDG_SetCounter
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_WWDG_SetCounter:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 163: WWDG->CR = (uint8_t)(Counter & (uint8_t)BIT_MASK);
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x50d3, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 164: }
; genEndFunction
	ret
;	Total WWDG_SetCounter function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 187: void WWDG_Enable(uint8_t Counter)
; genLabel
;	-----------------------------------------
;	 function WWDG_Enable
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_WWDG_Enable:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 191: WWDG->CR = (uint8_t)(WWDG_CR_WDGA | Counter);
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x50d3, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 192: }
; genEndFunction
	ret
;	Total WWDG_Enable function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 216: uint8_t WWDG_GetCounter(void)
; genLabel
;	-----------------------------------------
;	 function WWDG_GetCounter
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_WWDG_GetCounter:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 218: return(WWDG->CR);
; genPointerGet
	ld	a, 0x50d3
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 219: }
; genEndFunction
	ret
;	Total WWDG_GetCounter function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 226: void WWDG_SWReset(void)
; genLabel
;	-----------------------------------------
;	 function WWDG_SWReset
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_WWDG_SWReset:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 228: WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
; genPointerSet
	mov	0x50d3+0, #0x80
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_wwdg.c: 229: }
; genEndFunction
	ret
;	Total WWDG_SWReset function size at codegen: 1 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
