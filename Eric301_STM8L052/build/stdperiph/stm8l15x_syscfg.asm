;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_syscfg
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SYSCFG_RIDeInit
	.globl _SYSCFG_RITIMInputCaptureConfig
	.globl _SYSCFG_RIAnalogSwitchConfig
	.globl _SYSCFG_RIIOSwitchConfig
	.globl _SYSCFG_RIResistorConfig
	.globl _SYSCFG_REMAPDeInit
	.globl _SYSCFG_REMAPPinConfig
	.globl _SYSCFG_REMAPDMAChannelConfig
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 119: void SYSCFG_RIDeInit(void)
; genLabel
;	-----------------------------------------
;	 function SYSCFG_RIDeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SYSCFG_RIDeInit:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 121: RI->ICR1   = RI_ICR1_RESET_VALUE;     /*!< Set RI->ICR1 to reset value */
; genPointerSet
	mov	0x5431+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 122: RI->ICR2   = RI_ICR2_RESET_VALUE;     /*!< Set RI->ICR2 to reset value */
; genPointerSet
	mov	0x5432+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 123: RI->IOSR1  = RI_IOSR1_RESET_VALUE;    /*!< Set RI->IOSR1 to reset value */
; genPointerSet
	mov	0x5439+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 124: RI->IOSR2  = RI_IOSR2_RESET_VALUE;    /*!< Set RI->IOSR2 to reset value */
; genPointerSet
	mov	0x543a+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 125: RI->IOSR3  = RI_IOSR3_RESET_VALUE;    /*!< Set RI->IOSR3 to reset value */
; genPointerSet
	mov	0x543b+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 126: RI->IOSR4  = RI_IOSR4_RESET_VALUE;    /*!< Set RI->IOSR3 to reset value */
; genPointerSet
	mov	0x5457+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 127: RI->ASCR1  = RI_ASCR1_RESET_VALUE;    /*!< Set RI->ASCR1 to reset value */
; genPointerSet
	mov	0x543d+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 128: RI->ASCR2  = RI_ASCR2_RESET_VALUE;    /*!< Set RI->ASCR2 to reset value */
; genPointerSet
	mov	0x543e+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 129: RI->RCR    = RI_RCR_RESET_VALUE;      /*!< Set RI->RCR to reset value */
; genPointerSet
	mov	0x543f+0, #0x00
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 130: }
; genEndFunction
	ret
;	Total SYSCFG_RIDeInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 142: void SYSCFG_RITIMInputCaptureConfig(RI_InputCapture_TypeDef RI_InputCapture,
; genLabel
;	-----------------------------------------
;	 function SYSCFG_RITIMInputCaptureConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SYSCFG_RITIMInputCaptureConfig:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 150: if (RI_InputCapture == RI_InputCapture_IC2)
; genCmpEQorNE
	cp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00114$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00115$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 153: RI->ICR1 = (uint8_t) RI_InputCaptureRouting;
; genPointerSet
	ldw	x, #0x5431
	ld	a, (0x03, sp)
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 159: RI->ICR2 = (uint8_t) RI_InputCaptureRouting;
; genPointerSet
	ldw	x, #0x5432
	ld	a, (0x03, sp)
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 161: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
;	Total SYSCFG_RITIMInputCaptureConfig function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 184: void SYSCFG_RIAnalogSwitchConfig(RI_AnalogSwitch_TypeDef RI_AnalogSwitch,
; genLabel
;	-----------------------------------------
;	 function SYSCFG_RIAnalogSwitchConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_SYSCFG_RIAnalogSwitchConfig:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 194: AnalogSwitchRegister = (uint8_t) (RI_AnalogSwitch & (uint8_t) 0xF0);
; genAnd
	push	a
	and	a, #0xf0
	ld	xh, a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 197: AnalogSwitchIndex = (uint8_t) (RI_AnalogSwitch & (uint8_t) 0x0F);
; genAnd
	and	a, #0x0f
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 201: if (AnalogSwitchRegister == (uint8_t) 0x10)
; genCmpEQorNE
	ld	a, xh
	sub	a, #0x10
	jrne	00134$
	inc	a
; peephole 51 used inc to get #1 into a.
; peephole j5 changed absolute to relative unconditional jump.
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00134$:
	clr	a
00135$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 204: RI->ASCR1 |= (uint8_t) ((uint8_t)1 << (uint8_t) AnalogSwitchIndex);
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, xl
	tnz	a
	jreq	00137$
00136$:
	sll	(0x02, sp)
	dec	a
	jrne	00136$
00137$:
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 199: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00138$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 201: if (AnalogSwitchRegister == (uint8_t) 0x10)
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00139$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 204: RI->ASCR1 |= (uint8_t) ((uint8_t)1 << (uint8_t) AnalogSwitchIndex);
; genPointerGet
	ld	a, 0x543d
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x543d, a
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 209: RI->ASCR2 |= (uint8_t) ((uint8_t)1 << (uint8_t) AnalogSwitchIndex);
; genPointerGet
	ld	a, 0x543e
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x543e, a
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 217: RI->ASCR1 &= (uint8_t) (~(uint8_t)((uint8_t)1 <<  AnalogSwitchIndex));
; genCpl
	push	a
	cpl	(0x02, sp)
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 214: if (AnalogSwitchRegister == (uint8_t) 0x10)
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00140$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 217: RI->ASCR1 &= (uint8_t) (~(uint8_t)((uint8_t)1 <<  AnalogSwitchIndex));
; genPointerGet
	ld	a, 0x543d
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x543d, a
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 222: RI->ASCR2 &= (uint8_t) (~ (uint8_t)((uint8_t)1 << AnalogSwitchIndex));
; genPointerGet
	ld	a, 0x543e
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x543e, a
; genLabel
00110$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 225: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total SYSCFG_RIAnalogSwitchConfig function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 234: void SYSCFG_RIIOSwitchConfig(RI_IOSwitch_TypeDef RI_IOSwitch,
; genLabel
;	-----------------------------------------
;	 function SYSCFG_RIIOSwitchConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_SYSCFG_RIIOSwitchConfig:
	pushw	x
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 244: IOSwitchIndex = (uint8_t) (RI_IOSwitch & (uint8_t) 0x0F);
; genAnd
	push	a
	and	a, #0x0f
	ld	xh, a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 247: IOSwitchRegister = (uint8_t) (RI_IOSwitch & (uint8_t) 0xF0);
; genAnd
	and	a, #0xf0
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 255: RI->IOSR1 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
; genLeftShift
	ld	a, #0x01
	ld	(0x01, sp), a
	ld	a, xh
	tnz	a
	jreq	00174$
00173$:
	sll	(0x01, sp)
	dec	a
	jrne	00173$
00174$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 260: RI->IOSR1 &= (uint8_t) (~ (uint8_t)((uint8_t)1 << IOSwitchIndex));
; genCpl
	ld	a, (0x01, sp)
	cpl	a
	ld	(0x02, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 250: if (IOSwitchRegister == (uint8_t) 0x10)
; genCmpEQorNE
	ld	a, xl
	cp	a, #0x10
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00176$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00120$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00177$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 255: RI->IOSR1 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
; genPointerGet
	ld	a, 0x5439
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 252: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00178$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 255: RI->IOSR1 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5439, a
; genGoto
	jra	00122$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 260: RI->IOSR1 &= (uint8_t) (~ (uint8_t)((uint8_t)1 << IOSwitchIndex));
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x5439, a
; genGoto
	jra	00122$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00120$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 265: else if (IOSwitchRegister == (uint8_t) 0x20)
; genCmpEQorNE
	ld	a, xl
	cp	a, #0x20
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00180$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00117$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00181$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 270: RI->IOSR2 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
; genPointerGet
	ld	a, 0x543a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 267: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00182$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 270: RI->IOSR2 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x543a, a
; genGoto
	jra	00122$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 275: RI->IOSR2 &= (uint8_t) (~(uint8_t)((uint8_t)1 <<  IOSwitchIndex));
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x543a, a
; genGoto
	jra	00122$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00117$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 280: else if (IOSwitchRegister == (uint8_t) 0x30)
; genCmpEQorNE
	ld	a, xl
	cp	a, #0x30
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00184$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00114$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00185$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 285: RI->IOSR3 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
; genPointerGet
	ld	a, 0x543b
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 282: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00186$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 285: RI->IOSR3 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x543b, a
; genGoto
	jra	00122$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 290: RI->IOSR3 &= (uint8_t) (~ (uint8_t) ((uint8_t) 1 << IOSwitchIndex));
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x543b, a
; genGoto
	jra	00122$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00114$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 300: RI->IOSR4 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
; genPointerGet
	ld	a, 0x5457
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 297: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00111$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00187$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 300: RI->IOSR4 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5457, a
; genGoto
	jra	00122$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00111$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 305: RI->IOSR4 &= (uint8_t) (~ (uint8_t) ((uint8_t) 1 << IOSwitchIndex));
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x5457, a
; genLabel
00122$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 308: }
; genEndFunction
	popw	x
	popw	x
	pop	a
	jp	(x)
;	Total SYSCFG_RIIOSwitchConfig function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 320: void SYSCFG_RIResistorConfig(RI_Resistor_TypeDef RI_Resistor, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function SYSCFG_RIResistorConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_SYSCFG_RIResistorConfig:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 329: RI->RCR |= (uint8_t) RI_Resistor;
; genPointerGet
	ldw	x, #0x543f
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 326: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 329: RI->RCR |= (uint8_t) RI_Resistor;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x543f, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 334: RI->RCR &= (uint8_t) (~RI_Resistor);
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x543f, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 336: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total SYSCFG_RIResistorConfig function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 368: void SYSCFG_REMAPDeInit(void)
; genLabel
;	-----------------------------------------
;	 function SYSCFG_REMAPDeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SYSCFG_REMAPDeInit:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 371: SYSCFG->RMPCR1 = SYSCFG_RMPCR1_RESET_VALUE;
; genPointerSet
	mov	0x509e+0, #0x0c
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 374: SYSCFG->RMPCR2 = SYSCFG_RMPCR2_RESET_VALUE;
; genPointerSet
	mov	0x509f+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 377: SYSCFG->RMPCR3 = SYSCFG_RMPCR3_RESET_VALUE;
; genPointerSet
	mov	0x509d+0, #0x00
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 378: }
; genEndFunction
	ret
;	Total SYSCFG_REMAPDeInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 411: void SYSCFG_REMAPPinConfig(REMAP_Pin_TypeDef REMAP_Pin, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function SYSCFG_REMAPPinConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 7 bytes.
_SYSCFG_REMAPPinConfig:
	sub	sp, #7
; genReceive
	ldw	(0x06, sp), x
; genReceive
	ld	(0x05, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 419: regindex = (uint8_t) ((uint16_t) REMAP_Pin >> 8);
; genCast
; genAssign
	ldw	y, (0x06, sp)
	ldw	(0x01, sp), y
; genGetByte
	ld	a, (0x01, sp)
	ld	(0x03, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 424: SYSCFG->RMPCR1 &= (uint8_t)((uint8_t)((uint8_t)REMAP_Pin << 4) | (uint8_t)0x0F);
; genCast
; genAssign
	ld	a, (0x07, sp)
	ld	(0x04, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 422: if (regindex == 0x01)
; genCmpEQorNE
	ld	a, (0x03, sp)
	dec	a
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00153$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00113$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00154$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 424: SYSCFG->RMPCR1 &= (uint8_t)((uint8_t)((uint8_t)REMAP_Pin << 4) | (uint8_t)0x0F);
; genPointerGet
	ld	a, 0x509e
	ld	(0x03, sp), a
; genLeftShiftLiteral
	ld	a, (0x04, sp)
	swap	a
	and	a, #0xf0
; genOr
	or	a, #0x0f
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ld	0x509e, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 425: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00115$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00155$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 427: SYSCFG->RMPCR1 |= (uint8_t)((uint16_t)REMAP_Pin & (uint16_t)0x00F0);
; genPointerGet
	ld	a, 0x509e
	ld	(0x04, sp), a
; genCast
; genAssign
	ld	a, (0x07, sp)
; genAnd
	and	a, #0xf0
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x509e, a
; genGoto
	jra	00115$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00113$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 439: SYSCFG->RMPCR2 &= (uint8_t)((uint16_t)(~(uint16_t)REMAP_Pin));
; genCpl
	ldw	x, (0x01, sp)
	cplw	x
; genCast
; genAssign
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 431: else if (regindex == 0x02)
; genCmpEQorNE
	ld	a, (0x03, sp)
	cp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00157$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00110$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00158$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 435: SYSCFG->RMPCR2 |= (uint8_t) REMAP_Pin;
; genPointerGet
	ld	a, 0x509f
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 433: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00104$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00159$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 435: SYSCFG->RMPCR2 |= (uint8_t) REMAP_Pin;
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x509f, a
; genGoto
	jra	00115$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 439: SYSCFG->RMPCR2 &= (uint8_t)((uint16_t)(~(uint16_t)REMAP_Pin));
; genAnd
	pushw	x
	and	a, (2, sp)
	popw	x
; genPointerSet
	ld	0x509f, a
; genGoto
	jra	00115$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00110$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 447: SYSCFG->RMPCR3 |= (uint8_t) REMAP_Pin;
; genPointerGet
	ld	a, 0x509d
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 445: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00107$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00160$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 447: SYSCFG->RMPCR3 |= (uint8_t) REMAP_Pin;
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x509d, a
; genGoto
	jra	00115$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00107$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 451: SYSCFG->RMPCR3 &= (uint8_t)((uint16_t)(~(uint16_t)REMAP_Pin));
; genAnd
	pushw	x
	and	a, (2, sp)
	popw	x
; genPointerSet
	ld	0x509d, a
; genLabel
00115$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 454: }
; genEndFunction
	addw	sp, #7
	ret
;	Total SYSCFG_REMAPPinConfig function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 470: void SYSCFG_REMAPDMAChannelConfig(REMAP_DMAChannel_TypeDef REMAP_DMAChannel)
; genLabel
;	-----------------------------------------
;	 function SYSCFG_REMAPDMAChannelConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_SYSCFG_REMAPDMAChannelConfig:
	push	a
; genReceive
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 479: SYSCFG->RMPCR1 &= (uint8_t) (~SYSCFG_RMPCR1_TIM4DMA_REMAP);
; genPointerGet
	ld	a, 0x509e
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 476: if ((REMAP_DMAChannel & 0xF0) != RESET)
; genAnd
	push	a
	ld	a, xl
	bcp	a, #0xf0
	pop	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 479: SYSCFG->RMPCR1 &= (uint8_t) (~SYSCFG_RMPCR1_TIM4DMA_REMAP);
; genAnd
	and	a, #0xf3
; genPointerSet
	ld	0x509e, a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 485: SYSCFG->RMPCR1 &= (uint8_t) (~SYSCFG_RMPCR1_ADC1DMA_REMAP);
; genAnd
	and	a, #0xfc
; genPointerSet
	ld	0x509e, a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 488: SYSCFG->RMPCR1 |= (uint8_t) ((uint8_t)0x0F & REMAP_DMAChannel);
; genPointerGet
	ld	a, 0x509e
	ld	(0x01, sp), a
; genAnd
	ld	a, xl
	and	a, #0x0f
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x509e, a
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 489: }
; genEndFunction
	pop	a
	ret
;	Total SYSCFG_REMAPDMAChannelConfig function size at codegen: 2 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
