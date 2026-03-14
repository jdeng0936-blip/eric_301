;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_it
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C1_SPI2_IRQHandler
	.globl _USART1_RX_TIM5_CC_IRQHandler
	.globl _USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler
	.globl _SPI1_IRQHandler
	.globl _TIM4_UPD_OVF_TRG_IRQHandler
	.globl _TIM1_CC_IRQHandler
	.globl _TIM1_UPD_OVF_TRG_COM_IRQHandler
	.globl _TIM3_CC_USART3_RX_IRQHandler
	.globl _TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler
	.globl _TIM2_CC_USART2_RX_IRQHandler
	.globl _TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler
	.globl _ADC1_COMP_IRQHandler
	.globl _SWITCH_CSS_BREAK_DAC_IRQHandler
	.globl _LCD_AES_IRQHandler
	.globl _EXTI7_IRQHandler
	.globl _EXTI6_IRQHandler
	.globl _EXTI5_IRQHandler
	.globl _EXTI4_IRQHandler
	.globl _EXTI3_IRQHandler
	.globl _EXTI2_IRQHandler
	.globl _EXTI1_IRQHandler
	.globl _EXTI0_IRQHandler
	.globl _EXTID_H_IRQHandler
	.globl _EXTIB_G_IRQHandler
	.globl _EXTIE_F_PVD_IRQHandler
	.globl _RTC_CSSLSE_IRQHandler
	.globl _DMA1_CHANNEL2_3_IRQHandler
	.globl _DMA1_CHANNEL0_1_IRQHandler
	.globl _FLASH_IRQHandler
	.globl _TRAP_IRQHandler
	.globl _NonHandledInterrupt
	.globl _Scan_Key
	.globl _SendMsg
	.globl _WWDG_SetCounter
	.globl _USART_GetITStatus
	.globl _USART_ReceiveData8
	.globl _TIM4_ClearITPendingBit
	.globl _TIM2_ClearITPendingBit
	.globl _EXTI_ClearITPendingBit
	.globl _DMA_ClearITPendingBit
	.globl _ADC_DMACmd
	.globl _ADC_Cmd
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler_i_10000_704:
	.ds 1
_TIM4_UPD_OVF_TRG_IRQHandler_t200_10000_722:
	.ds 1
_TIM4_UPD_OVF_TRG_IRQHandler_t1000_10000_722:
	.ds 1
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
;	User/stm8l15x_it.c: 346: static uint8_t i=0;
; genAssign
	clr	_TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler_i_10000_704+0
;	User/stm8l15x_it.c: 431: static uint8_t t200=0,t1000=0;
; genAssign
	clr	_TIM4_UPD_OVF_TRG_IRQHandler_t200_10000_722+0
; genAssign
	clr	_TIM4_UPD_OVF_TRG_IRQHandler_t1000_10000_722+0
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	User/stm8l15x_it.c: 48: INTERRUPT_HANDLER(NonHandledInterrupt,0)
; genLabel
;	-----------------------------------------
;	 function NonHandledInterrupt
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_NonHandledInterrupt:
;	User/stm8l15x_it.c: 53: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total NonHandledInterrupt function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 62: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
; genLabel
;	-----------------------------------------
;	 function TRAP_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TRAP_IRQHandler:
;	User/stm8l15x_it.c: 67: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total TRAP_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 73: INTERRUPT_HANDLER(FLASH_IRQHandler,1)
; genLabel
;	-----------------------------------------
;	 function FLASH_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_FLASH_IRQHandler:
;	User/stm8l15x_it.c: 78: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total FLASH_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 84: INTERRUPT_HANDLER(DMA1_CHANNEL0_1_IRQHandler,2)
; genLabel
;	-----------------------------------------
;	 function DMA1_CHANNEL0_1_IRQHandler
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_DMA1_CHANNEL0_1_IRQHandler:
;	Reset bit 6 of reg CC. Hardware bug workaround.
	div	x, a
	sub	sp, #4
;	User/stm8l15x_it.c: 87: uint32_t val=0;
; genAssign
	clrw	x
	ldw	(0x03, sp), x
	ldw	(0x01, sp), x
;	User/stm8l15x_it.c: 92: DMA_ClearITPendingBit(DMA1_IT_TC0);
; genSend
	ld	a, #0x12
; genCall
	call	_DMA_ClearITPendingBit
;	User/stm8l15x_it.c: 93: ADC_Cmd(ADC1, DISABLE);
; genSend
	clr	a
; genSend
	ldw	x, #0x5340
; genCall
	call	_ADC_Cmd
;	User/stm8l15x_it.c: 94: ADC_DMACmd(ADC1, DISABLE);
; genSend
	clr	a
; genSend
	ldw	x, #0x5340
; genCall
	call	_ADC_DMACmd
;	User/stm8l15x_it.c: 96: for(i=0; i<10; i++)
; skipping iCode since result will be rematerialized
; genAssign
	clr	a
; genLabel
00102$:
;	User/stm8l15x_it.c: 98: val+=dmabuf[i];
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genLeftShiftLiteral
	sllw	x
; genPlus
; genPointerGet
; peephole 10d moved addition of offset into storage instruction
	ldw	x, (_dmabuf+0, x)
; genCast
; genAssign
	clrw	y
; genPlus
	addw	x, (0x03, sp)
	ldw	(0x03, sp), x
	push	a
	clr	a
	adc	a, (0x03, sp)
	ld	(0x03, sp), a
	clr	a
	adc	a, (0x02, sp)
	ld	(0x02, sp), a
	pop	a
;	User/stm8l15x_it.c: 96: for(i=0; i<10; i++)
; genPlus
	inc	a
; genCmp
; genCmpTnz
	cp	a, #0x0a
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00102$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00121$.
; skipping generated iCode
;	User/stm8l15x_it.c: 100: SendMsg(&MsgSystem,MSG_ADC,val,0);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	clrw	x
	pushw	x
	clrw	x
	pushw	x
; genIPush
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
; genSend
	ld	a, #0x04
; genSend
	ldw	x, #(_MsgSystem+0)
; genCall
	call	_SendMsg
; genLabel
; peephole j30 removed unused label 00104$.
;	User/stm8l15x_it.c: 110: }
; genEndFunction
	addw	sp, #4
	iret
;	Total DMA1_CHANNEL0_1_IRQHandler function size at codegen: 3 bytes.
;	User/stm8l15x_it.c: 116: INTERRUPT_HANDLER(DMA1_CHANNEL2_3_IRQHandler,3)
; genLabel
;	-----------------------------------------
;	 function DMA1_CHANNEL2_3_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_DMA1_CHANNEL2_3_IRQHandler:
;	User/stm8l15x_it.c: 121: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total DMA1_CHANNEL2_3_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 127: INTERRUPT_HANDLER(RTC_CSSLSE_IRQHandler,4)
; genLabel
;	-----------------------------------------
;	 function RTC_CSSLSE_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_RTC_CSSLSE_IRQHandler:
;	User/stm8l15x_it.c: 132: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total RTC_CSSLSE_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 138: INTERRUPT_HANDLER(EXTIE_F_PVD_IRQHandler,5)
; genLabel
;	-----------------------------------------
;	 function EXTIE_F_PVD_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTIE_F_PVD_IRQHandler:
;	User/stm8l15x_it.c: 143: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total EXTIE_F_PVD_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 150: INTERRUPT_HANDLER(EXTIB_G_IRQHandler,6)
; genLabel
;	-----------------------------------------
;	 function EXTIB_G_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTIB_G_IRQHandler:
;	User/stm8l15x_it.c: 155: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total EXTIB_G_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 162: INTERRUPT_HANDLER(EXTID_H_IRQHandler,7)
; genLabel
;	-----------------------------------------
;	 function EXTID_H_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTID_H_IRQHandler:
;	User/stm8l15x_it.c: 167: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total EXTID_H_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 174: INTERRUPT_HANDLER(EXTI0_IRQHandler,8)
; genLabel
;	-----------------------------------------
;	 function EXTI0_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI0_IRQHandler:
;	Reset bit 6 of reg CC. Hardware bug workaround.
	div	x, a
;	User/stm8l15x_it.c: 179: EXTI_ClearITPendingBit (EXTI_IT_Pin0);
; genSend
	clrw	x
	incw	x
; genCall
	call	_EXTI_ClearITPendingBit
; genLabel
; peephole j30 removed unused label 00101$.
;	User/stm8l15x_it.c: 180: }
; genEndFunction
	iret
;	Total EXTI0_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 187: INTERRUPT_HANDLER(EXTI1_IRQHandler,9)
; genLabel
;	-----------------------------------------
;	 function EXTI1_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI1_IRQHandler:
;	Reset bit 6 of reg CC. Hardware bug workaround.
	div	x, a
;	User/stm8l15x_it.c: 192: EXTI_ClearITPendingBit (EXTI_IT_Pin1);
; genSend
	ldw	x, #0x0002
; genCall
	call	_EXTI_ClearITPendingBit
; genLabel
; peephole j30 removed unused label 00101$.
;	User/stm8l15x_it.c: 193: }
; genEndFunction
	iret
;	Total EXTI1_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 200: INTERRUPT_HANDLER(EXTI2_IRQHandler,10)
; genLabel
;	-----------------------------------------
;	 function EXTI2_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI2_IRQHandler:
;	Reset bit 6 of reg CC. Hardware bug workaround.
	div	x, a
;	User/stm8l15x_it.c: 205: EXTI_ClearITPendingBit (EXTI_IT_Pin2);
; genSend
	ldw	x, #0x0004
; genCall
	call	_EXTI_ClearITPendingBit
; genLabel
; peephole j30 removed unused label 00101$.
;	User/stm8l15x_it.c: 206: }
; genEndFunction
	iret
;	Total EXTI2_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 213: INTERRUPT_HANDLER(EXTI3_IRQHandler,11)
; genLabel
;	-----------------------------------------
;	 function EXTI3_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI3_IRQHandler:
;	Reset bit 6 of reg CC. Hardware bug workaround.
	div	x, a
;	User/stm8l15x_it.c: 218: EXTI_ClearITPendingBit (EXTI_IT_Pin3);
; genSend
	ldw	x, #0x0008
; genCall
	call	_EXTI_ClearITPendingBit
; genLabel
; peephole j30 removed unused label 00101$.
;	User/stm8l15x_it.c: 219: }
; genEndFunction
	iret
;	Total EXTI3_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 226: INTERRUPT_HANDLER(EXTI4_IRQHandler,12)
; genLabel
;	-----------------------------------------
;	 function EXTI4_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI4_IRQHandler:
;	Reset bit 6 of reg CC. Hardware bug workaround.
	div	x, a
;	User/stm8l15x_it.c: 233: EXTI_ClearITPendingBit (EXTI_IT_Pin4);
; genSend
	ldw	x, #0x0010
; genCall
	call	_EXTI_ClearITPendingBit
; genLabel
; peephole j30 removed unused label 00101$.
;	User/stm8l15x_it.c: 234: }
; genEndFunction
	iret
;	Total EXTI4_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 241: INTERRUPT_HANDLER(EXTI5_IRQHandler,13)
; genLabel
;	-----------------------------------------
;	 function EXTI5_IRQHandler
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_EXTI5_IRQHandler:
;	Reset bit 6 of reg CC. Hardware bug workaround.
	div	x, a
;	User/stm8l15x_it.c: 246: EXTI_ClearITPendingBit (EXTI_IT_Pin5);
; genSend
	ldw	x, #0x0020
; genCall
	call	_EXTI_ClearITPendingBit
;	User/stm8l15x_it.c: 247: if (strokeA.tim_trg > 0)//首次被中断触发，开始计时
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, #(_strokeA+0)
; genPointerGet
; genIfx
	ld	a, (x)
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	User/stm8l15x_it.c: 249: strokeA.tim_trg = 0;
; genPointerSet
	clr	(x)
;	User/stm8l15x_it.c: 250: strokeA.tim_s = ticks;
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_strokeA+4, _ticks+3
	mov	_strokeA+3, _ticks+2
	mov	_strokeA+2, _ticks+1
	mov	_strokeA+1, _ticks+0
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/stm8l15x_it.c: 254: strokeA.tim_e = ticks;
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_strokeA+8, _ticks+3
	mov	_strokeA+7, _ticks+2
	mov	_strokeA+6, _ticks+1
	mov	_strokeA+5, _ticks+0
; genLabel
00104$:
;	User/stm8l15x_it.c: 256: }
; genEndFunction
	iret
;	Total EXTI5_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 263: INTERRUPT_HANDLER(EXTI6_IRQHandler,14)
; genLabel
;	-----------------------------------------
;	 function EXTI6_IRQHandler
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_EXTI6_IRQHandler:
;	Reset bit 6 of reg CC. Hardware bug workaround.
	div	x, a
;	User/stm8l15x_it.c: 268: EXTI_ClearITPendingBit (EXTI_IT_Pin6);
; genSend
	ldw	x, #0x0040
; genCall
	call	_EXTI_ClearITPendingBit
;	User/stm8l15x_it.c: 269: if (strokeB.tim_trg > 0)//首次被中断触发，开始计时
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, #(_strokeB+0)
; genPointerGet
; genIfx
	ld	a, (x)
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	User/stm8l15x_it.c: 271: strokeB.tim_trg = 0;
; genPointerSet
	clr	(x)
;	User/stm8l15x_it.c: 272: strokeB.tim_s = ticks;
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_strokeB+4, _ticks+3
	mov	_strokeB+3, _ticks+2
	mov	_strokeB+2, _ticks+1
	mov	_strokeB+1, _ticks+0
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/stm8l15x_it.c: 276: strokeB.tim_e = ticks;
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_strokeB+8, _ticks+3
	mov	_strokeB+7, _ticks+2
	mov	_strokeB+6, _ticks+1
	mov	_strokeB+5, _ticks+0
; genLabel
00104$:
;	User/stm8l15x_it.c: 279: }
; genEndFunction
	iret
;	Total EXTI6_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 286: INTERRUPT_HANDLER(EXTI7_IRQHandler,15)
; genLabel
;	-----------------------------------------
;	 function EXTI7_IRQHandler
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_EXTI7_IRQHandler:
;	Reset bit 6 of reg CC. Hardware bug workaround.
	div	x, a
;	User/stm8l15x_it.c: 291: EXTI_ClearITPendingBit (EXTI_IT_Pin7);
; genSend
	ldw	x, #0x0080
; genCall
	call	_EXTI_ClearITPendingBit
;	User/stm8l15x_it.c: 292: if (strokeC.tim_trg > 0)//首次被中断触发，开始计时
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, #(_strokeC+0)
; genPointerGet
; genIfx
	ld	a, (x)
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	User/stm8l15x_it.c: 294: strokeC.tim_trg = 0;
; genPointerSet
	clr	(x)
;	User/stm8l15x_it.c: 295: strokeC.tim_s = ticks;
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_strokeC+4, _ticks+3
	mov	_strokeC+3, _ticks+2
	mov	_strokeC+2, _ticks+1
	mov	_strokeC+1, _ticks+0
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/stm8l15x_it.c: 299: strokeC.tim_e = ticks;
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_strokeC+8, _ticks+3
	mov	_strokeC+7, _ticks+2
	mov	_strokeC+6, _ticks+1
	mov	_strokeC+5, _ticks+0
; genLabel
00104$:
;	User/stm8l15x_it.c: 301: }
; genEndFunction
	iret
;	Total EXTI7_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 307: INTERRUPT_HANDLER(LCD_AES_IRQHandler,16)
; genLabel
;	-----------------------------------------
;	 function LCD_AES_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_LCD_AES_IRQHandler:
;	User/stm8l15x_it.c: 312: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total LCD_AES_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 318: INTERRUPT_HANDLER(SWITCH_CSS_BREAK_DAC_IRQHandler,17)
; genLabel
;	-----------------------------------------
;	 function SWITCH_CSS_BREAK_DAC_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SWITCH_CSS_BREAK_DAC_IRQHandler:
;	User/stm8l15x_it.c: 323: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total SWITCH_CSS_BREAK_DAC_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 330: INTERRUPT_HANDLER(ADC1_COMP_IRQHandler,18)
; genLabel
;	-----------------------------------------
;	 function ADC1_COMP_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC1_COMP_IRQHandler:
;	User/stm8l15x_it.c: 335: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total ADC1_COMP_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 344: INTERRUPT_HANDLER(TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler,19)
; genLabel
;	-----------------------------------------
;	 function TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler:
;	Reset bit 6 of reg CC. Hardware bug workaround.
	div	x, a
;	User/stm8l15x_it.c: 351: TIM2_ClearITPendingBit(TIM2_IT_Update);
; genSend
	ld	a, #0x01
; genCall
	call	_TIM2_ClearITPendingBit
;	User/stm8l15x_it.c: 352: ticks=(ticks+1)%0xffffffff;
; genPlus
	ldw	x, _ticks+2
	addw	x, #0x0001
	ldw	y, _ticks+0
	jrnc	00112$
	incw	y
00112$:
; genIPush
	push	#0xff
	push	#0xff
	push	#0xff
	push	#0xff
; genIPush
	pushw	x
	pushw	y
; genCall
	call	__modulong
	addw	sp, #8
; genAssign
	ldw	_ticks+2, x
	ldw	_ticks+0, y
;	User/stm8l15x_it.c: 354: if(++i>250)
; genPlus
	inc	_TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler_i_10000_704+0
; genCmp
; genCmpTnz
	ld	a, _TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler_i_10000_704+0
	cp	a, #0xfa
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00103$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
; skipping generated iCode
;	User/stm8l15x_it.c: 356: i=0;
; genAssign
	clr	_TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler_i_10000_704+0
;	User/stm8l15x_it.c: 357: WWDG_SetCounter(0x7f);//49.15ms
; genSend
	ld	a, #0x7f
; genCall
	call	_WWDG_SetCounter
;	User/stm8l15x_it.c: 358: Scan_Key();//按键扫描
; genCall
	call	_Scan_Key
; genLabel
00103$:
;	User/stm8l15x_it.c: 361: }
; genEndFunction
	iret
;	Total TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 368: INTERRUPT_HANDLER(TIM2_CC_USART2_RX_IRQHandler,20)
; genLabel
;	-----------------------------------------
;	 function TIM2_CC_USART2_RX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_CC_USART2_RX_IRQHandler:
;	User/stm8l15x_it.c: 373: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total TIM2_CC_USART2_RX_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 381: INTERRUPT_HANDLER(TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler,21)
; genLabel
;	-----------------------------------------
;	 function TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler:
;	User/stm8l15x_it.c: 386: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 392: INTERRUPT_HANDLER(TIM3_CC_USART3_RX_IRQHandler,22)
; genLabel
;	-----------------------------------------
;	 function TIM3_CC_USART3_RX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM3_CC_USART3_RX_IRQHandler:
;	User/stm8l15x_it.c: 397: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total TIM3_CC_USART3_RX_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 403: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_COM_IRQHandler,23)
; genLabel
;	-----------------------------------------
;	 function TIM1_UPD_OVF_TRG_COM_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_UPD_OVF_TRG_COM_IRQHandler:
;	User/stm8l15x_it.c: 408: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total TIM1_UPD_OVF_TRG_COM_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 414: INTERRUPT_HANDLER(TIM1_CC_IRQHandler,24)
; genLabel
;	-----------------------------------------
;	 function TIM1_CC_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_CC_IRQHandler:
;	User/stm8l15x_it.c: 419: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total TIM1_CC_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 426: INTERRUPT_HANDLER(TIM4_UPD_OVF_TRG_IRQHandler,25)//20ms
; genLabel
;	-----------------------------------------
;	 function TIM4_UPD_OVF_TRG_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_UPD_OVF_TRG_IRQHandler:
;	Reset bit 6 of reg CC. Hardware bug workaround.
	div	x, a
;	User/stm8l15x_it.c: 433: TIM4_ClearITPendingBit(TIM4_IT_Update);
; genSend
	ld	a, #0x01
; genCall
	call	_TIM4_ClearITPendingBit
;	User/stm8l15x_it.c: 435: if(++t200>=1)//200ms
; genPlus
	inc	_TIM4_UPD_OVF_TRG_IRQHandler_t200_10000_722+0
; genCmp
; genCmpTnz
	ld	a, _TIM4_UPD_OVF_TRG_IRQHandler_t200_10000_722+0
	cp	a, #0x01
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00102$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00121$.
; skipping generated iCode
;	User/stm8l15x_it.c: 437: t200=0;
; genAssign
	clr	_TIM4_UPD_OVF_TRG_IRQHandler_t200_10000_722+0
;	User/stm8l15x_it.c: 438: SendMsg(&MsgSystem,MSG_TIMER,0,0);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	clrw	x
	pushw	x
	clrw	x
	pushw	x
; genIPush
	clrw	x
	pushw	x
	clrw	x
	pushw	x
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #(_MsgSystem+0)
; genCall
	call	_SendMsg
; genLabel
00102$:
;	User/stm8l15x_it.c: 440: if(++t1000>=2)//500ms
; genPlus
	inc	_TIM4_UPD_OVF_TRG_IRQHandler_t1000_10000_722+0
; genCmp
; genCmpTnz
	ld	a, _TIM4_UPD_OVF_TRG_IRQHandler_t1000_10000_722+0
	cp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00105$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00122$.
; skipping generated iCode
;	User/stm8l15x_it.c: 442: t1000=0;
; genAssign
	clr	_TIM4_UPD_OVF_TRG_IRQHandler_t1000_10000_722+0
;	User/stm8l15x_it.c: 443: SendMsg(&MsgSystem,MSG_KEY_TIMER,FRESH_TIME,0);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	clrw	x
	pushw	x
	clrw	x
	pushw	x
; genIPush
	push	#0x63
	clrw	x
	pushw	x
	push	#0x00
; genSend
	ld	a, #0x02
; genSend
	ldw	x, #(_MsgSystem+0)
; genCall
	call	_SendMsg
; genLabel
00105$:
;	User/stm8l15x_it.c: 462: }
; genEndFunction
	iret
;	Total TIM4_UPD_OVF_TRG_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 468: INTERRUPT_HANDLER(SPI1_IRQHandler,26)
; genLabel
;	-----------------------------------------
;	 function SPI1_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI1_IRQHandler:
;	User/stm8l15x_it.c: 473: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total SPI1_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 480: INTERRUPT_HANDLER(USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler,27)
; genLabel
;	-----------------------------------------
;	 function USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler:
;	User/stm8l15x_it.c: 485: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler function size at codegen: 1 bytes.
;	User/stm8l15x_it.c: 492: INTERRUPT_HANDLER(USART1_RX_TIM5_CC_IRQHandler,28)
; genLabel
;	-----------------------------------------
;	 function USART1_RX_TIM5_CC_IRQHandler
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_USART1_RX_TIM5_CC_IRQHandler:
;	Reset bit 6 of reg CC. Hardware bug workaround.
	div	x, a
	sub	sp, #4
;	User/stm8l15x_it.c: 497: if(USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)
; genIPush
	push	#0x55
	push	#0x02
; genSend
	ldw	x, #0x5230
; genCall
	call	_USART_GetITStatus
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00131$.
;	User/stm8l15x_it.c: 499: u1buf.recbuf[u1buf.w]=USART_ReceiveData8(USART1);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, _u1buf+2
; genPlus
	addw	x, #(_u1buf+6)
; genSend
	pushw	x
	ldw	x, #0x5230
; genCall
	call	_USART_ReceiveData8
	popw	x
; genPointerSet
	ld	(x), a
;	User/stm8l15x_it.c: 500: u1buf.w=(u1buf.w+1)%(UBUFLEN);
; genPointerGet
	ldw	x, _u1buf+2
; genCast
; genAssign
; genPlus
	incw	x
; peephole 0 removed dead load into a from xh.
; genAnd
	clr	a
	ld	xh, a
; genCast
; genAssign
	exgw	x, y
; genPointerSet
	ldw	_u1buf+2, y
;	User/stm8l15x_it.c: 502: if(u1buf.r!=u1buf.w)
; genPointerGet
	ldw	x, _u1buf+0
	ldw	(0x01, sp), x
; genCmpEQorNE
	ldw	x, y
	cpw	x, (0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00133$.
; skipping generated iCode
;	User/stm8l15x_it.c: 504: if(u1buf.w>u1buf.r)
; genPointerGet
	ldw	x, _u1buf+2
;	User/stm8l15x_it.c: 505: u1buf.revn=u1buf.w-u1buf.r;
; skipping iCode since result will be rematerialized
;	User/stm8l15x_it.c: 504: if(u1buf.w>u1buf.r)
; genCmp
; genCmpTnz
	cpw	x, (0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00102$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00135$.
; skipping generated iCode
;	User/stm8l15x_it.c: 505: u1buf.revn=u1buf.w-u1buf.r;
; genMinus
	subw	x, (0x01, sp)
; genPointerSet
	ldw	_u1buf+4, x
; genGoto
	jra	00108$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/stm8l15x_it.c: 507: u1buf.revn=UBUFLEN-u1buf.r+u1buf.w;
; genMinus
	ld	a, (0x02, sp)
	neg	a
	ld	(0x04, sp), a
	ld	a, #0x01
	sbc	a, (0x01, sp)
	ld	(0x03, sp), a
; genPlus
	addw	x, (0x03, sp)
; genPointerSet
	ldw	_u1buf+4, x
; genLabel
00108$:
;	User/stm8l15x_it.c: 511: }
; genEndFunction
	addw	sp, #4
	iret
;	Total USART1_RX_TIM5_CC_IRQHandler function size at codegen: 3 bytes.
;	User/stm8l15x_it.c: 518: INTERRUPT_HANDLER(I2C1_SPI2_IRQHandler,29)
; genLabel
;	-----------------------------------------
;	 function I2C1_SPI2_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_I2C1_SPI2_IRQHandler:
;	User/stm8l15x_it.c: 523: }
; genLabel
; peephole j30 removed unused label 00101$.
; genEndFunction
	iret
;	Total I2C1_SPI2_IRQHandler function size at codegen: 1 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
