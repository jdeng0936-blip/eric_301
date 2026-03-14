;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_rst
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _RST_GetFlagStatus
	.globl _RST_ClearFlag
	.globl _RST_GPOutputEnable
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rst.c: 99: FlagStatus RST_GetFlagStatus(RST_FLAG_TypeDef RST_Flag)
; genLabel
;	-----------------------------------------
;	 function RST_GetFlagStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_RST_GetFlagStatus:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rst.c: 105: return((FlagStatus)(((uint8_t)(RST->SR & RST_Flag) == (uint8_t)0x00) ? RESET : SET));
; genPointerGet
	ld	a, 0x50b1
; genAnd
	and	a, (0x01, sp)
; genNot
	sub	a, #0x01
	clr	a
; genNot
	ccf
; peephole 20a replaced xor by ccf-
	rlc	a
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rst.c: 106: }
; genEndFunction
	addw	sp, #1
	ret
;	Total RST_GetFlagStatus function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rst.c: 120: void RST_ClearFlag(RST_FLAG_TypeDef RST_Flag)
; genLabel
;	-----------------------------------------
;	 function RST_ClearFlag
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_RST_ClearFlag:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rst.c: 125: RST->SR = (uint8_t)RST_Flag;
; genPointerSet
	ld	0x50b1, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rst.c: 126: }
; genEndFunction
	ret
;	Total RST_ClearFlag function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rst.c: 149: void RST_GPOutputEnable(void)
; genLabel
;	-----------------------------------------
;	 function RST_GPOutputEnable
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_RST_GPOutputEnable:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rst.c: 152: RST->CR = RST_CR_MASK;
; genPointerSet
	mov	0x50b0+0, #0xd0
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rst.c: 153: }
; genEndFunction
	ret
;	Total RST_GPOutputEnable function size at codegen: 1 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
