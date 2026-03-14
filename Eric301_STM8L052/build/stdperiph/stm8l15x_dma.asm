;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_dma
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DMA_GlobalDeInit
	.globl _DMA_DeInit
	.globl _DMA_Init
	.globl _DMA_GlobalCmd
	.globl _DMA_Cmd
	.globl _DMA_SetTimeOut
	.globl _DMA_SetCurrDataCounter
	.globl _DMA_GetCurrDataCounter
	.globl _DMA_ITConfig
	.globl _DMA_GetFlagStatus
	.globl _DMA_ClearFlag
	.globl _DMA_GetITStatus
	.globl _DMA_ClearITPendingBit
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 140: void DMA_GlobalDeInit(void)
; genLabel
;	-----------------------------------------
;	 function DMA_GlobalDeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_DMA_GlobalDeInit:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 143: DMA1->GCSR &= (uint8_t)~(DMA_GCSR_GE);
; genPointerGet
; genAnd
; genPointerSet
	bres	0x5070, #0
; peephole 204x replaced 'and' by 'bres' ('0x5070').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 146: DMA1->GCSR  = (uint8_t)DMA_GCSR_RESET_VALUE;
; genPointerSet
	mov	0x5070+0, #0xfc
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 147: }
; genEndFunction
	ret
;	Total DMA_GlobalDeInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 155: void DMA_DeInit(DMA_Channel_TypeDef* DMA_Channelx)
; genLabel
;	-----------------------------------------
;	 function DMA_DeInit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_DMA_DeInit:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 161: DMA_Channelx->CCR &= (uint8_t)~(DMA_CCR_CE);
; genCast
; genAssign
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 164: DMA_Channelx->CCR  = DMA_CCR_RESET_VALUE;
; genPointerSet
	clr	(x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 167: DMA_Channelx->CNBTR = DMA_CNBTR_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 10i moved addition of offset into instruction
	clr	(0x02, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 172: DMA_Channelx->CPARH  = DMA_C3PARH_RESET_VALUE;
; genPlus
	ldw	x, y
	addw	x, #0x0003
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 170: if (DMA_Channelx == DMA1_Channel3)
; genCmpEQorNE
	cpw	y, #0x5093
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00114$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00115$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 172: DMA_Channelx->CPARH  = DMA_C3PARH_RESET_VALUE;
; genPointerSet
	ld	a, #0x40
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 173: DMA_Channelx->CM0EAR = DMA_C3M0EAR_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0005, x)
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 177: DMA_Channelx->CPARH  = DMA_CPARH_RESET_VALUE;
; genPointerSet
	ld	a, #0x52
	ld	(x), a
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 179: DMA_Channelx->CPARL  = DMA_CPARL_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0004, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 182: DMA_Channelx->CM0ARH = DMA_CM0ARH_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0006, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 183: DMA_Channelx->CM0ARL = DMA_CM0ARL_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0007, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 186: DMA_Channelx->CSPR = DMA_CSPR_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 10j moved addition of offset into instruction
	clr	(0x01, x)
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 187: }
; genEndFunction
	ret
;	Total DMA_DeInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 224: void DMA_Init(DMA_Channel_TypeDef* DMA_Channelx,
; genLabel
;	-----------------------------------------
;	 function DMA_Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_DMA_Init:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 244: DMA_Channelx->CCR &= (uint8_t)~(DMA_CCR_CE);
; genCast
; genAssign
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 247: DMA_Channelx->CCR  = DMA_CCR_RESET_VALUE;
; genPointerSet
	clr	(x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 250: DMA_Channelx->CCR |= (uint8_t)((uint8_t)((uint8_t)DMA_DIR | \
; genOr
	ld	a, (0x0b, sp)
	or	a, (0x0c, sp)
; genOr
	or	a, (0x0d, sp)
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 255: DMA_Channelx->CSPR &= (uint8_t)(~(uint8_t)(DMA_CSPR_PL | DMA_CSPR_16BM));
; genPlus
	ldw	x, y
	incw	x
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0xc7
; genPointerSet
	ld	(0x01, sp), a
; peephole 4a removed redundant load from (0x01, sp) into a.
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 258: DMA_Channelx->CSPR |= (uint8_t)((uint8_t)DMA_Priority | \
; genOr
	ld	a, (0x0e, sp)
	or	a, (0x0f, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 263: DMA_Channelx->CNBTR = (uint8_t)DMA_BufferSize;
; genPlus
	ldw	x, y
	incw	x
	incw	x
; genPointerSet
	ld	a, (0x0a, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 268: DMA_Channelx->CPARH = (uint8_t)(DMA_PeripheralMemory1BaseAddr >> (uint8_t)8);
; genPlus
; genGetByte
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, (0x08, sp)
	ld	(0x0003, y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 269: DMA_Channelx->CPARL = (uint8_t)(DMA_PeripheralMemory1BaseAddr);
; genPlus
; genCast
; genAssign
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, (0x09, sp)
	ld	(0x0004, y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 273: if (DMA_Channelx == DMA1_Channel3)
; genCmpEQorNE
	cpw	y, #0x5093
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00114$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 275: DMA_Channelx->CM0EAR = (uint8_t)(DMA_Memory0BaseAddr >> (uint8_t)16);
; genPlus
; genGetByte
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, (0x05, sp)
	ld	(0x0005, y), a
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 277: DMA_Channelx->CM0ARH = (uint8_t)(DMA_Memory0BaseAddr >> (uint8_t)8);
; genPlus
; genGetByte
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, (0x06, sp)
	ld	(0x0006, y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 278: DMA_Channelx->CM0ARL = (uint8_t)(DMA_Memory0BaseAddr);
; genPlus
; genCast
; genAssign
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, (0x07, sp)
	ld	(0x0007, y), a
; genLabel
; peephole j30 removed unused label 00103$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 280: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #15
	jp	(x)
;	Total DMA_Init function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 288: void DMA_GlobalCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function DMA_GlobalCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_DMA_GlobalCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 296: DMA1->GCSR |= (uint8_t)DMA_GCSR_GE;
; genPointerGet
	ld	a, 0x5070
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 293: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 296: DMA1->GCSR |= (uint8_t)DMA_GCSR_GE;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5070, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 301: DMA1->GCSR &= (uint8_t)(~DMA_GCSR_GE);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5070, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 303: }
; genEndFunction
	pop	a
	ret
;	Total DMA_GlobalCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 314: void DMA_Cmd(DMA_Channel_TypeDef* DMA_Channelx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function DMA_Cmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_DMA_Cmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 323: DMA_Channelx->CCR |= DMA_CCR_CE;
; genCast
; genAssign
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 320: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 323: DMA_Channelx->CCR |= DMA_CCR_CE;
; genOr
	or	a, #0x01
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 328: DMA_Channelx->CCR &= (uint8_t)(~DMA_CCR_CE);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 330: }
; genEndFunction
	pop	a
	ret
;	Total DMA_Cmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 342: void DMA_SetTimeOut(uint8_t DMA_TimeOut)
; genLabel
;	-----------------------------------------
;	 function DMA_SetTimeOut
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_DMA_SetTimeOut:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 348: DMA1->GCSR = 0;
; genPointerSet
	mov	0x5070+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 349: DMA1->GCSR = (uint8_t)(DMA_TimeOut << (uint8_t)2);
; genLeftShiftLiteral
	sll	a
	sll	a
; genPointerSet
	ld	0x5070, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 351: }
; genEndFunction
	ret
;	Total DMA_SetTimeOut function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 401: void DMA_SetCurrDataCounter(DMA_Channel_TypeDef* DMA_Channelx, uint8_t DataNumber)
; genLabel
;	-----------------------------------------
;	 function DMA_SetCurrDataCounter
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_DMA_SetCurrDataCounter:
; genReceive
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 407: DMA_Channelx->CNBTR = DataNumber;
; genPlus
	incw	x
	incw	x
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 408: }
; genEndFunction
	ret
;	Total DMA_SetCurrDataCounter function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 415: uint8_t DMA_GetCurrDataCounter(DMA_Channel_TypeDef* DMA_Channelx)
; genLabel
;	-----------------------------------------
;	 function DMA_GetCurrDataCounter
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_DMA_GetCurrDataCounter:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 421: return ((uint8_t)(DMA_Channelx->CNBTR));
; genAssign
; genPointerGet
	ld	a, (0x2, x)
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 422: }
; genEndFunction
	ret
;	Total DMA_GetCurrDataCounter function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 482: void DMA_ITConfig(DMA_Channel_TypeDef* DMA_Channelx, 
; genLabel
;	-----------------------------------------
;	 function DMA_ITConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_DMA_ITConfig:
	push	a
; genReceive
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 494: DMA_Channelx->CCR |= (uint8_t)(DMA_ITx);
; genCast
; genAssign
; genPointerGet
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 491: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 494: DMA_Channelx->CCR |= (uint8_t)(DMA_ITx);
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 499: DMA_Channelx->CCR &= (uint8_t)~(DMA_ITx);
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 501: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total DMA_ITConfig function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 530: FlagStatus DMA_GetFlagStatus(DMA_FLAG_TypeDef DMA_FLAG)
; genLabel
;	-----------------------------------------
;	 function DMA_GetFlagStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_DMA_GetFlagStatus:
	sub	sp, #3
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 541: tmpgcsr = DMA1->GCSR;
; genPointerGet
	ld	a, 0x5070
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 542: tmpgir1 = DMA1->GIR1;
; genPointerGet
	ld	a, 0x5071
	ld	(0x02, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 565: flagstatus = (FlagStatus)((uint8_t)(DMA_Channelx->CSPR) & (uint8_t)DMA_FLAG);
; genCast
; genAssign
	exg	a, xl
	ld	(0x03, sp), a
	exg	a, xl
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 544: if (((uint16_t)DMA_FLAG & (uint16_t)0x0F00) != (uint16_t)RESET)
; genAnd
	ld	a, xh
	bcp	a, #0x0f
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00114$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00153$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 547: if (((uint16_t)DMA_FLAG & 0x0100) != (uint16_t)RESET)
; genAnd
	ld	a, xh
	srl	a
; peephole j5 changed absolute to relative unconditional jump.
	jrnc	00108$
; peephole j6 removed jra by using inverse jump logic
; peephole j30 removed unused label 00154$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 549: DMA_Channelx = DMA1_Channel0;
; genAssign
	ldw	x, #0x5075
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 551: else if  (((uint16_t)DMA_FLAG & 0x0200) != (uint16_t)RESET)
; genAnd
	ld	a, xh
	bcp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00155$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 553: DMA_Channelx = DMA1_Channel1;
; genAssign
	ldw	x, #0x507f
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 555: else if  (((uint16_t)DMA_FLAG & 0x0400) != (uint16_t)RESET)
; genAnd
	ld	a, xh
	bcp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00156$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 557: DMA_Channelx = DMA1_Channel2;
; genAssign
	ldw	x, #0x5089
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 561: DMA_Channelx = DMA1_Channel3;
; genAssign
; genLabel
	.byte 0xbc
; peephole jrf10 used ldf opcode to jump over 3-byte instruction.
00102$:
	ldw	x, #0x5093
00109$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 565: flagstatus = (FlagStatus)((uint8_t)(DMA_Channelx->CSPR) & (uint8_t)DMA_FLAG);
; genAssign
; genPointerGet
	ld	a, (0x1, x)
; genAnd
	and	a, (0x03, sp)
; genCast
	neg	a
	clr	a
	rlc	a
; genGoto
	jra	00115$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00114$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 567: else if (((uint16_t)DMA_FLAG & 0x1000) != (uint16_t)RESET)
; genAnd
	ld	a, xh
	bcp	a, #0x10
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00111$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00157$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 570: flagstatus = (FlagStatus)(tmpgir1 & (uint8_t)DMA_FLAG);
; genAnd
	ld	a, (0x02, sp)
	and	a, (0x03, sp)
; genCast
	neg	a
	clr	a
	rlc	a
; genGoto
	jra	00115$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00111$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 575: flagstatus = (FlagStatus)(tmpgcsr & DMA_GCSR_GB);
; genGetABit
	ld	a, (0x01, sp)
	srl	a
	and	a, #0x01
; genLabel
00115$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 579: return (flagstatus);
; genReturn
; genLabel
; peephole j30 removed unused label 00116$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 580: }
; genEndFunction
	addw	sp, #3
	ret
;	Total DMA_GetFlagStatus function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 597: void DMA_ClearFlag(DMA_FLAG_TypeDef DMA_FLAG)
; genLabel
;	-----------------------------------------
;	 function DMA_ClearFlag
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_DMA_ClearFlag:
	push	a
; genReceive
	ldw	y, x
	ld	a, xh
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 605: if (((uint16_t)DMA_FLAG & (uint16_t)0x0100) != (uint16_t)RESET)
; genAnd
	bcp	a, #0x01
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00133$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 607: DMA_Channelx = DMA1_Channel0;
; genAssign
	ldw	x, #0x5075
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 611: if (((uint16_t)DMA_FLAG & (uint16_t)0x0200) != (uint16_t)RESET)
; genAnd
	bcp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00134$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 613: DMA_Channelx = DMA1_Channel1;
; genAssign
	ldw	x, #0x507f
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 617: if (((uint16_t)DMA_FLAG & (uint16_t)0x0400) != (uint16_t)RESET)
; genAnd
	bcp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00135$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 619: DMA_Channelx = DMA1_Channel2;
; genAssign
	ldw	x, #0x5089
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 623: DMA_Channelx = DMA1_Channel3;
; genAssign
	ldw	x, #0x5093
; genLabel
00109$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 629: DMA_Channelx->CSPR &= (uint8_t)~(uint8_t)((uint8_t)DMA_FLAG & (uint8_t)0x06);
; genPlus
	incw	x
; genPointerGet
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
; genCast
; genAssign
	ld	a, yl
; genAnd
	and	a, #0x06
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00110$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 630: }
; genEndFunction
	pop	a
	ret
;	Total DMA_ClearFlag function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 646: ITStatus DMA_GetITStatus(DMA_IT_TypeDef DMA_IT)
; genLabel
;	-----------------------------------------
;	 function DMA_GetITStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_DMA_GetITStatus:
	pushw	x
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 657: if ((DMA_IT & 0x10) != (uint8_t)RESET)
; genAnd
	ld	(0x02, sp), a
; peephole 4a removed redundant load from (0x02, sp) into a.
	bcp	a, #0x10
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00133$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 659: DMA_Channelx = DMA1_Channel0;
; genAssign
	ldw	x, #0x5075
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 663: if  ((DMA_IT & 0x20) != (uint8_t)RESET)
; genAnd
	ld	a, (0x02, sp)
	bcp	a, #0x20
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00134$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 665: DMA_Channelx = DMA1_Channel1;
; genAssign
	ldw	x, #0x507f
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 669: if  ((DMA_IT & 0x40) != (uint8_t)RESET)
; genAnd
	ld	a, (0x02, sp)
	bcp	a, #0x40
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00135$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 671: DMA_Channelx = DMA1_Channel2;
; genAssign
	ldw	x, #0x5089
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 675: DMA_Channelx = DMA1_Channel3;
; genAssign
; genLabel
	.byte 0xbc
; peephole jrf10 used ldf opcode to jump over 3-byte instruction.
00102$:
	ldw	x, #0x5093
00109$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 680: tmpreg =  DMA_Channelx->CSPR ;
; genAssign
	ldw	y, x
; genPointerGet
	ld	a, (0x1, y)
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 681: tmpreg &= DMA_Channelx->CCR ;
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, (0x01, sp)
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 682: tmp2 = (uint8_t)(DMA_IT & (uint8_t)(DMA_CCR_TCIE | DMA_CCR_HTIE));
; genAnd
	ld	a, (0x02, sp)
	and	a, #0x06
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 683: itstatus = (ITStatus)((uint8_t)tmpreg & (uint8_t)tmp2);
; genAnd
	and	a, (0x01, sp)
; genCast
	neg	a
	clr	a
	rlc	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 686: return (itstatus);
; genReturn
; genLabel
; peephole j30 removed unused label 00110$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 687: }
; genEndFunction
	popw	x
	ret
;	Total DMA_GetITStatus function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 704: void DMA_ClearITPendingBit(DMA_IT_TypeDef DMA_IT)
; genLabel
;	-----------------------------------------
;	 function DMA_ClearITPendingBit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_DMA_ClearITPendingBit:
	push	a
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 711: if ((DMA_IT & 0x10) != (uint8_t)RESET)
; genAnd
	bcp	a, #0x10
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00133$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 713: DMA_Channelx = DMA1_Channel0;
; genAssign
	ldw	x, #0x5075
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 717: if ((DMA_IT & 0x20) != (uint8_t)RESET)
; genAnd
	bcp	a, #0x20
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00134$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 719: DMA_Channelx = DMA1_Channel1;
; genAssign
	ldw	x, #0x507f
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 723: if ((DMA_IT & 0x40) != (uint8_t)RESET)
; genAnd
	bcp	a, #0x40
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00135$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 725: DMA_Channelx = DMA1_Channel2;
; genAssign
	ldw	x, #0x5089
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 729: DMA_Channelx = DMA1_Channel3;
; genAssign
	ldw	x, #0x5093
; genLabel
00109$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 734: DMA_Channelx->CSPR &= (uint8_t)~(uint8_t)(DMA_IT & (uint8_t)0x06);
; genPlus
	incw	x
; genPointerGet
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
; genAnd
	and	a, #0x06
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00110$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 735: }
; genEndFunction
	pop	a
	ret
;	Total DMA_ClearITPendingBit function size at codegen: 2 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
