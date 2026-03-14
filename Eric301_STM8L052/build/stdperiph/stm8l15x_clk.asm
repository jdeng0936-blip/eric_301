;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_clk
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SYSDivFactor
	.globl _CLK_DeInit
	.globl _CLK_HSICmd
	.globl _CLK_AdjustHSICalibrationValue
	.globl _CLK_LSICmd
	.globl _CLK_HSEConfig
	.globl _CLK_LSEConfig
	.globl _CLK_ClockSecuritySystemEnable
	.globl _CLK_ClockSecuritySytemDeglitchCmd
	.globl _CLK_CCOConfig
	.globl _CLK_SYSCLKSourceConfig
	.globl _CLK_GetSYSCLKSource
	.globl _CLK_GetClockFreq
	.globl _CLK_SYSCLKDivConfig
	.globl _CLK_SYSCLKSourceSwitchCmd
	.globl _CLK_RTCClockConfig
	.globl _CLK_BEEPClockConfig
	.globl _CLK_PeripheralClockConfig
	.globl _CLK_LSEClockSecuritySystemEnable
	.globl _CLK_RTCCLKSwitchOnLSEFailureEnable
	.globl _CLK_HaltConfig
	.globl _CLK_MainRegulatorCmd
	.globl _CLK_ITConfig
	.globl _CLK_GetFlagStatus
	.globl _CLK_ClearFlag
	.globl _CLK_GetITStatus
	.globl _CLK_ClearITPendingBit
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 120: void CLK_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function CLK_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_DeInit:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 122: CLK->ICKCR = CLK_ICKCR_RESET_VALUE;
; genPointerSet
	mov	0x50c2+0, #0x11
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 123: CLK->ECKCR = CLK_ECKCR_RESET_VALUE;
; genPointerSet
	mov	0x50c6+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 124: CLK->CRTCR = CLK_CRTCR_RESET_VALUE;
; genPointerSet
	mov	0x50c1+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 125: CLK->CBEEPR = CLK_CBEEPR_RESET_VALUE;
; genPointerSet
	mov	0x50cb+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 126: CLK->SWR  = CLK_SWR_RESET_VALUE;
; genPointerSet
	mov	0x50c8+0, #0x01
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 127: CLK->SWCR = CLK_SWCR_RESET_VALUE;
; genPointerSet
	mov	0x50c9+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 128: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
; genPointerSet
	mov	0x50c0+0, #0x03
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 129: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
; genPointerSet
	mov	0x50c3+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 130: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
; genPointerSet
	mov	0x50c4+0, #0x80
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 131: CLK->PCKENR3 = CLK_PCKENR3_RESET_VALUE;
; genPointerSet
	mov	0x50d0+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 132: CLK->CSSR  = CLK_CSSR_RESET_VALUE;
; genPointerSet
	mov	0x50ca+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 133: CLK->CCOR = CLK_CCOR_RESET_VALUE;
; genPointerSet
	mov	0x50c5+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 134: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
; genPointerSet
	mov	0x50cd+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 135: CLK->HSICALR = CLK_HSICALR_RESET_VALUE;
; genPointerSet
	mov	0x50cc+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 136: CLK->HSIUNLCKR = CLK_HSIUNLCKR_RESET_VALUE;
; genPointerSet
	mov	0x50ce+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 137: CLK->REGCSR = CLK_REGCSR_RESET_VALUE;
; genPointerSet
	mov	0x50cf+0, #0xb9
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 138: }
; genEndFunction
	ret
;	Total CLK_DeInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 160: void CLK_HSICmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_HSICmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_HSICmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 168: CLK->ICKCR |= CLK_ICKCR_HSION;
; genPointerGet
	ld	a, 0x50c2
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 165: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 168: CLK->ICKCR |= CLK_ICKCR_HSION;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x50c2, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 173: CLK->ICKCR &= (uint8_t)(~CLK_ICKCR_HSION);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x50c2, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 175: }
; genEndFunction
	pop	a
	ret
;	Total CLK_HSICmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 188: void CLK_AdjustHSICalibrationValue(uint8_t CLK_HSICalibrationValue)
; genLabel
;	-----------------------------------------
;	 function CLK_AdjustHSICalibrationValue
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_AdjustHSICalibrationValue:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 191: CLK->HSIUNLCKR = 0xAC;
; genPointerSet
	mov	0x50ce+0, #0xac
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 192: CLK->HSIUNLCKR = 0x35;
; genPointerSet
	mov	0x50ce+0, #0x35
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 195: CLK->HSITRIMR = (uint8_t)CLK_HSICalibrationValue;
; genPointerSet
	ld	0x50cd, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 196: }
; genEndFunction
	ret
;	Total CLK_AdjustHSICalibrationValue function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 212: void CLK_LSICmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_LSICmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_LSICmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 221: CLK->ICKCR |= CLK_ICKCR_LSION;
; genPointerGet
	ld	a, 0x50c2
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 218: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 221: CLK->ICKCR |= CLK_ICKCR_LSION;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x50c2, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 226: CLK->ICKCR &= (uint8_t)(~CLK_ICKCR_LSION);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x50c2, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 228: }
; genEndFunction
	pop	a
	ret
;	Total CLK_LSICmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 249: void CLK_HSEConfig(CLK_HSE_TypeDef CLK_HSE)
; genLabel
;	-----------------------------------------
;	 function CLK_HSEConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_HSEConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 256: CLK->ECKCR &= (uint8_t)~CLK_ECKCR_HSEON;
; genPointerGet
; genAnd
; genPointerSet
	bres	0x50c6, #0
; peephole 204x replaced 'and' by 'bres' ('0x50c6').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 259: CLK->ECKCR &= (uint8_t)~CLK_ECKCR_HSEBYP;
; genPointerGet
; genAnd
; genPointerSet
	bres	0x50c6, #4
; peephole 204x replaced 'and' by 'bres' ('0x50c6').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 262: CLK->ECKCR |= (uint8_t)CLK_HSE;
; genPointerGet
	ld	a, 0x50c6
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50c6, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 263: }
; genEndFunction
	pop	a
	ret
;	Total CLK_HSEConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 280: void CLK_LSEConfig(CLK_LSE_TypeDef CLK_LSE)
; genLabel
;	-----------------------------------------
;	 function CLK_LSEConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_LSEConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 287: CLK->ECKCR &= (uint8_t)~CLK_ECKCR_LSEON;
; genPointerGet
; genAnd
; genPointerSet
	bres	0x50c6, #2
; peephole 204x replaced 'and' by 'bres' ('0x50c6').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 290: CLK->ECKCR &= (uint8_t)~CLK_ECKCR_LSEBYP;
; genPointerGet
; genAnd
; genPointerSet
	bres	0x50c6, #5
; peephole 204x replaced 'and' by 'bres' ('0x50c6').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 293: CLK->ECKCR |= (uint8_t)CLK_LSE;
; genPointerGet
	ld	a, 0x50c6
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50c6, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 295: }
; genEndFunction
	pop	a
	ret
;	Total CLK_LSEConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 306: void CLK_ClockSecuritySystemEnable(void)
; genLabel
;	-----------------------------------------
;	 function CLK_ClockSecuritySystemEnable
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_ClockSecuritySystemEnable:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 309: CLK->CSSR |= CLK_CSSR_CSSEN;
; genPointerGet
; genOr
; genPointerSet
	bset	0x50ca, #0
; peephole 202x replaced 'or' by 'bset' ('0x50ca').
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 310: }
; genEndFunction
	ret
;	Total CLK_ClockSecuritySystemEnable function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 317: void CLK_ClockSecuritySytemDeglitchCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_ClockSecuritySytemDeglitchCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_ClockSecuritySytemDeglitchCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 325: CLK->CSSR |= CLK_CSSR_CSSDGON;
; genPointerGet
	ld	a, 0x50ca
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 322: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 325: CLK->CSSR |= CLK_CSSR_CSSDGON;
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x50ca, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 330: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDGON);
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x50ca, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 332: }
; genEndFunction
	pop	a
	ret
;	Total CLK_ClockSecuritySytemDeglitchCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 356: void CLK_CCOConfig(CLK_CCOSource_TypeDef CLK_CCOSource, CLK_CCODiv_TypeDef CLK_CCODiv)
; genLabel
;	-----------------------------------------
;	 function CLK_CCOConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_CCOConfig:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 363: CLK->CCOR = (uint8_t)((uint8_t)CLK_CCOSource | (uint8_t)CLK_CCODiv);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x50c5, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 364: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
;	Total CLK_CCOConfig function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 416: void CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_TypeDef CLK_SYSCLKSource)
; genLabel
;	-----------------------------------------
;	 function CLK_SYSCLKSourceConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_SYSCLKSourceConfig:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 422: CLK->SWR = (uint8_t)CLK_SYSCLKSource;
; genPointerSet
	ld	0x50c8, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 423: }
; genEndFunction
	ret
;	Total CLK_SYSCLKSourceConfig function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 435: CLK_SYSCLKSource_TypeDef CLK_GetSYSCLKSource(void)
; genLabel
;	-----------------------------------------
;	 function CLK_GetSYSCLKSource
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_GetSYSCLKSource:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 437: return ((CLK_SYSCLKSource_TypeDef)(CLK->SCSR));
; genPointerGet
	ld	a, 0x50c7
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 438: }
; genEndFunction
	ret
;	Total CLK_GetSYSCLKSource function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 478: uint32_t CLK_GetClockFreq(void)
; genLabel
;	-----------------------------------------
;	 function CLK_GetClockFreq
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 8 bytes.
_CLK_GetClockFreq:
	sub	sp, #8
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 481: uint32_t sourcefrequency = 0;
; genAssign
	clrw	x
	ldw	(0x03, sp), x
	ldw	(0x01, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 486: clocksource = (CLK_SYSCLKSource_TypeDef)CLK->SCSR;
; genPointerGet
	ld	a, 0x50c7
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 488: if ( clocksource == CLK_SYSCLKSource_HSI)
; genCmpEQorNE
	cp	a, #0x01
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00134$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00108$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00135$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 490: sourcefrequency = HSI_VALUE;
; genAssign
	ldw	x, #0x2400
	ldw	(0x03, sp), x
	ldw	x, #0x00f4
	ldw	(0x01, sp), x
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 492: else if ( clocksource == CLK_SYSCLKSource_LSI)
; genCmpEQorNE
	cp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00137$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00105$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00138$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 494: sourcefrequency = LSI_VALUE;
; genAssign
	ldw	x, #0x9470
	ldw	(0x03, sp), x
	clrw	x
	ldw	(0x01, sp), x
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 496: else if ( clocksource == CLK_SYSCLKSource_HSE)
; genCmpEQorNE
	cp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00140$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00109$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00141$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 498: sourcefrequency = HSE_VALUE;
; genAssign
	ldw	x, #0x2400
	ldw	(0x03, sp), x
	ldw	x, #0x00f4
	ldw	(0x01, sp), x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 502: clockfrequency = LSE_VALUE;
; genLabel
00109$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 506: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_CKM);
; genPointerGet
	ld	a, 0x50c0
; genAnd
	and	a, #0x07
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 507: presc = SYSDivFactor[tmp];
; skipping iCode since result will be rematerialized
; genPlus
	clrw	x
	ld	xl, a
; genPointerGet
; peephole 10b moved addition of offset into storage instruction
	ld	a, (_SYSDivFactor+0, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 510: clockfrequency = sourcefrequency / presc;
; genCast
; genAssign
	clrw	x
	clr	(0x05, sp)
; genIPush
	push	a
	pushw	x
	clr	a
	push	a
; genIPush
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 512: return((uint32_t)clockfrequency);
; genCall
	call	__divulong
; genReturn
; genLabel
; peephole j30 removed unused label 00110$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 513: }
; genEndFunction
	addw	sp, #16
; peephole 33 combined additions to sp.
	ret
;	Total CLK_GetClockFreq function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 528: void CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_TypeDef CLK_SYSCLKDiv)
; genLabel
;	-----------------------------------------
;	 function CLK_SYSCLKDivConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_SYSCLKDivConfig:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 533: CLK->CKDIVR = (uint8_t)(CLK_SYSCLKDiv);
; genPointerSet
	ld	0x50c0, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 534: }
; genEndFunction
	ret
;	Total CLK_SYSCLKDivConfig function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 541: void CLK_SYSCLKSourceSwitchCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_SYSCLKSourceSwitchCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_SYSCLKSourceSwitchCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 549: CLK->SWCR |= CLK_SWCR_SWEN;
; genPointerGet
	ld	a, 0x50c9
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 546: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 549: CLK->SWCR |= CLK_SWCR_SWEN;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x50c9, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 554: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x50c9, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 556: }
; genEndFunction
	pop	a
	ret
;	Total CLK_SYSCLKSourceSwitchCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 616: void CLK_RTCClockConfig(CLK_RTCCLKSource_TypeDef CLK_RTCCLKSource, CLK_RTCCLKDiv_TypeDef CLK_RTCCLKDiv)
; genLabel
;	-----------------------------------------
;	 function CLK_RTCClockConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_RTCClockConfig:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 623: CLK->CRTCR = (uint8_t)((uint8_t)CLK_RTCCLKSource | (uint8_t)CLK_RTCCLKDiv);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x50c1, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 624: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
;	Total CLK_RTCClockConfig function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 635: void CLK_BEEPClockConfig(CLK_BEEPCLKSource_TypeDef CLK_BEEPCLKSource)
; genLabel
;	-----------------------------------------
;	 function CLK_BEEPClockConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_BEEPClockConfig:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 641: CLK->CBEEPR = (uint8_t)(CLK_BEEPCLKSource);
; genPointerSet
	ld	0x50cb, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 643: }
; genEndFunction
	ret
;	Total CLK_BEEPClockConfig function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 677: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_PeripheralClockConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_CLK_PeripheralClockConfig:
	pushw	x
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 686: reg = (uint8_t)((uint8_t)CLK_Peripheral & (uint8_t)0xF0);
; genAnd
	push	a
	and	a, #0xf0
	ld	xl, a
	pop	a
; genAssign
	ldw	y, x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 693: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genAnd
	and	a, #0x0f
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	tnz	a
	jreq	00154$
00153$:
	sll	(0x01, sp)
	dec	a
	jrne	00153$
00154$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 698: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
; genCpl
	ld	a, (0x01, sp)
	cpl	a
	ld	(0x02, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 688: if ( reg == 0x00)
; genIfx
	ld	a, xl
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00114$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00155$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 693: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genPointerGet
	ld	a, 0x50c3
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 690: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00156$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 693: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50c3, a
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 698: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x50c3, a
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00114$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 701: else if (reg == 0x10)
; genCmpEQorNE
	ld	a, yl
	cp	a, #0x10
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00158$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00111$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00159$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 706: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genPointerGet
	ld	a, 0x50c4
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 703: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00160$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 706: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50c4, a
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 711: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x50c4, a
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00111$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 719: CLK->PCKENR3 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genPointerGet
	ld	a, 0x50d0
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 716: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00161$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 719: CLK->PCKENR3 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50d0, a
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 724: CLK->PCKENR3 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x50d0, a
; genLabel
00116$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 727: }
; genEndFunction
	popw	x
	popw	x
	pop	a
	jp	(x)
;	Total CLK_PeripheralClockConfig function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 765: void CLK_LSEClockSecuritySystemEnable(void)
; genLabel
;	-----------------------------------------
;	 function CLK_LSEClockSecuritySystemEnable
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_LSEClockSecuritySystemEnable:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 768: CSSLSE->CSR |= CSSLSE_CSR_CSSEN;
; genPointerGet
; genOr
; genPointerSet
	bset	0x5190, #0
; peephole 202x replaced 'or' by 'bset' ('0x5190').
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 769: }
; genEndFunction
	ret
;	Total CLK_LSEClockSecuritySystemEnable function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 777: void CLK_RTCCLKSwitchOnLSEFailureEnable(void)
; genLabel
;	-----------------------------------------
;	 function CLK_RTCCLKSwitchOnLSEFailureEnable
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_RTCCLKSwitchOnLSEFailureEnable:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 780: CSSLSE->CSR |= CSSLSE_CSR_SWITCHEN;
; genPointerGet
; genOr
; genPointerSet
	bset	0x5190, #1
; peephole 202x replaced 'or' by 'bset' ('0x5190').
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 781: }
; genEndFunction
	ret
;	Total CLK_RTCCLKSwitchOnLSEFailureEnable function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 807: void CLK_HaltConfig(CLK_Halt_TypeDef CLK_Halt, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_HaltConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_HaltConfig:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 815: CLK->ICKCR |= (uint8_t)(CLK_Halt);
; genPointerGet
	ldw	x, #0x50c2
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 813: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 815: CLK->ICKCR |= (uint8_t)(CLK_Halt);
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50c2, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 819: CLK->ICKCR &= (uint8_t)(~CLK_Halt);
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x50c2, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 821: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total CLK_HaltConfig function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 831: void CLK_MainRegulatorCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_MainRegulatorCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_MainRegulatorCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 839: CLK->REGCSR &= (uint8_t)(~CLK_REGCSR_REGOFF);
; genPointerGet
	ld	a, 0x50cf
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 836: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 839: CLK->REGCSR &= (uint8_t)(~CLK_REGCSR_REGOFF);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x50cf, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 844: CLK->REGCSR |= CLK_REGCSR_REGOFF;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x50cf, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 846: }
; genEndFunction
	pop	a
	ret
;	Total CLK_MainRegulatorCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 875: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_ITConfig:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 884: if (CLK_IT == CLK_IT_SWIF)
; genCmpEQorNE
	cp	a, #0x1c
	jrne	00154$
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
; peephole j5 changed absolute to relative unconditional jump.
	.byte 0xc5
; peephole jrf7 used bcp opcode to jump over 2-byte instruction.
00154$:
	clr	(0x01, sp)
00155$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 889: else if (CLK_IT == CLK_IT_LSECSSF)
; genCmpEQorNE
	sub	a, #0x2c
	jrne	00157$
	inc	a
; peephole 51 used inc to get #1 into a.
; peephole j5 changed absolute to relative unconditional jump.
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00157$:
	clr	a
00158$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 882: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00114$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00159$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 884: if (CLK_IT == CLK_IT_SWIF)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00160$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 887: CLK->SWCR |= CLK_SWCR_SWIEN;
; genPointerGet
	ld	a, 0x50c9
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x50c9, a
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 889: else if (CLK_IT == CLK_IT_LSECSSF)
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00161$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 892: CSSLSE->CSR |= CSSLSE_CSR_CSSIE;
; genPointerGet
	ld	a, 0x5190
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x5190, a
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 897: CLK->CSSR |= CLK_CSSR_CSSDIE;
; genPointerGet
	ld	a, 0x50ca
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x50ca, a
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00114$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 902: if (CLK_IT == CLK_IT_SWIF)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00111$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00162$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 905: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
; genPointerGet
	ld	a, 0x50c9
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x50c9, a
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00111$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 907: else if (CLK_IT == CLK_IT_LSECSSF)
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00163$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 910: CSSLSE->CSR &= (uint8_t)(~CSSLSE_CSR_CSSIE);
; genPointerGet
	ld	a, 0x5190
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x5190, a
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 915: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
; genPointerGet
	ld	a, 0x50ca
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x50ca, a
; genLabel
00116$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 918: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total CLK_ITConfig function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 945: FlagStatus CLK_GetFlagStatus(CLK_FLAG_TypeDef CLK_FLAG)
; genLabel
;	-----------------------------------------
;	 function CLK_GetFlagStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_GetFlagStatus:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 955: reg = (uint8_t)((uint8_t)CLK_FLAG & (uint8_t)0xF0);
; genAnd
	ld	xl, a
; peephole 4 removed redundant load from xl into a.
	and	a, #0xf0
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 958: pos = (uint8_t)((uint8_t)CLK_FLAG & (uint8_t)0x0F);
; genAnd
	push	a
	ld	a, xl
	and	a, #0x0f
	ld	xl, a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 960: if (reg == 0x00) /* The flag to check is in CRTC Rregister */
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00123$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00193$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 962: reg = CLK->CRTCR;
; genPointerGet
	ld	a, 0x50c1
; genGoto
	jra	00124$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00123$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 964: else if (reg == 0x10) /* The flag to check is in ICKCR register */
; genCmpEQorNE
	cp	a, #0x10
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00195$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00120$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00196$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 966: reg = CLK->ICKCR;
; genPointerGet
	ld	a, 0x50c2
; genGoto
	jra	00124$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00120$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 968: else if (reg == 0x20) /* The flag to check is in CCOR register */
; genCmpEQorNE
	cp	a, #0x20
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00198$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00117$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00199$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 970: reg = CLK->CCOR;
; genPointerGet
	ld	a, 0x50c5
; genGoto
	jra	00124$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00117$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 972: else if (reg == 0x30) /* The flag to check is in ECKCR register */
; genCmpEQorNE
	cp	a, #0x30
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00201$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00114$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00202$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 974: reg = CLK->ECKCR;
; genPointerGet
	ld	a, 0x50c6
; genGoto
	jra	00124$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00114$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 976: else if (reg == 0x40) /* The flag to check is in SWCR register */
; genCmpEQorNE
	cp	a, #0x40
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00204$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00111$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00205$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 978: reg = CLK->SWCR;
; genPointerGet
	ld	a, 0x50c9
; genGoto
	jra	00124$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00111$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 980: else if (reg == 0x50) /* The flag to check is in CSSR register */
; genCmpEQorNE
	cp	a, #0x50
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00207$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00108$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00208$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 982: reg = CLK->CSSR;
; genPointerGet
	ld	a, 0x50ca
; genGoto
	jra	00124$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 984: else if (reg == 0x70) /* The flag to check is in REGCSR register */
; genCmpEQorNE
	cp	a, #0x70
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00210$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00105$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00211$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 986: reg = CLK->REGCSR;
; genPointerGet
	ld	a, 0x50cf
; genGoto
	jra	00124$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 988: else if (reg == 0x80) /* The flag to check is in CSSLSE_CSRregister */
; genCmpEQorNE
	cp	a, #0x80
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00213$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00214$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 990: reg = CSSLSE->CSR;
; genPointerGet
	ld	a, 0x5190
; genGoto
	jra	00124$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 994: reg = CLK->CBEEPR;
; genPointerGet
	ld	a, 0x50cb
; genLabel
00124$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 998: if ((reg & (uint8_t)((uint8_t)1 << (uint8_t)pos)) != (uint8_t)RESET)
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, xl
	tnz	a
	jreq	00216$
00215$:
	sll	(0x02, sp)
	dec	a
	jrne	00215$
00216$:
	pop	a
; genAnd
; genIfx
	and	a, (0x01, sp)
; peephole 23 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00126$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00217$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1000: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1004: bitstatus = RESET;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00126$:
	clr	a
00127$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1008: return((FlagStatus)bitstatus);
; genReturn
; genLabel
; peephole j30 removed unused label 00128$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1009: }
; genEndFunction
	addw	sp, #1
	ret
;	Total CLK_GetFlagStatus function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1016: void CLK_ClearFlag(void)
; genLabel
;	-----------------------------------------
;	 function CLK_ClearFlag
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_ClearFlag:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1020: CSSLSE->CSR &= (uint8_t)(~CSSLSE_CSR_CSSF);
; genPointerGet
; genAnd
; genPointerSet
	bres	0x5190, #3
; peephole 204x replaced 'and' by 'bres' ('0x5190').
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1021: }
; genEndFunction
	ret
;	Total CLK_ClearFlag function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1032: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
; genLabel
;	-----------------------------------------
;	 function CLK_GetITStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_GetITStatus:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1040: if (CLK_IT == CLK_IT_SWIF)
; genCmpEQorNE
	ld	(0x01, sp), a
; peephole 4a removed redundant load from (0x01, sp) into a.
	cp	a, #0x1c
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00154$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00114$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00155$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1043: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
; genPointerGet
	ld	a, 0x50c9
; genAnd
	and	a, (0x01, sp)
; genCmpEQorNE
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00157$.
; peephole j5 changed absolute to relative unconditional jump.
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00158$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1045: bitstatus = SET;
; genAssign
	sub	a, #0x0c
	jrne	00102$
	inc	a
; peephole 51 used inc to get #1 into a.
; genGoto
	jra	00115$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1049: bitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jra	00115$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00114$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1052: else if (CLK_IT == CLK_IT_LSECSSF)
; genCmpEQorNE
	ld	a, (0x01, sp)
	cp	a, #0x2c
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00160$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00111$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00161$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1055: if ((CSSLSE->CSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
; genPointerGet
	ld	a, 0x5190
; genAnd
	and	a, (0x01, sp)
; genCmpEQorNE
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00163$.
; peephole j5 changed absolute to relative unconditional jump.
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00164$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1057: bitstatus = SET;
; genAssign
	sub	a, #0x0c
	jrne	00105$
	inc	a
; peephole 51 used inc to get #1 into a.
; genGoto
	jra	00115$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1061: bitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jra	00115$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00111$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1067: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
; genPointerGet
	ld	a, 0x50ca
; genAnd
	and	a, (0x01, sp)
; genCmpEQorNE
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00166$.
; peephole j5 changed absolute to relative unconditional jump.
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00167$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1069: bitstatus = SET;
; genAssign
	sub	a, #0x0c
	jrne	00108$
	inc	a
; peephole 51 used inc to get #1 into a.
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1073: bitstatus = RESET;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00108$:
	clr	a
00115$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1078: return bitstatus;
; genReturn
; genLabel
; peephole j30 removed unused label 00116$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1079: }
; genEndFunction
	addw	sp, #1
	ret
;	Total CLK_GetITStatus function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1089: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
; genLabel
;	-----------------------------------------
;	 function CLK_ClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_ClearITPendingBit:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1095: if ((uint8_t)((uint8_t)CLK_IT & (uint8_t)0xF0) == (uint8_t)0x20)
; genAnd
	and	a, #0xf0
; genCmpEQorNE
	cp	a, #0x20
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00114$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00115$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1098: CSSLSE->CSR &= (uint8_t)(~CSSLSE_CSR_CSSF);
; genPointerGet
; genAnd
; genPointerSet
	bres	0x5190, #3
; peephole 204x replaced 'and' by 'bres' ('0x5190').
; genGoto
	ret
; peephole j2e replaced jump by return.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1103: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
; genPointerGet
; genAnd
; genPointerSet
	bres	0x50c9, #3
; peephole 204x replaced 'and' by 'bres' ('0x50c9').
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1105: }
; genEndFunction
	ret
;	Total CLK_ClearITPendingBit function size at codegen: 1 bytes.
	.area CODE
	.area CONST
	.area CONST
_SYSDivFactor:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
