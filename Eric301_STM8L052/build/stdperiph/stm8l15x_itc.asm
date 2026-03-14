;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_itc
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ITC_GetCPUCC
	.globl _ITC_DeInit
	.globl _ITC_GetSoftIntStatus
	.globl _ITC_GetSoftwarePriority
	.globl _ITC_SetSoftwarePriority
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 56: uint8_t ITC_GetCPUCC(void)
; genLabel
;	-----------------------------------------
;	 function ITC_GetCPUCC
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ITC_GetCPUCC:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 65: __asm__("push cc");
;	genInline
	push	cc
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 66: __asm__("pop a");
;	genInline
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 67: return 0;
; genReturn
	clr	a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 72: }
; genEndFunction
	ret
;	Total ITC_GetCPUCC function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 91: void ITC_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function ITC_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ITC_DeInit:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 93: ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f70+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 94: ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f71+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 95: ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f72+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 96: ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f73+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 97: ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f74+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 98: ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f75+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 99: ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f76+0, #0xff
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 100: ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f77+0, #0xff
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 101: }
; genEndFunction
	ret
;	Total ITC_DeInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 108: uint8_t ITC_GetSoftIntStatus(void)
; genLabel
;	-----------------------------------------
;	 function ITC_GetSoftIntStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ITC_GetSoftIntStatus:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 110: return ((uint8_t)(ITC_GetCPUCC() & CPU_SOFT_INT_DISABLED));
; genCall
	call	_ITC_GetCPUCC
; genAnd
	and	a, #0x28
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 111: }
; genEndFunction
	ret
;	Total ITC_GetSoftIntStatus function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 118: ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(IRQn_TypeDef IRQn)
; genLabel
;	-----------------------------------------
;	 function ITC_GetSoftwarePriority
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_ITC_GetSoftwarePriority:
	pushw	x
; genReceive
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 120: uint8_t Value = 0;
; genAssign
	clr	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 127: Mask = (uint8_t)(0x03U << ((IRQn % 4U) * 2U));
; genCast
; genAssign
	ldw	y, x
; genAnd
	push	a
	ld	a, yl
	and	a, #0x03
	ld	xh, a
	pop	a
; genCast
; genAssign
; genLeftShiftLiteral
	rlwa	x
	ld	(0x01, sp), a
	rrwa	x
	sll	(0x01, sp)
; genLeftShift
	push	a
	ld	a, #0x03
	ld	(0x03, sp), a
	ld	a, (0x02, sp)
	jreq	00142$
00141$:
	sll	(0x03, sp)
	dec	a
	jrne	00141$
00142$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 129: switch (IRQn)
; genCmp
; genCmpTnz
; peephole 6 removed dead pop / push pair.
	ld	a, xl
	cp	a, #0x1d
	pop	a
; peephole j5 changed absolute to relative unconditional jump.
	jrugt	00131$
; peephole j17 removed jp by using inverse jump logic
; peephole j30 removed unused label 00143$.
; skipping generated iCode
; genJumpTab
	rlwa	x
	clr	a
	rrwa	x
	sllw	x
	ldw	x, (#00144$, x)
	jp	(x)
00144$:
	.dw	#00131$
	.dw	#00103$
	.dw	#00103$
	.dw	#00103$
	.dw	#00107$
	.dw	#00107$
	.dw	#00107$
	.dw	#00107$
	.dw	#00111$
	.dw	#00111$
	.dw	#00111$
	.dw	#00111$
	.dw	#00115$
	.dw	#00115$
	.dw	#00115$
	.dw	#00115$
	.dw	#00119$
	.dw	#00119$
	.dw	#00119$
	.dw	#00119$
	.dw	#00123$
	.dw	#00123$
	.dw	#00123$
	.dw	#00123$
	.dw	#00127$
	.dw	#00127$
	.dw	#00127$
	.dw	#00127$
	.dw	#00129$
	.dw	#00129$
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 133: case DMA1_CHANNEL2_3_IRQn:
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 134: Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f70
; genAnd
	and	a, (0x02, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 135: break;
; genGoto
	jra	00131$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 141: case EXTID_IRQn:
; genLabel
00107$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 151: Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f71
; genAnd
	and	a, (0x02, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 152: break;
; genGoto
	jra	00131$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 157: case EXTI3_IRQn:
; genLabel
00111$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 158: Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f72
; genAnd
	and	a, (0x02, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 159: break;
; genGoto
	jra	00131$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 164: case EXTI7_IRQn:
; genLabel
00115$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 165: Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f73
; genAnd
	and	a, (0x02, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 166: break;
; genGoto
	jra	00131$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 176: case TIM2_UPD_OVF_TRG_BRK_IRQn:
; genLabel
00119$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 183: Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f74
; genAnd
	and	a, (0x02, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 184: break;
; genGoto
	jra	00131$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 193: case TIM3_CC_IRQn:
; genLabel
00123$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 199: Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f75
; genAnd
	and	a, (0x02, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 200: break;
; genGoto
	jra	00131$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 209: case USART1_TX_IRQn:
; genLabel
00127$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 213: Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f76
; genAnd
	and	a, (0x02, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 214: break;
; genGoto
	jra	00131$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 219: case I2C1_IRQn:
; genLabel
00129$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 224: Value = (uint8_t)(ITC->ISPR8 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f77
; genAnd
	and	a, (0x02, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 229: }
; genLabel
00131$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 231: Value >>= (uint8_t)((IRQn % 4u) * 2u);
; genRightShift
	push	a
	ld	a, (0x02, sp)
	jreq	00146$
00145$:
	srl	(1, sp)
	dec	a
	jrne	00145$
00146$:
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 233: return((ITC_PriorityLevel_TypeDef)Value);
; genReturn
; genLabel
; peephole j30 removed unused label 00132$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 235: }
; genEndFunction
	popw	x
	ret
;	Total ITC_GetSoftwarePriority function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 254: void ITC_SetSoftwarePriority(IRQn_TypeDef IRQn, ITC_PriorityLevel_TypeDef ITC_PriorityLevel)
; genLabel
;	-----------------------------------------
;	 function ITC_SetSoftwarePriority
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_ITC_SetSoftwarePriority:
	pushw	x
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 268: Mask = (uint8_t)(~(uint8_t)(0x03U << ((IRQn % 4U) * 2U)));
; genCast
; genAssign
	ld	xl, a
; peephole 4 removed redundant load from xl into a.
; genAnd
	and	a, #0x03
; genCast
; genAssign
; genLeftShiftLiteral
	sll	a
	ld	xh, a
; genLeftShift
	ld	a, #0x03
	push	a
	ld	a, xh
	tnz	a
	jreq	00142$
00141$:
	sll	(1, sp)
	dec	a
	jrne	00141$
00142$:
	pop	a
; genCpl
	cpl	a
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 270: NewPriority = (uint8_t)((uint8_t)(ITC_PriorityLevel) << ((IRQn % 4U) * 2U));
; genLeftShift
	ld	a, (0x05, sp)
	push	a
	ld	a, xh
	tnz	a
	jreq	00144$
00143$:
	sll	(1, sp)
	dec	a
	jrne	00143$
00144$:
	pop	a
	ld	(0x02, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 272: switch (IRQn)
; genCmp
; genCmpTnz
	ld	a, xl
	cp	a, #0x1d
	jrule	00145$
	jp	00132$
00145$:
; skipping generated iCode
; genJumpTab
	clr	a
	ld	xh, a
	sllw	x
	ldw	x, (#00146$, x)
	jp	(x)
00146$:
	.dw	#00132$
	.dw	#00103$
	.dw	#00103$
	.dw	#00103$
	.dw	#00107$
	.dw	#00107$
	.dw	#00107$
	.dw	#00107$
	.dw	#00111$
	.dw	#00111$
	.dw	#00111$
	.dw	#00111$
	.dw	#00115$
	.dw	#00115$
	.dw	#00115$
	.dw	#00115$
	.dw	#00119$
	.dw	#00119$
	.dw	#00119$
	.dw	#00119$
	.dw	#00123$
	.dw	#00123$
	.dw	#00123$
	.dw	#00123$
	.dw	#00127$
	.dw	#00127$
	.dw	#00127$
	.dw	#00127$
	.dw	#00129$
	.dw	#00129$
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 276: case DMA1_CHANNEL2_3_IRQn:
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 277: ITC->ISPR1 &= Mask;
; genPointerGet
	ld	a, 0x7f70
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f70, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 278: ITC->ISPR1 |= NewPriority;
; genPointerGet
	ld	a, 0x7f70
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f70, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 279: break;
; genGoto
	jra	00132$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 285: case EXTID_IRQn:
; genLabel
00107$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 295: ITC->ISPR2 &= Mask;
; genPointerGet
	ld	a, 0x7f71
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f71, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 296: ITC->ISPR2 |= NewPriority;
; genPointerGet
	ld	a, 0x7f71
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f71, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 297: break;
; genGoto
	jra	00132$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 302: case EXTI3_IRQn:
; genLabel
00111$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 303: ITC->ISPR3 &= Mask;
; genPointerGet
	ld	a, 0x7f72
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f72, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 304: ITC->ISPR3 |= NewPriority;
; genPointerGet
	ld	a, 0x7f72
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f72, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 305: break;
; genGoto
	jra	00132$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 310: case EXTI7_IRQn:
; genLabel
00115$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 311: ITC->ISPR4 &= Mask;
; genPointerGet
	ld	a, 0x7f73
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f73, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 312: ITC->ISPR4 |= NewPriority;
; genPointerGet
	ld	a, 0x7f73
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f73, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 313: break;
; genGoto
	jra	00132$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 322: case TIM2_UPD_OVF_TRG_BRK_IRQn:
; genLabel
00119$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 329: ITC->ISPR5 &= Mask;
; genPointerGet
	ld	a, 0x7f74
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f74, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 330: ITC->ISPR5 |= NewPriority;
; genPointerGet
	ld	a, 0x7f74
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f74, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 331: break;
; genGoto
	jra	00132$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 339: case TIM3_CC_IRQn:
; genLabel
00123$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 345: ITC->ISPR6 &= Mask;
; genPointerGet
	ld	a, 0x7f75
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f75, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 346: ITC->ISPR6 |= NewPriority;
; genPointerGet
	ld	a, 0x7f75
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f75, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 347: break;
; genGoto
	jra	00132$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 356: case USART1_TX_IRQn:
; genLabel
00127$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 360: ITC->ISPR7 &= Mask;
; genPointerGet
	ld	a, 0x7f76
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f76, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 361: ITC->ISPR7 |= NewPriority;
; genPointerGet
	ld	a, 0x7f76
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f76, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 362: break;
; genGoto
	jra	00132$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 367: case I2C1_IRQn:
; genLabel
00129$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 372: ITC->ISPR8 &= Mask;
; genPointerGet
	ld	a, 0x7f77
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f77, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 373: ITC->ISPR8 |= NewPriority;
; genPointerGet
	ld	a, 0x7f77
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f77, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 378: }
; genLabel
00132$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 379: }
; genEndFunction
	popw	x
	popw	x
	pop	a
	jp	(x)
;	Total ITC_SetSoftwarePriority function size at codegen: 4 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
