;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_rtc
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _RTC_DeInit
	.globl _RTC_Init
	.globl _RTC_StructInit
	.globl _RTC_WriteProtectionCmd
	.globl _RTC_EnterInitMode
	.globl _RTC_ExitInitMode
	.globl _RTC_WaitForSynchro
	.globl _RTC_RatioCmd
	.globl _RTC_BypassShadowCmd
	.globl _RTC_SetTime
	.globl _RTC_TimeStructInit
	.globl _RTC_GetTime
	.globl _RTC_GetSubSecond
	.globl _RTC_SetDate
	.globl _RTC_DateStructInit
	.globl _RTC_GetDate
	.globl _RTC_SetAlarm
	.globl _RTC_AlarmStructInit
	.globl _RTC_GetAlarm
	.globl _RTC_AlarmCmd
	.globl _RTC_AlarmSubSecondConfig
	.globl _RTC_WakeUpClockConfig
	.globl _RTC_SetWakeUpCounter
	.globl _RTC_GetWakeUpCounter
	.globl _RTC_WakeUpCmd
	.globl _RTC_DayLightSavingConfig
	.globl _RTC_GetStoreOperation
	.globl _RTC_OutputConfig
	.globl _RTC_SynchroShiftConfig
	.globl _RTC_SmoothCalibConfig
	.globl _RTC_CalibOutputConfig
	.globl _RTC_CalibOutputCmd
	.globl _RTC_TamperLevelConfig
	.globl _RTC_TamperFilterConfig
	.globl _RTC_TamperSamplingFreqConfig
	.globl _RTC_TamperPinsPrechargeDuration
	.globl _RTC_TamperCmd
	.globl _RTC_ITConfig
	.globl _RTC_GetFlagStatus
	.globl _RTC_ClearFlag
	.globl _RTC_GetITStatus
	.globl _RTC_ClearITPendingBit
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 232: ErrorStatus RTC_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function RTC_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_RTC_DeInit:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 239: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 240: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 243: if (RTC_EnterInitMode() == ERROR)
; genCall
	call	_RTC_EnterInitMode
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00121$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00203$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 245: status = ERROR;
; genAssign
	clr	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 247: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genGoto
	ret
; peephole j2e replaced jump by return.
; genLabel
00121$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 252: RTC->TR1 = RTC_TR1_RESET_VALUE;
; genPointerSet
	mov	0x5140+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 253: RTC->TR2 = RTC_TR2_RESET_VALUE;
; genPointerSet
	mov	0x5141+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 254: RTC->TR3 = RTC_TR3_RESET_VALUE;
; genPointerSet
	mov	0x5142+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 257: RTC->DR1 = RTC_DR1_RESET_VALUE;
; genPointerSet
	mov	0x5144+0, #0x01
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 258: RTC->DR2 = RTC_DR2_RESET_VALUE;
; genPointerSet
	mov	0x5145+0, #0x21
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 259: RTC->DR3 = RTC_DR3_RESET_VALUE;
; genPointerSet
	mov	0x5146+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 262: RTC->SPRERH = RTC_SPRERH_RESET_VALUE;
; genPointerSet
	mov	0x5150+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 263: RTC->SPRERL = RTC_SPRERL_RESET_VALUE;
; genPointerSet
	mov	0x5151+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 264: RTC->APRER  = RTC_APRER_RESET_VALUE;
; genPointerSet
	mov	0x5152+0, #0x7f
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 266: RTC->TCR1 = RTC_TCR1_RESET_VALUE;
; genPointerSet
	mov	0x516c+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 267: RTC->TCR2 = RTC_TCR2_RESET_VALUE;
; genPointerSet
	mov	0x516d+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 271: RTC->CR1 = RTC_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5148+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 272: RTC->CR2 = RTC_CR2_RESET_VALUE;
; genPointerSet
	mov	0x5149+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 273: RTC->CR3 = RTC_CR3_RESET_VALUE;
; genPointerSet
	mov	0x514a+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 276: while (((RTC->ISR1 & RTC_ISR1_WUTWF) == RESET) && ( wutwfcount != WUTWF_TIMEOUT))
; genAssign
	clrw	x
; genLabel
00102$:
; genPointerGet
; genAnd
; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjt	0x514c, #2, 00104$
; peephole j34 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00204$.
; skipping generated iCode
; genCmpEQorNE
	cpw	x, #0xffff
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00104$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00206$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 278: wutwfcount++;
; genPlus
	incw	x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 279: RTC->ISR1 = 0;
; genPointerSet
	mov	0x514c+0, #0x00
; genGoto
	jra	00102$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 282: if ((RTC->ISR1 & RTC_ISR1_WUTWF) == RESET)
; genPointerGet
; genAnd
; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjt	0x514c, #2, 00118$
; peephole j34 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00208$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 284: status = ERROR;
; genAssign
	clr	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 286: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genGoto
	ret
; peephole j2e replaced jump by return.
; genLabel
00118$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 291: RTC->CR1 = RTC_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5148+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 294: RTC->WUTRH = RTC_WUTRH_RESET_VALUE;
; genPointerSet
	mov	0x5154+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 295: RTC->WUTRL = RTC_WUTRL_RESET_VALUE;
; genPointerSet
	mov	0x5155+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 298: RTC->ALRMAR1 = RTC_ALRMAR1_RESET_VALUE;
; genPointerSet
	mov	0x515c+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 299: RTC->ALRMAR2 = RTC_ALRMAR2_RESET_VALUE;
; genPointerSet
	mov	0x515d+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 300: RTC->ALRMAR3 = RTC_ALRMAR3_RESET_VALUE;
; genPointerSet
	mov	0x515e+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 301: RTC->ALRMAR4 = RTC_ALRMAR4_RESET_VALUE;
; genPointerSet
	mov	0x515f+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 303: RTC->ALRMASSRH = RTC_ALRMASSRH_RESET_VALUE;
; genPointerSet
	mov	0x5164+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 304: RTC->ALRMASSRL = RTC_ALRMASSRL_RESET_VALUE;
; genPointerSet
	mov	0x5165+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 305: RTC->ALRMASSMSKR = RTC_ALRMASSMSKR_RESET_VALUE;
; genPointerSet
	mov	0x5166+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 308: RTC->ISR1 = (uint8_t)0x00;
; genPointerSet
	mov	0x514c+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 309: RTC->ISR2 = RTC_ISR2_RESET_VALUE;
; genPointerSet
	mov	0x514d+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 311: if ((RTC->ISR1 & RTC_ISR1_RECALPF) != RESET)
; genPointerGet
; genAnd
; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjf	0x514c, #1, 00110$
; peephole j33 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00209$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 313: while (((RTC->ISR1 & RTC_ISR1_RECALPF) != RESET) && (recalpfcount != RECALPF_TIMEOUT))
; genAssign
	clrw	x
; genLabel
00106$:
; genPointerGet
; genAnd
; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjf	0x514c, #1, 00110$
; peephole j33 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00210$.
; skipping generated iCode
; genCmpEQorNE
	cpw	x, #0xffff
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00110$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00212$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 315: recalpfcount++;
; genPlus
	incw	x
; genGoto
	jra	00106$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00110$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 318: if ((RTC->ISR1 & RTC_ISR1_RECALPF) == RESET)
; genPointerGet
; genAnd
; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjt	0x514c, #1, 00115$
; peephole j34 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00214$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 320: RTC->CALRH = RTC_CALRH_RESET_VALUE;
; genPointerSet
	mov	0x516a+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 321: RTC->CALRL = RTC_CALRL_RESET_VALUE;
; genPointerSet
	mov	0x516b+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 323: if (RTC_WaitForSynchro() == ERROR)
; genCall
	call	_RTC_WaitForSynchro
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00112$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00215$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 325: status = ERROR;
; genAssign
	clr	a
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00112$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 329: status = SUCCESS;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 334: status = ERROR;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00115$:
	clr	a
00116$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 338: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genLabel
; peephole j30 removed unused label 00122$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 343: return (ErrorStatus)status;
; genReturn
; genLabel
; peephole j30 removed unused label 00123$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 344: }
; genEndFunction
	ret
;	Total RTC_DeInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 359: ErrorStatus RTC_Init(RTC_InitTypeDef* RTC_InitStruct)
; genLabel
;	-----------------------------------------
;	 function RTC_Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_RTC_Init:
	sub	sp, #3
; genReceive
	ldw	(0x02, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 369: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 370: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 373: if (RTC_EnterInitMode() == ERROR)
; genCall
	call	_RTC_EnterInitMode
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 375: status = ERROR;
; genAssign
	clr	a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 380: RTC->CR1 &= ((uint8_t)~( RTC_CR1_FMT ));
; genPointerGet
; genAnd
; genPointerSet
	bres	0x5148, #6
; peephole 204x replaced 'and' by 'bres' ('0x5148').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 383: RTC->CR1 |=  ((uint8_t)(RTC_InitStruct->RTC_HourFormat));
; genPointerGet
	ld	a, 0x5148
	ld	(0x01, sp), a
; genPointerGet
	ldw	x, (0x02, sp)
	ld	a, (x)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5148, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 386: RTC->SPRERH = (uint8_t)(RTC_InitStruct->RTC_SynchPrediv >> 8);
; genPlus
	ldw	x, (0x02, sp)
	incw	x
	incw	x
; genPointerGet
	ld	a, (0x1, x)
; peephole 0 removed dead load into yl from a.
	ld	a, (x)
; genGetByte
; genPointerSet
	ld	0x5150, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 387: RTC->SPRERL = (uint8_t)(RTC_InitStruct->RTC_SynchPrediv);
; genPointerGet
	ld	a, (0x1, x)
; genPointerSet
	ld	0x5151, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 388: RTC->APRER =  (uint8_t)(RTC_InitStruct->RTC_AsynchPrediv);
; genAssign
	ldw	x, (0x02, sp)
; genPointerGet
	ld	a, (0x1, x)
; genPointerSet
	ld	0x5152, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 391: RTC->ISR1 &= (uint8_t)~RTC_ISR1_INIT;
; genPointerGet
; genAnd
; genPointerSet
	bres	0x514c, #7
; peephole 204x replaced 'and' by 'bres' ('0x514c').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 393: status = SUCCESS;
; genAssign
	ld	a, #0x01
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 397: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 400: return (ErrorStatus)(status);
; genReturn
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 401: }
; genEndFunction
	addw	sp, #3
	ret
;	Total RTC_Init function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 410: void RTC_StructInit(RTC_InitTypeDef* RTC_InitStruct)
; genLabel
;	-----------------------------------------
;	 function RTC_StructInit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_RTC_StructInit:
; genReceive
	exgw	x, y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 413: RTC_InitStruct->RTC_HourFormat = RTC_HourFormat_24;
; genPointerSet
	clr	(y)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 416: RTC_InitStruct->RTC_AsynchPrediv = RTC_APRER_RESET_VALUE;
; genPlus
	ldw	x, y
	incw	x
; genPointerSet
	ld	a, #0x7f
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 419: RTC_InitStruct->RTC_SynchPrediv = RTC_SPRERL_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 10a moved addition of offset into storage instruction
	ldw	y, #0x00ff
	ldw	(0x02, x), y
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 420: }
; genEndFunction
	ret
;	Total RTC_StructInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 430: void RTC_WriteProtectionCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function RTC_WriteProtectionCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_RTC_WriteProtectionCmd:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 435: if (NewState != DISABLE)
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 438: RTC->WPR = RTC_WPR_EnableKey;
; genPointerSet
	mov	0x5159+0, #0xff
; genGoto
	ret
; peephole j2e replaced jump by return.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 443: RTC->WPR = RTC_WPR_DisableKey1;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 444: RTC->WPR = RTC_WPR_DisableKey2;
; genPointerSet
	mov	0x5159+0, #0x53
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 446: }
; genEndFunction
	ret
;	Total RTC_WriteProtectionCmd function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 458: ErrorStatus RTC_EnterInitMode(void)
; genLabel
;	-----------------------------------------
;	 function RTC_EnterInitMode
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_RTC_EnterInitMode:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 464: if ((RTC->ISR1 & RTC_ISR1_INITF) == RESET)
; genPointerGet
; genAnd
; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjt	0x514c, #6, 00106$
; peephole j34 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00148$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 467: RTC->ISR1 = (uint8_t)RTC_ISR1_INIT;
; genPointerSet
	mov	0x514c+0, #0x80
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 470: while (((RTC->ISR1 & RTC_ISR1_INITF) == RESET) && ( initfcount != INITF_TIMEOUT))
; genAssign
	clrw	x
; genLabel
00102$:
; genPointerGet
; genAnd
; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjt	0x514c, #6, 00106$
; peephole j34 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00149$.
; skipping generated iCode
; genCmpEQorNE
	cpw	x, #0xffff
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00106$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00151$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 472: initfcount++;
; genPlus
	incw	x
; genGoto
	jra	00102$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00106$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 476: if ((RTC->ISR1 & RTC_ISR1_INITF) == RESET)
; genPointerGet
; genAnd
; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjt	0x514c, #6, 00108$
; peephole j34 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00153$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 478: status = ERROR;
; genAssign
	clr	a
; genGoto
	ret
; peephole j2e replaced jump by return.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 482: status = SUCCESS;
; genAssign
	ld	a, #0x01
; genLabel
; peephole j30 removed unused label 00109$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 485: return (ErrorStatus)status;
; genReturn
; genLabel
; peephole j30 removed unused label 00110$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 486: }
; genEndFunction
	ret
;	Total RTC_EnterInitMode function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 498: void RTC_ExitInitMode(void)
; genLabel
;	-----------------------------------------
;	 function RTC_ExitInitMode
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_RTC_ExitInitMode:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 501: RTC->ISR1 &= (uint8_t)~RTC_ISR1_INIT;
; genPointerGet
; genAnd
; genPointerSet
	bres	0x514c, #7
; peephole 204x replaced 'and' by 'bres' ('0x514c').
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 502: }
; genEndFunction
	ret
;	Total RTC_ExitInitMode function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 527: ErrorStatus RTC_WaitForSynchro(void)
; genLabel
;	-----------------------------------------
;	 function RTC_WaitForSynchro
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_RTC_WaitForSynchro:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 533: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 534: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 537: RTC->ISR1 &= (uint8_t)~(RTC_ISR1_RSF | RTC_ISR1_INIT);
; genPointerGet
	ld	a, 0x514c
; genAnd
	and	a, #0x5f
; genPointerSet
	ld	0x514c, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 540: while (((RTC->ISR1 & RTC_ISR1_RSF) == RESET) && ( rsfcount != RSF_TIMEOUT))
; genAssign
	clrw	x
; genLabel
00102$:
; genPointerGet
; genAnd
; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjt	0x514c, #5, 00104$
; peephole j34 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00139$.
; skipping generated iCode
; genCmpEQorNE
	cpw	x, #0xffff
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00104$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00141$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 542: rsfcount++;
; genPlus
	incw	x
; genGoto
	jra	00102$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 546: if ((RTC->ISR1 & RTC_ISR1_RSF) != RESET)
; genPointerGet
; genAnd
; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjf	0x514c, #5, 00106$
; peephole j33 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00143$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 548: status = SUCCESS;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 552: status = ERROR;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00106$:
	clr	a
00107$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 556: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 558: return (ErrorStatus)status;
; genReturn
; genLabel
; peephole j30 removed unused label 00108$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 559: }
; genEndFunction
	ret
;	Total RTC_WaitForSynchro function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 568: void RTC_RatioCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function RTC_RatioCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_RTC_RatioCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 574: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 575: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 580: RTC->CR1 |= (uint8_t)RTC_CR1_RATIO;
; genPointerGet
	ld	a, 0x5148
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 577: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 580: RTC->CR1 |= (uint8_t)RTC_CR1_RATIO;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x5148, a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 585: RTC->CR1 &= (uint8_t)~RTC_CR1_RATIO;
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x5148, a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 589: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 590: }
; genEndFunction
	pop	a
	ret
;	Total RTC_RatioCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 598: void RTC_BypassShadowCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function RTC_BypassShadowCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_RTC_BypassShadowCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 604: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 605: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 610: RTC->CR1 |= (uint8_t)RTC_CR1_BYPSHAD;
; genPointerGet
	ld	a, 0x5148
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 607: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 610: RTC->CR1 |= (uint8_t)RTC_CR1_BYPSHAD;
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x5148, a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 615: RTC->CR1 &= (uint8_t)~RTC_CR1_BYPSHAD;
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5148, a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 619: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 620: }
; genEndFunction
	pop	a
	ret
;	Total RTC_BypassShadowCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 659: ErrorStatus RTC_SetTime(RTC_Format_TypeDef RTC_Format,
; genLabel
;	-----------------------------------------
;	 function RTC_SetTime
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 6 bytes.
_RTC_SetTime:
	sub	sp, #6
; genReceive
	ld	(0x06, sp), a
; genReceive
	ldw	(0x04, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 671: if ((RTC->CR1 & RTC_CR1_FMT) != RESET)
; genPointerGet
; Dummy read
	ld	a, 0x5148
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 701: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 702: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 705: if (RTC_EnterInitMode() == ERROR)
; genCall
	call	_RTC_EnterInitMode
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00123$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00166$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 707: status = ERROR;
; genAssign
	clr	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 709: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genGoto
	jra	00124$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00123$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 714: if ((RTC->CR1 & RTC_CR1_FMT) != RESET)
; genPointerGet
; genAnd
; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x5148').
; peephole j5 changed absolute to relative unconditional jump.
	btjf	0x5148, #6, 00111$
; peephole j33 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00167$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 717: temp = RTC_TimeStruct->RTC_H12;
; genAssign
	ldw	x, (0x04, sp)
; genPointerGet
	ld	a, (0x3, x)
	ld	(0x01, sp), a
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 721: temp = 0;
; genAssign
; genLabel
	.byte 0xc5
; peephole jrf7 used bcp opcode to jump over 2-byte instruction.
00111$:
	clr	(0x01, sp)
00112$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 726: RTC->TR1 = (uint8_t)(RTC_TimeStruct->RTC_Seconds);
; genAssign
	ldw	y, (0x04, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 727: RTC->TR2 = (uint8_t)(RTC_TimeStruct->RTC_Minutes) ;
; genPlus
	ldw	x, (0x04, sp)
	incw	x
	ldw	(0x02, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 728: RTC->TR3 = (uint8_t)( temp | RTC_TimeStruct->RTC_Hours) ;
; genCast
; genAssign
	ldw	x, (0x04, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 726: RTC->TR1 = (uint8_t)(RTC_TimeStruct->RTC_Seconds);
; genPointerGet
	ld	a, (0x2, y)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 724: if (RTC_Format != RTC_Format_BIN)
; genIfx
	tnz	(0x06, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00114$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00168$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 726: RTC->TR1 = (uint8_t)(RTC_TimeStruct->RTC_Seconds);
; genPointerSet
	ld	0x5140, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 727: RTC->TR2 = (uint8_t)(RTC_TimeStruct->RTC_Minutes) ;
; genPointerGet
	ldw	y, (0x02, sp)
	ld	a, (y)
; genPointerSet
	ld	0x5141, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 728: RTC->TR3 = (uint8_t)( temp | RTC_TimeStruct->RTC_Hours) ;
; genPointerGet
	ld	a, (x)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5142, a
; genGoto
	jra	00115$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00114$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 732: RTC->TR1 = (uint8_t)(ByteToBcd2(RTC_TimeStruct->RTC_Seconds));
; genSend
	pushw	x
; genCall
	call	_ByteToBcd2
	popw	x
; genPointerSet
	ld	0x5140, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 733: RTC->TR2 = (uint8_t)(ByteToBcd2(RTC_TimeStruct->RTC_Minutes)) ;
; genPointerGet
	ldw	y, (0x02, sp)
	ld	a, (y)
; genSend
	pushw	x
; genCall
	call	_ByteToBcd2
	popw	x
; genPointerSet
	ld	0x5141, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 734: RTC->TR3 = (uint8_t)( temp | ByteToBcd2(RTC_TimeStruct->RTC_Hours));
; genPointerGet
	ld	a, (x)
; genSend
; genCall
	call	_ByteToBcd2
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5142, a
; genLabel
00115$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 737: (void)(RTC->DR3);
; genPointerGet
; Dummy read
	ld	a, 0x5146
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 740: RTC->ISR1 &= (uint8_t)~RTC_ISR1_INIT;
; genPointerGet
; genAnd
; genPointerSet
	bres	0x514c, #7
; peephole 204x replaced 'and' by 'bres' ('0x514c').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 743: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 746: if ((RTC->CR1 & RTC_CR1_BYPSHAD) == RESET)
; genPointerGet
; genAnd
; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x5148').
; peephole j5 changed absolute to relative unconditional jump.
	btjt	0x5148, #4, 00120$
; peephole j34 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00169$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 748: if (RTC_WaitForSynchro() == ERROR)
; genCall
	call	_RTC_WaitForSynchro
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00117$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00170$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 750: status = ERROR;
; genAssign
	clr	a
; genGoto
	jra	00124$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00117$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 754: status = SUCCESS;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 759: status = SUCCESS;
; genAssign
; genLabel
	.byte 0xc5
; peephole jrf6 used bcp opcode to jump over 2-byte instruction.
00120$:
	ld	a, #0x01
00124$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 763: return (ErrorStatus)status;
; genReturn
; genLabel
; peephole j30 removed unused label 00125$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 764: }
; genEndFunction
	addw	sp, #6
	ret
;	Total RTC_SetTime function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 775: void RTC_TimeStructInit(RTC_TimeTypeDef* RTC_TimeStruct)
; genLabel
;	-----------------------------------------
;	 function RTC_TimeStructInit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_RTC_TimeStructInit:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 778: RTC_TimeStruct->RTC_H12 = RTC_H12_AM;
; genPlus
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0003, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 779: RTC_TimeStruct->RTC_Hours = 0;
; genPointerSet
	clr	(y)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 780: RTC_TimeStruct->RTC_Minutes = 0;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 10j moved addition of offset into instruction
	clr	(0x01, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 781: RTC_TimeStruct->RTC_Seconds = 0;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 10i moved addition of offset into instruction
	clr	(0x02, x)
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 782: }
; genEndFunction
	ret
;	Total RTC_TimeStructInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 798: void RTC_GetTime(RTC_Format_TypeDef RTC_Format,
; genLabel
;	-----------------------------------------
;	 function RTC_GetTime
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 6 bytes.
_RTC_GetTime:
	sub	sp, #6
; genReceive
	ld	(0x06, sp), a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 808: RTC_TimeStruct->RTC_Seconds = RTC->TR1;
; genPlus
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
	incw	x
	incw	x
	ldw	(0x01, sp), x
; genPointerGet
	ld	a, 0x5140
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 811: RTC_TimeStruct->RTC_Minutes = RTC->TR2;
; genPlus
	ldw	x, y
	incw	x
	ldw	(0x03, sp), x
; genPointerGet
	ld	a, 0x5141
; genPointerSet
	ldw	x, (0x03, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 814: tmpreg = (uint8_t)RTC->TR3;
; genPointerGet
	ld	a, 0x5142
	ld	(0x05, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 817: (void) (RTC->DR3) ;
; genPointerGet
; Dummy read
	ld	a, 0x5146
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 821: RTC_TimeStruct->RTC_Hours = (uint8_t)(tmpreg & (uint8_t)~(RTC_TR3_PM));
; genCast
; genAssign
	ldw	x, y
; genAnd
	ld	a, (0x05, sp)
	and	a, #0xbf
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 824: RTC_TimeStruct->RTC_H12 = (RTC_H12_TypeDef)(tmpreg & RTC_TR3_PM);
; genPlus
	addw	y, #0x0003
; genAnd
	ld	a, (0x05, sp)
	and	a, #0x40
; genPointerSet
	ld	(y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 827: if (RTC_Format == RTC_Format_BIN)
; genIfx
	tnz	(0x06, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00103$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00112$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 830: RTC_TimeStruct->RTC_Hours = (uint8_t)Bcd2ToByte(RTC_TimeStruct->RTC_Hours);
; genPointerGet
	ld	a, (x)
; genSend
	pushw	x
; genCall
	call	_Bcd2ToByte
	popw	x
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 831: RTC_TimeStruct->RTC_Minutes = (uint8_t)Bcd2ToByte(RTC_TimeStruct->RTC_Minutes);
; genPointerGet
	ldw	x, (0x03, sp)
	ld	a, (x)
; genSend
; genCall
	call	_Bcd2ToByte
; genPointerSet
	ldw	x, (0x03, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 832: RTC_TimeStruct->RTC_Seconds = (uint8_t)Bcd2ToByte(RTC_TimeStruct->RTC_Seconds);
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genSend
; genCall
	call	_Bcd2ToByte
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 834: }
; genEndFunction
	addw	sp, #6
	ret
;	Total RTC_GetTime function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 845: uint16_t RTC_GetSubSecond(void)
; genLabel
;	-----------------------------------------
;	 function RTC_GetSubSecond
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_RTC_GetSubSecond:
	pushw	x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 851: ssrhreg = RTC->SSRH;
; genPointerGet
	ld	a, 0x5157
	ld	xh, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 852: ssrlreg = RTC->SSRL;
; genPointerGet
	ld	a, 0x5158
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 855: (void) (RTC->DR3);
; genPointerGet
; Dummy read
	ld	a, 0x5146
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 858: ssrreg = (uint16_t)((uint16_t)((uint16_t)ssrhreg << 8) | (uint16_t)(ssrlreg));
; genCast
; genAssign
; peephole 1 removed dead clear of a.
; genLeftShiftLiteral
	clr	(0x02, sp)
; genCast
; genAssign
; peephole 3 removed dead clrw of y.
; genOr
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 859: return (uint16_t)(ssrreg);
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 860: }
; genEndFunction
	addw	sp, #2
	ret
;	Total RTC_GetSubSecond function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 876: ErrorStatus RTC_SetDate(RTC_Format_TypeDef RTC_Format,
; genLabel
;	-----------------------------------------
;	 function RTC_SetDate
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 10 bytes.
_RTC_SetDate:
	sub	sp, #10
; genReceive
	ld	(0x0a, sp), a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 881: if ((RTC_Format == RTC_Format_BIN) && ((RTC_DateStruct->RTC_Month & TEN_VALUE_BCD) == TEN_VALUE_BCD))
; genPlus
	ldw	(0x08, sp), x
; peephole 13 removed redundant load from (0x08, sp) into x.
	incw	x
	ldw	(0x01, sp), x
; genIfx
	tnz	(0x0a, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00106$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00163$.
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genAnd
	ld	xl, a
; peephole 4 removed redundant load from xl into a.
; genCmpEQorNE
	cpl	a
	bcp	a, #0x10
; peephole 111 replaced 'and-cp' by 'cpl-bcp'.
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00165$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00106$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00166$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 883: RTC_DateStruct->RTC_Month = (RTC_Month_TypeDef)((RTC_DateStruct->RTC_Month & (uint8_t)~(TEN_VALUE_BCD)) + TEN_VALUE_BIN);
; genAnd
	ld	a, xl
	and	a, #0xef
; genPlus
	add	a, #0x0a
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 902: assert_param(IS_RTC_DATE_MAX(Bcd2ToByte((uint8_t)RTC_DateStruct->RTC_Date)));
; genLabel
00106$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 907: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 908: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 911: if (RTC_EnterInitMode() == ERROR)
; genCall
	call	_RTC_EnterInitMode
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00117$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00167$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 913: status = ERROR;
; genAssign
	clr	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 915: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genGoto
	jra	00118$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00117$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 919: (void)(RTC->TR1);
; genPointerGet
; Dummy read
	ld	a, 0x5140
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 924: RTC->DR1 = (uint8_t)(RTC_DateStruct->RTC_Date);
; genAssign
	ldw	x, (0x08, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 925: RTC->DR2 = (uint8_t)((RTC_DateStruct->RTC_Month) | (uint8_t)((RTC_DateStruct->RTC_WeekDay) << 5));
; genCast
; genAssign
	ldw	y, (0x08, sp)
	ldw	(0x03, sp), y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 926: RTC->DR3 = (uint8_t)((RTC_DateStruct->RTC_Year));
; genPlus
	ldw	y, (0x08, sp)
	addw	y, #0x0003
	ldw	(0x05, sp), y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 924: RTC->DR1 = (uint8_t)(RTC_DateStruct->RTC_Date);
; genPointerGet
	ld	a, (0x2, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 922: if (RTC_Format != RTC_Format_BIN)
; genIfx
	tnz	(0x0a, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00168$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 924: RTC->DR1 = (uint8_t)(RTC_DateStruct->RTC_Date);
; genPointerSet
	ld	0x5144, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 925: RTC->DR2 = (uint8_t)((RTC_DateStruct->RTC_Month) | (uint8_t)((RTC_DateStruct->RTC_WeekDay) << 5));
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
	ld	(0x07, sp), a
; genPointerGet
	ldw	x, (0x03, sp)
	ld	a, (x)
; genLeftShiftLiteral
	swap	a
	and	a, #0xf0
	sll	a
; genOr
	or	a, (0x07, sp)
; genPointerSet
	ld	0x5145, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 926: RTC->DR3 = (uint8_t)((RTC_DateStruct->RTC_Year));
; genPointerGet
	ldw	x, (0x05, sp)
	ld	a, (x)
; genPointerSet
	ld	0x5146, a
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 930: RTC->DR1 = (uint8_t)(ByteToBcd2 ((uint8_t)RTC_DateStruct->RTC_Date));
; genSend
; genCall
	call	_ByteToBcd2
; genPointerSet
	ld	0x5144, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 931: RTC->DR2 = (uint8_t)((ByteToBcd2((uint8_t)RTC_DateStruct->RTC_Month)) | (uint8_t)((RTC_DateStruct->RTC_WeekDay) << 5));
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genSend
; genCall
	call	_ByteToBcd2
	ld	(0x07, sp), a
; genPointerGet
	ldw	x, (0x03, sp)
	ld	a, (x)
; genLeftShiftLiteral
	swap	a
	and	a, #0xf0
	sll	a
; genOr
	or	a, (0x07, sp)
; genPointerSet
	ld	0x5145, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 932: RTC->DR3 = (uint8_t)(ByteToBcd2((uint8_t)RTC_DateStruct->RTC_Year));
; genPointerGet
	ldw	x, (0x05, sp)
	ld	a, (x)
; genSend
; genCall
	call	_ByteToBcd2
; genPointerSet
	ld	0x5146, a
; genLabel
00109$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 936: RTC->ISR1 &= (uint8_t)~RTC_ISR1_INIT;
; genPointerGet
; genAnd
; genPointerSet
	bres	0x514c, #7
; peephole 204x replaced 'and' by 'bres' ('0x514c').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 939: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 942: if ((RTC->CR1 & RTC_CR1_BYPSHAD) == RESET)
; genPointerGet
; genAnd
; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x5148').
; peephole j5 changed absolute to relative unconditional jump.
	btjt	0x5148, #4, 00114$
; peephole j34 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00169$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 944: if (RTC_WaitForSynchro() == ERROR)
; genCall
	call	_RTC_WaitForSynchro
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00111$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00170$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 946: status = ERROR;
; genAssign
	clr	a
; genGoto
	jra	00118$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00111$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 950: status = SUCCESS;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 955: status = SUCCESS;
; genAssign
; genLabel
	.byte 0xc5
; peephole jrf6 used bcp opcode to jump over 2-byte instruction.
00114$:
	ld	a, #0x01
00118$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 959: return (ErrorStatus)status;
; genReturn
; genLabel
; peephole j30 removed unused label 00119$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 960: }
; genEndFunction
	addw	sp, #10
	ret
;	Total RTC_SetDate function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 968: void RTC_DateStructInit(RTC_DateTypeDef* RTC_DateStruct)
; genLabel
;	-----------------------------------------
;	 function RTC_DateStructInit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_RTC_DateStructInit:
; genReceive
	exgw	x, y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 971: RTC_DateStruct->RTC_WeekDay = RTC_Weekday_Monday;
; genPointerSet
	ld	a, #0x01
	ld	(y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 972: RTC_DateStruct->RTC_Date = 1;
; genPlus
	ldw	x, y
	incw	x
	incw	x
; genPointerSet
	ld	a, #0x01
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 973: RTC_DateStruct->RTC_Month = RTC_Month_January;
; genPlus
	ldw	x, y
	incw	x
; genPointerSet
	ld	a, #0x01
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 974: RTC_DateStruct->RTC_Year = 0;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0003, x)
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 975: }
; genEndFunction
	ret
;	Total RTC_DateStructInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 988: void RTC_GetDate(RTC_Format_TypeDef RTC_Format,
; genLabel
;	-----------------------------------------
;	 function RTC_GetDate
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 6 bytes.
_RTC_GetDate:
	sub	sp, #6
; genReceive
	ld	(0x06, sp), a
; genReceive
	exgw	x, y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 997: (void) (RTC->TR1) ;
; genPointerGet
; Dummy read
	ld	a, 0x5140
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 998: RTC_DateStruct->RTC_Date = (uint8_t)(RTC->DR1);
; genPlus
	ldw	x, y
	incw	x
	incw	x
	ldw	(0x01, sp), x
; genPointerGet
	ld	a, 0x5144
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 999: tmpreg = (uint8_t)RTC->DR2;
; genPointerGet
	ld	a, 0x5145
	ld	(0x03, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1000: RTC_DateStruct->RTC_Year = (uint8_t)(RTC->DR3);
; genPlus
	ldw	x, y
	addw	x, #0x0003
	ldw	(0x04, sp), x
; genPointerGet
	ld	a, 0x5146
; genPointerSet
	ldw	x, (0x04, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1003: RTC_DateStruct->RTC_Month = (RTC_Month_TypeDef)(tmpreg & (uint8_t)(RTC_DR2_MT | RTC_DR2_MU));
; genPlus
	ldw	x, y
	incw	x
; genAnd
	ld	a, (0x03, sp)
	and	a, #0x1f
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1004: RTC_DateStruct->RTC_WeekDay = (RTC_Weekday_TypeDef)((uint8_t)((uint8_t)tmpreg & (uint8_t)(RTC_DR2_WDU)) >> (uint8_t)5);
; genCast
; genAssign
; genAnd
	ld	a, (0x03, sp)
	and	a, #0xe0
; genRightShiftLiteral
	swap	a
	and	a, #0x0f
	srl	a
; genPointerSet
	ld	(y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1007: if (RTC_Format == RTC_Format_BIN)
; genIfx
	tnz	(0x06, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00103$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00112$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1010: RTC_DateStruct->RTC_Year = (uint8_t)Bcd2ToByte((uint8_t)RTC_DateStruct->RTC_Year);
; genPointerGet
	ldw	y, (0x04, sp)
	ld	a, (y)
; genSend
	pushw	x
; genCall
	call	_Bcd2ToByte
	popw	x
; genPointerSet
	ldw	y, (0x04, sp)
	ld	(y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1011: RTC_DateStruct->RTC_Month = (RTC_Month_TypeDef)Bcd2ToByte((uint8_t)RTC_DateStruct->RTC_Month);
; genPointerGet
	ld	a, (x)
; genSend
	pushw	x
; genCall
	call	_Bcd2ToByte
	popw	x
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1012: RTC_DateStruct->RTC_Date = (uint8_t)(Bcd2ToByte((uint8_t)RTC_DateStruct->RTC_Date));
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genSend
; genCall
	call	_Bcd2ToByte
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1014: }
; genEndFunction
	addw	sp, #6
	ret
;	Total RTC_GetDate function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1044: void RTC_SetAlarm(RTC_Format_TypeDef RTC_Format,
; genLabel
;	-----------------------------------------
;	 function RTC_SetAlarm
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 17 bytes.
_RTC_SetAlarm:
	sub	sp, #17
; genReceive
	ld	(0x11, sp), a
; genReceive
	exgw	x, y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1062: if ((RTC->CR1 & RTC_CR1_FMT) != RESET)
; genPointerGet
; Dummy read
	ld	a, 0x5148
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1094: if ((RTC_AlarmStruct->RTC_AlarmMask & RTC_AlarmMask_DateWeekDay) == RESET )
; genPlus
	ldw	x, y
	addw	x, #0x0004
	ldw	(0x05, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1108: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1109: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1115: tmpreg1 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds) | \
; genAssign
	ldw	(0x01, sp), y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1118: tmpreg2 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes) | \
; genPlus
	ldw	x, y
	incw	x
	ldw	(0x03, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1121: tmpreg3 = (uint8_t)((uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours) | \
; genCast
; genAssign
	ldw	(0x07, sp), y
; genPlus
	ldw	x, y
	addw	x, #0x0003
	ldw	(0x09, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1125: tmpreg4 = (uint8_t)((uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmDateWeekDay) | \
; genPlus
	ldw	x, y
	addw	x, #0x0006
	ldw	(0x0b, sp), x
; genPlus
	ldw	x, y
	addw	x, #0x0005
	ldw	(0x0d, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1115: tmpreg1 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds) | \
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (0x2, x)
	ld	(0x10, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1113: if (RTC_Format != RTC_Format_BIN)
; genIfx
	tnz	(0x11, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00116$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00132$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1115: tmpreg1 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds) | \
; genPointerGet
	ldw	x, (0x05, sp)
	ld	a, (x)
; genAnd
	ld	xl, a
; peephole 4 removed redundant load from xl into a.
	and	a, #0x80
; genOr
	or	a, (0x10, sp)
	ld	(0x0f, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1118: tmpreg2 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes) | \
; genPointerGet
	ldw	y, (0x03, sp)
	ld	a, (y)
	ld	(0x10, sp), a
; genLeftShiftLiteral
	ld	a, xl
	sll	a
; genAnd
	and	a, #0x80
; genOr
	or	a, (0x10, sp)
	ld	(0x10, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1121: tmpreg3 = (uint8_t)((uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours) | \
; genPointerGet
	ldw	y, (0x07, sp)
	ld	a, (y)
	ld	(0x06, sp), a
; genPointerGet
	ldw	y, (0x09, sp)
	ld	a, (y)
; genOr
	or	a, (0x06, sp)
	ld	(0x0a, sp), a
; genLeftShiftLiteral
	ld	a, xl
	sll	a
	sll	a
; genAnd
	and	a, #0x80
; genOr
	or	a, (0x0a, sp)
	ld	(0x0a, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1125: tmpreg4 = (uint8_t)((uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmDateWeekDay) | \
; genPointerGet
	ldw	y, (0x0b, sp)
	ld	a, (y)
	ld	(0x09, sp), a
; genPointerGet
	ldw	y, (0x0d, sp)
	ld	a, (y)
; genOr
	or	a, (0x09, sp)
	ld	(0x0e, sp), a
; genLeftShiftLiteral
	ld	a, xl
	sll	a
	sll	a
	sll	a
; genAnd
	and	a, #0x80
; genOr
	or	a, (0x0e, sp)
; genGoto
	jra	00117$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00116$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1132: tmpreg1 = (uint8_t)((ByteToBcd2(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds)) | \
; genSend
	ld	a, (0x10, sp)
; genCall
	call	_ByteToBcd2
	ld	(0x10, sp), a
; genPointerGet
	ldw	x, (0x05, sp)
	ld	a, (x)
; genAnd
	and	a, #0x80
; genOr
	or	a, (0x10, sp)
	ld	(0x0f, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1135: tmpreg2 = (uint8_t)((ByteToBcd2(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes)) | \
; genPointerGet
	ldw	x, (0x03, sp)
	ld	a, (x)
; genSend
; genCall
	call	_ByteToBcd2
	ld	(0x10, sp), a
; genPointerGet
	ldw	x, (0x05, sp)
	ld	a, (x)
; genLeftShiftLiteral
	sll	a
; genAnd
	and	a, #0x80
; genOr
	or	a, (0x10, sp)
	ld	(0x10, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1138: tmpreg3 = (uint8_t)((uint8_t)((ByteToBcd2(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours)) | \
; genPointerGet
	ldw	x, (0x07, sp)
	ld	a, (x)
; genSend
; genCall
	call	_ByteToBcd2
	ld	(0x08, sp), a
; genPointerGet
	ldw	x, (0x09, sp)
	ld	a, (x)
; genOr
	or	a, (0x08, sp)
	ld	(0x0a, sp), a
; genPointerGet
	ldw	x, (0x05, sp)
	ld	a, (x)
; genLeftShiftLiteral
	sll	a
	sll	a
; genAnd
	and	a, #0x80
; genOr
	or	a, (0x0a, sp)
	ld	(0x0a, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1142: tmpreg4 = (uint8_t)((uint8_t)((ByteToBcd2(RTC_AlarmStruct->RTC_AlarmDateWeekDay)) | \
; genPointerGet
	ldw	x, (0x0b, sp)
	ld	a, (x)
; genSend
; genCall
	call	_ByteToBcd2
	ld	(0x0c, sp), a
; genPointerGet
	ldw	x, (0x0d, sp)
	ld	a, (x)
; genOr
	or	a, (0x0c, sp)
	ld	(0x0e, sp), a
; genPointerGet
	ldw	x, (0x05, sp)
	ld	a, (x)
; genLeftShiftLiteral
	sll	a
	sll	a
	sll	a
; genAnd
	and	a, #0x80
; genOr
	or	a, (0x0e, sp)
; genLabel
00117$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1148: RTC->ALRMAR1 = tmpreg1;
; genPointerSet
	ldw	x, #0x515c
	push	a
	ld	a, (0x10, sp)
	ld	(x), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1149: RTC->ALRMAR2 = tmpreg2;
; genPointerSet
	ldw	x, #0x515d
	push	a
	ld	a, (0x11, sp)
	ld	(x), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1150: RTC->ALRMAR3 = tmpreg3;
; genPointerSet
	ldw	x, #0x515e
	push	a
	ld	a, (0x0b, sp)
	ld	(x), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1151: RTC->ALRMAR4 = tmpreg4;
; genPointerSet
	ld	0x515f, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1154: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genLabel
; peephole j30 removed unused label 00118$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1155: }
; genEndFunction
	addw	sp, #17
	ret
;	Total RTC_SetAlarm function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1165: void RTC_AlarmStructInit(RTC_AlarmTypeDef* RTC_AlarmStruct)
; genLabel
;	-----------------------------------------
;	 function RTC_AlarmStructInit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_RTC_AlarmStructInit:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1168: RTC_AlarmStruct->RTC_AlarmTime.RTC_H12 = RTC_H12_AM;
; genPlus
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0003, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1169: RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours = 0;
; genPointerSet
	clr	(y)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1170: RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes = 0;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 10j moved addition of offset into instruction
	clr	(0x01, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1171: RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds = 0;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 10i moved addition of offset into instruction
	clr	(0x02, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1174: RTC_AlarmStruct->RTC_AlarmDateWeekDaySel = RTC_AlarmDateWeekDaySel_Date;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0005, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1175: RTC_AlarmStruct->RTC_AlarmDateWeekDay = 1;
; genPlus
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, #0x01
	ld	(0x0006, y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1178: RTC_AlarmStruct->RTC_AlarmMask = RTC_AlarmMask_All;
; genPlus
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, #0xf0
	ld	(0x0004, y), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1179: }
; genEndFunction
	ret
;	Total RTC_AlarmStructInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1188: void RTC_GetAlarm(RTC_Format_TypeDef RTC_Format,
; genLabel
;	-----------------------------------------
;	 function RTC_GetAlarm
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 11 bytes.
_RTC_GetAlarm:
	sub	sp, #11
; genReceive
	ld	(0x0b, sp), a
; genReceive
	ldw	(0x09, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1201: tmpreg1 = (uint8_t)RTC->ALRMAR1;
; genPointerGet
	ld	a, 0x515c
	ld	(0x08, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1202: tmpreg2 = (uint8_t)RTC->ALRMAR2;
; genPointerGet
	ld	a, 0x515d
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1203: tmpreg3 = (uint8_t)RTC->ALRMAR3;
; genPointerGet
	ld	a, 0x515e
	ld	(0x02, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1204: tmpreg4 = (uint8_t)RTC->ALRMAR4;
; genPointerGet
	ld	a, 0x515f
	ld	(0x03, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1207: RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds = (uint8_t)((uint8_t)tmpreg1 & (uint8_t)((uint8_t)RTC_ALRMAR1_ST | (uint8_t)RTC_ALRMAR1_SU));
; genPlus
	ldw	x, (0x09, sp)
	incw	x
	incw	x
	ldw	(0x04, sp), x
; genAnd
	ld	a, (0x08, sp)
	and	a, #0x7f
; genPointerSet
	ldw	x, (0x04, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1208: alarmmask = (uint8_t)(tmpreg1 & RTC_ALRMAR1_MSK1);
; genAnd
	ld	a, (0x08, sp)
	and	a, #0x80
	ld	(0x08, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1211: RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes = (uint8_t)((uint8_t)tmpreg2 & (uint8_t)((uint8_t)RTC_ALRMAR2_MNT | (uint8_t)RTC_ALRMAR2_MNU));
; genPlus
	ldw	x, (0x09, sp)
	incw	x
	ldw	(0x06, sp), x
; genAnd
	ld	a, (0x01, sp)
	and	a, #0x7f
; genPointerSet
	ldw	x, (0x06, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1212: alarmmask = (uint8_t)((alarmmask) | (uint8_t)((uint8_t)(tmpreg2 & RTC_ALRMAR2_MSK2) >> 1));
; genAnd
	ld	a, (0x01, sp)
	and	a, #0x80
; genRightShiftLiteral
	srl	a
; genOr
	or	a, (0x08, sp)
	ld	(0x08, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1215: RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours = (uint8_t)((uint8_t)tmpreg3 & (uint8_t)((uint8_t)RTC_ALRMAR3_HT | (uint8_t)RTC_ALRMAR3_HU));
; genCast
; genAssign
	ldw	y, (0x09, sp)
; genAnd
	ld	a, (0x02, sp)
	and	a, #0x3f
; genPointerSet
	ld	(y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1216: RTC_AlarmStruct->RTC_AlarmTime.RTC_H12 = (RTC_H12_TypeDef)((uint8_t)tmpreg3 & (uint8_t)RTC_ALRMAR3_PM);
; genPlus
	ldw	x, (0x09, sp)
	addw	x, #0x0003
; genAnd
	ld	a, (0x02, sp)
	and	a, #0x40
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1217: alarmmask = (uint8_t)((alarmmask) | (uint8_t)((uint8_t)((uint8_t)tmpreg3 & (uint8_t)RTC_ALRMAR3_MSK3) >> 2));
; genAnd
	ld	a, (0x02, sp)
	and	a, #0x80
; genRightShiftLiteral
	srl	a
	srl	a
; genOr
	or	a, (0x08, sp)
	ld	(0x08, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1220: RTC_AlarmStruct->RTC_AlarmDateWeekDay = (uint8_t)((uint8_t)tmpreg4 & (uint8_t)((uint8_t)RTC_ALRMAR4_DT | (uint8_t)RTC_ALRMAR4_DU));
; genPlus
	ldw	x, (0x09, sp)
	addw	x, #0x0006
	ldw	(0x01, sp), x
; genAnd
	ld	a, (0x03, sp)
	and	a, #0x3f
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1221: RTC_AlarmStruct->RTC_AlarmDateWeekDaySel = (RTC_AlarmDateWeekDaySel_TypeDef)((uint8_t)tmpreg4 & (uint8_t)RTC_ALRMAR4_WDSEL);
; genPlus
	ldw	x, (0x09, sp)
	addw	x, #0x0005
; genAnd
	ld	a, (0x03, sp)
	and	a, #0x40
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1222: alarmmask = (uint8_t)((alarmmask) | (uint8_t)((uint8_t)((uint8_t)tmpreg4 & RTC_ALRMAR4_MSK4) >> 3));
; genAnd
	ld	a, (0x03, sp)
	and	a, #0x80
; genRightShiftLiteral
	srl	a
	srl	a
	srl	a
; genOr
	or	a, (0x08, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1224: RTC_AlarmStruct->RTC_AlarmMask = alarmmask;
; genPlus
	ldw	x, (0x09, sp)
	addw	x, #0x0004
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1226: if (RTC_Format == RTC_Format_BIN)
; genIfx
	tnz	(0x0b, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00103$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00112$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1228: RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours = Bcd2ToByte(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours);
; genPointerGet
	ld	a, (y)
; genSend
	pushw	y
; genCall
	call	_Bcd2ToByte
	popw	y
; genPointerSet
	ld	(y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1229: RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes = Bcd2ToByte(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes);
; genPointerGet
	ldw	x, (0x06, sp)
	ld	a, (x)
; genSend
; genCall
	call	_Bcd2ToByte
; genPointerSet
	ldw	x, (0x06, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1230: RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds = Bcd2ToByte(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds);
; genPointerGet
	ldw	x, (0x04, sp)
	ld	a, (x)
; genSend
; genCall
	call	_Bcd2ToByte
; genPointerSet
	ldw	x, (0x04, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1231: RTC_AlarmStruct->RTC_AlarmDateWeekDay = Bcd2ToByte(RTC_AlarmStruct->RTC_AlarmDateWeekDay);
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genSend
; genCall
	call	_Bcd2ToByte
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1233: }
; genEndFunction
	addw	sp, #11
	ret
;	Total RTC_GetAlarm function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1242: ErrorStatus RTC_AlarmCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function RTC_AlarmCmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_RTC_AlarmCmd:
	sub	sp, #3
; genReceive
	ld	(0x03, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1244: __IO uint16_t alrawfcount = 0;
; genAssign
	clrw	x
	ldw	(0x01, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1252: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1253: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1258: RTC->CR2 |= (uint8_t)(RTC_CR2_ALRAE);
; genPointerGet
	ld	a, 0x5149
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1256: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00109$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00148$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1258: RTC->CR2 |= (uint8_t)(RTC_CR2_ALRAE);
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5149, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1259: status = SUCCESS;
; genAssign
	ld	a, #0x01
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00109$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1263: RTC->CR2 &= (uint8_t)~(RTC_CR2_ALRAE) ;
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5149, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1266: temp1 = (uint8_t)(RTC->ISR1 & RTC_ISR1_ALRAWF);
; genPointerGet
	ld	a, 0x514c
; genAnd
	and	a, #0x01
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1267: while ((alrawfcount != ALRAWF_TIMEOUT) && (temp1 == RESET))
; genLabel
00102$:
; genCmpEQorNE
	ldw	x, (0x01, sp)
	incw	x
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00104$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00150$.
; skipping generated iCode
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00104$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00152$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1269: alrawfcount++;
; genAssign
	ldw	x, (0x01, sp)
; genPlus
	incw	x
; genAssign
	ldw	(0x01, sp), x
; genGoto
	jra	00102$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1272: if ((RTC->ISR1 &  RTC_ISR1_ALRAWF) == RESET)
; genPointerGet
; genAnd
; peephole j541x replaced 'ld-srl-jrnc' by 'btjf' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjt	0x514c, #0, 00106$
; peephole j34 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00153$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1274: status = ERROR;
; genAssign
	clr	a
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1278: status = SUCCESS;
; genAssign
; genLabel
	.byte 0xc5
; peephole jrf6 used bcp opcode to jump over 2-byte instruction.
00106$:
	ld	a, #0x01
00110$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1283: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1286: return (ErrorStatus)status;
; genReturn
; genLabel
; peephole j30 removed unused label 00111$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1287: }
; genEndFunction
	addw	sp, #3
	ret
;	Total RTC_AlarmCmd function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1298: ErrorStatus RTC_AlarmSubSecondConfig(uint16_t RTC_AlarmSubSecondValue,
; genLabel
;	-----------------------------------------
;	 function RTC_AlarmSubSecondConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_RTC_AlarmSubSecondConfig:
	pushw	x
; genReceive
; genReceive
	ld	(0x02, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1309: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1310: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1313: if ((RTC->ISR1 & RTC_ISR1_INITF) == RESET)
; genPointerGet
; genAnd
; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjt	0x514c, #6, 00102$
; peephole j34 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00113$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1316: alarmstatus = (uint8_t)(RTC->CR2 | RTC_CR2_ALRAE);
; genPointerGet
	ld	a, 0x5149
; genOr
	or	a, #0x01
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1319: RTC->CR2 &= (uint8_t)~(RTC_CR2_ALRAE);
; genPointerGet
; genAnd
; genPointerSet
	bres	0x5149, #0
; peephole 204x replaced 'and' by 'bres' ('0x5149').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1322: RTC->ALRMASSRH = (uint8_t)(RTC_AlarmSubSecondValue >> 8);
; genGetByte
	ld	a, xh
; genPointerSet
	ld	0x5164, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1323: RTC->ALRMASSRL = (uint8_t)(RTC_AlarmSubSecondValue);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x5165, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1324: RTC->ALRMASSMSKR = (uint8_t)RTC_AlarmSubSecondMask;
; genPointerSet
	ldw	x, #0x5166
	ld	a, (0x02, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1327: RTC->CR2 |= alarmstatus;
; genPointerGet
	ld	a, 0x5149
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5149, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1329: status = SUCCESS;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1333: status = ERROR;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00102$:
	clr	a
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1337: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1339: return (ErrorStatus)status;
; genReturn
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1340: }
; genEndFunction
	popw	x
	ret
;	Total RTC_AlarmSubSecondConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1369: void RTC_WakeUpClockConfig(RTC_WakeUpClock_TypeDef RTC_WakeUpClock)
; genLabel
;	-----------------------------------------
;	 function RTC_WakeUpClockConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_RTC_WakeUpClockConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1376: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1377: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1380: RTC->CR2 &= (uint8_t)~RTC_CR2_WUTE;
; genPointerGet
; genAnd
; genPointerSet
	bres	0x5149, #2
; peephole 204x replaced 'and' by 'bres' ('0x5149').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1383: RTC->CR1 &= (uint8_t)~RTC_CR1_WUCKSEL;
; genPointerGet
	ld	a, 0x5148
; genAnd
	and	a, #0xf8
; genPointerSet
	ld	0x5148, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1386: RTC->CR1 |= (uint8_t)RTC_WakeUpClock;
; genPointerGet
	ld	a, 0x5148
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5148, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1389: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1390: }
; genEndFunction
	pop	a
	ret
;	Total RTC_WakeUpClockConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1400: void RTC_SetWakeUpCounter(uint16_t RTC_WakeupCounter)
; genLabel
;	-----------------------------------------
;	 function RTC_SetWakeUpCounter
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_RTC_SetWakeUpCounter:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1403: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1404: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1408: RTC->WUTRH = (uint8_t)(RTC_WakeupCounter >> 8);
; genGetByte
	ld	a, xh
; genPointerSet
	ld	0x5154, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1409: RTC->WUTRL = (uint8_t)(RTC_WakeupCounter);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x5155, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1412: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1413: }
; genEndFunction
	ret
;	Total RTC_SetWakeUpCounter function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1420: uint16_t RTC_GetWakeUpCounter(void)
; genLabel
;	-----------------------------------------
;	 function RTC_GetWakeUpCounter
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_RTC_GetWakeUpCounter:
	pushw	x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1425: tmpreg = ((uint16_t)RTC->WUTRH) << 8;
; genPointerGet
	ld	a, 0x5154
; genCast
; genAssign
; peephole 3 removed dead clrw of x.
; genLeftShiftLiteral
	ld	xh, a
	clr	(0x02, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1426: tmpreg |= RTC->WUTRL;
; genPointerGet
	ld	a, 0x5155
; genCast
; genAssign
; peephole 3 removed dead clrw of y.
; genOr
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1429: return (uint16_t)tmpreg;
; genReturn
	ld	xl, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1430: }
; genEndFunction
	addw	sp, #2
	ret
;	Total RTC_GetWakeUpCounter function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1440: ErrorStatus RTC_WakeUpCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function RTC_WakeUpCmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_RTC_WakeUpCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1449: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1450: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1455: RTC->CR2 |= (uint8_t)RTC_CR2_WUTE;
; genPointerGet
	ld	a, 0x5149
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1452: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00109$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00149$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1455: RTC->CR2 |= (uint8_t)RTC_CR2_WUTE;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x5149, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1457: status = SUCCESS;
; genAssign
	ld	a, #0x01
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00109$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1462: RTC->CR2 &= (uint8_t)~RTC_CR2_WUTE;
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x5149, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1465: while (((RTC->ISR1 & RTC_ISR1_WUTWF) == RESET) && ( wutwfcount != WUTWF_TIMEOUT))
; genAssign
	clrw	x
; genLabel
00102$:
; genPointerGet
; genAnd
; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjt	0x514c, #2, 00104$
; peephole j34 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00150$.
; skipping generated iCode
; genCmpEQorNE
	cpw	x, #0xffff
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00104$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00152$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1467: wutwfcount++;
; genPlus
	incw	x
; genGoto
	jra	00102$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1471: if ((RTC->ISR1 & RTC_ISR1_WUTWF) == RESET)
; genPointerGet
; genAnd
; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjt	0x514c, #2, 00106$
; peephole j34 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00154$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1473: status = ERROR;
; genAssign
	clr	a
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1477: status = SUCCESS;
; genAssign
; genLabel
	.byte 0xc5
; peephole jrf6 used bcp opcode to jump over 2-byte instruction.
00106$:
	ld	a, #0x01
00110$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1482: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1485: return (ErrorStatus)status;
; genReturn
; genLabel
; peephole j30 removed unused label 00111$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1486: }
; genEndFunction
	addw	sp, #1
	ret
;	Total RTC_WakeUpCmd function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1522: void RTC_DayLightSavingConfig(RTC_DayLightSaving_TypeDef RTC_DayLightSaving,
; genLabel
;	-----------------------------------------
;	 function RTC_DayLightSavingConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_RTC_DayLightSavingConfig:
	push	a
; genReceive
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1530: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1531: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1534: RTC->CR3 &= (uint8_t)~(RTC_CR3_BCK);
; genPointerGet
	ld	a, 0x514a
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x514a, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1537: RTC->CR3 |= (uint8_t)((uint8_t)RTC_DayLightSaving | (uint8_t)RTC_StoreOperation);
; genPointerGet
	ld	a, 0x514a
	ld	(0x01, sp), a
; genOr
	ld	a, xl
	or	a, (0x04, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x514a, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1540: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1541: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total RTC_DayLightSavingConfig function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1549: RTC_StoreOperation_TypeDef  RTC_GetStoreOperation(void)
; genLabel
;	-----------------------------------------
;	 function RTC_GetStoreOperation
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_RTC_GetStoreOperation:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1552: return (RTC_StoreOperation_TypeDef)(RTC->CR3 & RTC_CR3_BCK);
; genPointerGet
	ld	a, 0x514a
; genAnd
	and	a, #0x04
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1553: }
; genEndFunction
	ret
;	Total RTC_GetStoreOperation function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1587: void RTC_OutputConfig(RTC_Output_TypeDef RTC_Output,
; genLabel
;	-----------------------------------------
;	 function RTC_OutputConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_RTC_OutputConfig:
	push	a
; genReceive
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1595: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1596: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1599: RTC->CR3 &= (uint8_t)~(RTC_CR3_OSEL | RTC_CR3_POL);
; genPointerGet
	ld	a, 0x514a
; genAnd
	and	a, #0x8f
; genPointerSet
	ld	0x514a, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1602: RTC->CR3 |= (uint8_t)((uint8_t)RTC_Output | (uint8_t)RTC_OutputPolarity);
; genPointerGet
	ld	a, 0x514a
	ld	(0x01, sp), a
; genOr
	ld	a, xl
	or	a, (0x04, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x514a, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1605: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1606: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total RTC_OutputConfig function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1639: ErrorStatus RTC_SynchroShiftConfig(RTC_ShiftAdd1S_TypeDef RTC_ShiftAdd1S,
; genLabel
;	-----------------------------------------
;	 function RTC_SynchroShiftConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_RTC_SynchroShiftConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
; genReceive
	exgw	x, y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1651: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1652: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1655: if ((RTC->ISR1 & RTC_ISR1_SHPF) != RESET)
; genPointerGet
; genAnd
; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjf	0x514c, #3, 00106$
; peephole j33 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00147$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1658: while (((RTC->ISR1 & RTC_ISR1_SHPF) != RESET) && (shpfcount != SHPF_TIMEOUT))
; genAssign
	clrw	x
; genLabel
00102$:
; genPointerGet
; genAnd
; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjf	0x514c, #3, 00106$
; peephole j33 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00148$.
; skipping generated iCode
; genCmpEQorNE
	cpw	x, #0xffff
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00106$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00150$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1660: shpfcount++;
; genPlus
	incw	x
; genGoto
	jra	00102$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00106$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1665: if ((RTC->ISR1 & RTC_ISR1_SHPF) == RESET)
; genPointerGet
; genAnd
; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjt	0x514c, #3, 00108$
; peephole j34 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00152$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1668: shiftrhreg = (uint8_t)((uint8_t)(RTC_ShiftSubFS >> 8) | (uint8_t)(RTC_ShiftAdd1S));
; genGetByte
	ld	a, yh
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1669: RTC->SHIFTRH = (uint8_t)(shiftrhreg);
; genPointerSet
	ld	0x515a, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1670: RTC->SHIFTRL = (uint8_t)(RTC_ShiftSubFS);
; genCast
; genAssign
	ld	a, yl
; genPointerSet
	ld	0x515b, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1672: status = SUCCESS;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1676: status = ERROR;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00108$:
	clr	a
00109$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1680: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1682: return (ErrorStatus)(status);
; genReturn
; genLabel
; peephole j30 removed unused label 00110$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1683: }
; genEndFunction
	addw	sp, #1
	ret
;	Total RTC_SynchroShiftConfig function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1718: ErrorStatus RTC_SmoothCalibConfig(RTC_SmoothCalibPeriod_TypeDef RTC_SmoothCalibPeriod,
; genLabel
;	-----------------------------------------
;	 function RTC_SmoothCalibConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_RTC_SmoothCalibConfig:
	push	a
; genReceive
	ld	yl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1731: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1732: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1735: if ((RTC->ISR1 & RTC_ISR1_RECALPF) != RESET)
; genPointerGet
; genAnd
; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjf	0x514c, #1, 00106$
; peephole j33 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00147$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1738: while (((RTC->ISR1 & RTC_ISR1_RECALPF) != RESET) && (recalpfcount != RECALPF_TIMEOUT))
; genAssign
	clrw	x
; genLabel
00102$:
; genPointerGet
; genAnd
; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjf	0x514c, #1, 00106$
; peephole j33 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00148$.
; skipping generated iCode
; genCmpEQorNE
	cpw	x, #0xffff
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00106$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00150$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1740: recalpfcount++;
; genPlus
	incw	x
; genGoto
	jra	00102$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00106$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1746: if ((RTC->ISR1 & RTC_ISR1_RECALPF) == RESET)
; genPointerGet
; genAnd
; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
; peephole j5 changed absolute to relative unconditional jump.
	btjt	0x514c, #1, 00108$
; peephole j34 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00152$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1749: RTC->CALRH = (uint8_t)((uint8_t)((uint8_t)RTC_SmoothCalibPeriod | \
; genOr
	ld	a, yl
	or	a, (0x04, sp)
	ld	(0x01, sp), a
; genGetByte
	ld	a, (0x05, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x516a, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1752: RTC->CALRL = (uint8_t)(RTC_SmouthCalibMinusPulsesValue);
; genCast
; genAssign
	ld	a, (0x06, sp)
; genPointerSet
	ld	0x516b, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1754: status = SUCCESS;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1758: status = ERROR;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00108$:
	clr	a
00109$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1762: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1764: return (ErrorStatus)(status);
; genReturn
; genLabel
; peephole j30 removed unused label 00110$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1765: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #6
	jp	(x)
;	Total RTC_SmoothCalibConfig function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1790: void RTC_CalibOutputConfig(RTC_CalibOutput_TypeDef RTC_CalibOutput)
; genLabel
;	-----------------------------------------
;	 function RTC_CalibOutputConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_RTC_CalibOutputConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1796: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1797: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1802: RTC->CR3 |= (uint8_t)RTC_CR3_COSEL;
; genPointerGet
	ld	a, 0x514a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1799: if (RTC_CalibOutput != RTC_CalibOutput_512Hz)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1802: RTC->CR3 |= (uint8_t)RTC_CR3_COSEL;
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x514a, a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1807: RTC->CR3 &= (uint8_t)~RTC_CR3_COSEL;
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x514a, a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1811: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1812: }
; genEndFunction
	pop	a
	ret
;	Total RTC_CalibOutputConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1820: void RTC_CalibOutputCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function RTC_CalibOutputCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_RTC_CalibOutputCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1826: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1827: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1832: RTC->CR3 |= (uint8_t)RTC_CR3_COE;
; genPointerGet
	ld	a, 0x514a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1829: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1832: RTC->CR3 |= (uint8_t)RTC_CR3_COE;
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x514a, a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1837: RTC->CR3 &= (uint8_t)~RTC_CR3_COE;
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x514a, a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1841: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1842: }
; genEndFunction
	pop	a
	ret
;	Total RTC_CalibOutputCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1871: void RTC_TamperLevelConfig(RTC_Tamper_TypeDef RTC_Tamper,
; genLabel
;	-----------------------------------------
;	 function RTC_TamperLevelConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_RTC_TamperLevelConfig:
	push	a
; genReceive
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1879: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1880: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1885: RTC->TCR1 |= (uint8_t)(RTC_Tamper << 1);
; genPointerGet
	ld	a, 0x516c
	ld	(0x01, sp), a
; genLeftShiftLiteral
	ld	a, xl
	sll	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1882: if (RTC_TamperLevel != RTC_TamperLevel_Low)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1885: RTC->TCR1 |= (uint8_t)(RTC_Tamper << 1);
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x516c, a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1890: RTC->TCR1 &= (uint8_t)~(uint8_t)(RTC_Tamper << 1);
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x516c, a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1894: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1895: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total RTC_TamperLevelConfig function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1903: void RTC_TamperFilterConfig(RTC_TamperFilter_TypeDef RTC_TamperFilter)
; genLabel
;	-----------------------------------------
;	 function RTC_TamperFilterConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_RTC_TamperFilterConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1910: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1911: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1914: RTC->TCR2 &= (uint8_t)~(RTC_TCR2_TAMPFLT);
; genPointerGet
	ld	a, 0x516d
; genAnd
	and	a, #0xe7
; genPointerSet
	ld	0x516d, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1917: RTC->TCR2 |= (uint8_t)RTC_TamperFilter;
; genPointerGet
	ld	a, 0x516d
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x516d, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1920: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1922: }
; genEndFunction
	pop	a
	ret
;	Total RTC_TamperFilterConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1931: void RTC_TamperSamplingFreqConfig(RTC_TamperSamplingFreq_TypeDef RTC_TamperSamplingFreq)
; genLabel
;	-----------------------------------------
;	 function RTC_TamperSamplingFreqConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_RTC_TamperSamplingFreqConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1937: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1938: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1941: RTC->TCR2 &= (uint8_t)~(RTC_TCR2_TAMPFREQ);
; genPointerGet
	ld	a, 0x516d
; genAnd
	and	a, #0xf8
; genPointerSet
	ld	0x516d, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1944: RTC->TCR2 |= (uint8_t)RTC_TamperSamplingFreq;
; genPointerGet
	ld	a, 0x516d
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x516d, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1947: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1948: }
; genEndFunction
	pop	a
	ret
;	Total RTC_TamperSamplingFreqConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1958: void RTC_TamperPinsPrechargeDuration(RTC_TamperPrechargeDuration_TypeDef RTC_TamperPrechargeDuration)
; genLabel
;	-----------------------------------------
;	 function RTC_TamperPinsPrechargeDuration
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_RTC_TamperPinsPrechargeDuration:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1964: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1965: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1968: RTC->TCR2 &= (uint8_t)~(RTC_TCR2_TAMPPUDIS | RTC_TCR2_TAMPPRCH);
; genPointerGet
	ld	a, 0x516d
; genAnd
	and	a, #0x1f
; genPointerSet
	ld	0x516d, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1971: RTC->TCR2 |= (uint8_t)RTC_TamperPrechargeDuration;
; genPointerGet
	ld	a, 0x516d
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x516d, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1974: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1975: }
; genEndFunction
	pop	a
	ret
;	Total RTC_TamperPinsPrechargeDuration function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1987: void RTC_TamperCmd(RTC_Tamper_TypeDef RTC_Tamper,
; genLabel
;	-----------------------------------------
;	 function RTC_TamperCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_RTC_TamperCmd:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1996: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1997: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2003: RTC->TCR1 |= (uint8_t)RTC_Tamper;
; genPointerGet
	ldw	x, #0x516c
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2000: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2003: RTC->TCR1 |= (uint8_t)RTC_Tamper;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x516c, a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2008: RTC->TCR1 &= (uint8_t)~RTC_Tamper;
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x516c, a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2013: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2014: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total RTC_TamperCmd function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2058: void RTC_ITConfig(RTC_IT_TypeDef RTC_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function RTC_ITConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_RTC_ITConfig:
	sub	sp, #3
; genReceive
; genReceive
	ld	(0x03, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2065: RTC->WPR = 0xCA;
; genPointerSet
	mov	0x5159+0, #0xca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2066: RTC->WPR = 0x53;
; genPointerSet
	mov	0x5159+0, #0x53
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2071: RTC->CR2 |= (uint8_t)((uint16_t)RTC_IT & (uint16_t)0x00F0);
; genPointerGet
	ld	a, 0x5149
	ld	(0x02, sp), a
; genCast
; genAssign
; genAnd
	ld	a, xl
	and	a, #0xf0
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2072: RTC->TCR1 |= (uint8_t)((uint16_t)RTC_IT & RTC_TCR1_TAMPIE);
; genAnd
	push	a
	ld	a, xl
	and	a, #0x01
	ld	(0x02, sp), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2068: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2071: RTC->CR2 |= (uint8_t)((uint16_t)RTC_IT & (uint16_t)0x00F0);
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x5149, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2072: RTC->TCR1 |= (uint8_t)((uint16_t)RTC_IT & RTC_TCR1_TAMPIE);
; genPointerGet
	ld	a, 0x516c
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x516c, a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2077: RTC->CR2  &= (uint8_t)~(uint8_t)((uint16_t)RTC_IT & (uint16_t)0x00F0);
; genCpl
	cpl	a
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x5149, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2078: RTC->TCR1 &= (uint8_t)~(uint8_t)((uint16_t)RTC_IT & (uint16_t)RTC_TCR1_TAMPIE);
; genPointerGet
	ld	a, 0x516c
	ld	(0x02, sp), a
; genCpl
	ld	a, (0x01, sp)
	cpl	a
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x516c, a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2082: RTC->WPR = 0xFF; 
; genPointerSet
	mov	0x5159+0, #0xff
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2083: }
; genEndFunction
	addw	sp, #3
	ret
;	Total RTC_ITConfig function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2090: FlagStatus RTC_GetFlagStatus(RTC_Flag_TypeDef RTC_FLAG)
; genLabel
;	-----------------------------------------
;	 function RTC_GetFlagStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 6 bytes.
_RTC_GetFlagStatus:
	sub	sp, #6
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2100: tmpreg2 = (uint16_t)((uint16_t)RTC->ISR1 << 8);
; genPointerGet
	ld	a, 0x514c
; genCast
; genAssign
	ld	yl, a
; peephole 1 removed dead clear of a.
; genLeftShiftLiteral
	clr	(0x02, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2101: tmpreg1 = (uint16_t)((uint16_t)((uint16_t)(RTC->ISR2)) | tmpreg2);
; genPointerGet
	ld	a, 0x514d
; genCast
; genAssign
	clr	(0x03, sp)
; genOr
	ld	(0x06, sp), a
	exg	a, yl
	ld	(0x05, sp), a
	exg	a, yl
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2104: if ((tmpreg1 & (uint16_t)RTC_FLAG) != RESET)
; genCast
; genAssign
	ld	a, xl
; genAnd
	and	a, (0x06, sp)
	rlwa	x
; peephole r1 used rlwa.
	and	a, (0x05, sp)
	ld	xh, a
; genIfx
	tnzw	x
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2106: flagstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2110: flagstatus = RESET;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00102$:
	clr	a
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2112: return (FlagStatus)flagstatus;
; genReturn
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2113: }
; genEndFunction
	addw	sp, #6
	ret
;	Total RTC_GetFlagStatus function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2122: void RTC_ClearFlag(RTC_Flag_TypeDef RTC_FLAG)
; genLabel
;	-----------------------------------------
;	 function RTC_ClearFlag
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_RTC_ClearFlag:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2128: RTC->ISR2 = (uint8_t)~((uint8_t)RTC_FLAG) ;
; genCast
; genAssign
	ld	a, xl
; genCpl
	cpl	a
; genPointerSet
	ld	0x514d, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2129: RTC->ISR1 = (uint8_t)(((uint8_t)~(uint8_t)((uint16_t)RTC_FLAG >> (uint8_t)8)) & ((uint8_t)~(uint8_t)(RTC_ISR1_INIT)));
; genCast
; genAssign
	ld	a, xh
; genGetByte
; genCpl
	cpl	a
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x514c, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2130: }
; genEndFunction
	ret
;	Total RTC_ClearFlag function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2138: ITStatus RTC_GetITStatus(RTC_IT_TypeDef RTC_IT)
; genLabel
;	-----------------------------------------
;	 function RTC_GetITStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_RTC_GetITStatus:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2147: enablestatus = (uint8_t)(RTC->CR2 & (uint16_t)RTC_IT);
; genPointerGet
	ld	a, 0x5149
	ld	(0x01, sp), a
; genCast
; genAssign
	ld	a, xl
; genAnd
	and	a, (0x01, sp)
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2150: tmpreg = (uint8_t)(RTC->ISR2 & (uint8_t)((uint16_t)RTC_IT >> 4));
; genPointerGet
	ld	a, 0x514d
; genCast
; genAssign
; genRightShiftLiteral
	srlw	x
	srlw	x
	srlw	x
	srlw	x
; genCast
; genAssign
; genAnd
	pushw	x
	and	a, (2, sp)
	popw	x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2153: if ((enablestatus != (uint8_t)RESET) && (tmpreg != (uint8_t)RESET))
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2155: itstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2159: itstatus = RESET;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00102$:
	clr	a
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2162: return (ITStatus)itstatus;
; genReturn
; genLabel
; peephole j30 removed unused label 00105$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2163: }
; genEndFunction
	addw	sp, #1
	ret
;	Total RTC_GetITStatus function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2172: void RTC_ClearITPendingBit(RTC_IT_TypeDef RTC_IT)
; genLabel
;	-----------------------------------------
;	 function RTC_ClearITPendingBit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_RTC_ClearITPendingBit:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2178: RTC->ISR2 = (uint8_t)~(uint8_t)((uint16_t)RTC_IT >> 4);
; genCast
; genAssign
; genRightShiftLiteral
	ld	a, #0x10
	div	x, a
; genCast
; genAssign
	ld	a, xl
; genCpl
	cpl	a
; genPointerSet
	ld	0x514d, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2179: }
; genEndFunction
	ret
;	Total RTC_ClearITPendingBit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2202: static uint8_t ByteToBcd2(uint8_t Value)
; genLabel
;	-----------------------------------------
;	 function ByteToBcd2
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ByteToBcd2:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2206: while (Value >= 10)
; genAssign
	clrw	x
; genLabel
00101$:
; genCmp
; genCmpTnz
	cp	a, #0x0a
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00103$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00121$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2208: bcdhigh++;
; genPlus
	incw	x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2209: Value -= 10;
; genCast
; genAssign
; genMinus
	sub	a, #0x0a
; genGoto
	jra	00101$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2212: return  (uint8_t)((uint8_t)(bcdhigh << 4) | Value);
; genLeftShiftLiteral
	sllw	x
	sllw	x
	sllw	x
	sllw	x
; genOr
	pushw	x
	or	a, (2, sp)
	popw	x
; genReturn
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2213: }
; genEndFunction
	ret
;	Total ByteToBcd2 function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2220: static uint8_t Bcd2ToByte(uint8_t Value)
; genLabel
;	-----------------------------------------
;	 function Bcd2ToByte
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_Bcd2ToByte:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2224: tmp = (uint8_t)((uint8_t)((uint8_t)(Value & (uint8_t)0xF0) >> 4) * (uint8_t)10);
; genAnd
	ld	yl, a
; peephole 4 removed redundant load from yl into a.
	and	a, #0xf0
; genRightShiftLiteral
	swap	a
	and	a, #0x0f
	ld	xl, a
; genMult
	ld	a, #0x0a
	mul	x, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2226: return (uint8_t)(tmp + (Value & (uint8_t)0x0F));
; genAnd
	ld	a, yl
	and	a, #0x0f
; genPlus
	pushw	x
	add	a, (2, sp)
	popw	x
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2227: }
; genEndFunction
	ret
;	Total Bcd2ToByte function size at codegen: 1 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
