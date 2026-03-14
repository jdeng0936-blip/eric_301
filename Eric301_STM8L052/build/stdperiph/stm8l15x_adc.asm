;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_adc
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC_DeInit
	.globl _ADC_Init
	.globl _ADC_Cmd
	.globl _ADC_SoftwareStartConv
	.globl _ADC_ExternalTrigConfig
	.globl _ADC_AnalogWatchdogChannelSelect
	.globl _ADC_AnalogWatchdogThresholdsConfig
	.globl _ADC_AnalogWatchdogConfig
	.globl _ADC_TempSensorCmd
	.globl _ADC_VrefintCmd
	.globl _ADC_ChannelCmd
	.globl _ADC_SamplingTimeConfig
	.globl _ADC_SchmittTriggerConfig
	.globl _ADC_GetConversionValue
	.globl _ADC_DMACmd
	.globl _ADC_ITConfig
	.globl _ADC_GetFlagStatus
	.globl _ADC_ClearFlag
	.globl _ADC_GetITStatus
	.globl _ADC_ClearITPendingBit
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
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 141: void ADC_DeInit(ADC_TypeDef* ADCx)
; genLabel
;	-----------------------------------------
;	 function ADC_DeInit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_ADC_DeInit:
; genReceive
	exgw	x, y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 144: ADCx->CR1 =  ADC_CR1_RESET_VALUE;
; genPointerSet
	clr	(y)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 145: ADCx->CR2 =  ADC_CR2_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 10j moved addition of offset into instruction
	clr	(0x01, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 146: ADCx->CR3 =  ADC_CR3_RESET_VALUE;
; genPlus
	ldw	x, y
	incw	x
	incw	x
; genPointerSet
	ld	a, #0x1f
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 149: ADCx->SR =  (uint8_t)~ADC_SR_RESET_VALUE;
; genPlus
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, #0xff
	ld	(0x0003, y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 152: ADCx->HTRH =  ADC_HTRH_RESET_VALUE;
; genPlus
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, #0x0f
	ld	(0x0006, y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 153: ADCx->HTRL =  ADC_HTRL_RESET_VALUE;
; genPlus
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, #0xff
	ld	(0x0007, y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 156: ADCx->LTRH =  ADC_LTRH_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0008, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 157: ADCx->LTRL =  ADC_LTRL_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0009, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 160: ADCx->SQR[0] =  ADC_SQR1_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x000a, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 161: ADCx->SQR[1] =  ADC_SQR2_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x000b, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 162: ADCx->SQR[2] =  ADC_SQR3_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x000c, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 163: ADCx->SQR[3] =  ADC_SQR4_RESET_VALUE;
; genPlus
	ldw	x, y
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x000d, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 166: ADC_TRIGR(ADCx, 0) =  ADC_TRIGR1_RESET_VALUE;
; genCast
; genAssign
; genCast
; genAssign
; genPlus
	ldw	x, y
; genCast
; genAssign
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x000e, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 167: ADC_TRIGR(ADCx, 1) =  ADC_TRIGR2_RESET_VALUE;
; genPlus
	ldw	x, y
; genCast
; genAssign
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x000f, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 168: ADC_TRIGR(ADCx, 2) =  ADC_TRIGR3_RESET_VALUE;
; genPlus
	ldw	x, y
; genCast
; genAssign
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0010, x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 169: ADC_TRIGR(ADCx, 3) =  ADC_TRIGR4_RESET_VALUE;
; genPlus
	ldw	x, y
; genCast
; genAssign
; genPointerSet
; peephole 9a moved addition of offset into clear instruction
	clr	(0x0011, x)
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 170: }
; genEndFunction
	ret
;	Total ADC_DeInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 192: void ADC_Init(ADC_TypeDef* ADCx,
; genLabel
;	-----------------------------------------
;	 function ADC_Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_ADC_Init:
	pushw	x
; genReceive
	exgw	x, y
; genReceive
	ld	(0x02, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 203: ADCx->CR1 &= (uint8_t)~(ADC_CR1_CONT | ADC_CR1_RES);
; genCast
; genAssign
	ldw	x, y
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0x9b
; genPointerSet
	ld	(0x01, sp), a
; peephole 4a removed redundant load from (0x01, sp) into a.
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 206: ADCx->CR1 |= (uint8_t)((uint8_t)ADC_ConversionMode | (uint8_t)ADC_Resolution);
; genOr
	ld	a, (0x02, sp)
	or	a, (0x05, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 209: ADCx->CR2 &= (uint8_t)~(ADC_CR2_PRESC);
; genPlus
	ldw	x, y
	incw	x
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 212: ADCx->CR2 |= (uint8_t) ADC_Prescaler;
; genOr
	or	a, (0x06, sp)
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 213: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
;	Total ADC_Init function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 222: void ADC_Cmd(ADC_TypeDef* ADCx,
; genLabel
;	-----------------------------------------
;	 function ADC_Cmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_ADC_Cmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 231: ADCx->CR1 |= ADC_CR1_ADON;
; genCast
; genAssign
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 228: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 231: ADCx->CR1 |= ADC_CR1_ADON;
; genOr
	or	a, #0x01
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 236: ADCx->CR1 &= (uint8_t)~ADC_CR1_ADON;
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 238: }
; genEndFunction
	pop	a
	ret
;	Total ADC_Cmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 245: void ADC_SoftwareStartConv(ADC_TypeDef* ADCx)
; genLabel
;	-----------------------------------------
;	 function ADC_SoftwareStartConv
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_ADC_SoftwareStartConv:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 248: ADCx->CR1 |= ADC_CR1_START;
; genCast
; genAssign
; genPointerGet
	ld	a, (x)
; genOr
	or	a, #0x02
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 249: }
; genEndFunction
	ret
;	Total ADC_SoftwareStartConv function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 267: void ADC_ExternalTrigConfig(ADC_TypeDef* ADCx,
; genLabel
;	-----------------------------------------
;	 function ADC_ExternalTrigConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_ADC_ExternalTrigConfig:
	pushw	x
; genReceive
; genReceive
	ld	(0x02, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 276: ADCx->CR2 &= (uint8_t)~(ADC_CR2_TRIGEDGE | ADC_CR2_EXTSEL);
; genPlus
	incw	x
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0x87
; genPointerSet
	ld	(0x01, sp), a
; peephole 4a removed redundant load from (0x01, sp) into a.
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 280: ADCx->CR2 |= (uint8_t)( (uint8_t)ADC_ExtTRGSensitivity | \
; genOr
	ld	a, (0x05, sp)
	or	a, (0x02, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 282: }
; genEndFunction
	popw	x
	popw	x
	pop	a
	jp	(x)
;	Total ADC_ExternalTrigConfig function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 345: void ADC_AnalogWatchdogChannelSelect(ADC_TypeDef* ADCx,
; genLabel
;	-----------------------------------------
;	 function ADC_AnalogWatchdogChannelSelect
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_ADC_AnalogWatchdogChannelSelect:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 352: ADCx->CR3 &= ((uint8_t)~ADC_CR3_CHSEL);
; genPlus
	incw	x
	incw	x
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0xe0
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 355: ADCx->CR3 |= (uint8_t)ADC_AnalogWatchdogSelection;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 356: }
; genEndFunction
	pop	a
	ret
;	Total ADC_AnalogWatchdogChannelSelect function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 367: void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, uint16_t HighThreshold, uint16_t LowThreshold)
; genLabel
;	-----------------------------------------
;	 function ADC_AnalogWatchdogThresholdsConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_ADC_AnalogWatchdogThresholdsConfig:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 374: ADCx->HTRH = (uint8_t)(HighThreshold >> 8);
; genPlus
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
; genGetByte
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
	ld	a, (0x03, sp)
	ld	(0x0006, x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 375: ADCx->HTRL = (uint8_t)(HighThreshold);
; genPlus
; genCast
; genAssign
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, (0x04, sp)
	ld	(0x0007, y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 378: ADCx->LTRH = (uint8_t)(LowThreshold >> 8);
; genPlus
; genGetByte
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, (0x05, sp)
	ld	(0x0008, y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 379: ADCx->LTRL = (uint8_t)(LowThreshold);
; genPlus
; genCast
; genAssign
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, (0x06, sp)
	ld	(0x0009, y), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 380: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #6
	jp	(x)
;	Total ADC_AnalogWatchdogThresholdsConfig function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 418: void ADC_AnalogWatchdogConfig(ADC_TypeDef* ADCx,
; genLabel
;	-----------------------------------------
;	 function ADC_AnalogWatchdogConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_ADC_AnalogWatchdogConfig:
	push	a
; genReceive
	exgw	x, y
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 429: ADCx->CR3 &= ((uint8_t)~ADC_CR3_CHSEL);
; genPlus
	ldw	x, y
	incw	x
	incw	x
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0xe0
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 432: ADCx->CR3 |= (uint8_t)ADC_AnalogWatchdogSelection;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 435: ADCx->HTRH = (uint8_t)(HighThreshold >> 8);
; genPlus
; genGetByte
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, (0x04, sp)
	ld	(0x0006, y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 436: ADCx->HTRL = (uint8_t)(HighThreshold);
; genPlus
; genCast
; genAssign
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, (0x05, sp)
	ld	(0x0007, y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 439: ADCx->LTRH = (uint8_t)(LowThreshold >> 8);
; genPlus
; genGetByte
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, (0x06, sp)
	ld	(0x0008, y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 440: ADCx->LTRL = (uint8_t)LowThreshold;
; genPlus
; genCast
; genAssign
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, (0x07, sp)
	ld	(0x0009, y), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 441: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #7
	jp	(x)
;	Total ADC_AnalogWatchdogConfig function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 480: void ADC_TempSensorCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC_TempSensorCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_ADC_TempSensorCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 488: ADC_TRIGR(ADC1, 0) |= (uint8_t)(ADC_TRIGR1_TSON);
; genPointerGet
	ld	a, 0x534e
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 485: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 488: ADC_TRIGR(ADC1, 0) |= (uint8_t)(ADC_TRIGR1_TSON);
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x534e, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 493: ADC_TRIGR(ADC1, 0) &= (uint8_t)(~ADC_TRIGR1_TSON);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x534e, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 495: }
; genEndFunction
	pop	a
	ret
;	Total ADC_TempSensorCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 503: void ADC_VrefintCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC_VrefintCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_ADC_VrefintCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 511: ADC_TRIGR(ADC1, 0) |= (uint8_t)(ADC_TRIGR1_VREFINTON);
; genPointerGet
	ld	a, 0x534e
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 508: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 511: ADC_TRIGR(ADC1, 0) |= (uint8_t)(ADC_TRIGR1_VREFINTON);
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x534e, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 516: ADC_TRIGR(ADC1, 0) &= (uint8_t)(~ADC_TRIGR1_VREFINTON);
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x534e, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 518: }
; genEndFunction
	pop	a
	ret
;	Total ADC_VrefintCmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 589: void ADC_ChannelCmd(ADC_TypeDef* ADCx, ADC_Channel_TypeDef ADC_Channels, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC_ChannelCmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_ADC_ChannelCmd:
	pushw	x
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 595: regindex = (uint8_t)((uint16_t)ADC_Channels >> 8);
; genCast
; genAssign
	ldw	y, (0x05, sp)
; genGetByte
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 600: ADCx->SQR[regindex] |= (uint8_t)(ADC_Channels);
; genPlus
	addw	x, #0x000a
	ldw	(0x01, sp), x
; genCast
; genAssign
	ld	a, (0x06, sp)
; genPlus
	clrw	x
	exg	a, xl
	ld	a, yh
	exg	a, xl
	addw	x, (0x01, sp)
; genPointerGet
	push	a
	ld	a, (x)
	ld	(0x03, sp), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 597: if (NewState != DISABLE)
; genIfx
	tnz	(0x07, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 600: ADCx->SQR[regindex] |= (uint8_t)(ADC_Channels);
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 605: ADCx->SQR[regindex] &= (uint8_t)(~(uint8_t)(ADC_Channels));
; genCpl
	cpl	a
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 607: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #7
	jp	(x)
;	Total ADC_ChannelCmd function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 631: void ADC_SamplingTimeConfig(ADC_TypeDef* ADCx,
; genLabel
;	-----------------------------------------
;	 function ADC_SamplingTimeConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_ADC_SamplingTimeConfig:
	sub	sp, #3
; genReceive
	ldw	(0x02, sp), x
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 639: if ( ADC_GroupChannels != ADC_Group_SlowChannels)
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 642: ADCx->CR3 &= (uint8_t)~ADC_CR3_SMPT2;
; genPlus
	ldw	x, (0x02, sp)
	incw	x
	incw	x
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0x1f
; genPointerSet
	ld	(0x01, sp), a
; peephole 4a removed redundant load from (0x01, sp) into a.
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 643: ADCx->CR3 |= (uint8_t)(ADC_SamplingTime << 5);
; genLeftShiftLiteral
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	sll	a
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 648: ADCx->CR2 &= (uint8_t)~ADC_CR2_SMPT1;
; genPlus
	ldw	x, (0x02, sp)
	incw	x
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, #0xf8
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 649: ADCx->CR2 |= (uint8_t)ADC_SamplingTime;
; genOr
	or	a, (0x06, sp)
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 651: }
; genEndFunction
	addw	sp, #3
	popw	x
	pop	a
	jp	(x)
;	Total ADC_SamplingTimeConfig function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 697: void ADC_SchmittTriggerConfig(ADC_TypeDef* ADCx, ADC_Channel_TypeDef ADC_Channels,
; genLabel
;	-----------------------------------------
;	 function ADC_SchmittTriggerConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_ADC_SchmittTriggerConfig:
	pushw	x
; genReceive
	exgw	x, y
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 704: regindex = (uint8_t)((uint16_t)ADC_Channels >> 8);
; genCast
; genAssign
	ldw	x, (0x05, sp)
; genGetByte
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 709: ADC_TRIGR(ADCx, regindex) &= (uint8_t)(~(uint8_t)ADC_Channels);
; genCast
; genAssign
; genCast
; genAssign
; genCast
; genAssign
	ld	a, (0x06, sp)
; genCast
; genAssign
; genCast
; genAssign
	rlwa	x
	ld	(0x02, sp), a
	rrwa	x
	clr	(0x01, sp)
; genPlus
	ldw	x, y
	addw	x, #0x000e
; genPlus
	addw	x, (0x01, sp)
; genCast
; genAssign
; genPointerGet
	push	a
	ld	a, (x)
	ld	(0x03, sp), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 706: if (NewState != DISABLE)
; genIfx
	tnz	(0x07, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 709: ADC_TRIGR(ADCx, regindex) &= (uint8_t)(~(uint8_t)ADC_Channels);
; genCpl
	cpl	a
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 714: ADC_TRIGR(ADCx, regindex) |= (uint8_t)(ADC_Channels);
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 716: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #7
	jp	(x)
;	Total ADC_SchmittTriggerConfig function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 723: uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx)
; genLabel
;	-----------------------------------------
;	 function ADC_GetConversionValue
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_ADC_GetConversionValue:
	pushw	x
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 728: tmpreg = (uint16_t)(ADCx->DRH);
; genAssign
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
; genPointerGet
	ld	a, (0x4, x)
; genCast
; genAssign
; peephole 3 removed dead clrw of x.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 729: tmpreg = (uint16_t)((uint16_t)((uint16_t)tmpreg << 8) | ADCx->DRL);
; genLeftShiftLiteral
	ld	xh, a
	clr	(0x02, sp)
; genAssign
; genPointerGet
	ld	a, (0x5, y)
; genCast
; genAssign
; peephole 3 removed dead clrw of y.
; genOr
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 732: return (uint16_t)(tmpreg) ;
; genReturn
	ld	xl, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 733: }
; genEndFunction
	addw	sp, #2
	ret
;	Total ADC_GetConversionValue function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 766: void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC_DMACmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_ADC_DMACmd:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 774: ADCx->SQR[0] &= (uint8_t)~ADC_SQR1_DMAOFF;
; genPlus
	addw	x, #0x000a
; genPointerGet
	ld	a, (x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 771: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 774: ADCx->SQR[0] &= (uint8_t)~ADC_SQR1_DMAOFF;
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 779: ADCx->SQR[0] |= ADC_SQR1_DMAOFF;
; genOr
	or	a, #0x80
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 781: }
; genEndFunction
	pop	a
	ret
;	Total ADC_DMACmd function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 837: void ADC_ITConfig(ADC_TypeDef* ADCx, ADC_IT_TypeDef ADC_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC_ITConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_ADC_ITConfig:
	push	a
; genReceive
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 846: ADCx->CR1 |= (uint8_t) ADC_IT;
; genCast
; genAssign
; genPointerGet
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 843: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 846: ADCx->CR1 |= (uint8_t) ADC_IT;
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 851: ADCx->CR1 &= (uint8_t)(~ADC_IT);
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 853: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
;	Total ADC_ITConfig function size at codegen: 4 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 865: FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, ADC_FLAG_TypeDef ADC_FLAG)
; genLabel
;	-----------------------------------------
;	 function ADC_GetFlagStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_ADC_GetFlagStatus:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 873: if ((ADCx->SR & ADC_FLAG) != (uint8_t)RESET)
; genAssign
; genPointerGet
	ld	a, (0x3, x)
; genAnd
; genIfx
	and	a, (0x01, sp)
; peephole 23 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 876: flagstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 881: flagstatus = RESET;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00102$:
	clr	a
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 885: return  flagstatus;
; genReturn
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 886: }
; genEndFunction
	addw	sp, #1
	ret
;	Total ADC_GetFlagStatus function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 898: void ADC_ClearFlag(ADC_TypeDef* ADCx,
; genLabel
;	-----------------------------------------
;	 function ADC_ClearFlag
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_ADC_ClearFlag:
; genReceive
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 905: ADCx->SR = (uint8_t)~ADC_FLAG;
; genPlus
	addw	x, #0x0003
; genCpl
	cpl	a
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 906: }
; genEndFunction
	ret
;	Total ADC_ClearFlag function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 918: ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx,
; genLabel
;	-----------------------------------------
;	 function ADC_GetITStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_ADC_GetITStatus:
	sub	sp, #3
; genReceive
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 928: itmask = (uint8_t)(ADC_IT >> 3);
; genRightShiftLiteral
	ld	(0x03, sp), a
; peephole 4a removed redundant load from (0x03, sp) into a.
	srl	a
	srl	a
	srl	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 929: itmask =  (uint8_t)((uint8_t)((uint8_t)(itmask & (uint8_t)0x10) >> 2) | \
; genAnd
	ld	(0x01, sp), a
; peephole 4a removed redundant load from (0x01, sp) into a.
	and	a, #0x10
; genRightShiftLiteral
	srl	a
	srl	a
	ld	(0x02, sp), a
; genAnd
	ld	a, (0x01, sp)
	and	a, #0x03
; genOr
	or	a, (0x02, sp)
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 933: enablestatus = (uint8_t)(ADCx->CR1 & (uint8_t)ADC_IT) ;
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, (0x03, sp)
	ld	(0x02, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 936: if (((ADCx->SR & itmask) != (uint8_t)RESET) && enablestatus)
; genAssign
; genPointerGet
	ld	a, (0x3, x)
; genAnd
; genIfx
	and	a, (0x01, sp)
; peephole 23 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00121$.
; genIfx
	tnz	(0x02, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00122$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 939: itstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 944: itstatus = RESET;
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00102$:
	clr	a
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 948: return  itstatus;
; genReturn
; genLabel
; peephole j30 removed unused label 00105$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 949: }
; genEndFunction
	addw	sp, #3
	ret
;	Total ADC_GetITStatus function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 961: void ADC_ClearITPendingBit(ADC_TypeDef* ADCx,
; genLabel
;	-----------------------------------------
;	 function ADC_ClearITPendingBit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_ADC_ClearITPendingBit:
	push	a
; genReceive
	exgw	x, y
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 970: itmask = (uint8_t)(ADC_IT >> 3);
; genRightShiftLiteral
	srl	a
	srl	a
	srl	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 971: itmask =  (uint8_t)((uint8_t)(((uint8_t)(itmask & (uint8_t)0x10)) >> 2) | \
; genAnd
	ld	xl, a
; peephole 4 removed redundant load from xl into a.
	and	a, #0x10
; genRightShiftLiteral
	srl	a
	srl	a
	ld	(0x01, sp), a
; genAnd
	ld	a, xl
	and	a, #0x03
; genOr
	or	a, (0x01, sp)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 975: ADCx->SR = (uint8_t)~itmask;
; genPlus
	ldw	x, y
	addw	x, #0x0003
; genCpl
	cpl	a
; genPointerSet
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 976: }
; genEndFunction
	pop	a
	ret
;	Total ADC_ClearITPendingBit function size at codegen: 2 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
