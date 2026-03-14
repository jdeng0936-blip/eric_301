;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_pwr
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _PWR_DeInit
	.globl _PWR_PVDLevelConfig
	.globl _PWR_PVDCmd
	.globl _PWR_FastWakeUpCmd
	.globl _PWR_UltraLowPowerCmd
	.globl _PWR_PVDITConfig
	.globl _PWR_GetFlagStatus
	.globl _PWR_PVDClearFlag
	.globl _PWR_PVDGetITStatus
	.globl _PWR_PVDClearITPendingBit
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 82: void PWR_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function PWR_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_PWR_DeInit:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 84: PWR->CSR1 = PWR_CSR1_PVDIF;
; genPointerSet
	mov	0x50b2+0, #0x20
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 85: PWR->CSR2 = PWR_CSR2_RESET_VALUE;
; genPointerSet
	mov	0x50b3+0, #0x00
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 86: }
; genEndFunction
	ret
;	Total PWR_DeInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 102: void PWR_PVDLevelConfig(PWR_PVDLevel_TypeDef PWR_PVDLevel)
; genLabel
;	-----------------------------------------
;	 function PWR_PVDLevelConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_PWR_PVDLevelConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 108: PWR->CSR1 &= (uint8_t)(~PWR_CSR1_PLS);
; genPointerGet
	ld	a, 0x50b2
; genAnd
	and	a, #0xf1
; genPointerSet
	ld	0x50b2, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 111: PWR->CSR1 |= PWR_PVDLevel;
; genPointerGet
	ld	a, 0x50b2
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50b2, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 113: }
; genEndFunction
	pop	a
	ret
;	Total PWR_PVDLevelConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 121: void PWR_PVDCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function PWR_PVDCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_PWR_PVDCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 129: PWR->CSR1 |= PWR_CSR1_PVDE;
; genPointerGet
	ld	a, 0x50b2
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 126: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 129: PWR->CSR1 |= PWR_CSR1_PVDE;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x50b2, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 134: PWR->CSR1 &= (uint8_t)(~PWR_CSR1_PVDE);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x50b2, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 136: }
; genEndFunction
	pop	a
	ret
;	Total PWR_PVDCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 171: void PWR_FastWakeUpCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function PWR_FastWakeUpCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_PWR_FastWakeUpCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 179: PWR->CSR2 |= PWR_CSR2_FWU;
; genPointerGet
	ld	a, 0x50b3
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 176: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 179: PWR->CSR2 |= PWR_CSR2_FWU;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x50b3, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 184: PWR->CSR2 &= (uint8_t)(~PWR_CSR2_FWU);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x50b3, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 186: }
; genEndFunction
	pop	a
	ret
;	Total PWR_FastWakeUpCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 194: void PWR_UltraLowPowerCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function PWR_UltraLowPowerCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_PWR_UltraLowPowerCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 202: PWR->CSR2 |= PWR_CSR2_ULP;
; genPointerGet
	ld	a, 0x50b3
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 199: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 202: PWR->CSR2 |= PWR_CSR2_ULP;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x50b3, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 207: PWR->CSR2 &= (uint8_t)(~PWR_CSR2_ULP);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x50b3, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 209: }
; genEndFunction
	pop	a
	ret
;	Total PWR_UltraLowPowerCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 232: void PWR_PVDITConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function PWR_PVDITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_PWR_PVDITConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 240: PWR->CSR1 |= PWR_CSR1_PVDIEN;
; genPointerGet
	ld	a, 0x50b2
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 237: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 240: PWR->CSR1 |= PWR_CSR1_PVDIEN;
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x50b2, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 245: PWR->CSR1 &= (uint8_t)(~PWR_CSR1_PVDIEN);
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x50b2, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 247: }
; genEndFunction
	pop	a
	ret
;	Total PWR_PVDITConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 261: FlagStatus PWR_GetFlagStatus(PWR_FLAG_TypeDef PWR_FLAG)
; genLabel
;	-----------------------------------------
;	 function PWR_GetFlagStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_PWR_GetFlagStatus:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 268: if ((PWR_FLAG & PWR_FLAG_VREFINTF) != 0)
; genAnd
	ld	(0x01, sp), a
; peephole 4a removed redundant load from (0x01, sp) into a.
	srl	a
; peephole j5 changed absolute to relative unconditional jump.
	jrnc	00108$
; peephole j6 removed jra by using inverse jump logic
; peephole j30 removed unused label 00133$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 270: if ((PWR->CSR2 & PWR_CR2_VREFINTF) != (uint8_t)RESET )
; genPointerGet
; genAnd
; peephole j540x replaced 'ld-srl-jrc' by 'btjt' ('0x50b3').
; peephole j5 changed absolute to relative unconditional jump.
	btjf	0x50b3, #0, 00102$
; peephole j33 removed jra by using inverse bit-test-jump logic
; peephole j30 removed unused label 00134$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 272: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 276: bitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 281: if ((PWR->CSR1 & PWR_FLAG) != (uint8_t)RESET )
; genPointerGet
	ld	a, 0x50b2
; genAnd
; genIfx
	and	a, (0x01, sp)
; peephole 23 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00135$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 283: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 287: bitstatus = RESET;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00105$:
	clr	a
00109$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 292: return((FlagStatus)bitstatus);
; genReturn
; genLabel
; peephole j30 removed unused label 00110$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 293: }
; genEndFunction
	addw	sp, #1
	ret
;	Total PWR_GetFlagStatus function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 300: void PWR_PVDClearFlag(void)
; genLabel
;	-----------------------------------------
;	 function PWR_PVDClearFlag
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_PWR_PVDClearFlag:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 303: PWR->CSR1 |= PWR_CSR1_PVDIF;
; genPointerGet
; genOr
; genPointerSet
	bset	0x50b2, #5
; peephole 202x replaced 'or' by 'bset' ('0x50b2').
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 304: }
; genEndFunction
	ret
;	Total PWR_PVDClearFlag function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 311: ITStatus PWR_PVDGetITStatus(void)
; genLabel
;	-----------------------------------------
;	 function PWR_PVDGetITStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_PWR_PVDGetITStatus:
	push	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 317: PVD_itStatus = (uint8_t)(PWR->CSR1 & (uint8_t)PWR_CSR1_PVDIF);
; genPointerGet
	ld	a, 0x50b2
; genAnd
	and	a, #0x20
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 318: PVD_itEnable = (uint8_t)(PWR->CSR1 & (uint8_t)PWR_CSR1_PVDIEN);
; genPointerGet
	ld	a, 0x50b2
; genAnd
	and	a, #0x10
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 320: if ((PVD_itStatus != (uint8_t)RESET ) && (PVD_itEnable != (uint8_t)RESET))
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 322: bitstatus = (ITStatus)SET;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 326: bitstatus = (ITStatus)RESET;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00102$:
	clr	a
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 328: return ((ITStatus)bitstatus);
; genReturn
; genLabel
; peephole j30 removed unused label 00105$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 329: }
; genEndFunction
	addw	sp, #1
	ret
;	Total PWR_PVDGetITStatus function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 336: void PWR_PVDClearITPendingBit(void)
; genLabel
;	-----------------------------------------
;	 function PWR_PVDClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_PWR_PVDClearITPendingBit:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 339: PWR->CSR1 |= PWR_CSR1_PVDIF;
; genPointerGet
; genOr
; genPointerSet
	bset	0x50b2, #5
; peephole 202x replaced 'or' by 'bset' ('0x50b2').
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 340: }
; genEndFunction
	ret
;	Total PWR_PVDClearITPendingBit function size at codegen: 1 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
