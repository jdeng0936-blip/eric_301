;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_exti
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EXTI_DeInit
	.globl _EXTI_SetPinSensitivity
	.globl _EXTI_SelectPort
	.globl _EXTI_SetHalfPortSelection
	.globl _EXTI_SetPortSensitivity
	.globl _EXTI_GetPinSensitivity
	.globl _EXTI_GetPortSensitivity
	.globl _EXTI_GetITStatus
	.globl _EXTI_ClearITPendingBit
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 123: void EXTI_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function EXTI_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_DeInit:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 125: EXTI->CR1 = EXTI_CR1_RESET_VALUE;
; genPointerSet
	mov	0x50a0+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 126: EXTI->CR2 = EXTI_CR2_RESET_VALUE;
; genPointerSet
	mov	0x50a1+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 127: EXTI->CR3 = EXTI_CR3_RESET_VALUE;
; genPointerSet
	mov	0x50a2+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 128: EXTI->CR4 = EXTI_CR4_RESET_VALUE;
; genPointerSet
	mov	0x50aa+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 129: EXTI->SR1 = 0xFF; /* Setting SR1 bits in order to clear flags */
; genPointerSet
	mov	0x50a3+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 130: EXTI->SR2 = 0xFF; /* Setting SR2 bits in order to clear flags */
; genPointerSet
	mov	0x50a4+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 131: EXTI->CONF1 = EXTI_CONF1_RESET_VALUE;
; genPointerSet
	mov	0x50a5+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 132: EXTI->CONF2 = EXTI_CONF2_RESET_VALUE;
; genPointerSet
	mov	0x50ab+0, #0x00
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 133: }
; genEndFunction
	ret
;	Total EXTI_DeInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 160: void EXTI_SetPinSensitivity(EXTI_Pin_TypeDef EXTI_Pin, EXTI_Trigger_TypeDef EXTI_Trigger)
; genLabel
;	-----------------------------------------
;	 function EXTI_SetPinSensitivity
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_EXTI_SetPinSensitivity:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 172: EXTI->CR1 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Pin);
; genLeftShift
	push	a
	push	a
	ld	a, (0x06, sp)
	ld	(0x03, sp), a
	pop	a
	tnz	a
	jreq	00170$
00169$:
	sll	(0x02, sp)
	dec	a
	jrne	00169$
00170$:
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 168: switch (EXTI_Pin)
; genCmpEQorNE
	cp	a, #0x00
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00101$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00172$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00175$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00103$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00178$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x06
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00104$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00181$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 188: EXTI->CR2 |= (uint8_t)((uint8_t)(EXTI_Trigger) << ((uint8_t)EXTI_Pin & (uint8_t)0xEF));
; genAnd
	push	a
	and	a, #0xef
	ld	xl, a
; genLeftShift
; peephole 6 removed dead pop / push pair.
	ld	a, (0x05, sp)
	ld	(0x02, sp), a
	ld	a, xl
	tnz	a
	jreq	00184$
00183$:
	sll	(0x02, sp)
	dec	a
	jrne	00183$
00184$:
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 168: switch (EXTI_Pin)
; genCmpEQorNE
	cp	a, #0x10
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00186$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x12
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00106$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00189$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x14
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00107$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00192$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x16
	jrne	00195$
	jp	00108$
00195$:
; skipping generated iCode
; genGoto
	jp	00111$
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 170: case EXTI_Pin_0:
; genLabel
00101$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 171: EXTI->CR1 &=  (uint8_t)(~EXTI_CR1_P0IS);
; genPointerGet
	ld	a, 0x50a0
; genAnd
	and	a, #0xfc
; genPointerSet
	ld	0x50a0, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 172: EXTI->CR1 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Pin);
; genPointerGet
	ld	a, 0x50a0
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50a0, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 173: break;
; genGoto
	jra	00111$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 174: case EXTI_Pin_1:
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 175: EXTI->CR1 &=  (uint8_t)(~EXTI_CR1_P1IS);
; genPointerGet
	ld	a, 0x50a0
; genAnd
	and	a, #0xf3
; genPointerSet
	ld	0x50a0, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 176: EXTI->CR1 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Pin);
; genPointerGet
	ld	a, 0x50a0
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50a0, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 177: break;
; genGoto
	jra	00111$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 178: case EXTI_Pin_2:
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 179: EXTI->CR1 &=  (uint8_t)(~EXTI_CR1_P2IS);
; genPointerGet
	ld	a, 0x50a0
; genAnd
	and	a, #0xcf
; genPointerSet
	ld	0x50a0, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 180: EXTI->CR1 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Pin);
; genPointerGet
	ld	a, 0x50a0
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50a0, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 181: break;
; genGoto
	jra	00111$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 182: case EXTI_Pin_3:
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 183: EXTI->CR1 &=  (uint8_t)(~EXTI_CR1_P3IS);
; genPointerGet
	ld	a, 0x50a0
; genAnd
	and	a, #0x3f
; genPointerSet
	ld	0x50a0, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 184: EXTI->CR1 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Pin);
; genPointerGet
	ld	a, 0x50a0
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50a0, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 185: break;
; genGoto
	jra	00111$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 186: case EXTI_Pin_4:
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 187: EXTI->CR2 &=  (uint8_t)(~EXTI_CR2_P4IS);
; genPointerGet
	ld	a, 0x50a1
; genAnd
	and	a, #0xfc
; genPointerSet
	ld	0x50a1, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 188: EXTI->CR2 |= (uint8_t)((uint8_t)(EXTI_Trigger) << ((uint8_t)EXTI_Pin & (uint8_t)0xEF));
; genPointerGet
	ld	a, 0x50a1
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50a1, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 189: break;
; genGoto
	jra	00111$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 190: case EXTI_Pin_5:
; genLabel
00106$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 191: EXTI->CR2 &=  (uint8_t)(~EXTI_CR2_P5IS);
; genPointerGet
	ld	a, 0x50a1
; genAnd
	and	a, #0xf3
; genPointerSet
	ld	0x50a1, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 192: EXTI->CR2 |= (uint8_t)((uint8_t)(EXTI_Trigger) << ((uint8_t)EXTI_Pin & (uint8_t)0xEF));
; genPointerGet
	ld	a, 0x50a1
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50a1, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 193: break;
; genGoto
	jra	00111$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 194: case EXTI_Pin_6:
; genLabel
00107$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 195: EXTI->CR2 &=  (uint8_t)(~EXTI_CR2_P6IS);
; genPointerGet
	ld	a, 0x50a1
; genAnd
	and	a, #0xcf
; genPointerSet
	ld	0x50a1, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 196: EXTI->CR2 |= (uint8_t)((uint8_t)(EXTI_Trigger) << ((uint8_t)EXTI_Pin & (uint8_t)0xEF));
; genPointerGet
	ld	a, 0x50a1
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50a1, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 197: break;
; genGoto
	jra	00111$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 198: case EXTI_Pin_7:
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 199: EXTI->CR2 &=  (uint8_t)(~EXTI_CR2_P7IS);
; genPointerGet
	ld	a, 0x50a1
; genAnd
	and	a, #0x3f
; genPointerSet
	ld	0x50a1, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 200: EXTI->CR2 |= (uint8_t)((uint8_t)(EXTI_Trigger) << ((uint8_t)EXTI_Pin & (uint8_t)0xEF));
; genPointerGet
	ld	a, 0x50a1
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50a1, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 204: }
; genLabel
00111$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 205: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total EXTI_SetPinSensitivity function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 219: void EXTI_SelectPort(EXTI_Port_TypeDef EXTI_Port)
; genLabel
;	-----------------------------------------
;	 function EXTI_SelectPort
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_SelectPort:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 224: if (EXTI_Port == EXTI_Port_B)
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00114$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00153$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 227: EXTI->CONF2 &= (uint8_t) (~EXTI_CONF2_PGBS);
; genPointerGet
; genAnd
; genPointerSet
	bres	0x50ab, #5
; peephole 204x replaced 'and' by 'bres' ('0x50ab').
; genGoto
	ret
; peephole j2e replaced jump by return.
; genLabel
00114$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 229: else if (EXTI_Port == EXTI_Port_D)
; genCmpEQorNE
	cp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00155$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00111$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00156$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 232: EXTI->CONF2 &= (uint8_t) (~EXTI_CONF2_PHDS);
; genPointerGet
; genAnd
; genPointerSet
	bres	0x50ab, #6
; peephole 204x replaced 'and' by 'bres' ('0x50ab').
; genGoto
	ret
; peephole j2e replaced jump by return.
; genLabel
00111$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 234: else if (EXTI_Port == EXTI_Port_E)
; genCmpEQorNE
	cp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00158$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00108$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00159$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 237: EXTI->CONF1 &= (uint8_t) (~EXTI_CONF1_PFES);
; genPointerGet
; genAnd
; genPointerSet
	bres	0x50a5, #7
; peephole 204x replaced 'and' by 'bres' ('0x50a5').
; genGoto
	ret
; peephole j2e replaced jump by return.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 239: else if (EXTI_Port == EXTI_Port_F)
; genCmpEQorNE
	cp	a, #0x06
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00161$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00105$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00162$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 242: EXTI->CONF1 |= (uint8_t) (EXTI_CONF1_PFES);
; genPointerGet
; genOr
; genPointerSet
	bset	0x50a5, #7
; peephole 202x replaced 'or' by 'bset' ('0x50a5').
; genGoto
	ret
; peephole j2e replaced jump by return.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 227: EXTI->CONF2 &= (uint8_t) (~EXTI_CONF2_PGBS);
; genPointerGet
	ldw	x, #0x50ab
	push	a
	ld	a, (x)
	ld	xl, a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 244: else if (EXTI_Port == EXTI_Port_G)
; genCmpEQorNE
	cp	a, #0x10
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00164$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00165$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 247: EXTI->CONF2 |= (uint8_t) (EXTI_CONF2_PGBS);
; genOr
	ld	a, xl
	or	a, #0x20
; genPointerSet
	ld	0x50ab, a
; genGoto
	ret
; peephole j2e replaced jump by return.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 252: EXTI->CONF2 |= (uint8_t) (EXTI_CONF2_PHDS);
; genOr
	ld	a, xl
	or	a, #0x40
; genPointerSet
	ld	0x50ab, a
; genLabel
; peephole j30 removed unused label 00116$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 254: }
; genEndFunction
	ret
;	Total EXTI_SelectPort function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 280: void EXTI_SetHalfPortSelection(EXTI_HalfPort_TypeDef EXTI_HalfPort,
; genLabel
;	-----------------------------------------
;	 function EXTI_SetHalfPortSelection
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_EXTI_SetHalfPortSelection:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 287: if ((EXTI_HalfPort & 0x80) == 0x00)
; genAnd
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrmi	00108$
; peephole j11 removed jra by using inverse jump logic
; peephole j30 removed unused label 00133$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 292: EXTI->CONF1 |= (uint8_t)EXTI_HalfPort;
; genPointerGet
	ldw	x, #0x50a5
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 289: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00134$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 292: EXTI->CONF1 |= (uint8_t)EXTI_HalfPort;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50a5, a
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 297: EXTI->CONF1 &= (uint8_t)(~(uint8_t)EXTI_HalfPort);
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x50a5, a
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 305: EXTI->CONF2 |= (uint8_t)(EXTI_HalfPort & (uint8_t)0x7F);
; genPointerGet
	ldw	x, #0x50ab
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
; genAnd
	and	a, #0x7f
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 302: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00135$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 305: EXTI->CONF2 |= (uint8_t)(EXTI_HalfPort & (uint8_t)0x7F);
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50ab, a
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 310: EXTI->CONF2 &= (uint8_t)(~(uint8_t) (EXTI_HalfPort & (uint8_t)0x7F));
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x50ab, a
; genLabel
00110$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 313: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total EXTI_SetHalfPortSelection function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 338: void EXTI_SetPortSensitivity(EXTI_Port_TypeDef EXTI_Port,
; genLabel
;	-----------------------------------------
;	 function EXTI_SetPortSensitivity
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_EXTI_SetPortSensitivity:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 346: if ((EXTI_Port & 0xF0) == 0x00)
; genAnd
	ld	xl, a
; peephole 4 removed redundant load from xl into a.
	bcp	a, #0xf0
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 349: EXTI->CR3 &= (uint8_t) (~(uint8_t)((uint8_t)0x03 << EXTI_Port));
; genPointerGet
	ld	a, 0x50a2
	ld	(0x01, sp), a
; genLeftShift
	ld	a, #0x03
	push	a
	ld	a, xl
	tnz	a
	jreq	00115$
00114$:
	sll	(1, sp)
	dec	a
	jrne	00114$
00115$:
	pop	a
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x50a2, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 351: EXTI->CR3 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Port);
; genPointerGet
	ld	a, 0x50a2
; genLeftShift
	push	a
	ld	a, (0x05, sp)
	ld	(0x02, sp), a
	ld	a, xl
	tnz	a
	jreq	00117$
00116$:
	sll	(0x02, sp)
	dec	a
	jrne	00116$
00117$:
	pop	a
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50a2, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 356: EXTI->CR4 &= (uint8_t) (~(uint8_t)((uint8_t)0x03 << (EXTI_Port & 0x0F)));
; genPointerGet
	ld	a, 0x50aa
	ld	(0x01, sp), a
; genAnd
	ld	a, xl
	and	a, #0x0f
	ld	xl, a
; genLeftShift
	ld	a, #0x03
	push	a
	ld	a, xl
	tnz	a
	jreq	00119$
00118$:
	sll	(1, sp)
	dec	a
	jrne	00118$
00119$:
	pop	a
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x50aa, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 358: EXTI->CR4 |= (uint8_t)(EXTI_Trigger << (EXTI_Port & 0x0F));
; genPointerGet
	ld	a, 0x50aa
	ld	(0x01, sp), a
; genLeftShift
	ld	a, (0x04, sp)
	push	a
	ld	a, xl
	tnz	a
	jreq	00121$
00120$:
	sll	(1, sp)
	dec	a
	jrne	00120$
00121$:
	pop	a
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50aa, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 360: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total EXTI_SetPortSensitivity function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 376: EXTI_Trigger_TypeDef EXTI_GetPinSensitivity(EXTI_Pin_TypeDef EXTI_Pin)
; genLabel
;	-----------------------------------------
;	 function EXTI_GetPinSensitivity
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_GetPinSensitivity:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 378: uint8_t value = 0;
; genAssign
	clrw	x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 383: switch (EXTI_Pin)
; genCmpEQorNE
	cp	a, #0x00
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00101$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00170$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00173$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00103$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00176$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x06
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00104$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00179$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x10
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00182$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x12
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00106$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00185$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x14
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00107$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00188$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x16
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00191$.
; skipping generated iCode
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 385: case EXTI_Pin_0:
; genLabel
00101$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 386: value = (uint8_t)(EXTI->CR1 & EXTI_CR1_P0IS);
; genPointerGet
	ld	a, 0x50a0
; genAnd
	and	a, #0x03
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 387: break;
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 388: case EXTI_Pin_1:
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 389: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_P1IS) >> EXTI_Pin_1);
; genPointerGet
	ld	a, 0x50a0
; genAnd
	and	a, #0x0c
; genRightShiftLiteral
	srl	a
	srl	a
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 390: break;
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 391: case EXTI_Pin_2:
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 392: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_P2IS) >> EXTI_Pin_2);
; genPointerGet
	ld	a, 0x50a0
; genAnd
	and	a, #0x30
; genRightShiftLiteral
	swap	a
	and	a, #0x0f
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 393: break;
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 394: case EXTI_Pin_3:
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 395: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_P3IS) >> EXTI_Pin_3);
; genPointerGet
	ld	a, 0x50a0
; genAnd
	and	a, #0xc0
; genRightShiftLiteral
	swap	a
	and	a, #0x0f
	srl	a
	srl	a
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 396: break;
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 397: case EXTI_Pin_4:
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 398: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_P4IS);
; genPointerGet
	ld	a, 0x50a1
; genAnd
	and	a, #0x03
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 399: break;
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 400: case EXTI_Pin_5:
; genLabel
00106$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 401: value = (uint8_t)((uint8_t)(EXTI->CR2 & EXTI_CR2_P5IS) >> ((uint8_t)EXTI_Pin_5 & (uint8_t)0x0F));
; genPointerGet
	ld	a, 0x50a1
; genAnd
	and	a, #0x0c
; genRightShiftLiteral
	srl	a
	srl	a
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 402: break;
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 403: case EXTI_Pin_6:
; genLabel
00107$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 404: value = (uint8_t)((uint8_t)(EXTI->CR2 & EXTI_CR2_P6IS) >> ((uint8_t)EXTI_Pin_6 & (uint8_t)0x0F));
; genPointerGet
	ld	a, 0x50a1
; genAnd
	and	a, #0x30
; genRightShiftLiteral
	swap	a
	and	a, #0x0f
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 405: break;
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 406: case EXTI_Pin_7:
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 407: value = (uint8_t)((uint8_t)(EXTI->CR2 & EXTI_CR2_P7IS) >> ((uint8_t)EXTI_Pin_7 & (uint8_t)0x0F));
; genPointerGet
	ld	a, 0x50a1
; genAnd
	and	a, #0xc0
; genRightShiftLiteral
	swap	a
	and	a, #0x0f
	srl	a
	srl	a
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 411: }
; genLabel
00110$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 412: return((EXTI_Trigger_TypeDef)value);
; genReturn
	ld	a, xl
; genLabel
; peephole j30 removed unused label 00111$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 413: }
; genEndFunction
	ret
;	Total EXTI_GetPinSensitivity function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 427: EXTI_Trigger_TypeDef EXTI_GetPortSensitivity(EXTI_Port_TypeDef EXTI_Port)
; genLabel
;	-----------------------------------------
;	 function EXTI_GetPortSensitivity
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_EXTI_GetPortSensitivity:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 435: if ((EXTI_Port & 0xF0) == 0x00)
; genAnd
	ld	xl, a
; peephole 4 removed redundant load from xl into a.
	bcp	a, #0xf0
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 438: portsensitivity = (uint8_t)((uint8_t)0x03 & (uint8_t)(EXTI->CR3 >> EXTI_Port));
; genPointerGet
	ld	a, 0x50a2
; genRightShift
	push	a
	ld	a, xl
	tnz	a
	jreq	00115$
00114$:
	srl	(1, sp)
	dec	a
	jrne	00114$
00115$:
	pop	a
; genAnd
	and	a, #0x03
; genGoto
	ret
; peephole j2e replaced jump by return.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 444: portsensitivity = (uint8_t)((uint8_t)0x03 & (uint8_t)(EXTI->CR4 >> (EXTI_Port & 0x0F)));
; genPointerGet
	ld	a, 0x50aa
	ld	xh, a
; genAnd
	ld	a, xl
; genRightShift
	and	a, #0x0f
; peephole 23 removed redundant tnz.
	jreq	00117$
00116$:
	rlwa	x
	srl	a
	rrwa	x
	dec	a
	jrne	00116$
00117$:
; genAnd
	ld	a, xh
	and	a, #0x03
; genLabel
; peephole j30 removed unused label 00103$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 447: return((EXTI_Trigger_TypeDef)portsensitivity);
; genReturn
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 448: }
; genEndFunction
	ret
;	Total EXTI_GetPortSensitivity function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 487: ITStatus EXTI_GetITStatus(EXTI_IT_TypeDef EXTI_IT)
; genLabel
;	-----------------------------------------
;	 function EXTI_GetITStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_EXTI_GetITStatus:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 493: if (((uint16_t)EXTI_IT & (uint16_t)0xFF00) == 0x0100)
; genCast
; genAssign
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
; genAnd
	clr	a
; genCast
; genAssign
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 495: status = (ITStatus)(EXTI->SR2 & (uint8_t)((uint16_t)EXTI_IT & (uint16_t)0x00FF));
; genCast
; genAssign
	exg	a, yl
	ld	(0x01, sp), a
	exg	a, yl
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 493: if (((uint16_t)EXTI_IT & (uint16_t)0xFF00) == 0x0100)
; genCmpEQorNE
	ld	xl, a
	cpw	x, #0x0100
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00114$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00115$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 495: status = (ITStatus)(EXTI->SR2 & (uint8_t)((uint16_t)EXTI_IT & (uint16_t)0x00FF));
; genPointerGet
	ld	a, 0x50a4
; genAnd
	and	a, (0x01, sp)
; genCast
	neg	a
	clr	a
	rlc	a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 499: status = (ITStatus)(EXTI->SR1 & ((uint8_t)((uint16_t)EXTI_IT & (uint16_t)0x00FF)));
; genPointerGet
	ld	a, 0x50a3
; genAnd
	and	a, (0x01, sp)
; genCast
	neg	a
	clr	a
	rlc	a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 501: return((ITStatus)status);
; genReturn
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 502: }
; genEndFunction
	addw	sp, #1
	ret
;	Total EXTI_GetITStatus function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 524: void EXTI_ClearITPendingBit(EXTI_IT_TypeDef EXTI_IT)
; genLabel
;	-----------------------------------------
;	 function EXTI_ClearITPendingBit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_EXTI_ClearITPendingBit:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 531: tempvalue = ((uint16_t)EXTI_IT & (uint16_t)0xFF00);
; genCast
; genAssign
	ldw	y, x
; genAnd
	clr	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 533: if ( tempvalue == 0x0100)
; genCast
; genAssign
	ld	yl, a
; genCmpEQorNE
	cpw	y, #0x0100
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00114$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00115$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 535: EXTI->SR2 = (uint8_t)((uint16_t)EXTI_IT & (uint16_t)0x00FF);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x50a4, a
; genGoto
	ret
; peephole j2e replaced jump by return.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 539: EXTI->SR1 = (uint8_t) (EXTI_IT);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x50a3, a
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 541: }
; genEndFunction
	ret
;	Total EXTI_ClearITPendingBit function size at codegen: 1 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
