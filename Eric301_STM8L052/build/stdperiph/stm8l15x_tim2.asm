;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_tim2
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_DeInit
	.globl _TIM2_TimeBaseInit
	.globl _TIM2_PrescalerConfig
	.globl _TIM2_CounterModeConfig
	.globl _TIM2_SetCounter
	.globl _TIM2_SetAutoreload
	.globl _TIM2_GetCounter
	.globl _TIM2_GetPrescaler
	.globl _TIM2_UpdateDisableConfig
	.globl _TIM2_UpdateRequestConfig
	.globl _TIM2_ARRPreloadConfig
	.globl _TIM2_SelectOnePulseMode
	.globl _TIM2_Cmd
	.globl _TIM2_OC1Init
	.globl _TIM2_OC2Init
	.globl _TIM2_BKRConfig
	.globl _TIM2_CtrlPWMOutputs
	.globl _TIM2_SelectOCxM
	.globl _TIM2_SetCompare1
	.globl _TIM2_SetCompare2
	.globl _TIM2_ForcedOC1Config
	.globl _TIM2_ForcedOC2Config
	.globl _TIM2_OC1PreloadConfig
	.globl _TIM2_OC2PreloadConfig
	.globl _TIM2_OC1FastConfig
	.globl _TIM2_OC2FastConfig
	.globl _TIM2_OC1PolarityConfig
	.globl _TIM2_OC2PolarityConfig
	.globl _TIM2_CCxCmd
	.globl _TIM2_ICInit
	.globl _TIM2_PWMIConfig
	.globl _TIM2_GetCapture1
	.globl _TIM2_GetCapture2
	.globl _TIM2_SetIC1Prescaler
	.globl _TIM2_SetIC2Prescaler
	.globl _TIM2_ITConfig
	.globl _TIM2_GenerateEvent
	.globl _TIM2_GetFlagStatus
	.globl _TIM2_ClearFlag
	.globl _TIM2_GetITStatus
	.globl _TIM2_ClearITPendingBit
	.globl _TIM2_DMACmd
	.globl _TIM2_SelectCCDMA
	.globl _TIM2_InternalClockConfig
	.globl _TIM2_TIxExternalClockConfig
	.globl _TIM2_ETRClockMode1Config
	.globl _TIM2_ETRClockMode2Config
	.globl _TIM2_SelectInputTrigger
	.globl _TIM2_SelectOutputTrigger
	.globl _TIM2_SelectSlaveMode
	.globl _TIM2_SelectMasterSlaveMode
	.globl _TIM2_ETRConfig
	.globl _TIM2_EncoderInterfaceConfig
	.globl _TIM2_SelectHallSensor
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 168: void TIM2_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function TIM2_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_DeInit:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 170: TIM2->CR1 = TIM_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5250+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 171: TIM2->CR2 = TIM_CR2_RESET_VALUE;
; genPointerSet
	mov	0x5251+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 172: TIM2->SMCR = TIM_SMCR_RESET_VALUE;
; genPointerSet
	mov	0x5252+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 173: TIM2->ETR = TIM_ETR_RESET_VALUE;
; genPointerSet
	mov	0x5253+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 174: TIM2->IER = TIM_IER_RESET_VALUE;
; genPointerSet
	mov	0x5255+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 175: TIM2->SR2 = TIM_SR2_RESET_VALUE;
; genPointerSet
	mov	0x5257+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 178: TIM2->CCER1 = TIM_CCER1_RESET_VALUE;
; genPointerSet
	mov	0x525b+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 180: TIM2->CCMR1 = 0x01;/*TIM2_ICxSource_TIxFPx */
; genPointerSet
	mov	0x5259+0, #0x01
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 181: TIM2->CCMR2 = 0x01;/*TIM2_ICxSource_TIxFPx */
; genPointerSet
	mov	0x525a+0, #0x01
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 184: TIM2->CCER1 = TIM_CCER1_RESET_VALUE;
; genPointerSet
	mov	0x525b+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 185: TIM2->CCMR1 = TIM_CCMR1_RESET_VALUE;
; genPointerSet
	mov	0x5259+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 186: TIM2->CCMR2 = TIM_CCMR2_RESET_VALUE;
; genPointerSet
	mov	0x525a+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 188: TIM2->CNTRH = TIM_CNTRH_RESET_VALUE;
; genPointerSet
	mov	0x525c+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 189: TIM2->CNTRL = TIM_CNTRL_RESET_VALUE;
; genPointerSet
	mov	0x525d+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 191: TIM2->PSCR = TIM_PSCR_RESET_VALUE;
; genPointerSet
	mov	0x525e+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 193: TIM2->ARRH = TIM_ARRH_RESET_VALUE;
; genPointerSet
	mov	0x525f+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 194: TIM2->ARRL = TIM_ARRL_RESET_VALUE;
; genPointerSet
	mov	0x5260+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 196: TIM2->CCR1H = TIM_CCR1H_RESET_VALUE;
; genPointerSet
	mov	0x5261+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 197: TIM2->CCR1L = TIM_CCR1L_RESET_VALUE;
; genPointerSet
	mov	0x5262+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 198: TIM2->CCR2H = TIM_CCR2H_RESET_VALUE;
; genPointerSet
	mov	0x5263+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 199: TIM2->CCR2L = TIM_CCR2L_RESET_VALUE;
; genPointerSet
	mov	0x5264+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 202: TIM2->OISR = TIM_OISR_RESET_VALUE;
; genPointerSet
	mov	0x5266+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 203: TIM2->EGR = 0x01;/* TIM_EGR_UG */
; genPointerSet
	mov	0x5258+0, #0x01
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 204: TIM2->BKR = TIM_BKR_RESET_VALUE;
; genPointerSet
	mov	0x5265+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 205: TIM2->SR1 = TIM_SR1_RESET_VALUE;
; genPointerSet
	mov	0x5256+0, #0x00
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 206: }
; genEndFunction
	ret
;	Total TIM2_DeInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 231: void TIM2_TimeBaseInit(TIM2_Prescaler_TypeDef TIM2_Prescaler,
; genLabel
;	-----------------------------------------
;	 function TIM2_TimeBaseInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_TimeBaseInit:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 242: TIM2->ARRH = (uint8_t)(TIM2_Period >> 8) ;
; genGetByte
	ld	a, (0x05, sp)
; genPointerSet
	ld	0x525f, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 243: TIM2->ARRL = (uint8_t)(TIM2_Period);
; genCast
; genAssign
	ld	a, (0x06, sp)
; genPointerSet
	ld	0x5260, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 246: TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
; genPointerSet
	ldw	x, #0x525e
	ld	a, (0x01, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 249: TIM2->CR1 &= (uint8_t)((uint8_t)(~TIM_CR1_CMS)) & ((uint8_t)(~TIM_CR1_DIR));
; genPointerGet
	ld	a, 0x5250
; genAnd
	and	a, #0x8f
; genPointerSet
	ld	0x5250, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 250: TIM2->CR1 |= (uint8_t)(TIM2_CounterMode);
; genPointerGet
	ld	a, 0x5250
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5250, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 253: TIM2->EGR = TIM2_EventSource_Update;
; genPointerSet
	mov	0x5258+0, #0x01
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 254: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #6
	jp	(x)
;	Total TIM2_TimeBaseInit function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 274: void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
; genLabel
;	-----------------------------------------
;	 function TIM2_PrescalerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_PrescalerConfig:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 282: TIM2->PSCR = (uint8_t)(Prescaler);
; genPointerSet
	ld	0x525e, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 287: TIM2->EGR |= TIM_EGR_UG ;
; genPointerGet
	ld	a, 0x5258
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 285: if (TIM2_PSCReloadMode == TIM2_PSCReloadMode_Immediate)
; genIfx
	tnz	(0x03, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 287: TIM2->EGR |= TIM_EGR_UG ;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5258, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 291: TIM2->EGR &= (uint8_t)(~TIM_EGR_UG) ;
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5258, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 293: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
;	Total TIM2_PrescalerConfig function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 306: void TIM2_CounterModeConfig(TIM2_CounterMode_TypeDef TIM2_CounterMode)
; genLabel
;	-----------------------------------------
;	 function TIM2_CounterModeConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_CounterModeConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 313: tmpcr1 = TIM2->CR1;
; genPointerGet
	ld	a, 0x5250
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 316: tmpcr1 &= (uint8_t)((uint8_t)(~TIM_CR1_CMS) & (uint8_t)(~TIM_CR1_DIR));
; genAnd
	and	a, #0x8f
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 319: tmpcr1 |= (uint8_t)TIM2_CounterMode;
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 321: TIM2->CR1 = tmpcr1;
; genPointerSet
	ld	0x5250, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 322: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_CounterModeConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 330: void TIM2_SetCounter(uint16_t Counter)
; genLabel
;	-----------------------------------------
;	 function TIM2_SetCounter
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_SetCounter:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 334: TIM2->CNTRH = (uint8_t)(Counter >> 8);
; genGetByte
	ld	a, xh
; genPointerSet
	ld	0x525c, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 335: TIM2->CNTRL = (uint8_t)(Counter);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x525d, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 336: }
; genEndFunction
	ret
;	Total TIM2_SetCounter function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 344: void TIM2_SetAutoreload(uint16_t Autoreload)
; genLabel
;	-----------------------------------------
;	 function TIM2_SetAutoreload
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_SetAutoreload:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 347: TIM2->ARRH = (uint8_t)(Autoreload >> 8);
; genGetByte
	ld	a, xh
; genPointerSet
	ld	0x525f, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 348: TIM2->ARRL = (uint8_t)(Autoreload);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x5260, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 349: }
; genEndFunction
	ret
;	Total TIM2_SetAutoreload function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 356: uint16_t TIM2_GetCounter(void)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetCounter
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM2_GetCounter:
	pushw	x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 361: tmpcntrh = TIM2->CNTRH;
; genPointerGet
	ld	a, 0x525c
	ld	xh, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 362: tmpcntrl = TIM2->CNTRL;
; genPointerGet
	ld	a, 0x525d
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 364: tmpcnt = (uint16_t)(tmpcntrl);
; genCast
; genAssign
	ld	xl, a
; peephole 3 removed dead clrw of y.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 365: tmpcnt |= (uint16_t)((uint16_t)tmpcntrh << 8);
; genCast
; genAssign
; peephole 1 removed dead clear of a.
; genLeftShiftLiteral
	clr	(0x02, sp)
; genOr
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 367: return ((uint16_t)tmpcnt);
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 368: }
; genEndFunction
	addw	sp, #2
	ret
;	Total TIM2_GetCounter function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 383: TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetPrescaler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_GetPrescaler:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 386: return ((TIM2_Prescaler_TypeDef)TIM2->PSCR);
; genPointerGet
	ld	a, 0x525e
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 387: }
; genEndFunction
	ret
;	Total TIM2_GetPrescaler function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 396: void TIM2_UpdateDisableConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_UpdateDisableConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_UpdateDisableConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 404: TIM2->CR1 |= TIM_CR1_UDIS;
; genPointerGet
	ld	a, 0x5250
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 402: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 404: TIM2->CR1 |= TIM_CR1_UDIS;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5250, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 408: TIM2->CR1 &= (uint8_t)(~TIM_CR1_UDIS);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5250, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 410: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_UpdateDisableConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 420: void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
; genLabel
;	-----------------------------------------
;	 function TIM2_UpdateRequestConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_UpdateRequestConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 428: TIM2->CR1 |= TIM_CR1_URS ;
; genPointerGet
	ld	a, 0x5250
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 426: if (TIM2_UpdateSource == TIM2_UpdateSource_Regular)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 428: TIM2->CR1 |= TIM_CR1_URS ;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x5250, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 432: TIM2->CR1 &= (uint8_t)(~TIM_CR1_URS);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x5250, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 434: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_UpdateRequestConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 442: void TIM2_ARRPreloadConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_ARRPreloadConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_ARRPreloadConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 450: TIM2->CR1 |= TIM_CR1_ARPE;
; genPointerGet
	ld	a, 0x5250
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 448: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 450: TIM2->CR1 |= TIM_CR1_ARPE;
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x5250, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 454: TIM2->CR1 &= (uint8_t)(~TIM_CR1_ARPE);
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5250, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 456: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_ARRPreloadConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 466: void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
; genLabel
;	-----------------------------------------
;	 function TIM2_SelectOnePulseMode
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_SelectOnePulseMode:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 474: TIM2->CR1 |= TIM_CR1_OPM ;
; genPointerGet
	ld	a, 0x5250
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 472: if (TIM2_OPMode == TIM2_OPMode_Single)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 474: TIM2->CR1 |= TIM_CR1_OPM ;
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x5250, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 478: TIM2->CR1 &= (uint8_t)(~TIM_CR1_OPM);
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5250, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 480: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_SelectOnePulseMode function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 488: void TIM2_Cmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_Cmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_Cmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 496: TIM2->CR1 |= TIM_CR1_CEN;
; genPointerGet
	ld	a, 0x5250
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 494: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 496: TIM2->CR1 |= TIM_CR1_CEN;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5250, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 500: TIM2->CR1 &= (uint8_t)(~TIM_CR1_CEN);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5250, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 502: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_Cmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 578: void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
; genLabel
;	-----------------------------------------
;	 function TIM2_OC1Init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_OC1Init:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 592: tmpccmr1 = TIM2->CCMR1;
; genPointerGet
	ld	a, 0x5259
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 595: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E);
; genPointerGet
; genAnd
; genPointerSet
	bres	0x525b, #0
; peephole 204x replaced 'and' by 'bres' ('0x525b').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 597: tmpccmr1 &= (uint8_t)(~TIM_CCMR_OCM);
; genAnd
	ld	a, xl
	and	a, #0x8f
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 600: tmpccmr1 |= (uint8_t)TIM2_OCMode;
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 602: TIM2->CCMR1 = tmpccmr1;
; genPointerSet
	ld	0x5259, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 595: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E);
; genPointerGet
	ld	a, 0x525b
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 605: if (TIM2_OutputState == TIM2_OutputState_Enable)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00133$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 607: TIM2->CCER1 |= TIM_CCER1_CC1E;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x525b, a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 611: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x525b, a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 595: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E);
; genPointerGet
	ld	a, 0x525b
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 615: if (TIM2_OCPolarity == TIM2_OCPolarity_Low)
; genIfx
	tnz	(0x07, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00134$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 617: TIM2->CCER1 |= TIM_CCER1_CC1P;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x525b, a
; genGoto
	jra	00106$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 621: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1P);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x525b, a
; genLabel
00106$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 627: TIM2->OISR |= TIM_OISR_OIS1;
; genPointerGet
	ld	a, 0x5266
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 625: if (TIM2_OCIdleState == TIM2_OCIdleState_Set)
; genIfx
	tnz	(0x08, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00135$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 627: TIM2->OISR |= TIM_OISR_OIS1;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5266, a
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 631: TIM2->OISR &= (uint8_t)(~TIM_OISR_OIS1);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5266, a
; genLabel
00109$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 635: TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
; genGetByte
	ld	a, (0x05, sp)
; genPointerSet
	ld	0x5261, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 636: TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
; genCast
; genAssign
	ld	a, (0x06, sp)
; genPointerSet
	ld	0x5262, a
; genLabel
; peephole j30 removed unused label 00110$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 637: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #8
	jp	(x)
;	Total TIM2_OC1Init function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 664: void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
; genLabel
;	-----------------------------------------
;	 function TIM2_OC2Init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_OC2Init:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 678: tmpccmr2 = TIM2->CCMR2;
; genPointerGet
	ld	a, 0x525a
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 681: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E);
; genPointerGet
; genAnd
; genPointerSet
	bres	0x525b, #4
; peephole 204x replaced 'and' by 'bres' ('0x525b').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 684: tmpccmr2 &= (uint8_t)(~TIM_CCMR_OCM);
; genAnd
	ld	a, xl
	and	a, #0x8f
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 687: tmpccmr2 |= (uint8_t)TIM2_OCMode;
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 689: TIM2->CCMR2 = tmpccmr2;
; genPointerSet
	ld	0x525a, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 681: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E);
; genPointerGet
	ld	a, 0x525b
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 692: if (TIM2_OutputState == TIM2_OutputState_Enable)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00133$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 694: TIM2->CCER1 |= TIM_CCER1_CC2E;
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x525b, a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 698: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E);
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x525b, a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 681: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E);
; genPointerGet
	ld	a, 0x525b
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 702: if (TIM2_OCPolarity == TIM2_OCPolarity_Low)
; genIfx
	tnz	(0x07, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00134$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 704: TIM2->CCER1 |= TIM_CCER1_CC2P;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x525b, a
; genGoto
	jra	00106$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 708: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2P);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x525b, a
; genLabel
00106$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 715: TIM2->OISR |= TIM_OISR_OIS2;
; genPointerGet
	ld	a, 0x5266
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 713: if (TIM2_OCIdleState == TIM2_OCIdleState_Set)
; genIfx
	tnz	(0x08, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00135$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 715: TIM2->OISR |= TIM_OISR_OIS2;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x5266, a
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 719: TIM2->OISR &= (uint8_t)(~TIM_OISR_OIS2);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x5266, a
; genLabel
00109$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 723: TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
; genGetByte
	ld	a, (0x05, sp)
; genPointerSet
	ld	0x5263, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 724: TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
; genCast
; genAssign
	ld	a, (0x06, sp)
; genPointerSet
	ld	0x5264, a
; genLabel
; peephole j30 removed unused label 00110$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 725: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #8
	jp	(x)
;	Total TIM2_OC2Init function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 754: void TIM2_BKRConfig(TIM2_OSSIState_TypeDef TIM2_OSSIState,
; genLabel
;	-----------------------------------------
;	 function TIM2_BKRConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_BKRConfig:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 772: TIM2->BKR = (uint8_t)((uint8_t)((uint8_t)((uint8_t)((uint8_t)TIM2_OSSIState | (uint8_t)TIM2_LockLevel) | \
; genOr
	or	a, (0x04, sp)
	ld	(0x01, sp), a
; genOr
	ld	a, (0x05, sp)
	or	a, (0x06, sp)
; genOr
	or	a, (0x01, sp)
; genOr
	or	a, (0x07, sp)
; genPointerSet
	ld	0x5265, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 775: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #7
	jp	(x)
;	Total TIM2_BKRConfig function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 783: void TIM2_CtrlPWMOutputs(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_CtrlPWMOutputs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_CtrlPWMOutputs:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 792: TIM2->BKR |= TIM_BKR_MOE ;
; genPointerGet
	ld	a, 0x5265
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 790: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 792: TIM2->BKR |= TIM_BKR_MOE ;
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x5265, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 796: TIM2->BKR &= (uint8_t)(~TIM_BKR_MOE) ;
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5265, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 798: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_CtrlPWMOutputs function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 818: void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel,
; genLabel
;	-----------------------------------------
;	 function TIM2_SelectOCxM
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_SelectOCxM:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 828: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E);
; genPointerGet
	ld	a, 0x525b
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 825: if (TIM2_Channel == TIM2_Channel_1)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 828: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x525b, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 831: TIM2->CCMR1 &= (uint8_t)(~TIM_CCMR_OCM);
; genPointerGet
	ld	a, 0x5259
; genAnd
	and	a, #0x8f
; genPointerSet
	ld	0x5259, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 834: TIM2->CCMR1 |= (uint8_t)TIM2_OCMode;
; genPointerGet
	ld	a, 0x5259
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5259, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 839: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E);
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x525b, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 842: TIM2->CCMR2 &= (uint8_t)(~TIM_CCMR_OCM);
; genPointerGet
	ld	a, 0x525a
; genAnd
	and	a, #0x8f
; genPointerSet
	ld	0x525a, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 845: TIM2->CCMR2 |= (uint8_t)TIM2_OCMode;
; genPointerGet
	ld	a, 0x525a
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x525a, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 847: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total TIM2_SelectOCxM function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 855: void TIM2_SetCompare1(uint16_t Compare)
; genLabel
;	-----------------------------------------
;	 function TIM2_SetCompare1
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_SetCompare1:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 858: TIM2->CCR1H = (uint8_t)(Compare >> 8);
; genGetByte
	ld	a, xh
; genPointerSet
	ld	0x5261, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 859: TIM2->CCR1L = (uint8_t)(Compare);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x5262, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 860: }
; genEndFunction
	ret
;	Total TIM2_SetCompare1 function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 868: void TIM2_SetCompare2(uint16_t Compare)
; genLabel
;	-----------------------------------------
;	 function TIM2_SetCompare2
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_SetCompare2:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 871: TIM2->CCR2H = (uint8_t)(Compare >> 8);
; genGetByte
	ld	a, xh
; genPointerSet
	ld	0x5263, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 872: TIM2->CCR2L = (uint8_t)(Compare);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x5264, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 873: }
; genEndFunction
	ret
;	Total TIM2_SetCompare2 function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 883: void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
; genLabel
;	-----------------------------------------
;	 function TIM2_ForcedOC1Config
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_ForcedOC1Config:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 890: tmpccmr1 = TIM2->CCMR1;
; genPointerGet
	ld	a, 0x5259
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 893: tmpccmr1 &= (uint8_t)(~TIM_CCMR_OCM);
; genAnd
	and	a, #0x8f
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 896: tmpccmr1 |= (uint8_t)TIM2_ForcedAction;
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 898: TIM2->CCMR1 = tmpccmr1;
; genPointerSet
	ld	0x5259, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 899: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_ForcedOC1Config function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 909: void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
; genLabel
;	-----------------------------------------
;	 function TIM2_ForcedOC2Config
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_ForcedOC2Config:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 916: tmpccmr2 = TIM2->CCMR2;
; genPointerGet
	ld	a, 0x525a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 919: tmpccmr2 &= (uint8_t)(~TIM_CCMR_OCM);
; genAnd
	and	a, #0x8f
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 922: tmpccmr2 |= (uint8_t)TIM2_ForcedAction;
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 924: TIM2->CCMR2 = tmpccmr2;
; genPointerSet
	ld	0x525a, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 925: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_ForcedOC2Config function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 933: void TIM2_OC1PreloadConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_OC1PreloadConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_OC1PreloadConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 941: TIM2->CCMR1 |= TIM_CCMR_OCxPE ;
; genPointerGet
	ld	a, 0x5259
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 939: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 941: TIM2->CCMR1 |= TIM_CCMR_OCxPE ;
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x5259, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 945: TIM2->CCMR1 &= (uint8_t)(~TIM_CCMR_OCxPE) ;
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5259, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 947: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_OC1PreloadConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 955: void TIM2_OC2PreloadConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_OC2PreloadConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_OC2PreloadConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 963: TIM2->CCMR2 |= TIM_CCMR_OCxPE ;
; genPointerGet
	ld	a, 0x525a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 961: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 963: TIM2->CCMR2 |= TIM_CCMR_OCxPE ;
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x525a, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 967: TIM2->CCMR2 &= (uint8_t)(~TIM_CCMR_OCxPE) ;
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x525a, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 969: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_OC2PreloadConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 977: void TIM2_OC1FastConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_OC1FastConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_OC1FastConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 985: TIM2->CCMR1 |= TIM_CCMR_OCxFE ;
; genPointerGet
	ld	a, 0x5259
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 983: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 985: TIM2->CCMR1 |= TIM_CCMR_OCxFE ;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x5259, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 989: TIM2->CCMR1 &= (uint8_t)(~TIM_CCMR_OCxFE) ;
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x5259, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 991: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_OC1FastConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1000: void TIM2_OC2FastConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_OC2FastConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_OC2FastConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1008: TIM2->CCMR2 |= TIM_CCMR_OCxFE ;
; genPointerGet
	ld	a, 0x525a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1006: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1008: TIM2->CCMR2 |= TIM_CCMR_OCxFE ;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x525a, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1012: TIM2->CCMR2 &= (uint8_t)(~TIM_CCMR_OCxFE) ;
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x525a, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1014: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_OC2FastConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1024: void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
; genLabel
;	-----------------------------------------
;	 function TIM2_OC1PolarityConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_OC1PolarityConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1032: TIM2->CCER1 |= TIM_CCER1_CC1P ;
; genPointerGet
	ld	a, 0x525b
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1030: if (TIM2_OCPolarity == TIM2_OCPolarity_Low)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1032: TIM2->CCER1 |= TIM_CCER1_CC1P ;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x525b, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1036: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1P) ;
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x525b, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1038: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_OC1PolarityConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1048: void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
; genLabel
;	-----------------------------------------
;	 function TIM2_OC2PolarityConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_OC2PolarityConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1056: TIM2->CCER1 |= TIM_CCER1_CC2P ;
; genPointerGet
	ld	a, 0x525b
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1054: if (TIM2_OCPolarity == TIM2_OCPolarity_Low)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1056: TIM2->CCER1 |= TIM_CCER1_CC2P ;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x525b, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1060: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2P) ;
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x525b, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1062: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_OC2PolarityConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1074: void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel,
; genLabel
;	-----------------------------------------
;	 function TIM2_CCxCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_CCxCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1086: TIM2->CCER1 |= TIM_CCER1_CC1E ;
; genPointerGet
	ld	a, 0x525b
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1081: if (TIM2_Channel == TIM2_Channel_1)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00108$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00133$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1084: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00134$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1086: TIM2->CCER1 |= TIM_CCER1_CC1E ;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x525b, a
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1090: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E) ;
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x525b, a
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1097: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00135$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1099: TIM2->CCER1 |= TIM_CCER1_CC2E;
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x525b, a
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1103: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E) ;
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x525b, a
; genLabel
00110$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1106: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total TIM2_CCxCmd function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1184: void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
; genLabel
;	-----------------------------------------
;	 function TIM2_ICInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_ICInit:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1193: if (TIM2_Channel == TIM2_Channel_1)
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1196: TI1_Config(TIM2_ICPolarity, TIM2_ICSelection, TIM2_ICFilter);
; genIPush
	ld	a, (0x06, sp)
	push	a
; genIPush
	ld	a, (0x05, sp)
	push	a
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TI1_Config
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1199: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TIM2_SetIC1Prescaler
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1204: TI2_Config(TIM2_ICPolarity, TIM2_ICSelection, TIM2_ICFilter);
; genIPush
	ld	a, (0x06, sp)
	push	a
; genIPush
	ld	a, (0x05, sp)
	push	a
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TI2_Config
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1207: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
; genSend
	ld	a, (0x05, sp)
; genCall
	call	_TIM2_SetIC2Prescaler
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1209: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #6
	jp	(x)
;	Total TIM2_ICInit function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1235: void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
; genLabel
;	-----------------------------------------
;	 function TIM2_PWMIConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_TIM2_PWMIConfig:
	pushw	x
; genReceive
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1248: if (TIM2_ICPolarity == TIM2_ICPolarity_Rising)
; genIfx
	tnz	(0x05, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00133$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1250: icpolarity = TIM2_ICPolarity_Falling;
; genAssign
	ld	a, #0x01
	ld	(0x02, sp), a
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1254: icpolarity = TIM2_ICPolarity_Rising;
; genAssign
; genLabel
	.byte 0xc5
; peephole jrf7 used bcp opcode to jump over 2-byte instruction.
00102$:
	clr	(0x02, sp)
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1258: if (TIM2_ICSelection == TIM2_ICSelection_DirectTI)
; genCmpEQorNE
	ld	a, (0x06, sp)
	dec	a
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00135$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00105$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00136$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1260: icselection = TIM2_ICSelection_IndirectTI;
; genAssign
	ld	a, #0x02
	ld	(0x01, sp), a
; genGoto
	jra	00106$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1264: icselection = TIM2_ICSelection_DirectTI;
; genAssign
	ld	a, #0x01
	ld	(0x01, sp), a
; genLabel
00106$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1277: TI2_Config((TIM2_ICPolarity_TypeDef)icpolarity, (TIM2_ICSelection_TypeDef)icselection, TIM2_ICFilter);
; genCast
	clr	a
	cp	a, (0x02, sp)
	rlc	a
	ld	(0x02, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1267: if (TIM2_Channel == TIM2_Channel_1)
; genIfx
	ld	a, xl
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00108$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00137$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1270: TI1_Config(TIM2_ICPolarity, TIM2_ICSelection,
; genIPush
	ld	a, (0x08, sp)
	push	a
; genIPush
	ld	a, (0x07, sp)
	push	a
; genSend
	ld	a, (0x07, sp)
; genCall
	call	_TI1_Config
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1274: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
; genSend
	ld	a, (0x07, sp)
; genCall
	call	_TIM2_SetIC1Prescaler
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1277: TI2_Config((TIM2_ICPolarity_TypeDef)icpolarity, (TIM2_ICSelection_TypeDef)icselection, TIM2_ICFilter);
; genIPush
	ld	a, (0x08, sp)
	push	a
; genIPush
	ld	a, (0x02, sp)
	push	a
; genSend
	ld	a, (0x04, sp)
; genCall
	call	_TI2_Config
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1280: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
; genSend
	ld	a, (0x07, sp)
; genCall
	call	_TIM2_SetIC2Prescaler
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1285: TI2_Config(TIM2_ICPolarity, TIM2_ICSelection,
; genIPush
	ld	a, (0x08, sp)
	push	a
; genIPush
	ld	a, (0x07, sp)
	push	a
; genSend
	ld	a, (0x07, sp)
; genCall
	call	_TI2_Config
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1289: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
; genSend
	ld	a, (0x07, sp)
; genCall
	call	_TIM2_SetIC2Prescaler
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1292: TI1_Config((TIM2_ICPolarity_TypeDef)icpolarity, (TIM2_ICSelection_TypeDef)icselection, TIM2_ICFilter);
; genIPush
	ld	a, (0x08, sp)
	push	a
; genIPush
	ld	a, (0x02, sp)
	push	a
; genSend
	ld	a, (0x04, sp)
; genCall
	call	_TI1_Config
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1295: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
; genSend
	ld	a, (0x07, sp)
; genCall
	call	_TIM2_SetIC1Prescaler
; genLabel
00110$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1297: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #8
	jp	(x)
;	Total TIM2_PWMIConfig function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1304: uint16_t TIM2_GetCapture1(void)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetCapture1
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM2_GetCapture1:
	pushw	x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1309: tmpccr1h = TIM2->CCR1H;
; genPointerGet
	ld	a, 0x5261
	ld	xh, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1310: tmpccr1l = TIM2->CCR1L;
; genPointerGet
	ld	a, 0x5262
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1312: tmpccr1 = (uint16_t)(tmpccr1l);
; genCast
; genAssign
	ld	xl, a
; peephole 3 removed dead clrw of y.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1313: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
; genCast
; genAssign
; peephole 1 removed dead clear of a.
; genLeftShiftLiteral
	clr	(0x02, sp)
; genOr
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1315: return ((uint16_t)tmpccr1);
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1316: }
; genEndFunction
	addw	sp, #2
	ret
;	Total TIM2_GetCapture1 function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1323: uint16_t TIM2_GetCapture2(void)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetCapture2
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM2_GetCapture2:
	pushw	x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1328: tmpccr2h = TIM2->CCR2H;
; genPointerGet
	ld	a, 0x5263
	ld	xh, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1329: tmpccr2l = TIM2->CCR2L;
; genPointerGet
	ld	a, 0x5264
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1331: tmpccr2 = (uint16_t)(tmpccr2l);
; genCast
; genAssign
	ld	xl, a
; peephole 3 removed dead clrw of y.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1332: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
; genCast
; genAssign
; peephole 1 removed dead clear of a.
; genLeftShiftLiteral
	clr	(0x02, sp)
; genOr
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1334: return ((uint16_t)tmpccr2);
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1335: }
; genEndFunction
	addw	sp, #2
	ret
;	Total TIM2_GetCapture2 function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1347: void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
; genLabel
;	-----------------------------------------
;	 function TIM2_SetIC1Prescaler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_SetIC1Prescaler:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1354: tmpccmr1 = TIM2->CCMR1;
; genPointerGet
	ld	a, 0x5259
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1357: tmpccmr1 &= (uint8_t)(~TIM_CCMR_ICxPSC);
; genAnd
	and	a, #0xf3
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1360: tmpccmr1 |= (uint8_t)TIM2_IC1Prescaler;
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1362: TIM2->CCMR1 = tmpccmr1;
; genPointerSet
	ld	0x5259, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1363: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_SetIC1Prescaler function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1375: void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
; genLabel
;	-----------------------------------------
;	 function TIM2_SetIC2Prescaler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_SetIC2Prescaler:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1382: tmpccmr2 = TIM2->CCMR2;
; genPointerGet
	ld	a, 0x525a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1385: tmpccmr2 &= (uint8_t)(~TIM_CCMR_ICxPSC);
; genAnd
	and	a, #0xf3
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1388: tmpccmr2 |= (uint8_t)TIM2_IC2Prescaler;
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1390: TIM2->CCMR2 = tmpccmr2;
; genPointerSet
	ld	0x525a, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1391: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_SetIC2Prescaler function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1422: void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_ITConfig:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1431: TIM2->IER |= (uint8_t)TIM2_IT;
; genPointerGet
	ldw	x, #0x5255
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1428: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1431: TIM2->IER |= (uint8_t)TIM2_IT;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5255, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1436: TIM2->IER &= (uint8_t)(~(uint8_t)TIM2_IT);
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5255, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1438: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total TIM2_ITConfig function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1451: void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
; genLabel
;	-----------------------------------------
;	 function TIM2_GenerateEvent
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_GenerateEvent:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1457: TIM2->EGR |= (uint8_t)TIM2_EventSource;
; genPointerGet
	ld	a, 0x5258
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5258, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1458: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_GenerateEvent function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1473: FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetFlagStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_TIM2_GetFlagStatus:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1481: tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)(TIM2_FLAG));
; genPointerGet
	ld	a, 0x5256
	ld	(0x01, sp), a
; genCast
; genAssign
	ld	a, xl
; genAnd
	and	a, (0x01, sp)
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1482: tim2_flag_h = (uint8_t)(TIM2->SR2 & (uint8_t)((uint16_t)TIM2_FLAG >> 8));
; genPointerGet
	ld	a, 0x5257
; genCast
; genAssign
; genGetByte
; genAnd
	pushw	x
	and	a, (1, sp)
	popw	x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1484: if ((uint8_t)(tim2_flag_l | tim2_flag_h) != 0)
; genOr
; genIfx
	or	a, (0x01, sp)
; peephole 23 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1486: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1490: bitstatus = RESET;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00102$:
	clr	a
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1492: return ((FlagStatus)bitstatus);
; genReturn
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1493: }
; genEndFunction
	addw	sp, #1
	ret
;	Total TIM2_GetFlagStatus function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1506: void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
; genLabel
;	-----------------------------------------
;	 function TIM2_ClearFlag
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_TIM2_ClearFlag:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1511: TIM2->SR1 = (uint8_t)(~(uint8_t)(TIM2_FLAG));
; genCast
; genAssign
	ld	a, xl
; genCpl
	cpl	a
; genPointerSet
	ld	0x5256, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1512: TIM2->SR2 = (uint8_t)(~(uint8_t)((uint16_t)TIM2_FLAG >> 8));
; genCast
; genAssign
	ld	a, xh
; genGetByte
; genCpl
	cpl	a
; genPointerSet
	ld	0x5257, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1513: }
; genEndFunction
	ret
;	Total TIM2_ClearFlag function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1526: ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetITStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_TIM2_GetITStatus:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1535: TIM2_itStatus = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_IT);
; genPointerGet
	ld	a, 0x5256
; genAnd
	and	a, (0x02, sp)
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1537: TIM2_itEnable = (uint8_t)(TIM2->IER & (uint8_t)TIM2_IT);
; genPointerGet
	ld	a, 0x5255
; genAnd
	and	a, (0x02, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1539: if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET))
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1541: bitstatus = (ITStatus)SET;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1545: bitstatus = (ITStatus)RESET;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00102$:
	clr	a
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1547: return ((ITStatus)bitstatus);
; genReturn
; genLabel
; peephole j30 removed unused label 00105$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1548: }
; genEndFunction
	popw	x
	ret
;	Total TIM2_GetITStatus function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1561: void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
; genLabel
;	-----------------------------------------
;	 function TIM2_ClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_ClearITPendingBit:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1567: TIM2->SR1 = (uint8_t)(~(uint8_t)TIM2_IT);
; genCpl
	cpl	a
; genPointerSet
	ld	0x5256, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1568: }
; genEndFunction
	ret
;	Total TIM2_ClearITPendingBit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1581: void TIM2_DMACmd( TIM2_DMASource_TypeDef TIM2_DMASource, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_DMACmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_DMACmd:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1590: TIM2->DER |= TIM2_DMASource;
; genPointerGet
	ldw	x, #0x5254
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1587: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1590: TIM2->DER |= TIM2_DMASource;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5254, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1595: TIM2->DER &= (uint8_t)(~TIM2_DMASource);
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5254, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1597: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total TIM2_DMACmd function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1605: void TIM2_SelectCCDMA(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_SelectCCDMA
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_SelectCCDMA:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1613: TIM2->CR2 |= TIM_CR2_CCDS;
; genPointerGet
	ld	a, 0x5251
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1610: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1613: TIM2->CR2 |= TIM_CR2_CCDS;
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x5251, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1618: TIM2->CR2 &= (uint8_t)(~TIM_CR2_CCDS);
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5251, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1620: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_SelectCCDMA function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1644: void TIM2_InternalClockConfig(void)
; genLabel
;	-----------------------------------------
;	 function TIM2_InternalClockConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_InternalClockConfig:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1647: TIM2->SMCR &=  (uint8_t)(~TIM_SMCR_SMS);
; genPointerGet
	ld	a, 0x5252
; genAnd
	and	a, #0xf8
; genPointerSet
	ld	0x5252, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1648: }
; genEndFunction
	ret
;	Total TIM2_InternalClockConfig function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1665: void TIM2_TIxExternalClockConfig(TIM2_TIxExternalCLK1Source_TypeDef TIM2_TIxExternalCLKSource,
; genLabel
;	-----------------------------------------
;	 function TIM2_TIxExternalClockConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_TIxExternalClockConfig:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1675: if (TIM2_TIxExternalCLKSource == TIM2_TIxExternalCLK1Source_TI2)
; genCmpEQorNE
	ld	(0x01, sp), a
; peephole 4a removed redundant load from (0x01, sp) into a.
	cp	a, #0x60
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00114$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00115$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1677: TI2_Config(TIM2_ICPolarity, TIM2_ICSelection_DirectTI, ICFilter);
; genIPush
	ld	a, (0x05, sp)
	push	a
; genIPush
	push	#0x01
; genSend
	ld	a, (0x06, sp)
; genCall
	call	_TI2_Config
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1681: TI1_Config(TIM2_ICPolarity, TIM2_ICSelection_DirectTI, ICFilter);
; genIPush
	ld	a, (0x05, sp)
	push	a
; genIPush
	push	#0x01
; genSend
	ld	a, (0x06, sp)
; genCall
	call	_TI1_Config
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1685: TIM2_SelectInputTrigger((TIM2_TRGSelection_TypeDef)TIM2_TIxExternalCLKSource);
; genSend
	ld	a, (0x01, sp)
; genCall
	call	_TIM2_SelectInputTrigger
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1688: TIM2->SMCR |= (uint8_t)(TIM2_SlaveMode_External1);
; genPointerGet
	ld	a, 0x5252
; genOr
	or	a, #0x07
; genPointerSet
	ld	0x5252, a
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1689: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #5
	jp	(x)
;	Total TIM2_TIxExternalClockConfig function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1707: void TIM2_ETRClockMode1Config(TIM2_ExtTRGPSC_TypeDef TIM2_ExtTRGPrescaler,
; genLabel
;	-----------------------------------------
;	 function TIM2_ETRClockMode1Config
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_ETRClockMode1Config:
; genReceive
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1712: TIM2_ETRConfig(TIM2_ExtTRGPrescaler, TIM2_ExtTRGPolarity, ExtTRGFilter);
; genIPush
	ld	a, (0x04, sp)
	push	a
; genIPush
	ld	a, (0x04, sp)
	push	a
; genSend
	ld	a, xl
; genCall
	call	_TIM2_ETRConfig
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1715: TIM2->SMCR &= (uint8_t)(~TIM_SMCR_SMS);
; genPointerGet
	ld	a, 0x5252
; genAnd
	and	a, #0xf8
; genPointerSet
	ld	0x5252, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1716: TIM2->SMCR |= (uint8_t)(TIM2_SlaveMode_External1);
; genPointerGet
	ld	a, 0x5252
; genOr
	or	a, #0x07
; genPointerSet
	ld	0x5252, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1719: TIM2->SMCR &= (uint8_t)(~TIM_SMCR_TS);
; genPointerGet
	ld	a, 0x5252
; genAnd
	and	a, #0x8f
; genPointerSet
	ld	0x5252, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1720: TIM2->SMCR |= (uint8_t)((TIM2_TRGSelection_TypeDef)TIM2_TRGSelection_ETRF);
; genPointerGet
	ld	a, 0x5252
; genOr
	or	a, #0x70
; genPointerSet
	ld	0x5252, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1721: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #4
	jp	(x)
;	Total TIM2_ETRClockMode1Config function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1739: void TIM2_ETRClockMode2Config(TIM2_ExtTRGPSC_TypeDef TIM2_ExtTRGPrescaler,
; genLabel
;	-----------------------------------------
;	 function TIM2_ETRClockMode2Config
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_ETRClockMode2Config:
; genReceive
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1744: TIM2_ETRConfig(TIM2_ExtTRGPrescaler, TIM2_ExtTRGPolarity, ExtTRGFilter);
; genIPush
	ld	a, (0x04, sp)
	push	a
; genIPush
	ld	a, (0x04, sp)
	push	a
; genSend
	ld	a, xl
; genCall
	call	_TIM2_ETRConfig
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1747: TIM2->ETR |= TIM_ETR_ECE ;
; genPointerGet
	ld	a, 0x5253
; genOr
	or	a, #0x40
; genPointerSet
	ld	0x5253, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1748: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #4
	jp	(x)
;	Total TIM2_ETRClockMode2Config function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1799: void TIM2_SelectInputTrigger(TIM2_TRGSelection_TypeDef TIM2_InputTriggerSource)
; genLabel
;	-----------------------------------------
;	 function TIM2_SelectInputTrigger
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_SelectInputTrigger:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1806: tmpsmcr = TIM2->SMCR;
; genPointerGet
	ld	a, 0x5252
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1809: tmpsmcr &= (uint8_t)(~TIM_SMCR_TS);
; genAnd
	and	a, #0x8f
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1810: tmpsmcr |= (uint8_t)TIM2_InputTriggerSource;
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1812: TIM2->SMCR = (uint8_t)tmpsmcr;
; genPointerSet
	ld	0x5252, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1813: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_SelectInputTrigger function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1827: void TIM2_SelectOutputTrigger(TIM2_TRGOSource_TypeDef TIM2_TRGOSource)
; genLabel
;	-----------------------------------------
;	 function TIM2_SelectOutputTrigger
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_SelectOutputTrigger:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1834: tmpcr2 = TIM2->CR2;
; genPointerGet
	ld	a, 0x5251
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1837: tmpcr2 &= (uint8_t)(~TIM_CR2_MMS);
; genAnd
	and	a, #0x8f
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1840: tmpcr2 |=  (uint8_t)TIM2_TRGOSource;
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1842: TIM2->CR2 = tmpcr2;
; genPointerSet
	ld	0x5251, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1843: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_SelectOutputTrigger function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1855: void TIM2_SelectSlaveMode(TIM2_SlaveMode_TypeDef TIM2_SlaveMode)
; genLabel
;	-----------------------------------------
;	 function TIM2_SelectSlaveMode
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_SelectSlaveMode:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1862: tmpsmcr = TIM2->SMCR;
; genPointerGet
	ld	a, 0x5252
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1865: tmpsmcr &= (uint8_t)(~TIM_SMCR_SMS);
; genAnd
	and	a, #0xf8
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1868: tmpsmcr |= (uint8_t)TIM2_SlaveMode;
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1870: TIM2->SMCR = tmpsmcr;
; genPointerSet
	ld	0x5252, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1871: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_SelectSlaveMode function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1879: void TIM2_SelectMasterSlaveMode(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_SelectMasterSlaveMode
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_SelectMasterSlaveMode:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1887: TIM2->SMCR |= TIM_SMCR_MSM;
; genPointerGet
	ld	a, 0x5252
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1885: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1887: TIM2->SMCR |= TIM_SMCR_MSM;
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x5252, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1891: TIM2->SMCR &= (uint8_t)(~TIM_SMCR_MSM);
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5252, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1893: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_SelectMasterSlaveMode function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1911: void TIM2_ETRConfig(TIM2_ExtTRGPSC_TypeDef TIM2_ExtTRGPrescaler,
; genLabel
;	-----------------------------------------
;	 function TIM2_ETRConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_ETRConfig:
	push	a
; genReceive
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1921: TIM2->ETR |= (uint8_t)((uint8_t)((uint8_t)TIM2_ExtTRGPrescaler | (uint8_t)TIM2_ExtTRGPolarity)
; genPointerGet
	ld	a, 0x5253
	ld	(0x01, sp), a
; genOr
	ld	a, xl
	or	a, (0x04, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1922: | (uint8_t)ExtTRGFilter);
; genOr
	or	a, (0x05, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5253, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1923: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #5
	jp	(x)
;	Total TIM2_ETRConfig function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1958: void TIM2_EncoderInterfaceConfig(TIM2_EncoderMode_TypeDef TIM2_EncoderMode,
; genLabel
;	-----------------------------------------
;	 function TIM2_EncoderInterfaceConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM2_EncoderInterfaceConfig:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1971: tmpsmcr = TIM2->SMCR;
; genPointerGet
	ld	a, 0x5252
	ld	xh, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1972: tmpccmr1 = TIM2->CCMR1;
; genPointerGet
	ld	a, 0x5259
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1973: tmpccmr2 = TIM2->CCMR2;
; genPointerGet
	ld	a, 0x525a
	ld	yl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1976: tmpsmcr &= (uint8_t)(TIM_SMCR_MSM | TIM_SMCR_TS)  ;
; genAnd
	ld	a, xh
	and	a, #0xf0
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1977: tmpsmcr |= (uint8_t)TIM2_EncoderMode;
; genOr
	or	a, (0x02, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1980: tmpccmr1 &= (uint8_t)(~TIM_CCMR_CCxS);
; genAnd
	rrwa	x
; peephole r3 used rrwa.
	and	a, #0xfc
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1981: tmpccmr2 &= (uint8_t)(~TIM_CCMR_CCxS);
; genAnd
	ld	a, yl
	and	a, #0xfc
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1982: tmpccmr1 |= TIM_CCMR_TIxDirect_Set;
; genOr
	push	a
	srlw	x
	scf
	rlcw	x
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1983: tmpccmr2 |= TIM_CCMR_TIxDirect_Set;
; genOr
	or	a, #0x01
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1988: TIM2->CCER1 |= TIM_CCER1_CC1P ;
; genPointerGet
	ld	a, 0x525b
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1986: if (TIM2_IC1Polarity == TIM2_ICPolarity_Falling)
; genIfx
	tnz	(0x05, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00123$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1988: TIM2->CCER1 |= TIM_CCER1_CC1P ;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x525b, a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1992: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1P) ;
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x525b, a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1988: TIM2->CCER1 |= TIM_CCER1_CC1P ;
; genPointerGet
	ld	a, 0x525b
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1995: if (TIM2_IC2Polarity == TIM2_ICPolarity_Falling)
; genIfx
	tnz	(0x06, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00124$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 1997: TIM2->CCER1 |= TIM_CCER1_CC2P ;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x525b, a
; genGoto
	jra	00106$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2001: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2P) ;
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x525b, a
; genLabel
00106$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2004: TIM2->SMCR = tmpsmcr;
; genPointerSet
	ldw	y, #0x5252
	ld	a, xh
	ld	(y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2005: TIM2->CCMR1 = tmpccmr1;
; genPointerSet
	ldw	y, #0x5259
	ld	a, xl
	ld	(y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2006: TIM2->CCMR2 = tmpccmr2;
; genPointerSet
	ldw	x, #0x525a
	ld	a, (0x01, sp)
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00107$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2007: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
;	Total TIM2_EncoderInterfaceConfig function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2015: void TIM2_SelectHallSensor(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_SelectHallSensor
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_SelectHallSensor:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2023: TIM2->CR2 |= TIM_CR2_TI1S;
; genPointerGet
	ld	a, 0x5251
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2021: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2023: TIM2->CR2 |= TIM_CR2_TI1S;
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x5251, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2027: TIM2->CR2 &= (uint8_t)(~TIM_CR2_TI1S);
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5251, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2029: }
; genEndFunction
	pop	a
	ret
;	Total TIM2_SelectHallSensor function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2050: static void TI1_Config(TIM2_ICPolarity_TypeDef TIM2_ICPolarity, \
; genLabel
;	-----------------------------------------
;	 function TI1_Config
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_TI1_Config:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2055: uint8_t tmpicpolarity = TIM2_ICPolarity;
; genCast
; genAssign
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2056: tmpccmr1 = TIM2->CCMR1;
; genPointerGet
	ld	a, 0x5259
	ld	xh, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2064: TIM2->CCER1 &=  (uint8_t)(~TIM_CCER1_CC1E);
; genPointerGet
; genAnd
; genPointerSet
	bres	0x525b, #0
; peephole 204x replaced 'and' by 'bres' ('0x525b').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2067: tmpccmr1 &= (uint8_t)(~TIM_CCMR_CCxS) & (uint8_t)(~TIM_CCMR_ICxF);
; genAnd
	ld	a, xh
	and	a, #0x0c
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2068: tmpccmr1 |= (uint8_t)(((uint8_t)(TIM2_ICSelection)) | ((uint8_t)(TIM2_ICFilter << 4)));
; genLeftShiftLiteral
	ld	a, (0x05, sp)
	swap	a
	and	a, #0xf0
; genOr
	or	a, (0x04, sp)
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2070: TIM2->CCMR1 = tmpccmr1;
; genPointerSet
	ld	0x5259, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2064: TIM2->CCER1 &=  (uint8_t)(~TIM_CCER1_CC1E);
; genPointerGet
	ld	a, 0x525b
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2073: if (tmpicpolarity == (uint8_t)(TIM2_ICPolarity_Falling))
; genCmpEQorNE
	push	a
	ld	a, xl
	dec	a
	pop	a
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00114$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00115$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2075: TIM2->CCER1 |= TIM_CCER1_CC1P;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x525b, a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2079: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1P);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x525b, a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2083: TIM2->CCER1 |=  TIM_CCER1_CC1E;
; genPointerGet
	ld	a, 0x525b
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x525b, a
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2084: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #5
	jp	(x)
;	Total TI1_Config function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2101: static void TI2_Config(TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
; genLabel
;	-----------------------------------------
;	 function TI2_Config
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_TI2_Config:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2106: uint8_t tmpicpolarity = TIM2_ICPolarity;
; genCast
; genAssign
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2113: tmpccmr2 = TIM2->CCMR2;
; genPointerGet
	ld	a, 0x525a
	ld	xh, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2116: TIM2->CCER1 &=  (uint8_t)(~TIM_CCER1_CC2E);
; genPointerGet
; genAnd
; genPointerSet
	bres	0x525b, #4
; peephole 204x replaced 'and' by 'bres' ('0x525b').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2119: tmpccmr2 &= (uint8_t)(~TIM_CCMR_CCxS) & (uint8_t)(~TIM_CCMR_ICxF);
; genAnd
	ld	a, xh
	and	a, #0x0c
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2120: tmpccmr2 |= (uint8_t)(((uint8_t)(TIM2_ICSelection)) | ((uint8_t)(TIM2_ICFilter << 4)));
; genLeftShiftLiteral
	ld	a, (0x05, sp)
	swap	a
	and	a, #0xf0
; genOr
	or	a, (0x04, sp)
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2122: TIM2->CCMR2 = tmpccmr2;
; genPointerSet
	ld	0x525a, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2116: TIM2->CCER1 &=  (uint8_t)(~TIM_CCER1_CC2E);
; genPointerGet
	ld	a, 0x525b
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2125: if (tmpicpolarity == TIM2_ICPolarity_Falling)
; genCmpEQorNE
	push	a
	ld	a, xl
	dec	a
	pop	a
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00114$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00115$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2127: TIM2->CCER1 |= TIM_CCER1_CC2P ;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x525b, a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2131: TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2P) ;
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x525b, a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2135: TIM2->CCER1 |=  TIM_CCER1_CC2E;
; genPointerGet
	ld	a, 0x525b
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x525b, a
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_tim2.c: 2136: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #5
	jp	(x)
;	Total TI2_Config function size at codegen: 5 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
