                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8l15x_adc
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _ADC_DeInit
                                     11 	.globl _ADC_Init
                                     12 	.globl _ADC_Cmd
                                     13 	.globl _ADC_SoftwareStartConv
                                     14 	.globl _ADC_ExternalTrigConfig
                                     15 	.globl _ADC_AnalogWatchdogChannelSelect
                                     16 	.globl _ADC_AnalogWatchdogThresholdsConfig
                                     17 	.globl _ADC_AnalogWatchdogConfig
                                     18 	.globl _ADC_TempSensorCmd
                                     19 	.globl _ADC_VrefintCmd
                                     20 	.globl _ADC_ChannelCmd
                                     21 	.globl _ADC_SamplingTimeConfig
                                     22 	.globl _ADC_SchmittTriggerConfig
                                     23 	.globl _ADC_GetConversionValue
                                     24 	.globl _ADC_DMACmd
                                     25 	.globl _ADC_ITConfig
                                     26 	.globl _ADC_GetFlagStatus
                                     27 	.globl _ADC_ClearFlag
                                     28 	.globl _ADC_GetITStatus
                                     29 	.globl _ADC_ClearITPendingBit
                                     30 ;--------------------------------------------------------
                                     31 ; ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DATA
                                     34 ;--------------------------------------------------------
                                     35 ; ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area INITIALIZED
                                     38 ;--------------------------------------------------------
                                     39 ; absolute external ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area DABS (ABS)
                                     42 
                                     43 ; default segment ordering for linker
                                     44 	.area HOME
                                     45 	.area GSINIT
                                     46 	.area GSFINAL
                                     47 	.area CONST
                                     48 	.area INITIALIZER
                                     49 	.area CODE
                                     50 
                                     51 ;--------------------------------------------------------
                                     52 ; global & static initialisations
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
                                     55 	.area GSINIT
                                     56 	.area GSFINAL
                                     57 	.area GSINIT
                                     58 ;--------------------------------------------------------
                                     59 ; Home
                                     60 ;--------------------------------------------------------
                                     61 	.area HOME
                                     62 	.area HOME
                                     63 ;--------------------------------------------------------
                                     64 ; code
                                     65 ;--------------------------------------------------------
                                     66 	.area CODE
                                     67 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 141: void ADC_DeInit(ADC_TypeDef* ADCx)
                                     68 ; genLabel
                                     69 ;	-----------------------------------------
                                     70 ;	 function ADC_DeInit
                                     71 ;	-----------------------------------------
                                     72 ;	Register assignment might be sub-optimal.
                                     73 ;	Stack space usage: 0 bytes.
      00C220                         74 _ADC_DeInit:
                                     75 ; genReceive
      00C220 51               [ 1]   76 	exgw	x, y
                                     77 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 144: ADCx->CR1 =  ADC_CR1_RESET_VALUE;
                                     78 ; genPointerSet
      00C221 90 7F            [ 1]   79 	clr	(y)
                                     80 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 145: ADCx->CR2 =  ADC_CR2_RESET_VALUE;
                                     81 ; genPlus
      00C223 93               [ 1]   82 	ldw	x, y
                                     83 ; genPointerSet
                                     84 ; peephole 10j moved addition of offset into instruction
      00C224 6F 01            [ 1]   85 	clr	(0x01, x)
                                     86 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 146: ADCx->CR3 =  ADC_CR3_RESET_VALUE;
                                     87 ; genPlus
      00C226 93               [ 1]   88 	ldw	x, y
      00C227 5C               [ 1]   89 	incw	x
      00C228 5C               [ 1]   90 	incw	x
                                     91 ; genPointerSet
      00C229 A6 1F            [ 1]   92 	ld	a, #0x1f
      00C22B F7               [ 1]   93 	ld	(x), a
                                     94 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 149: ADCx->SR =  (uint8_t)~ADC_SR_RESET_VALUE;
                                     95 ; genPlus
                                     96 ; genPointerSet
                                     97 ; peephole 9 moved addition of offset into storage instruction
                                     98 ; peephole 14c used y directly instead of going through x.
      00C22C A6 FF            [ 1]   99 	ld	a, #0xff
      00C22E 90 E7 03         [ 1]  100 	ld	(0x0003, y), a
                                    101 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 152: ADCx->HTRH =  ADC_HTRH_RESET_VALUE;
                                    102 ; genPlus
                                    103 ; genPointerSet
                                    104 ; peephole 9 moved addition of offset into storage instruction
                                    105 ; peephole 14c used y directly instead of going through x.
      00C231 A6 0F            [ 1]  106 	ld	a, #0x0f
      00C233 90 E7 06         [ 1]  107 	ld	(0x0006, y), a
                                    108 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 153: ADCx->HTRL =  ADC_HTRL_RESET_VALUE;
                                    109 ; genPlus
                                    110 ; genPointerSet
                                    111 ; peephole 9 moved addition of offset into storage instruction
                                    112 ; peephole 14c used y directly instead of going through x.
      00C236 A6 FF            [ 1]  113 	ld	a, #0xff
      00C238 90 E7 07         [ 1]  114 	ld	(0x0007, y), a
                                    115 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 156: ADCx->LTRH =  ADC_LTRH_RESET_VALUE;
                                    116 ; genPlus
      00C23B 93               [ 1]  117 	ldw	x, y
                                    118 ; genPointerSet
                                    119 ; peephole 9a moved addition of offset into clear instruction
      00C23C 6F 08            [ 1]  120 	clr	(0x0008, x)
                                    121 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 157: ADCx->LTRL =  ADC_LTRL_RESET_VALUE;
                                    122 ; genPlus
      00C23E 93               [ 1]  123 	ldw	x, y
                                    124 ; genPointerSet
                                    125 ; peephole 9a moved addition of offset into clear instruction
      00C23F 6F 09            [ 1]  126 	clr	(0x0009, x)
                                    127 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 160: ADCx->SQR[0] =  ADC_SQR1_RESET_VALUE;
                                    128 ; genPlus
      00C241 93               [ 1]  129 	ldw	x, y
                                    130 ; genPointerSet
                                    131 ; peephole 9a moved addition of offset into clear instruction
      00C242 6F 0A            [ 1]  132 	clr	(0x000a, x)
                                    133 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 161: ADCx->SQR[1] =  ADC_SQR2_RESET_VALUE;
                                    134 ; genPlus
      00C244 93               [ 1]  135 	ldw	x, y
                                    136 ; genPointerSet
                                    137 ; peephole 9a moved addition of offset into clear instruction
      00C245 6F 0B            [ 1]  138 	clr	(0x000b, x)
                                    139 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 162: ADCx->SQR[2] =  ADC_SQR3_RESET_VALUE;
                                    140 ; genPlus
      00C247 93               [ 1]  141 	ldw	x, y
                                    142 ; genPointerSet
                                    143 ; peephole 9a moved addition of offset into clear instruction
      00C248 6F 0C            [ 1]  144 	clr	(0x000c, x)
                                    145 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 163: ADCx->SQR[3] =  ADC_SQR4_RESET_VALUE;
                                    146 ; genPlus
      00C24A 93               [ 1]  147 	ldw	x, y
                                    148 ; genPointerSet
                                    149 ; peephole 9a moved addition of offset into clear instruction
      00C24B 6F 0D            [ 1]  150 	clr	(0x000d, x)
                                    151 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 166: ADC_TRIGR(ADCx, 0) =  ADC_TRIGR1_RESET_VALUE;
                                    152 ; genCast
                                    153 ; genAssign
                                    154 ; genCast
                                    155 ; genAssign
                                    156 ; genPlus
      00C24D 93               [ 1]  157 	ldw	x, y
                                    158 ; genCast
                                    159 ; genAssign
                                    160 ; genPointerSet
                                    161 ; peephole 9a moved addition of offset into clear instruction
      00C24E 6F 0E            [ 1]  162 	clr	(0x000e, x)
                                    163 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 167: ADC_TRIGR(ADCx, 1) =  ADC_TRIGR2_RESET_VALUE;
                                    164 ; genPlus
      00C250 93               [ 1]  165 	ldw	x, y
                                    166 ; genCast
                                    167 ; genAssign
                                    168 ; genPointerSet
                                    169 ; peephole 9a moved addition of offset into clear instruction
      00C251 6F 0F            [ 1]  170 	clr	(0x000f, x)
                                    171 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 168: ADC_TRIGR(ADCx, 2) =  ADC_TRIGR3_RESET_VALUE;
                                    172 ; genPlus
      00C253 93               [ 1]  173 	ldw	x, y
                                    174 ; genCast
                                    175 ; genAssign
                                    176 ; genPointerSet
                                    177 ; peephole 9a moved addition of offset into clear instruction
      00C254 6F 10            [ 1]  178 	clr	(0x0010, x)
                                    179 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 169: ADC_TRIGR(ADCx, 3) =  ADC_TRIGR4_RESET_VALUE;
                                    180 ; genPlus
      00C256 93               [ 1]  181 	ldw	x, y
                                    182 ; genCast
                                    183 ; genAssign
                                    184 ; genPointerSet
                                    185 ; peephole 9a moved addition of offset into clear instruction
      00C257 6F 11            [ 1]  186 	clr	(0x0011, x)
                                    187 ; genLabel
                                    188 ; peephole j30 removed unused label 00101$.
                                    189 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 170: }
                                    190 ; genEndFunction
      00C259 81               [ 4]  191 	ret
                                    192 ;	Total ADC_DeInit function size at codegen: 1 bytes.
                                    193 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 192: void ADC_Init(ADC_TypeDef* ADCx,
                                    194 ; genLabel
                                    195 ;	-----------------------------------------
                                    196 ;	 function ADC_Init
                                    197 ;	-----------------------------------------
                                    198 ;	Register assignment might be sub-optimal.
                                    199 ;	Stack space usage: 2 bytes.
      00C25A                        200 _ADC_Init:
      00C25A 89               [ 2]  201 	pushw	x
                                    202 ; genReceive
      00C25B 51               [ 1]  203 	exgw	x, y
                                    204 ; genReceive
      00C25C 6B 02            [ 1]  205 	ld	(0x02, sp), a
                                    206 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 203: ADCx->CR1 &= (uint8_t)~(ADC_CR1_CONT | ADC_CR1_RES);
                                    207 ; genCast
                                    208 ; genAssign
      00C25E 93               [ 1]  209 	ldw	x, y
                                    210 ; genPointerGet
      00C25F F6               [ 1]  211 	ld	a, (x)
                                    212 ; genAnd
      00C260 A4 9B            [ 1]  213 	and	a, #0x9b
                                    214 ; genPointerSet
      00C262 6B 01            [ 1]  215 	ld	(0x01, sp), a
                                    216 ; peephole 4a removed redundant load from (0x01, sp) into a.
      00C264 F7               [ 1]  217 	ld	(x), a
                                    218 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 206: ADCx->CR1 |= (uint8_t)((uint8_t)ADC_ConversionMode | (uint8_t)ADC_Resolution);
                                    219 ; genOr
      00C265 7B 02            [ 1]  220 	ld	a, (0x02, sp)
      00C267 1A 05            [ 1]  221 	or	a, (0x05, sp)
                                    222 ; genOr
      00C269 1A 01            [ 1]  223 	or	a, (0x01, sp)
                                    224 ; genPointerSet
      00C26B F7               [ 1]  225 	ld	(x), a
                                    226 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 209: ADCx->CR2 &= (uint8_t)~(ADC_CR2_PRESC);
                                    227 ; genPlus
      00C26C 93               [ 1]  228 	ldw	x, y
      00C26D 5C               [ 1]  229 	incw	x
                                    230 ; genPointerGet
      00C26E F6               [ 1]  231 	ld	a, (x)
                                    232 ; genAnd
      00C26F A4 7F            [ 1]  233 	and	a, #0x7f
                                    234 ; genPointerSet
      00C271 F7               [ 1]  235 	ld	(x), a
                                    236 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 212: ADCx->CR2 |= (uint8_t) ADC_Prescaler;
                                    237 ; genOr
      00C272 1A 06            [ 1]  238 	or	a, (0x06, sp)
                                    239 ; genPointerSet
      00C274 F7               [ 1]  240 	ld	(x), a
                                    241 ; genLabel
                                    242 ; peephole j30 removed unused label 00101$.
                                    243 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 213: }
                                    244 ; genEndFunction
      00C275 1E 03            [ 2]  245 	ldw	x, (3, sp)
      00C277 5B 06            [ 2]  246 	addw	sp, #6
      00C279 FC               [ 2]  247 	jp	(x)
                                    248 ;	Total ADC_Init function size at codegen: 5 bytes.
                                    249 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 222: void ADC_Cmd(ADC_TypeDef* ADCx,
                                    250 ; genLabel
                                    251 ;	-----------------------------------------
                                    252 ;	 function ADC_Cmd
                                    253 ;	-----------------------------------------
                                    254 ;	Register assignment might be sub-optimal.
                                    255 ;	Stack space usage: 1 bytes.
      00C27A                        256 _ADC_Cmd:
      00C27A 88               [ 1]  257 	push	a
                                    258 ; genReceive
                                    259 ; genReceive
      00C27B 6B 01            [ 1]  260 	ld	(0x01, sp), a
                                    261 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 231: ADCx->CR1 |= ADC_CR1_ADON;
                                    262 ; genCast
                                    263 ; genAssign
                                    264 ; genPointerGet
      00C27D F6               [ 1]  265 	ld	a, (x)
                                    266 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 228: if (NewState != DISABLE)
                                    267 ; genIfx
      00C27E 0D 01            [ 1]  268 	tnz	(0x01, sp)
                                    269 ; peephole j5 changed absolute to relative unconditional jump.
      00C280 27 05            [ 1]  270 	jreq	00102$
                                    271 ; peephole j10 removed jra by using inverse jump logic
                                    272 ; peephole j30 removed unused label 00113$.
                                    273 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 231: ADCx->CR1 |= ADC_CR1_ADON;
                                    274 ; genOr
      00C282 AA 01            [ 1]  275 	or	a, #0x01
                                    276 ; genPointerSet
      00C284 F7               [ 1]  277 	ld	(x), a
                                    278 ; genGoto
      00C285 20 03            [ 2]  279 	jra	00104$
                                    280 ; peephole j5 changed absolute to relative unconditional jump.
                                    281 ; genLabel
      00C287                        282 00102$:
                                    283 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 236: ADCx->CR1 &= (uint8_t)~ADC_CR1_ADON;
                                    284 ; genAnd
      00C287 A4 FE            [ 1]  285 	and	a, #0xfe
                                    286 ; genPointerSet
      00C289 F7               [ 1]  287 	ld	(x), a
                                    288 ; genLabel
      00C28A                        289 00104$:
                                    290 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 238: }
                                    291 ; genEndFunction
      00C28A 84               [ 1]  292 	pop	a
      00C28B 81               [ 4]  293 	ret
                                    294 ;	Total ADC_Cmd function size at codegen: 2 bytes.
                                    295 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 245: void ADC_SoftwareStartConv(ADC_TypeDef* ADCx)
                                    296 ; genLabel
                                    297 ;	-----------------------------------------
                                    298 ;	 function ADC_SoftwareStartConv
                                    299 ;	-----------------------------------------
                                    300 ;	Register assignment might be sub-optimal.
                                    301 ;	Stack space usage: 0 bytes.
      00C28C                        302 _ADC_SoftwareStartConv:
                                    303 ; genReceive
                                    304 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 248: ADCx->CR1 |= ADC_CR1_START;
                                    305 ; genCast
                                    306 ; genAssign
                                    307 ; genPointerGet
      00C28C F6               [ 1]  308 	ld	a, (x)
                                    309 ; genOr
      00C28D AA 02            [ 1]  310 	or	a, #0x02
                                    311 ; genPointerSet
      00C28F F7               [ 1]  312 	ld	(x), a
                                    313 ; genLabel
                                    314 ; peephole j30 removed unused label 00101$.
                                    315 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 249: }
                                    316 ; genEndFunction
      00C290 81               [ 4]  317 	ret
                                    318 ;	Total ADC_SoftwareStartConv function size at codegen: 1 bytes.
                                    319 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 267: void ADC_ExternalTrigConfig(ADC_TypeDef* ADCx,
                                    320 ; genLabel
                                    321 ;	-----------------------------------------
                                    322 ;	 function ADC_ExternalTrigConfig
                                    323 ;	-----------------------------------------
                                    324 ;	Register assignment might be sub-optimal.
                                    325 ;	Stack space usage: 2 bytes.
      00C291                        326 _ADC_ExternalTrigConfig:
      00C291 89               [ 2]  327 	pushw	x
                                    328 ; genReceive
                                    329 ; genReceive
      00C292 6B 02            [ 1]  330 	ld	(0x02, sp), a
                                    331 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 276: ADCx->CR2 &= (uint8_t)~(ADC_CR2_TRIGEDGE | ADC_CR2_EXTSEL);
                                    332 ; genPlus
      00C294 5C               [ 1]  333 	incw	x
                                    334 ; genPointerGet
      00C295 F6               [ 1]  335 	ld	a, (x)
                                    336 ; genAnd
      00C296 A4 87            [ 1]  337 	and	a, #0x87
                                    338 ; genPointerSet
      00C298 6B 01            [ 1]  339 	ld	(0x01, sp), a
                                    340 ; peephole 4a removed redundant load from (0x01, sp) into a.
      00C29A F7               [ 1]  341 	ld	(x), a
                                    342 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 280: ADCx->CR2 |= (uint8_t)( (uint8_t)ADC_ExtTRGSensitivity | \
                                    343 ; genOr
      00C29B 7B 05            [ 1]  344 	ld	a, (0x05, sp)
      00C29D 1A 02            [ 1]  345 	or	a, (0x02, sp)
                                    346 ; genOr
      00C29F 1A 01            [ 1]  347 	or	a, (0x01, sp)
                                    348 ; genPointerSet
      00C2A1 F7               [ 1]  349 	ld	(x), a
                                    350 ; genLabel
                                    351 ; peephole j30 removed unused label 00101$.
                                    352 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 282: }
                                    353 ; genEndFunction
      00C2A2 85               [ 2]  354 	popw	x
      00C2A3 85               [ 2]  355 	popw	x
      00C2A4 84               [ 1]  356 	pop	a
      00C2A5 FC               [ 2]  357 	jp	(x)
                                    358 ;	Total ADC_ExternalTrigConfig function size at codegen: 4 bytes.
                                    359 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 345: void ADC_AnalogWatchdogChannelSelect(ADC_TypeDef* ADCx,
                                    360 ; genLabel
                                    361 ;	-----------------------------------------
                                    362 ;	 function ADC_AnalogWatchdogChannelSelect
                                    363 ;	-----------------------------------------
                                    364 ;	Register assignment might be sub-optimal.
                                    365 ;	Stack space usage: 1 bytes.
      00C2A6                        366 _ADC_AnalogWatchdogChannelSelect:
      00C2A6 88               [ 1]  367 	push	a
                                    368 ; genReceive
                                    369 ; genReceive
      00C2A7 6B 01            [ 1]  370 	ld	(0x01, sp), a
                                    371 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 352: ADCx->CR3 &= ((uint8_t)~ADC_CR3_CHSEL);
                                    372 ; genPlus
      00C2A9 5C               [ 1]  373 	incw	x
      00C2AA 5C               [ 1]  374 	incw	x
                                    375 ; genPointerGet
      00C2AB F6               [ 1]  376 	ld	a, (x)
                                    377 ; genAnd
      00C2AC A4 E0            [ 1]  378 	and	a, #0xe0
                                    379 ; genPointerSet
      00C2AE F7               [ 1]  380 	ld	(x), a
                                    381 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 355: ADCx->CR3 |= (uint8_t)ADC_AnalogWatchdogSelection;
                                    382 ; genOr
      00C2AF 1A 01            [ 1]  383 	or	a, (0x01, sp)
                                    384 ; genPointerSet
      00C2B1 F7               [ 1]  385 	ld	(x), a
                                    386 ; genLabel
                                    387 ; peephole j30 removed unused label 00101$.
                                    388 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 356: }
                                    389 ; genEndFunction
      00C2B2 84               [ 1]  390 	pop	a
      00C2B3 81               [ 4]  391 	ret
                                    392 ;	Total ADC_AnalogWatchdogChannelSelect function size at codegen: 2 bytes.
                                    393 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 367: void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, uint16_t HighThreshold, uint16_t LowThreshold)
                                    394 ; genLabel
                                    395 ;	-----------------------------------------
                                    396 ;	 function ADC_AnalogWatchdogThresholdsConfig
                                    397 ;	-----------------------------------------
                                    398 ;	Register assignment might be sub-optimal.
                                    399 ;	Stack space usage: 0 bytes.
      00C2B4                        400 _ADC_AnalogWatchdogThresholdsConfig:
                                    401 ; genReceive
                                    402 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 374: ADCx->HTRH = (uint8_t)(HighThreshold >> 8);
                                    403 ; genPlus
                                    404 ; peephole 5w replaced exgw-ldw by ldw.
      00C2B4 90 93            [ 1]  405 	ldw	y, x
                                    406 ; genGetByte
                                    407 ; genPointerSet
                                    408 ; peephole 9 moved addition of offset into storage instruction
      00C2B6 7B 03            [ 1]  409 	ld	a, (0x03, sp)
      00C2B8 E7 06            [ 1]  410 	ld	(0x0006, x), a
                                    411 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 375: ADCx->HTRL = (uint8_t)(HighThreshold);
                                    412 ; genPlus
                                    413 ; genCast
                                    414 ; genAssign
                                    415 ; genPointerSet
                                    416 ; peephole 9 moved addition of offset into storage instruction
                                    417 ; peephole 14c used y directly instead of going through x.
      00C2BA 7B 04            [ 1]  418 	ld	a, (0x04, sp)
      00C2BC 90 E7 07         [ 1]  419 	ld	(0x0007, y), a
                                    420 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 378: ADCx->LTRH = (uint8_t)(LowThreshold >> 8);
                                    421 ; genPlus
                                    422 ; genGetByte
                                    423 ; genPointerSet
                                    424 ; peephole 9 moved addition of offset into storage instruction
                                    425 ; peephole 14c used y directly instead of going through x.
      00C2BF 7B 05            [ 1]  426 	ld	a, (0x05, sp)
      00C2C1 90 E7 08         [ 1]  427 	ld	(0x0008, y), a
                                    428 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 379: ADCx->LTRL = (uint8_t)(LowThreshold);
                                    429 ; genPlus
                                    430 ; genCast
                                    431 ; genAssign
                                    432 ; genPointerSet
                                    433 ; peephole 9 moved addition of offset into storage instruction
                                    434 ; peephole 14c used y directly instead of going through x.
      00C2C4 7B 06            [ 1]  435 	ld	a, (0x06, sp)
      00C2C6 90 E7 09         [ 1]  436 	ld	(0x0009, y), a
                                    437 ; genLabel
                                    438 ; peephole j30 removed unused label 00101$.
                                    439 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 380: }
                                    440 ; genEndFunction
      00C2C9 1E 01            [ 2]  441 	ldw	x, (1, sp)
      00C2CB 5B 06            [ 2]  442 	addw	sp, #6
      00C2CD FC               [ 2]  443 	jp	(x)
                                    444 ;	Total ADC_AnalogWatchdogThresholdsConfig function size at codegen: 5 bytes.
                                    445 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 418: void ADC_AnalogWatchdogConfig(ADC_TypeDef* ADCx,
                                    446 ; genLabel
                                    447 ;	-----------------------------------------
                                    448 ;	 function ADC_AnalogWatchdogConfig
                                    449 ;	-----------------------------------------
                                    450 ;	Register assignment might be sub-optimal.
                                    451 ;	Stack space usage: 1 bytes.
      00C2CE                        452 _ADC_AnalogWatchdogConfig:
      00C2CE 88               [ 1]  453 	push	a
                                    454 ; genReceive
      00C2CF 51               [ 1]  455 	exgw	x, y
                                    456 ; genReceive
      00C2D0 6B 01            [ 1]  457 	ld	(0x01, sp), a
                                    458 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 429: ADCx->CR3 &= ((uint8_t)~ADC_CR3_CHSEL);
                                    459 ; genPlus
      00C2D2 93               [ 1]  460 	ldw	x, y
      00C2D3 5C               [ 1]  461 	incw	x
      00C2D4 5C               [ 1]  462 	incw	x
                                    463 ; genPointerGet
      00C2D5 F6               [ 1]  464 	ld	a, (x)
                                    465 ; genAnd
      00C2D6 A4 E0            [ 1]  466 	and	a, #0xe0
                                    467 ; genPointerSet
      00C2D8 F7               [ 1]  468 	ld	(x), a
                                    469 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 432: ADCx->CR3 |= (uint8_t)ADC_AnalogWatchdogSelection;
                                    470 ; genOr
      00C2D9 1A 01            [ 1]  471 	or	a, (0x01, sp)
                                    472 ; genPointerSet
      00C2DB F7               [ 1]  473 	ld	(x), a
                                    474 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 435: ADCx->HTRH = (uint8_t)(HighThreshold >> 8);
                                    475 ; genPlus
                                    476 ; genGetByte
                                    477 ; genPointerSet
                                    478 ; peephole 9 moved addition of offset into storage instruction
                                    479 ; peephole 14c used y directly instead of going through x.
      00C2DC 7B 04            [ 1]  480 	ld	a, (0x04, sp)
      00C2DE 90 E7 06         [ 1]  481 	ld	(0x0006, y), a
                                    482 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 436: ADCx->HTRL = (uint8_t)(HighThreshold);
                                    483 ; genPlus
                                    484 ; genCast
                                    485 ; genAssign
                                    486 ; genPointerSet
                                    487 ; peephole 9 moved addition of offset into storage instruction
                                    488 ; peephole 14c used y directly instead of going through x.
      00C2E1 7B 05            [ 1]  489 	ld	a, (0x05, sp)
      00C2E3 90 E7 07         [ 1]  490 	ld	(0x0007, y), a
                                    491 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 439: ADCx->LTRH = (uint8_t)(LowThreshold >> 8);
                                    492 ; genPlus
                                    493 ; genGetByte
                                    494 ; genPointerSet
                                    495 ; peephole 9 moved addition of offset into storage instruction
                                    496 ; peephole 14c used y directly instead of going through x.
      00C2E6 7B 06            [ 1]  497 	ld	a, (0x06, sp)
      00C2E8 90 E7 08         [ 1]  498 	ld	(0x0008, y), a
                                    499 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 440: ADCx->LTRL = (uint8_t)LowThreshold;
                                    500 ; genPlus
                                    501 ; genCast
                                    502 ; genAssign
                                    503 ; genPointerSet
                                    504 ; peephole 9 moved addition of offset into storage instruction
                                    505 ; peephole 14c used y directly instead of going through x.
      00C2EB 7B 07            [ 1]  506 	ld	a, (0x07, sp)
      00C2ED 90 E7 09         [ 1]  507 	ld	(0x0009, y), a
                                    508 ; genLabel
                                    509 ; peephole j30 removed unused label 00101$.
                                    510 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 441: }
                                    511 ; genEndFunction
      00C2F0 1E 02            [ 2]  512 	ldw	x, (2, sp)
      00C2F2 5B 07            [ 2]  513 	addw	sp, #7
      00C2F4 FC               [ 2]  514 	jp	(x)
                                    515 ;	Total ADC_AnalogWatchdogConfig function size at codegen: 5 bytes.
                                    516 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 480: void ADC_TempSensorCmd(FunctionalState NewState)
                                    517 ; genLabel
                                    518 ;	-----------------------------------------
                                    519 ;	 function ADC_TempSensorCmd
                                    520 ;	-----------------------------------------
                                    521 ;	Register assignment is optimal.
                                    522 ;	Stack space usage: 1 bytes.
      00C2F5                        523 _ADC_TempSensorCmd:
      00C2F5 88               [ 1]  524 	push	a
                                    525 ; genReceive
      00C2F6 6B 01            [ 1]  526 	ld	(0x01, sp), a
                                    527 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 488: ADC_TRIGR(ADC1, 0) |= (uint8_t)(ADC_TRIGR1_TSON);
                                    528 ; genPointerGet
      00C2F8 C6 53 4E         [ 1]  529 	ld	a, 0x534e
                                    530 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 485: if (NewState != DISABLE)
                                    531 ; genIfx
      00C2FB 0D 01            [ 1]  532 	tnz	(0x01, sp)
                                    533 ; peephole j5 changed absolute to relative unconditional jump.
      00C2FD 27 07            [ 1]  534 	jreq	00102$
                                    535 ; peephole j10 removed jra by using inverse jump logic
                                    536 ; peephole j30 removed unused label 00113$.
                                    537 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 488: ADC_TRIGR(ADC1, 0) |= (uint8_t)(ADC_TRIGR1_TSON);
                                    538 ; genOr
      00C2FF AA 20            [ 1]  539 	or	a, #0x20
                                    540 ; genPointerSet
      00C301 C7 53 4E         [ 1]  541 	ld	0x534e, a
                                    542 ; genGoto
      00C304 20 05            [ 2]  543 	jra	00104$
                                    544 ; peephole j5 changed absolute to relative unconditional jump.
                                    545 ; genLabel
      00C306                        546 00102$:
                                    547 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 493: ADC_TRIGR(ADC1, 0) &= (uint8_t)(~ADC_TRIGR1_TSON);
                                    548 ; genAnd
      00C306 A4 DF            [ 1]  549 	and	a, #0xdf
                                    550 ; genPointerSet
      00C308 C7 53 4E         [ 1]  551 	ld	0x534e, a
                                    552 ; genLabel
      00C30B                        553 00104$:
                                    554 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 495: }
                                    555 ; genEndFunction
      00C30B 84               [ 1]  556 	pop	a
      00C30C 81               [ 4]  557 	ret
                                    558 ;	Total ADC_TempSensorCmd function size at codegen: 2 bytes.
                                    559 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 503: void ADC_VrefintCmd(FunctionalState NewState)
                                    560 ; genLabel
                                    561 ;	-----------------------------------------
                                    562 ;	 function ADC_VrefintCmd
                                    563 ;	-----------------------------------------
                                    564 ;	Register assignment is optimal.
                                    565 ;	Stack space usage: 1 bytes.
      00C30D                        566 _ADC_VrefintCmd:
      00C30D 88               [ 1]  567 	push	a
                                    568 ; genReceive
      00C30E 6B 01            [ 1]  569 	ld	(0x01, sp), a
                                    570 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 511: ADC_TRIGR(ADC1, 0) |= (uint8_t)(ADC_TRIGR1_VREFINTON);
                                    571 ; genPointerGet
      00C310 C6 53 4E         [ 1]  572 	ld	a, 0x534e
                                    573 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 508: if (NewState != DISABLE)
                                    574 ; genIfx
      00C313 0D 01            [ 1]  575 	tnz	(0x01, sp)
                                    576 ; peephole j5 changed absolute to relative unconditional jump.
      00C315 27 07            [ 1]  577 	jreq	00102$
                                    578 ; peephole j10 removed jra by using inverse jump logic
                                    579 ; peephole j30 removed unused label 00113$.
                                    580 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 511: ADC_TRIGR(ADC1, 0) |= (uint8_t)(ADC_TRIGR1_VREFINTON);
                                    581 ; genOr
      00C317 AA 10            [ 1]  582 	or	a, #0x10
                                    583 ; genPointerSet
      00C319 C7 53 4E         [ 1]  584 	ld	0x534e, a
                                    585 ; genGoto
      00C31C 20 05            [ 2]  586 	jra	00104$
                                    587 ; peephole j5 changed absolute to relative unconditional jump.
                                    588 ; genLabel
      00C31E                        589 00102$:
                                    590 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 516: ADC_TRIGR(ADC1, 0) &= (uint8_t)(~ADC_TRIGR1_VREFINTON);
                                    591 ; genAnd
      00C31E A4 EF            [ 1]  592 	and	a, #0xef
                                    593 ; genPointerSet
      00C320 C7 53 4E         [ 1]  594 	ld	0x534e, a
                                    595 ; genLabel
      00C323                        596 00104$:
                                    597 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 518: }
                                    598 ; genEndFunction
      00C323 84               [ 1]  599 	pop	a
      00C324 81               [ 4]  600 	ret
                                    601 ;	Total ADC_VrefintCmd function size at codegen: 2 bytes.
                                    602 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 589: void ADC_ChannelCmd(ADC_TypeDef* ADCx, ADC_Channel_TypeDef ADC_Channels, FunctionalState NewState)
                                    603 ; genLabel
                                    604 ;	-----------------------------------------
                                    605 ;	 function ADC_ChannelCmd
                                    606 ;	-----------------------------------------
                                    607 ;	Register assignment might be sub-optimal.
                                    608 ;	Stack space usage: 2 bytes.
      00C325                        609 _ADC_ChannelCmd:
      00C325 89               [ 2]  610 	pushw	x
                                    611 ; genReceive
                                    612 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 595: regindex = (uint8_t)((uint16_t)ADC_Channels >> 8);
                                    613 ; genCast
                                    614 ; genAssign
      00C326 16 05            [ 2]  615 	ldw	y, (0x05, sp)
                                    616 ; genGetByte
                                    617 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 600: ADCx->SQR[regindex] |= (uint8_t)(ADC_Channels);
                                    618 ; genPlus
      00C328 1C 00 0A         [ 2]  619 	addw	x, #0x000a
      00C32B 1F 01            [ 2]  620 	ldw	(0x01, sp), x
                                    621 ; genCast
                                    622 ; genAssign
      00C32D 7B 06            [ 1]  623 	ld	a, (0x06, sp)
                                    624 ; genPlus
      00C32F 5F               [ 1]  625 	clrw	x
      00C330 41               [ 1]  626 	exg	a, xl
      00C331 90 9E            [ 1]  627 	ld	a, yh
      00C333 41               [ 1]  628 	exg	a, xl
      00C334 72 FB 01         [ 2]  629 	addw	x, (0x01, sp)
                                    630 ; genPointerGet
      00C337 88               [ 1]  631 	push	a
      00C338 F6               [ 1]  632 	ld	a, (x)
      00C339 6B 03            [ 1]  633 	ld	(0x03, sp), a
      00C33B 84               [ 1]  634 	pop	a
                                    635 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 597: if (NewState != DISABLE)
                                    636 ; genIfx
      00C33C 0D 07            [ 1]  637 	tnz	(0x07, sp)
                                    638 ; peephole j5 changed absolute to relative unconditional jump.
      00C33E 27 05            [ 1]  639 	jreq	00102$
                                    640 ; peephole j10 removed jra by using inverse jump logic
                                    641 ; peephole j30 removed unused label 00113$.
                                    642 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 600: ADCx->SQR[regindex] |= (uint8_t)(ADC_Channels);
                                    643 ; genOr
      00C340 1A 02            [ 1]  644 	or	a, (0x02, sp)
                                    645 ; genPointerSet
      00C342 F7               [ 1]  646 	ld	(x), a
                                    647 ; genGoto
      00C343 20 04            [ 2]  648 	jra	00104$
                                    649 ; peephole j5 changed absolute to relative unconditional jump.
                                    650 ; genLabel
      00C345                        651 00102$:
                                    652 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 605: ADCx->SQR[regindex] &= (uint8_t)(~(uint8_t)(ADC_Channels));
                                    653 ; genCpl
      00C345 43               [ 1]  654 	cpl	a
                                    655 ; genAnd
      00C346 14 02            [ 1]  656 	and	a, (0x02, sp)
                                    657 ; genPointerSet
      00C348 F7               [ 1]  658 	ld	(x), a
                                    659 ; genLabel
      00C349                        660 00104$:
                                    661 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 607: }
                                    662 ; genEndFunction
      00C349 1E 03            [ 2]  663 	ldw	x, (3, sp)
      00C34B 5B 07            [ 2]  664 	addw	sp, #7
      00C34D FC               [ 2]  665 	jp	(x)
                                    666 ;	Total ADC_ChannelCmd function size at codegen: 5 bytes.
                                    667 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 631: void ADC_SamplingTimeConfig(ADC_TypeDef* ADCx,
                                    668 ; genLabel
                                    669 ;	-----------------------------------------
                                    670 ;	 function ADC_SamplingTimeConfig
                                    671 ;	-----------------------------------------
                                    672 ;	Register assignment might be sub-optimal.
                                    673 ;	Stack space usage: 3 bytes.
      00C34E                        674 _ADC_SamplingTimeConfig:
      00C34E 52 03            [ 2]  675 	sub	sp, #3
                                    676 ; genReceive
      00C350 1F 02            [ 2]  677 	ldw	(0x02, sp), x
                                    678 ; genReceive
                                    679 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 639: if ( ADC_GroupChannels != ADC_Group_SlowChannels)
                                    680 ; genIfx
      00C352 4D               [ 1]  681 	tnz	a
                                    682 ; peephole j5 changed absolute to relative unconditional jump.
      00C353 27 15            [ 1]  683 	jreq	00102$
                                    684 ; peephole j10 removed jra by using inverse jump logic
                                    685 ; peephole j30 removed unused label 00113$.
                                    686 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 642: ADCx->CR3 &= (uint8_t)~ADC_CR3_SMPT2;
                                    687 ; genPlus
      00C355 1E 02            [ 2]  688 	ldw	x, (0x02, sp)
      00C357 5C               [ 1]  689 	incw	x
      00C358 5C               [ 1]  690 	incw	x
                                    691 ; genPointerGet
      00C359 F6               [ 1]  692 	ld	a, (x)
                                    693 ; genAnd
      00C35A A4 1F            [ 1]  694 	and	a, #0x1f
                                    695 ; genPointerSet
      00C35C 6B 01            [ 1]  696 	ld	(0x01, sp), a
                                    697 ; peephole 4a removed redundant load from (0x01, sp) into a.
      00C35E F7               [ 1]  698 	ld	(x), a
                                    699 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 643: ADCx->CR3 |= (uint8_t)(ADC_SamplingTime << 5);
                                    700 ; genLeftShiftLiteral
      00C35F 7B 06            [ 1]  701 	ld	a, (0x06, sp)
      00C361 4E               [ 1]  702 	swap	a
      00C362 A4 F0            [ 1]  703 	and	a, #0xf0
      00C364 48               [ 1]  704 	sll	a
                                    705 ; genOr
      00C365 1A 01            [ 1]  706 	or	a, (0x01, sp)
                                    707 ; genPointerSet
      00C367 F7               [ 1]  708 	ld	(x), a
                                    709 ; genGoto
      00C368 20 0A            [ 2]  710 	jra	00104$
                                    711 ; peephole j5 changed absolute to relative unconditional jump.
                                    712 ; genLabel
      00C36A                        713 00102$:
                                    714 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 648: ADCx->CR2 &= (uint8_t)~ADC_CR2_SMPT1;
                                    715 ; genPlus
      00C36A 1E 02            [ 2]  716 	ldw	x, (0x02, sp)
      00C36C 5C               [ 1]  717 	incw	x
                                    718 ; genPointerGet
      00C36D F6               [ 1]  719 	ld	a, (x)
                                    720 ; genAnd
      00C36E A4 F8            [ 1]  721 	and	a, #0xf8
                                    722 ; genPointerSet
      00C370 F7               [ 1]  723 	ld	(x), a
                                    724 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 649: ADCx->CR2 |= (uint8_t)ADC_SamplingTime;
                                    725 ; genOr
      00C371 1A 06            [ 1]  726 	or	a, (0x06, sp)
                                    727 ; genPointerSet
      00C373 F7               [ 1]  728 	ld	(x), a
                                    729 ; genLabel
      00C374                        730 00104$:
                                    731 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 651: }
                                    732 ; genEndFunction
      00C374 5B 03            [ 2]  733 	addw	sp, #3
      00C376 85               [ 2]  734 	popw	x
      00C377 84               [ 1]  735 	pop	a
      00C378 FC               [ 2]  736 	jp	(x)
                                    737 ;	Total ADC_SamplingTimeConfig function size at codegen: 5 bytes.
                                    738 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 697: void ADC_SchmittTriggerConfig(ADC_TypeDef* ADCx, ADC_Channel_TypeDef ADC_Channels,
                                    739 ; genLabel
                                    740 ;	-----------------------------------------
                                    741 ;	 function ADC_SchmittTriggerConfig
                                    742 ;	-----------------------------------------
                                    743 ;	Register assignment might be sub-optimal.
                                    744 ;	Stack space usage: 2 bytes.
      00C379                        745 _ADC_SchmittTriggerConfig:
      00C379 89               [ 2]  746 	pushw	x
                                    747 ; genReceive
      00C37A 51               [ 1]  748 	exgw	x, y
                                    749 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 704: regindex = (uint8_t)((uint16_t)ADC_Channels >> 8);
                                    750 ; genCast
                                    751 ; genAssign
      00C37B 1E 05            [ 2]  752 	ldw	x, (0x05, sp)
                                    753 ; genGetByte
                                    754 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 709: ADC_TRIGR(ADCx, regindex) &= (uint8_t)(~(uint8_t)ADC_Channels);
                                    755 ; genCast
                                    756 ; genAssign
                                    757 ; genCast
                                    758 ; genAssign
                                    759 ; genCast
                                    760 ; genAssign
      00C37D 7B 06            [ 1]  761 	ld	a, (0x06, sp)
                                    762 ; genCast
                                    763 ; genAssign
                                    764 ; genCast
                                    765 ; genAssign
      00C37F 02               [ 1]  766 	rlwa	x
      00C380 6B 02            [ 1]  767 	ld	(0x02, sp), a
      00C382 01               [ 1]  768 	rrwa	x
      00C383 0F 01            [ 1]  769 	clr	(0x01, sp)
                                    770 ; genPlus
      00C385 93               [ 1]  771 	ldw	x, y
      00C386 1C 00 0E         [ 2]  772 	addw	x, #0x000e
                                    773 ; genPlus
      00C389 72 FB 01         [ 2]  774 	addw	x, (0x01, sp)
                                    775 ; genCast
                                    776 ; genAssign
                                    777 ; genPointerGet
      00C38C 88               [ 1]  778 	push	a
      00C38D F6               [ 1]  779 	ld	a, (x)
      00C38E 6B 03            [ 1]  780 	ld	(0x03, sp), a
      00C390 84               [ 1]  781 	pop	a
                                    782 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 706: if (NewState != DISABLE)
                                    783 ; genIfx
      00C391 0D 07            [ 1]  784 	tnz	(0x07, sp)
                                    785 ; peephole j5 changed absolute to relative unconditional jump.
      00C393 27 06            [ 1]  786 	jreq	00102$
                                    787 ; peephole j10 removed jra by using inverse jump logic
                                    788 ; peephole j30 removed unused label 00113$.
                                    789 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 709: ADC_TRIGR(ADCx, regindex) &= (uint8_t)(~(uint8_t)ADC_Channels);
                                    790 ; genCpl
      00C395 43               [ 1]  791 	cpl	a
                                    792 ; genAnd
      00C396 14 02            [ 1]  793 	and	a, (0x02, sp)
                                    794 ; genPointerSet
      00C398 F7               [ 1]  795 	ld	(x), a
                                    796 ; genGoto
      00C399 20 03            [ 2]  797 	jra	00104$
                                    798 ; peephole j5 changed absolute to relative unconditional jump.
                                    799 ; genLabel
      00C39B                        800 00102$:
                                    801 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 714: ADC_TRIGR(ADCx, regindex) |= (uint8_t)(ADC_Channels);
                                    802 ; genOr
      00C39B 1A 02            [ 1]  803 	or	a, (0x02, sp)
                                    804 ; genPointerSet
      00C39D F7               [ 1]  805 	ld	(x), a
                                    806 ; genLabel
      00C39E                        807 00104$:
                                    808 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 716: }
                                    809 ; genEndFunction
      00C39E 1E 03            [ 2]  810 	ldw	x, (3, sp)
      00C3A0 5B 07            [ 2]  811 	addw	sp, #7
      00C3A2 FC               [ 2]  812 	jp	(x)
                                    813 ;	Total ADC_SchmittTriggerConfig function size at codegen: 5 bytes.
                                    814 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 723: uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx)
                                    815 ; genLabel
                                    816 ;	-----------------------------------------
                                    817 ;	 function ADC_GetConversionValue
                                    818 ;	-----------------------------------------
                                    819 ;	Register assignment might be sub-optimal.
                                    820 ;	Stack space usage: 2 bytes.
      00C3A3                        821 _ADC_GetConversionValue:
      00C3A3 89               [ 2]  822 	pushw	x
                                    823 ; genReceive
                                    824 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 728: tmpreg = (uint16_t)(ADCx->DRH);
                                    825 ; genAssign
                                    826 ; peephole 5w replaced exgw-ldw by ldw.
      00C3A4 90 93            [ 1]  827 	ldw	y, x
                                    828 ; genPointerGet
      00C3A6 E6 04            [ 1]  829 	ld	a, (0x4, x)
                                    830 ; genCast
                                    831 ; genAssign
                                    832 ; peephole 3 removed dead clrw of x.
                                    833 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 729: tmpreg = (uint16_t)((uint16_t)((uint16_t)tmpreg << 8) | ADCx->DRL);
                                    834 ; genLeftShiftLiteral
      00C3A8 95               [ 1]  835 	ld	xh, a
      00C3A9 0F 02            [ 1]  836 	clr	(0x02, sp)
                                    837 ; genAssign
                                    838 ; genPointerGet
      00C3AB 90 E6 05         [ 1]  839 	ld	a, (0x5, y)
                                    840 ; genCast
                                    841 ; genAssign
                                    842 ; peephole 3 removed dead clrw of y.
                                    843 ; genOr
                                    844 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 732: return (uint16_t)(tmpreg) ;
                                    845 ; genReturn
      00C3AE 97               [ 1]  846 	ld	xl, a
                                    847 ; genLabel
                                    848 ; peephole j30 removed unused label 00101$.
                                    849 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 733: }
                                    850 ; genEndFunction
      00C3AF 5B 02            [ 2]  851 	addw	sp, #2
      00C3B1 81               [ 4]  852 	ret
                                    853 ;	Total ADC_GetConversionValue function size at codegen: 3 bytes.
                                    854 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 766: void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState)
                                    855 ; genLabel
                                    856 ;	-----------------------------------------
                                    857 ;	 function ADC_DMACmd
                                    858 ;	-----------------------------------------
                                    859 ;	Register assignment might be sub-optimal.
                                    860 ;	Stack space usage: 1 bytes.
      00C3B2                        861 _ADC_DMACmd:
      00C3B2 88               [ 1]  862 	push	a
                                    863 ; genReceive
                                    864 ; genReceive
      00C3B3 6B 01            [ 1]  865 	ld	(0x01, sp), a
                                    866 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 774: ADCx->SQR[0] &= (uint8_t)~ADC_SQR1_DMAOFF;
                                    867 ; genPlus
      00C3B5 1C 00 0A         [ 2]  868 	addw	x, #0x000a
                                    869 ; genPointerGet
      00C3B8 F6               [ 1]  870 	ld	a, (x)
                                    871 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 771: if (NewState != DISABLE)
                                    872 ; genIfx
      00C3B9 0D 01            [ 1]  873 	tnz	(0x01, sp)
                                    874 ; peephole j5 changed absolute to relative unconditional jump.
      00C3BB 27 05            [ 1]  875 	jreq	00102$
                                    876 ; peephole j10 removed jra by using inverse jump logic
                                    877 ; peephole j30 removed unused label 00113$.
                                    878 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 774: ADCx->SQR[0] &= (uint8_t)~ADC_SQR1_DMAOFF;
                                    879 ; genAnd
      00C3BD A4 7F            [ 1]  880 	and	a, #0x7f
                                    881 ; genPointerSet
      00C3BF F7               [ 1]  882 	ld	(x), a
                                    883 ; genGoto
      00C3C0 20 03            [ 2]  884 	jra	00104$
                                    885 ; peephole j5 changed absolute to relative unconditional jump.
                                    886 ; genLabel
      00C3C2                        887 00102$:
                                    888 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 779: ADCx->SQR[0] |= ADC_SQR1_DMAOFF;
                                    889 ; genOr
      00C3C2 AA 80            [ 1]  890 	or	a, #0x80
                                    891 ; genPointerSet
      00C3C4 F7               [ 1]  892 	ld	(x), a
                                    893 ; genLabel
      00C3C5                        894 00104$:
                                    895 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 781: }
                                    896 ; genEndFunction
      00C3C5 84               [ 1]  897 	pop	a
      00C3C6 81               [ 4]  898 	ret
                                    899 ;	Total ADC_DMACmd function size at codegen: 2 bytes.
                                    900 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 837: void ADC_ITConfig(ADC_TypeDef* ADCx, ADC_IT_TypeDef ADC_IT, FunctionalState NewState)
                                    901 ; genLabel
                                    902 ;	-----------------------------------------
                                    903 ;	 function ADC_ITConfig
                                    904 ;	-----------------------------------------
                                    905 ;	Register assignment might be sub-optimal.
                                    906 ;	Stack space usage: 1 bytes.
      00C3C7                        907 _ADC_ITConfig:
      00C3C7 88               [ 1]  908 	push	a
                                    909 ; genReceive
                                    910 ; genReceive
                                    911 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 846: ADCx->CR1 |= (uint8_t) ADC_IT;
                                    912 ; genCast
                                    913 ; genAssign
                                    914 ; genPointerGet
      00C3C8 88               [ 1]  915 	push	a
      00C3C9 F6               [ 1]  916 	ld	a, (x)
      00C3CA 6B 02            [ 1]  917 	ld	(0x02, sp), a
      00C3CC 84               [ 1]  918 	pop	a
                                    919 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 843: if (NewState != DISABLE)
                                    920 ; genIfx
      00C3CD 0D 04            [ 1]  921 	tnz	(0x04, sp)
                                    922 ; peephole j5 changed absolute to relative unconditional jump.
      00C3CF 27 05            [ 1]  923 	jreq	00102$
                                    924 ; peephole j10 removed jra by using inverse jump logic
                                    925 ; peephole j30 removed unused label 00113$.
                                    926 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 846: ADCx->CR1 |= (uint8_t) ADC_IT;
                                    927 ; genOr
      00C3D1 1A 01            [ 1]  928 	or	a, (0x01, sp)
                                    929 ; genPointerSet
      00C3D3 F7               [ 1]  930 	ld	(x), a
                                    931 ; genGoto
      00C3D4 20 04            [ 2]  932 	jra	00104$
                                    933 ; peephole j5 changed absolute to relative unconditional jump.
                                    934 ; genLabel
      00C3D6                        935 00102$:
                                    936 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 851: ADCx->CR1 &= (uint8_t)(~ADC_IT);
                                    937 ; genCpl
      00C3D6 43               [ 1]  938 	cpl	a
                                    939 ; genAnd
      00C3D7 14 01            [ 1]  940 	and	a, (0x01, sp)
                                    941 ; genPointerSet
      00C3D9 F7               [ 1]  942 	ld	(x), a
                                    943 ; genLabel
      00C3DA                        944 00104$:
                                    945 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 853: }
                                    946 ; genEndFunction
      00C3DA 84               [ 1]  947 	pop	a
      00C3DB 85               [ 2]  948 	popw	x
      00C3DC 84               [ 1]  949 	pop	a
      00C3DD FC               [ 2]  950 	jp	(x)
                                    951 ;	Total ADC_ITConfig function size at codegen: 4 bytes.
                                    952 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 865: FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, ADC_FLAG_TypeDef ADC_FLAG)
                                    953 ; genLabel
                                    954 ;	-----------------------------------------
                                    955 ;	 function ADC_GetFlagStatus
                                    956 ;	-----------------------------------------
                                    957 ;	Register assignment might be sub-optimal.
                                    958 ;	Stack space usage: 1 bytes.
      00C3DE                        959 _ADC_GetFlagStatus:
      00C3DE 88               [ 1]  960 	push	a
                                    961 ; genReceive
                                    962 ; genReceive
      00C3DF 6B 01            [ 1]  963 	ld	(0x01, sp), a
                                    964 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 873: if ((ADCx->SR & ADC_FLAG) != (uint8_t)RESET)
                                    965 ; genAssign
                                    966 ; genPointerGet
      00C3E1 E6 03            [ 1]  967 	ld	a, (0x3, x)
                                    968 ; genAnd
                                    969 ; genIfx
      00C3E3 14 01            [ 1]  970 	and	a, (0x01, sp)
                                    971 ; peephole 23 removed redundant tnz.
                                    972 ; peephole j5 changed absolute to relative unconditional jump.
      00C3E5 27 03            [ 1]  973 	jreq	00102$
                                    974 ; peephole j10 removed jra by using inverse jump logic
                                    975 ; peephole j30 removed unused label 00113$.
                                    976 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 876: flagstatus = SET;
                                    977 ; genAssign
      00C3E7 A6 01            [ 1]  978 	ld	a, #0x01
                                    979 ; genGoto
                                    980 ; peephole j5 changed absolute to relative unconditional jump.
                                    981 ; genLabel
                                    982 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 881: flagstatus = RESET;
                                    983 ; genAssign
                                    984 ; genLabel
      00C3E9 21                     985 	.byte 0x21
                                    986 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00C3EA                        987 00102$:
      00C3EA 4F               [ 1]  988 	clr	a
      00C3EB                        989 00103$:
                                    990 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 885: return  flagstatus;
                                    991 ; genReturn
                                    992 ; genLabel
                                    993 ; peephole j30 removed unused label 00104$.
                                    994 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 886: }
                                    995 ; genEndFunction
      00C3EB 5B 01            [ 2]  996 	addw	sp, #1
      00C3ED 81               [ 4]  997 	ret
                                    998 ;	Total ADC_GetFlagStatus function size at codegen: 3 bytes.
                                    999 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 898: void ADC_ClearFlag(ADC_TypeDef* ADCx,
                                   1000 ; genLabel
                                   1001 ;	-----------------------------------------
                                   1002 ;	 function ADC_ClearFlag
                                   1003 ;	-----------------------------------------
                                   1004 ;	Register assignment might be sub-optimal.
                                   1005 ;	Stack space usage: 0 bytes.
      00C3EE                       1006 _ADC_ClearFlag:
                                   1007 ; genReceive
                                   1008 ; genReceive
                                   1009 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 905: ADCx->SR = (uint8_t)~ADC_FLAG;
                                   1010 ; genPlus
      00C3EE 1C 00 03         [ 2] 1011 	addw	x, #0x0003
                                   1012 ; genCpl
      00C3F1 43               [ 1] 1013 	cpl	a
                                   1014 ; genPointerSet
      00C3F2 F7               [ 1] 1015 	ld	(x), a
                                   1016 ; genLabel
                                   1017 ; peephole j30 removed unused label 00101$.
                                   1018 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 906: }
                                   1019 ; genEndFunction
      00C3F3 81               [ 4] 1020 	ret
                                   1021 ;	Total ADC_ClearFlag function size at codegen: 1 bytes.
                                   1022 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 918: ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx,
                                   1023 ; genLabel
                                   1024 ;	-----------------------------------------
                                   1025 ;	 function ADC_GetITStatus
                                   1026 ;	-----------------------------------------
                                   1027 ;	Register assignment might be sub-optimal.
                                   1028 ;	Stack space usage: 3 bytes.
      00C3F4                       1029 _ADC_GetITStatus:
      00C3F4 52 03            [ 2] 1030 	sub	sp, #3
                                   1031 ; genReceive
                                   1032 ; genReceive
                                   1033 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 928: itmask = (uint8_t)(ADC_IT >> 3);
                                   1034 ; genRightShiftLiteral
      00C3F6 6B 03            [ 1] 1035 	ld	(0x03, sp), a
                                   1036 ; peephole 4a removed redundant load from (0x03, sp) into a.
      00C3F8 44               [ 1] 1037 	srl	a
      00C3F9 44               [ 1] 1038 	srl	a
      00C3FA 44               [ 1] 1039 	srl	a
                                   1040 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 929: itmask =  (uint8_t)((uint8_t)((uint8_t)(itmask & (uint8_t)0x10) >> 2) | \
                                   1041 ; genAnd
      00C3FB 6B 01            [ 1] 1042 	ld	(0x01, sp), a
                                   1043 ; peephole 4a removed redundant load from (0x01, sp) into a.
      00C3FD A4 10            [ 1] 1044 	and	a, #0x10
                                   1045 ; genRightShiftLiteral
      00C3FF 44               [ 1] 1046 	srl	a
      00C400 44               [ 1] 1047 	srl	a
      00C401 6B 02            [ 1] 1048 	ld	(0x02, sp), a
                                   1049 ; genAnd
      00C403 7B 01            [ 1] 1050 	ld	a, (0x01, sp)
      00C405 A4 03            [ 1] 1051 	and	a, #0x03
                                   1052 ; genOr
      00C407 1A 02            [ 1] 1053 	or	a, (0x02, sp)
      00C409 6B 01            [ 1] 1054 	ld	(0x01, sp), a
                                   1055 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 933: enablestatus = (uint8_t)(ADCx->CR1 & (uint8_t)ADC_IT) ;
                                   1056 ; genPointerGet
      00C40B F6               [ 1] 1057 	ld	a, (x)
                                   1058 ; genAnd
      00C40C 14 03            [ 1] 1059 	and	a, (0x03, sp)
      00C40E 6B 02            [ 1] 1060 	ld	(0x02, sp), a
                                   1061 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 936: if (((ADCx->SR & itmask) != (uint8_t)RESET) && enablestatus)
                                   1062 ; genAssign
                                   1063 ; genPointerGet
      00C410 E6 03            [ 1] 1064 	ld	a, (0x3, x)
                                   1065 ; genAnd
                                   1066 ; genIfx
      00C412 14 01            [ 1] 1067 	and	a, (0x01, sp)
                                   1068 ; peephole 23 removed redundant tnz.
                                   1069 ; peephole j5 changed absolute to relative unconditional jump.
      00C414 27 07            [ 1] 1070 	jreq	00102$
                                   1071 ; peephole j10 removed jra by using inverse jump logic
                                   1072 ; peephole j30 removed unused label 00121$.
                                   1073 ; genIfx
      00C416 0D 02            [ 1] 1074 	tnz	(0x02, sp)
                                   1075 ; peephole j5 changed absolute to relative unconditional jump.
      00C418 27 03            [ 1] 1076 	jreq	00102$
                                   1077 ; peephole j10 removed jra by using inverse jump logic
                                   1078 ; peephole j30 removed unused label 00122$.
                                   1079 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 939: itstatus = SET;
                                   1080 ; genAssign
      00C41A A6 01            [ 1] 1081 	ld	a, #0x01
                                   1082 ; genGoto
                                   1083 ; peephole j5 changed absolute to relative unconditional jump.
                                   1084 ; genLabel
                                   1085 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 944: itstatus = RESET;
                                   1086 ; genAssign
                                   1087 ; genLabel
      00C41C 21                    1088 	.byte 0x21
                                   1089 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00C41D                       1090 00102$:
      00C41D 4F               [ 1] 1091 	clr	a
      00C41E                       1092 00103$:
                                   1093 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 948: return  itstatus;
                                   1094 ; genReturn
                                   1095 ; genLabel
                                   1096 ; peephole j30 removed unused label 00105$.
                                   1097 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 949: }
                                   1098 ; genEndFunction
      00C41E 5B 03            [ 2] 1099 	addw	sp, #3
      00C420 81               [ 4] 1100 	ret
                                   1101 ;	Total ADC_GetITStatus function size at codegen: 3 bytes.
                                   1102 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 961: void ADC_ClearITPendingBit(ADC_TypeDef* ADCx,
                                   1103 ; genLabel
                                   1104 ;	-----------------------------------------
                                   1105 ;	 function ADC_ClearITPendingBit
                                   1106 ;	-----------------------------------------
                                   1107 ;	Register assignment might be sub-optimal.
                                   1108 ;	Stack space usage: 1 bytes.
      00C421                       1109 _ADC_ClearITPendingBit:
      00C421 88               [ 1] 1110 	push	a
                                   1111 ; genReceive
      00C422 51               [ 1] 1112 	exgw	x, y
                                   1113 ; genReceive
                                   1114 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 970: itmask = (uint8_t)(ADC_IT >> 3);
                                   1115 ; genRightShiftLiteral
      00C423 44               [ 1] 1116 	srl	a
      00C424 44               [ 1] 1117 	srl	a
      00C425 44               [ 1] 1118 	srl	a
                                   1119 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 971: itmask =  (uint8_t)((uint8_t)(((uint8_t)(itmask & (uint8_t)0x10)) >> 2) | \
                                   1120 ; genAnd
      00C426 97               [ 1] 1121 	ld	xl, a
                                   1122 ; peephole 4 removed redundant load from xl into a.
      00C427 A4 10            [ 1] 1123 	and	a, #0x10
                                   1124 ; genRightShiftLiteral
      00C429 44               [ 1] 1125 	srl	a
      00C42A 44               [ 1] 1126 	srl	a
      00C42B 6B 01            [ 1] 1127 	ld	(0x01, sp), a
                                   1128 ; genAnd
      00C42D 9F               [ 1] 1129 	ld	a, xl
      00C42E A4 03            [ 1] 1130 	and	a, #0x03
                                   1131 ; genOr
      00C430 1A 01            [ 1] 1132 	or	a, (0x01, sp)
                                   1133 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 975: ADCx->SR = (uint8_t)~itmask;
                                   1134 ; genPlus
      00C432 93               [ 1] 1135 	ldw	x, y
      00C433 1C 00 03         [ 2] 1136 	addw	x, #0x0003
                                   1137 ; genCpl
      00C436 43               [ 1] 1138 	cpl	a
                                   1139 ; genPointerSet
      00C437 F7               [ 1] 1140 	ld	(x), a
                                   1141 ; genLabel
                                   1142 ; peephole j30 removed unused label 00101$.
                                   1143 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_adc.c: 976: }
                                   1144 ; genEndFunction
      00C438 84               [ 1] 1145 	pop	a
      00C439 81               [ 4] 1146 	ret
                                   1147 ;	Total ADC_ClearITPendingBit function size at codegen: 2 bytes.
                                   1148 	.area CODE
                                   1149 	.area CONST
                                   1150 	.area INITIALIZER
                                   1151 	.area CABS (ABS)
