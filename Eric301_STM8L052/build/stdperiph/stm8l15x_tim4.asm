;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_tim4
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM4_DeInit
	.globl _TIM4_TimeBaseInit
	.globl _TIM4_PrescalerConfig
	.globl _TIM4_SetCounter
	.globl _TIM4_SetAutoreload
	.globl _TIM4_GetCounter
	.globl _TIM4_GetPrescaler
	.globl _TIM4_UpdateDisableConfig
	.globl _TIM4_UpdateRequestConfig
	.globl _TIM4_ARRPreloadConfig
	.globl _TIM4_SelectOnePulseMode
	.globl _TIM4_Cmd
	.globl _TIM4_ITConfig
	.globl _TIM4_GenerateEvent
	.globl _TIM4_GetFlagStatus
	.globl _TIM4_ClearFlag
	.globl _TIM4_GetITStatus
	.globl _TIM4_ClearITPendingBit
	.globl _TIM4_DMACmd
	.globl _TIM4_InternalClockConfig
	.globl _TIM4_SelectInputTrigger
	.globl _TIM4_SelectOutputTrigger
	.globl _TIM4_SelectSlaveMode
	.globl _TIM4_SelectMasterSlaveMode
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 130: void TIM4_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function TIM4_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_DeInit:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 132: TIM4->CR1   = TIM4_CR1_RESET_VALUE;
; genPointerSet
	mov	0x52e0+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 133: TIM4->CR2   = TIM4_CR2_RESET_VALUE;
; genPointerSet
	mov	0x52e1+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 134: TIM4->SMCR   = TIM4_SMCR_RESET_VALUE;
; genPointerSet
	mov	0x52e2+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 135: TIM4->IER   = TIM4_IER_RESET_VALUE;
; genPointerSet
	mov	0x52e4+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 136: TIM4->CNTR   = TIM4_CNTR_RESET_VALUE;
; genPointerSet
	mov	0x52e7+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 137: TIM4->PSCR  = TIM4_PSCR_RESET_VALUE;
; genPointerSet
	mov	0x52e8+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 138: TIM4->ARR   = TIM4_ARR_RESET_VALUE;
; genPointerSet
	mov	0x52e9+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 139: TIM4->SR1   = TIM4_SR1_RESET_VALUE;
; genPointerSet
	mov	0x52e5+0, #0x00
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 140: }
; genEndFunction
	ret
;	Total TIM4_DeInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 165: void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler,
; genLabel
;	-----------------------------------------
;	 function TIM4_TimeBaseInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_TimeBaseInit:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 171: TIM4->ARR = (uint8_t)(TIM4_Period);
; genPointerSet
	ldw	x, #0x52e9
	push	a
	ld	a, (0x04, sp)
	ld	(x), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 173: TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
; genPointerSet
	ld	0x52e8, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 176: TIM4->EGR = TIM4_EventSource_Update;
; genPointerSet
	mov	0x52e6+0, #0x01
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 177: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
;	Total TIM4_TimeBaseInit function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 205: void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler,
; genLabel
;	-----------------------------------------
;	 function TIM4_PrescalerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_PrescalerConfig:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 213: TIM4->PSCR = (uint8_t) Prescaler;
; genPointerSet
	ld	0x52e8, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 218: TIM4->EGR |= TIM4_EGR_UG ;
; genPointerGet
	ld	a, 0x52e6
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 216: if (TIM4_PSCReloadMode == TIM4_PSCReloadMode_Immediate)
; genIfx
	tnz	(0x03, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 218: TIM4->EGR |= TIM4_EGR_UG ;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x52e6, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 222: TIM4->EGR &= (uint8_t)(~TIM4_EGR_UG) ;
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x52e6, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 224: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
;	Total TIM4_PrescalerConfig function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 232: void TIM4_SetCounter(uint8_t Counter)
; genLabel
;	-----------------------------------------
;	 function TIM4_SetCounter
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_SetCounter:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 235: TIM4->CNTR = (uint8_t)(Counter);
; genPointerSet
	ld	0x52e7, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 236: }
; genEndFunction
	ret
;	Total TIM4_SetCounter function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 244: void TIM4_SetAutoreload(uint8_t Autoreload)
; genLabel
;	-----------------------------------------
;	 function TIM4_SetAutoreload
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_SetAutoreload:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 247: TIM4->ARR = (uint8_t)(Autoreload);
; genPointerSet
	ld	0x52e9, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 248: }
; genEndFunction
	ret
;	Total TIM4_SetAutoreload function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 255: uint8_t TIM4_GetCounter(void)
; genLabel
;	-----------------------------------------
;	 function TIM4_GetCounter
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_GetCounter:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 258: tmpcntr = TIM4->CNTR;
; genPointerGet
	ld	a, 0x52e7
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 260: return ((uint8_t)tmpcntr);
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 261: }
; genEndFunction
	ret
;	Total TIM4_GetCounter function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 284: TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
; genLabel
;	-----------------------------------------
;	 function TIM4_GetPrescaler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_GetPrescaler:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 287: return ((TIM4_Prescaler_TypeDef)TIM4->PSCR);
; genPointerGet
	ld	a, 0x52e8
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 288: }
; genEndFunction
	ret
;	Total TIM4_GetPrescaler function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 296: void TIM4_UpdateDisableConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM4_UpdateDisableConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM4_UpdateDisableConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 304: TIM4->CR1 |= TIM4_CR1_UDIS ;
; genPointerGet
	ld	a, 0x52e0
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 302: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 304: TIM4->CR1 |= TIM4_CR1_UDIS ;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x52e0, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 308: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS) ;
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x52e0, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 310: }
; genEndFunction
	pop	a
	ret
;	Total TIM4_UpdateDisableConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 320: void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
; genLabel
;	-----------------------------------------
;	 function TIM4_UpdateRequestConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM4_UpdateRequestConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 328: TIM4->CR1 |= TIM4_CR1_URS ;
; genPointerGet
	ld	a, 0x52e0
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 326: if (TIM4_UpdateSource == TIM4_UpdateSource_Regular)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 328: TIM4->CR1 |= TIM4_CR1_URS ;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x52e0, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 332: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS) ;
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x52e0, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 334: }
; genEndFunction
	pop	a
	ret
;	Total TIM4_UpdateRequestConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 342: void TIM4_ARRPreloadConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM4_ARRPreloadConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM4_ARRPreloadConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 350: TIM4->CR1 |= TIM4_CR1_ARPE ;
; genPointerGet
	ld	a, 0x52e0
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 348: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 350: TIM4->CR1 |= TIM4_CR1_ARPE ;
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x52e0, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 354: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE) ;
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x52e0, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 356: }
; genEndFunction
	pop	a
	ret
;	Total TIM4_ARRPreloadConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 366: void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
; genLabel
;	-----------------------------------------
;	 function TIM4_SelectOnePulseMode
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM4_SelectOnePulseMode:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 374: TIM4->CR1 |= TIM4_CR1_OPM ;
; genPointerGet
	ld	a, 0x52e0
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 372: if (TIM4_OPMode == TIM4_OPMode_Single)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 374: TIM4->CR1 |= TIM4_CR1_OPM ;
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x52e0, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 378: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM) ;
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x52e0, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 380: }
; genEndFunction
	pop	a
	ret
;	Total TIM4_SelectOnePulseMode function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 388: void TIM4_Cmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM4_Cmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM4_Cmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 396: TIM4->CR1 |= TIM4_CR1_CEN ;
; genPointerGet
	ld	a, 0x52e0
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 394: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 396: TIM4->CR1 |= TIM4_CR1_CEN ;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x52e0, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 400: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN) ;
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x52e0, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 402: }
; genEndFunction
	pop	a
	ret
;	Total TIM4_Cmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 430: void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM4_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM4_ITConfig:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 439: TIM4->IER |= (uint8_t)TIM4_IT;
; genPointerGet
	ldw	x, #0x52e4
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 436: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 439: TIM4->IER |= (uint8_t)TIM4_IT;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x52e4, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 444: TIM4->IER &= (uint8_t)(~(uint8_t)TIM4_IT);
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x52e4, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 446: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total TIM4_ITConfig function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 456: void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
; genLabel
;	-----------------------------------------
;	 function TIM4_GenerateEvent
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM4_GenerateEvent:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 462: TIM4->EGR |= (uint8_t)TIM4_EventSource;
; genPointerGet
	ld	a, 0x52e6
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x52e6, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 463: }
; genEndFunction
	pop	a
	ret
;	Total TIM4_GenerateEvent function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 474: FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
; genLabel
;	-----------------------------------------
;	 function TIM4_GetFlagStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM4_GetFlagStatus:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 481: if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
; genPointerGet
	ld	a, 0x52e5
; genAnd
; genIfx
	and	a, (0x01, sp)
; peephole 23 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 483: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 487: bitstatus = RESET;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00102$:
	clr	a
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 489: return ((FlagStatus)bitstatus);
; genReturn
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 490: }
; genEndFunction
	addw	sp, #1
	ret
;	Total TIM4_GetFlagStatus function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 500: void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
; genLabel
;	-----------------------------------------
;	 function TIM4_ClearFlag
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_ClearFlag:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 505: TIM4->SR1 = (uint8_t)(~((uint8_t)TIM4_FLAG));
; genCpl
	cpl	a
; genPointerSet
	ld	0x52e5, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 506: }
; genEndFunction
	ret
;	Total TIM4_ClearFlag function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 518: ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
; genLabel
;	-----------------------------------------
;	 function TIM4_GetITStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_TIM4_GetITStatus:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 527: itStatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
; genPointerGet
	ld	a, 0x52e5
; genAnd
	and	a, (0x02, sp)
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 529: itEnable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
; genPointerGet
	ld	a, 0x52e4
; genAnd
	and	a, (0x02, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 531: if ((itStatus != (uint8_t)RESET ) && (itEnable != (uint8_t)RESET ))
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00121$.
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00122$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 533: bitstatus = (ITStatus)SET;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 537: bitstatus = (ITStatus)RESET;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00102$:
	clr	a
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 539: return ((ITStatus)bitstatus);
; genReturn
; genLabel
; peephole j30 removed unused label 00105$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 540: }
; genEndFunction
	popw	x
	ret
;	Total TIM4_GetITStatus function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 550: void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
; genLabel
;	-----------------------------------------
;	 function TIM4_ClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_ClearITPendingBit:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 556: TIM4->SR1 = (uint8_t)(~(uint8_t)TIM4_IT);
; genCpl
	cpl	a
; genPointerSet
	ld	0x52e5, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 557: }
; genEndFunction
	ret
;	Total TIM4_ClearITPendingBit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 568: void TIM4_DMACmd( TIM4_DMASource_TypeDef TIM4_DMASource, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM4_DMACmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_TIM4_DMACmd:
	push	a
; genReceive
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 577: TIM4->DER |= (uint8_t)TIM4_DMASource;
; genPointerGet
	ld	a, 0x52e3
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 574: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 577: TIM4->DER |= (uint8_t)TIM4_DMASource;
; genCast
; genAssign
	ld	a, xl
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x52e3, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 582: TIM4->DER &= (uint8_t)~TIM4_DMASource;
; genCast
; genAssign
	ld	a, xl
; genCpl
	cpl	a
; genCast
; genAssign
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x52e3, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 584: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total TIM4_DMACmd function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 607: void TIM4_InternalClockConfig(void)
; genLabel
;	-----------------------------------------
;	 function TIM4_InternalClockConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_InternalClockConfig:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 610: TIM4->SMCR &=  (uint8_t)(~TIM4_SMCR_SMS);
; genPointerGet
	ld	a, 0x52e2
; genAnd
	and	a, #0xf8
; genPointerSet
	ld	0x52e2, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 611: }
; genEndFunction
	ret
;	Total TIM4_InternalClockConfig function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 651: void TIM4_SelectInputTrigger(TIM4_TRGSelection_TypeDef TIM4_InputTriggerSource)
; genLabel
;	-----------------------------------------
;	 function TIM4_SelectInputTrigger
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM4_SelectInputTrigger:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 658: tmpsmcr = TIM4->SMCR;
; genPointerGet
	ld	a, 0x52e2
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 661: tmpsmcr &= (uint8_t)(~TIM4_SMCR_TS);
; genAnd
	and	a, #0x8f
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 662: tmpsmcr |= (uint8_t)TIM4_InputTriggerSource;
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 664: TIM4->SMCR = (uint8_t)tmpsmcr;
; genPointerSet
	ld	0x52e2, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 665: }
; genEndFunction
	pop	a
	ret
;	Total TIM4_SelectInputTrigger function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 676: void TIM4_SelectOutputTrigger(TIM4_TRGOSource_TypeDef TIM4_TRGOSource)
; genLabel
;	-----------------------------------------
;	 function TIM4_SelectOutputTrigger
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM4_SelectOutputTrigger:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 683: tmpcr2 = TIM4->CR2;
; genPointerGet
	ld	a, 0x52e1
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 686: tmpcr2 &= (uint8_t)(~TIM4_CR2_MMS);
; genAnd
	and	a, #0x8f
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 689: tmpcr2 |=  (uint8_t)TIM4_TRGOSource;
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 691: TIM4->CR2 = tmpcr2;
; genPointerSet
	ld	0x52e1, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 692: }
; genEndFunction
	pop	a
	ret
;	Total TIM4_SelectOutputTrigger function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 706: void TIM4_SelectSlaveMode(TIM4_SlaveMode_TypeDef TIM4_SlaveMode)
; genLabel
;	-----------------------------------------
;	 function TIM4_SelectSlaveMode
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM4_SelectSlaveMode:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 713: tmpsmcr = TIM4->SMCR;
; genPointerGet
	ld	a, 0x52e2
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 716: tmpsmcr &= (uint8_t)(~TIM4_SMCR_SMS);
; genAnd
	and	a, #0xf8
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 719: tmpsmcr |= (uint8_t)TIM4_SlaveMode;
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 721: TIM4->SMCR = tmpsmcr;
; genPointerSet
	ld	0x52e2, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 722: }
; genEndFunction
	pop	a
	ret
;	Total TIM4_SelectSlaveMode function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 730: void TIM4_SelectMasterSlaveMode(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM4_SelectMasterSlaveMode
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM4_SelectMasterSlaveMode:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 738: TIM4->SMCR |= TIM4_SMCR_MSM;
; genPointerGet
	ld	a, 0x52e2
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 736: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 738: TIM4->SMCR |= TIM4_SMCR_MSM;
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x52e2, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 742: TIM4->SMCR &= (uint8_t)(~TIM4_SMCR_MSM);
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x52e2, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim4.c: 744: }
; genEndFunction
	pop	a
	ret
;	Total TIM4_SelectMasterSlaveMode function size at codegen: 2 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
