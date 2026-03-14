                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8l15x_it
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _I2C1_SPI2_IRQHandler
                                     11 	.globl _USART1_RX_TIM5_CC_IRQHandler
                                     12 	.globl _USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler
                                     13 	.globl _SPI1_IRQHandler
                                     14 	.globl _TIM4_UPD_OVF_TRG_IRQHandler
                                     15 	.globl _TIM1_CC_IRQHandler
                                     16 	.globl _TIM1_UPD_OVF_TRG_COM_IRQHandler
                                     17 	.globl _TIM3_CC_USART3_RX_IRQHandler
                                     18 	.globl _TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler
                                     19 	.globl _TIM2_CC_USART2_RX_IRQHandler
                                     20 	.globl _TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler
                                     21 	.globl _ADC1_COMP_IRQHandler
                                     22 	.globl _SWITCH_CSS_BREAK_DAC_IRQHandler
                                     23 	.globl _LCD_AES_IRQHandler
                                     24 	.globl _EXTI7_IRQHandler
                                     25 	.globl _EXTI6_IRQHandler
                                     26 	.globl _EXTI5_IRQHandler
                                     27 	.globl _EXTI4_IRQHandler
                                     28 	.globl _EXTI3_IRQHandler
                                     29 	.globl _EXTI2_IRQHandler
                                     30 	.globl _EXTI1_IRQHandler
                                     31 	.globl _EXTI0_IRQHandler
                                     32 	.globl _EXTID_H_IRQHandler
                                     33 	.globl _EXTIB_G_IRQHandler
                                     34 	.globl _EXTIE_F_PVD_IRQHandler
                                     35 	.globl _RTC_CSSLSE_IRQHandler
                                     36 	.globl _DMA1_CHANNEL2_3_IRQHandler
                                     37 	.globl _DMA1_CHANNEL0_1_IRQHandler
                                     38 	.globl _FLASH_IRQHandler
                                     39 	.globl _TRAP_IRQHandler
                                     40 	.globl _NonHandledInterrupt
                                     41 	.globl _Scan_Key
                                     42 	.globl _SendMsg
                                     43 	.globl _WWDG_SetCounter
                                     44 	.globl _USART_GetITStatus
                                     45 	.globl _USART_ReceiveData8
                                     46 	.globl _TIM4_ClearITPendingBit
                                     47 	.globl _TIM2_ClearITPendingBit
                                     48 	.globl _EXTI_ClearITPendingBit
                                     49 	.globl _DMA_ClearITPendingBit
                                     50 	.globl _ADC_DMACmd
                                     51 	.globl _ADC_Cmd
                                     52 ;--------------------------------------------------------
                                     53 ; ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area DATA
      000496                         56 _TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler_i_10000_704:
      000496                         57 	.ds 1
      000497                         58 _TIM4_UPD_OVF_TRG_IRQHandler_t200_10000_722:
      000497                         59 	.ds 1
      000498                         60 _TIM4_UPD_OVF_TRG_IRQHandler_t1000_10000_722:
      000498                         61 	.ds 1
                                     62 ;--------------------------------------------------------
                                     63 ; ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area INITIALIZED
                                     66 ;--------------------------------------------------------
                                     67 ; absolute external ram data
                                     68 ;--------------------------------------------------------
                                     69 	.area DABS (ABS)
                                     70 
                                     71 ; default segment ordering for linker
                                     72 	.area HOME
                                     73 	.area GSINIT
                                     74 	.area GSFINAL
                                     75 	.area CONST
                                     76 	.area INITIALIZER
                                     77 	.area CODE
                                     78 
                                     79 ;--------------------------------------------------------
                                     80 ; global & static initialisations
                                     81 ;--------------------------------------------------------
                                     82 	.area HOME
                                     83 	.area GSINIT
                                     84 	.area GSFINAL
                                     85 	.area GSINIT
                                     86 ;	User/stm8l15x_it.c: 346: static uint8_t i=0;
                                     87 ; genAssign
      008196 72 5F 04 96      [ 1]   88 	clr	_TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler_i_10000_704+0
                                     89 ;	User/stm8l15x_it.c: 431: static uint8_t t200=0,t1000=0;
                                     90 ; genAssign
      00819A 72 5F 04 97      [ 1]   91 	clr	_TIM4_UPD_OVF_TRG_IRQHandler_t200_10000_722+0
                                     92 ; genAssign
      00819E 72 5F 04 98      [ 1]   93 	clr	_TIM4_UPD_OVF_TRG_IRQHandler_t1000_10000_722+0
                                     94 ;--------------------------------------------------------
                                     95 ; Home
                                     96 ;--------------------------------------------------------
                                     97 	.area HOME
                                     98 	.area HOME
                                     99 ;--------------------------------------------------------
                                    100 ; code
                                    101 ;--------------------------------------------------------
                                    102 	.area CODE
                                    103 ;	User/stm8l15x_it.c: 48: INTERRUPT_HANDLER(NonHandledInterrupt,0)
                                    104 ; genLabel
                                    105 ;	-----------------------------------------
                                    106 ;	 function NonHandledInterrupt
                                    107 ;	-----------------------------------------
                                    108 ;	Register assignment is optimal.
                                    109 ;	Stack space usage: 0 bytes.
      00C00B                        110 _NonHandledInterrupt:
                                    111 ;	User/stm8l15x_it.c: 53: }
                                    112 ; genLabel
                                    113 ; peephole j30 removed unused label 00101$.
                                    114 ; genEndFunction
      00C00B 80               [11]  115 	iret
                                    116 ;	Total NonHandledInterrupt function size at codegen: 1 bytes.
                                    117 ;	User/stm8l15x_it.c: 62: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
                                    118 ; genLabel
                                    119 ;	-----------------------------------------
                                    120 ;	 function TRAP_IRQHandler
                                    121 ;	-----------------------------------------
                                    122 ;	Register assignment is optimal.
                                    123 ;	Stack space usage: 0 bytes.
      00C00C                        124 _TRAP_IRQHandler:
                                    125 ;	User/stm8l15x_it.c: 67: }
                                    126 ; genLabel
                                    127 ; peephole j30 removed unused label 00101$.
                                    128 ; genEndFunction
      00C00C 80               [11]  129 	iret
                                    130 ;	Total TRAP_IRQHandler function size at codegen: 1 bytes.
                                    131 ;	User/stm8l15x_it.c: 73: INTERRUPT_HANDLER(FLASH_IRQHandler,1)
                                    132 ; genLabel
                                    133 ;	-----------------------------------------
                                    134 ;	 function FLASH_IRQHandler
                                    135 ;	-----------------------------------------
                                    136 ;	Register assignment is optimal.
                                    137 ;	Stack space usage: 0 bytes.
      00C00D                        138 _FLASH_IRQHandler:
                                    139 ;	User/stm8l15x_it.c: 78: }
                                    140 ; genLabel
                                    141 ; peephole j30 removed unused label 00101$.
                                    142 ; genEndFunction
      00C00D 80               [11]  143 	iret
                                    144 ;	Total FLASH_IRQHandler function size at codegen: 1 bytes.
                                    145 ;	User/stm8l15x_it.c: 84: INTERRUPT_HANDLER(DMA1_CHANNEL0_1_IRQHandler,2)
                                    146 ; genLabel
                                    147 ;	-----------------------------------------
                                    148 ;	 function DMA1_CHANNEL0_1_IRQHandler
                                    149 ;	-----------------------------------------
                                    150 ;	Register assignment might be sub-optimal.
                                    151 ;	Stack space usage: 4 bytes.
      00C00E                        152 _DMA1_CHANNEL0_1_IRQHandler:
                                    153 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      00C00E 62               [ 2]  154 	div	x, a
      00C00F 52 04            [ 2]  155 	sub	sp, #4
                                    156 ;	User/stm8l15x_it.c: 87: uint32_t val=0;
                                    157 ; genAssign
      00C011 5F               [ 1]  158 	clrw	x
      00C012 1F 03            [ 2]  159 	ldw	(0x03, sp), x
      00C014 1F 01            [ 2]  160 	ldw	(0x01, sp), x
                                    161 ;	User/stm8l15x_it.c: 92: DMA_ClearITPendingBit(DMA1_IT_TC0);
                                    162 ; genSend
      00C016 A6 12            [ 1]  163 	ld	a, #0x12
                                    164 ; genCall
      00C018 CD C8 E2         [ 4]  165 	call	_DMA_ClearITPendingBit
                                    166 ;	User/stm8l15x_it.c: 93: ADC_Cmd(ADC1, DISABLE);
                                    167 ; genSend
      00C01B 4F               [ 1]  168 	clr	a
                                    169 ; genSend
      00C01C AE 53 40         [ 2]  170 	ldw	x, #0x5340
                                    171 ; genCall
      00C01F CD C2 7A         [ 4]  172 	call	_ADC_Cmd
                                    173 ;	User/stm8l15x_it.c: 94: ADC_DMACmd(ADC1, DISABLE);
                                    174 ; genSend
      00C022 4F               [ 1]  175 	clr	a
                                    176 ; genSend
      00C023 AE 53 40         [ 2]  177 	ldw	x, #0x5340
                                    178 ; genCall
      00C026 CD C3 B2         [ 4]  179 	call	_ADC_DMACmd
                                    180 ;	User/stm8l15x_it.c: 96: for(i=0; i<10; i++)
                                    181 ; skipping iCode since result will be rematerialized
                                    182 ; genAssign
      00C029 4F               [ 1]  183 	clr	a
                                    184 ; genLabel
      00C02A                        185 00102$:
                                    186 ;	User/stm8l15x_it.c: 98: val+=dmabuf[i];
                                    187 ; genCast
                                    188 ; genAssign
      00C02A 5F               [ 1]  189 	clrw	x
      00C02B 97               [ 1]  190 	ld	xl, a
                                    191 ; genLeftShiftLiteral
      00C02C 58               [ 2]  192 	sllw	x
                                    193 ; genPlus
                                    194 ; genPointerGet
                                    195 ; peephole 10d moved addition of offset into storage instruction
      00C02D DE 04 A0         [ 2]  196 	ldw	x, (_dmabuf+0, x)
                                    197 ; genCast
                                    198 ; genAssign
      00C030 90 5F            [ 1]  199 	clrw	y
                                    200 ; genPlus
      00C032 72 FB 03         [ 2]  201 	addw	x, (0x03, sp)
      00C035 1F 03            [ 2]  202 	ldw	(0x03, sp), x
      00C037 88               [ 1]  203 	push	a
      00C038 4F               [ 1]  204 	clr	a
      00C039 19 03            [ 1]  205 	adc	a, (0x03, sp)
      00C03B 6B 03            [ 1]  206 	ld	(0x03, sp), a
      00C03D 4F               [ 1]  207 	clr	a
      00C03E 19 02            [ 1]  208 	adc	a, (0x02, sp)
      00C040 6B 02            [ 1]  209 	ld	(0x02, sp), a
      00C042 84               [ 1]  210 	pop	a
                                    211 ;	User/stm8l15x_it.c: 96: for(i=0; i<10; i++)
                                    212 ; genPlus
      00C043 4C               [ 1]  213 	inc	a
                                    214 ; genCmp
                                    215 ; genCmpTnz
      00C044 A1 0A            [ 1]  216 	cp	a, #0x0a
                                    217 ; peephole j5 changed absolute to relative unconditional jump.
      00C046 25 E2            [ 1]  218 	jrc	00102$
                                    219 ; peephole j9 removed jra by using inverse jump logic
                                    220 ; peephole j30 removed unused label 00121$.
                                    221 ; skipping generated iCode
                                    222 ;	User/stm8l15x_it.c: 100: SendMsg(&MsgSystem,MSG_ADC,val,0);
                                    223 ; skipping iCode since result will be rematerialized
                                    224 ; skipping iCode since result will be rematerialized
                                    225 ; genIPush
      00C048 5F               [ 1]  226 	clrw	x
      00C049 89               [ 2]  227 	pushw	x
      00C04A 5F               [ 1]  228 	clrw	x
      00C04B 89               [ 2]  229 	pushw	x
                                    230 ; genIPush
      00C04C 1E 07            [ 2]  231 	ldw	x, (0x07, sp)
      00C04E 89               [ 2]  232 	pushw	x
      00C04F 1E 07            [ 2]  233 	ldw	x, (0x07, sp)
      00C051 89               [ 2]  234 	pushw	x
                                    235 ; genSend
      00C052 A6 04            [ 1]  236 	ld	a, #0x04
                                    237 ; genSend
      00C054 AE 01 0D         [ 2]  238 	ldw	x, #(_MsgSystem+0)
                                    239 ; genCall
      00C057 CD 9D 28         [ 4]  240 	call	_SendMsg
                                    241 ; genLabel
                                    242 ; peephole j30 removed unused label 00104$.
                                    243 ;	User/stm8l15x_it.c: 110: }
                                    244 ; genEndFunction
      00C05A 5B 04            [ 2]  245 	addw	sp, #4
      00C05C 80               [11]  246 	iret
                                    247 ;	Total DMA1_CHANNEL0_1_IRQHandler function size at codegen: 3 bytes.
                                    248 ;	User/stm8l15x_it.c: 116: INTERRUPT_HANDLER(DMA1_CHANNEL2_3_IRQHandler,3)
                                    249 ; genLabel
                                    250 ;	-----------------------------------------
                                    251 ;	 function DMA1_CHANNEL2_3_IRQHandler
                                    252 ;	-----------------------------------------
                                    253 ;	Register assignment is optimal.
                                    254 ;	Stack space usage: 0 bytes.
      00C05D                        255 _DMA1_CHANNEL2_3_IRQHandler:
                                    256 ;	User/stm8l15x_it.c: 121: }
                                    257 ; genLabel
                                    258 ; peephole j30 removed unused label 00101$.
                                    259 ; genEndFunction
      00C05D 80               [11]  260 	iret
                                    261 ;	Total DMA1_CHANNEL2_3_IRQHandler function size at codegen: 1 bytes.
                                    262 ;	User/stm8l15x_it.c: 127: INTERRUPT_HANDLER(RTC_CSSLSE_IRQHandler,4)
                                    263 ; genLabel
                                    264 ;	-----------------------------------------
                                    265 ;	 function RTC_CSSLSE_IRQHandler
                                    266 ;	-----------------------------------------
                                    267 ;	Register assignment is optimal.
                                    268 ;	Stack space usage: 0 bytes.
      00C05E                        269 _RTC_CSSLSE_IRQHandler:
                                    270 ;	User/stm8l15x_it.c: 132: }
                                    271 ; genLabel
                                    272 ; peephole j30 removed unused label 00101$.
                                    273 ; genEndFunction
      00C05E 80               [11]  274 	iret
                                    275 ;	Total RTC_CSSLSE_IRQHandler function size at codegen: 1 bytes.
                                    276 ;	User/stm8l15x_it.c: 138: INTERRUPT_HANDLER(EXTIE_F_PVD_IRQHandler,5)
                                    277 ; genLabel
                                    278 ;	-----------------------------------------
                                    279 ;	 function EXTIE_F_PVD_IRQHandler
                                    280 ;	-----------------------------------------
                                    281 ;	Register assignment is optimal.
                                    282 ;	Stack space usage: 0 bytes.
      00C05F                        283 _EXTIE_F_PVD_IRQHandler:
                                    284 ;	User/stm8l15x_it.c: 143: }
                                    285 ; genLabel
                                    286 ; peephole j30 removed unused label 00101$.
                                    287 ; genEndFunction
      00C05F 80               [11]  288 	iret
                                    289 ;	Total EXTIE_F_PVD_IRQHandler function size at codegen: 1 bytes.
                                    290 ;	User/stm8l15x_it.c: 150: INTERRUPT_HANDLER(EXTIB_G_IRQHandler,6)
                                    291 ; genLabel
                                    292 ;	-----------------------------------------
                                    293 ;	 function EXTIB_G_IRQHandler
                                    294 ;	-----------------------------------------
                                    295 ;	Register assignment is optimal.
                                    296 ;	Stack space usage: 0 bytes.
      00C060                        297 _EXTIB_G_IRQHandler:
                                    298 ;	User/stm8l15x_it.c: 155: }
                                    299 ; genLabel
                                    300 ; peephole j30 removed unused label 00101$.
                                    301 ; genEndFunction
      00C060 80               [11]  302 	iret
                                    303 ;	Total EXTIB_G_IRQHandler function size at codegen: 1 bytes.
                                    304 ;	User/stm8l15x_it.c: 162: INTERRUPT_HANDLER(EXTID_H_IRQHandler,7)
                                    305 ; genLabel
                                    306 ;	-----------------------------------------
                                    307 ;	 function EXTID_H_IRQHandler
                                    308 ;	-----------------------------------------
                                    309 ;	Register assignment is optimal.
                                    310 ;	Stack space usage: 0 bytes.
      00C061                        311 _EXTID_H_IRQHandler:
                                    312 ;	User/stm8l15x_it.c: 167: }
                                    313 ; genLabel
                                    314 ; peephole j30 removed unused label 00101$.
                                    315 ; genEndFunction
      00C061 80               [11]  316 	iret
                                    317 ;	Total EXTID_H_IRQHandler function size at codegen: 1 bytes.
                                    318 ;	User/stm8l15x_it.c: 174: INTERRUPT_HANDLER(EXTI0_IRQHandler,8)
                                    319 ; genLabel
                                    320 ;	-----------------------------------------
                                    321 ;	 function EXTI0_IRQHandler
                                    322 ;	-----------------------------------------
                                    323 ;	Register assignment is optimal.
                                    324 ;	Stack space usage: 0 bytes.
      00C062                        325 _EXTI0_IRQHandler:
                                    326 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      00C062 62               [ 2]  327 	div	x, a
                                    328 ;	User/stm8l15x_it.c: 179: EXTI_ClearITPendingBit (EXTI_IT_Pin0);
                                    329 ; genSend
      00C063 5F               [ 1]  330 	clrw	x
      00C064 5C               [ 1]  331 	incw	x
                                    332 ; genCall
      00C065 CD CB B6         [ 4]  333 	call	_EXTI_ClearITPendingBit
                                    334 ; genLabel
                                    335 ; peephole j30 removed unused label 00101$.
                                    336 ;	User/stm8l15x_it.c: 180: }
                                    337 ; genEndFunction
      00C068 80               [11]  338 	iret
                                    339 ;	Total EXTI0_IRQHandler function size at codegen: 1 bytes.
                                    340 ;	User/stm8l15x_it.c: 187: INTERRUPT_HANDLER(EXTI1_IRQHandler,9)
                                    341 ; genLabel
                                    342 ;	-----------------------------------------
                                    343 ;	 function EXTI1_IRQHandler
                                    344 ;	-----------------------------------------
                                    345 ;	Register assignment is optimal.
                                    346 ;	Stack space usage: 0 bytes.
      00C069                        347 _EXTI1_IRQHandler:
                                    348 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      00C069 62               [ 2]  349 	div	x, a
                                    350 ;	User/stm8l15x_it.c: 192: EXTI_ClearITPendingBit (EXTI_IT_Pin1);
                                    351 ; genSend
      00C06A AE 00 02         [ 2]  352 	ldw	x, #0x0002
                                    353 ; genCall
      00C06D CD CB B6         [ 4]  354 	call	_EXTI_ClearITPendingBit
                                    355 ; genLabel
                                    356 ; peephole j30 removed unused label 00101$.
                                    357 ;	User/stm8l15x_it.c: 193: }
                                    358 ; genEndFunction
      00C070 80               [11]  359 	iret
                                    360 ;	Total EXTI1_IRQHandler function size at codegen: 1 bytes.
                                    361 ;	User/stm8l15x_it.c: 200: INTERRUPT_HANDLER(EXTI2_IRQHandler,10)
                                    362 ; genLabel
                                    363 ;	-----------------------------------------
                                    364 ;	 function EXTI2_IRQHandler
                                    365 ;	-----------------------------------------
                                    366 ;	Register assignment is optimal.
                                    367 ;	Stack space usage: 0 bytes.
      00C071                        368 _EXTI2_IRQHandler:
                                    369 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      00C071 62               [ 2]  370 	div	x, a
                                    371 ;	User/stm8l15x_it.c: 205: EXTI_ClearITPendingBit (EXTI_IT_Pin2);
                                    372 ; genSend
      00C072 AE 00 04         [ 2]  373 	ldw	x, #0x0004
                                    374 ; genCall
      00C075 CD CB B6         [ 4]  375 	call	_EXTI_ClearITPendingBit
                                    376 ; genLabel
                                    377 ; peephole j30 removed unused label 00101$.
                                    378 ;	User/stm8l15x_it.c: 206: }
                                    379 ; genEndFunction
      00C078 80               [11]  380 	iret
                                    381 ;	Total EXTI2_IRQHandler function size at codegen: 1 bytes.
                                    382 ;	User/stm8l15x_it.c: 213: INTERRUPT_HANDLER(EXTI3_IRQHandler,11)
                                    383 ; genLabel
                                    384 ;	-----------------------------------------
                                    385 ;	 function EXTI3_IRQHandler
                                    386 ;	-----------------------------------------
                                    387 ;	Register assignment is optimal.
                                    388 ;	Stack space usage: 0 bytes.
      00C079                        389 _EXTI3_IRQHandler:
                                    390 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      00C079 62               [ 2]  391 	div	x, a
                                    392 ;	User/stm8l15x_it.c: 218: EXTI_ClearITPendingBit (EXTI_IT_Pin3);
                                    393 ; genSend
      00C07A AE 00 08         [ 2]  394 	ldw	x, #0x0008
                                    395 ; genCall
      00C07D CD CB B6         [ 4]  396 	call	_EXTI_ClearITPendingBit
                                    397 ; genLabel
                                    398 ; peephole j30 removed unused label 00101$.
                                    399 ;	User/stm8l15x_it.c: 219: }
                                    400 ; genEndFunction
      00C080 80               [11]  401 	iret
                                    402 ;	Total EXTI3_IRQHandler function size at codegen: 1 bytes.
                                    403 ;	User/stm8l15x_it.c: 226: INTERRUPT_HANDLER(EXTI4_IRQHandler,12)
                                    404 ; genLabel
                                    405 ;	-----------------------------------------
                                    406 ;	 function EXTI4_IRQHandler
                                    407 ;	-----------------------------------------
                                    408 ;	Register assignment is optimal.
                                    409 ;	Stack space usage: 0 bytes.
      00C081                        410 _EXTI4_IRQHandler:
                                    411 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      00C081 62               [ 2]  412 	div	x, a
                                    413 ;	User/stm8l15x_it.c: 233: EXTI_ClearITPendingBit (EXTI_IT_Pin4);
                                    414 ; genSend
      00C082 AE 00 10         [ 2]  415 	ldw	x, #0x0010
                                    416 ; genCall
      00C085 CD CB B6         [ 4]  417 	call	_EXTI_ClearITPendingBit
                                    418 ; genLabel
                                    419 ; peephole j30 removed unused label 00101$.
                                    420 ;	User/stm8l15x_it.c: 234: }
                                    421 ; genEndFunction
      00C088 80               [11]  422 	iret
                                    423 ;	Total EXTI4_IRQHandler function size at codegen: 1 bytes.
                                    424 ;	User/stm8l15x_it.c: 241: INTERRUPT_HANDLER(EXTI5_IRQHandler,13)
                                    425 ; genLabel
                                    426 ;	-----------------------------------------
                                    427 ;	 function EXTI5_IRQHandler
                                    428 ;	-----------------------------------------
                                    429 ;	Register assignment might be sub-optimal.
                                    430 ;	Stack space usage: 0 bytes.
      00C089                        431 _EXTI5_IRQHandler:
                                    432 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      00C089 62               [ 2]  433 	div	x, a
                                    434 ;	User/stm8l15x_it.c: 246: EXTI_ClearITPendingBit (EXTI_IT_Pin5);
                                    435 ; genSend
      00C08A AE 00 20         [ 2]  436 	ldw	x, #0x0020
                                    437 ; genCall
      00C08D CD CB B6         [ 4]  438 	call	_EXTI_ClearITPendingBit
                                    439 ;	User/stm8l15x_it.c: 247: if (strokeA.tim_trg > 0)//首次被中断触发，开始计时
                                    440 ; skipping iCode since result will be rematerialized
                                    441 ; genCast
                                    442 ; genAssign
      00C090 AE 04 B8         [ 2]  443 	ldw	x, #(_strokeA+0)
                                    444 ; genPointerGet
                                    445 ; genIfx
      00C093 F6               [ 1]  446 	ld	a, (x)
                                    447 ; peephole 30 removed redundant tnz.
                                    448 ; peephole j5 changed absolute to relative unconditional jump.
      00C094 27 17            [ 1]  449 	jreq	00102$
                                    450 ; peephole j10 removed jra by using inverse jump logic
                                    451 ; peephole j30 removed unused label 00113$.
                                    452 ;	User/stm8l15x_it.c: 249: strokeA.tim_trg = 0;
                                    453 ; genPointerSet
      00C096 7F               [ 1]  454 	clr	(x)
                                    455 ;	User/stm8l15x_it.c: 250: strokeA.tim_s = ticks;
                                    456 ; skipping iCode since result will be rematerialized
                                    457 ; genPointerSet
      00C097 55 04 E2 04 BC   [ 1]  458 	mov	_strokeA+4, _ticks+3
      00C09C 55 04 E1 04 BB   [ 1]  459 	mov	_strokeA+3, _ticks+2
      00C0A1 55 04 E0 04 BA   [ 1]  460 	mov	_strokeA+2, _ticks+1
      00C0A6 55 04 DF 04 B9   [ 1]  461 	mov	_strokeA+1, _ticks+0
                                    462 ; genGoto
      00C0AB 20 14            [ 2]  463 	jra	00104$
                                    464 ; peephole j5 changed absolute to relative unconditional jump.
                                    465 ; genLabel
      00C0AD                        466 00102$:
                                    467 ;	User/stm8l15x_it.c: 254: strokeA.tim_e = ticks;
                                    468 ; skipping iCode since result will be rematerialized
                                    469 ; genPointerSet
      00C0AD 55 04 E2 04 C0   [ 1]  470 	mov	_strokeA+8, _ticks+3
      00C0B2 55 04 E1 04 BF   [ 1]  471 	mov	_strokeA+7, _ticks+2
      00C0B7 55 04 E0 04 BE   [ 1]  472 	mov	_strokeA+6, _ticks+1
      00C0BC 55 04 DF 04 BD   [ 1]  473 	mov	_strokeA+5, _ticks+0
                                    474 ; genLabel
      00C0C1                        475 00104$:
                                    476 ;	User/stm8l15x_it.c: 256: }
                                    477 ; genEndFunction
      00C0C1 80               [11]  478 	iret
                                    479 ;	Total EXTI5_IRQHandler function size at codegen: 1 bytes.
                                    480 ;	User/stm8l15x_it.c: 263: INTERRUPT_HANDLER(EXTI6_IRQHandler,14)
                                    481 ; genLabel
                                    482 ;	-----------------------------------------
                                    483 ;	 function EXTI6_IRQHandler
                                    484 ;	-----------------------------------------
                                    485 ;	Register assignment might be sub-optimal.
                                    486 ;	Stack space usage: 0 bytes.
      00C0C2                        487 _EXTI6_IRQHandler:
                                    488 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      00C0C2 62               [ 2]  489 	div	x, a
                                    490 ;	User/stm8l15x_it.c: 268: EXTI_ClearITPendingBit (EXTI_IT_Pin6);
                                    491 ; genSend
      00C0C3 AE 00 40         [ 2]  492 	ldw	x, #0x0040
                                    493 ; genCall
      00C0C6 CD CB B6         [ 4]  494 	call	_EXTI_ClearITPendingBit
                                    495 ;	User/stm8l15x_it.c: 269: if (strokeB.tim_trg > 0)//首次被中断触发，开始计时
                                    496 ; skipping iCode since result will be rematerialized
                                    497 ; genCast
                                    498 ; genAssign
      00C0C9 AE 04 C5         [ 2]  499 	ldw	x, #(_strokeB+0)
                                    500 ; genPointerGet
                                    501 ; genIfx
      00C0CC F6               [ 1]  502 	ld	a, (x)
                                    503 ; peephole 30 removed redundant tnz.
                                    504 ; peephole j5 changed absolute to relative unconditional jump.
      00C0CD 27 17            [ 1]  505 	jreq	00102$
                                    506 ; peephole j10 removed jra by using inverse jump logic
                                    507 ; peephole j30 removed unused label 00113$.
                                    508 ;	User/stm8l15x_it.c: 271: strokeB.tim_trg = 0;
                                    509 ; genPointerSet
      00C0CF 7F               [ 1]  510 	clr	(x)
                                    511 ;	User/stm8l15x_it.c: 272: strokeB.tim_s = ticks;
                                    512 ; skipping iCode since result will be rematerialized
                                    513 ; genPointerSet
      00C0D0 55 04 E2 04 C9   [ 1]  514 	mov	_strokeB+4, _ticks+3
      00C0D5 55 04 E1 04 C8   [ 1]  515 	mov	_strokeB+3, _ticks+2
      00C0DA 55 04 E0 04 C7   [ 1]  516 	mov	_strokeB+2, _ticks+1
      00C0DF 55 04 DF 04 C6   [ 1]  517 	mov	_strokeB+1, _ticks+0
                                    518 ; genGoto
      00C0E4 20 14            [ 2]  519 	jra	00104$
                                    520 ; peephole j5 changed absolute to relative unconditional jump.
                                    521 ; genLabel
      00C0E6                        522 00102$:
                                    523 ;	User/stm8l15x_it.c: 276: strokeB.tim_e = ticks;
                                    524 ; skipping iCode since result will be rematerialized
                                    525 ; genPointerSet
      00C0E6 55 04 E2 04 CD   [ 1]  526 	mov	_strokeB+8, _ticks+3
      00C0EB 55 04 E1 04 CC   [ 1]  527 	mov	_strokeB+7, _ticks+2
      00C0F0 55 04 E0 04 CB   [ 1]  528 	mov	_strokeB+6, _ticks+1
      00C0F5 55 04 DF 04 CA   [ 1]  529 	mov	_strokeB+5, _ticks+0
                                    530 ; genLabel
      00C0FA                        531 00104$:
                                    532 ;	User/stm8l15x_it.c: 279: }
                                    533 ; genEndFunction
      00C0FA 80               [11]  534 	iret
                                    535 ;	Total EXTI6_IRQHandler function size at codegen: 1 bytes.
                                    536 ;	User/stm8l15x_it.c: 286: INTERRUPT_HANDLER(EXTI7_IRQHandler,15)
                                    537 ; genLabel
                                    538 ;	-----------------------------------------
                                    539 ;	 function EXTI7_IRQHandler
                                    540 ;	-----------------------------------------
                                    541 ;	Register assignment might be sub-optimal.
                                    542 ;	Stack space usage: 0 bytes.
      00C0FB                        543 _EXTI7_IRQHandler:
                                    544 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      00C0FB 62               [ 2]  545 	div	x, a
                                    546 ;	User/stm8l15x_it.c: 291: EXTI_ClearITPendingBit (EXTI_IT_Pin7);
                                    547 ; genSend
      00C0FC AE 00 80         [ 2]  548 	ldw	x, #0x0080
                                    549 ; genCall
      00C0FF CD CB B6         [ 4]  550 	call	_EXTI_ClearITPendingBit
                                    551 ;	User/stm8l15x_it.c: 292: if (strokeC.tim_trg > 0)//首次被中断触发，开始计时
                                    552 ; skipping iCode since result will be rematerialized
                                    553 ; genCast
                                    554 ; genAssign
      00C102 AE 04 D2         [ 2]  555 	ldw	x, #(_strokeC+0)
                                    556 ; genPointerGet
                                    557 ; genIfx
      00C105 F6               [ 1]  558 	ld	a, (x)
                                    559 ; peephole 30 removed redundant tnz.
                                    560 ; peephole j5 changed absolute to relative unconditional jump.
      00C106 27 17            [ 1]  561 	jreq	00102$
                                    562 ; peephole j10 removed jra by using inverse jump logic
                                    563 ; peephole j30 removed unused label 00113$.
                                    564 ;	User/stm8l15x_it.c: 294: strokeC.tim_trg = 0;
                                    565 ; genPointerSet
      00C108 7F               [ 1]  566 	clr	(x)
                                    567 ;	User/stm8l15x_it.c: 295: strokeC.tim_s = ticks;
                                    568 ; skipping iCode since result will be rematerialized
                                    569 ; genPointerSet
      00C109 55 04 E2 04 D6   [ 1]  570 	mov	_strokeC+4, _ticks+3
      00C10E 55 04 E1 04 D5   [ 1]  571 	mov	_strokeC+3, _ticks+2
      00C113 55 04 E0 04 D4   [ 1]  572 	mov	_strokeC+2, _ticks+1
      00C118 55 04 DF 04 D3   [ 1]  573 	mov	_strokeC+1, _ticks+0
                                    574 ; genGoto
      00C11D 20 14            [ 2]  575 	jra	00104$
                                    576 ; peephole j5 changed absolute to relative unconditional jump.
                                    577 ; genLabel
      00C11F                        578 00102$:
                                    579 ;	User/stm8l15x_it.c: 299: strokeC.tim_e = ticks;
                                    580 ; skipping iCode since result will be rematerialized
                                    581 ; genPointerSet
      00C11F 55 04 E2 04 DA   [ 1]  582 	mov	_strokeC+8, _ticks+3
      00C124 55 04 E1 04 D9   [ 1]  583 	mov	_strokeC+7, _ticks+2
      00C129 55 04 E0 04 D8   [ 1]  584 	mov	_strokeC+6, _ticks+1
      00C12E 55 04 DF 04 D7   [ 1]  585 	mov	_strokeC+5, _ticks+0
                                    586 ; genLabel
      00C133                        587 00104$:
                                    588 ;	User/stm8l15x_it.c: 301: }
                                    589 ; genEndFunction
      00C133 80               [11]  590 	iret
                                    591 ;	Total EXTI7_IRQHandler function size at codegen: 1 bytes.
                                    592 ;	User/stm8l15x_it.c: 307: INTERRUPT_HANDLER(LCD_AES_IRQHandler,16)
                                    593 ; genLabel
                                    594 ;	-----------------------------------------
                                    595 ;	 function LCD_AES_IRQHandler
                                    596 ;	-----------------------------------------
                                    597 ;	Register assignment is optimal.
                                    598 ;	Stack space usage: 0 bytes.
      00C134                        599 _LCD_AES_IRQHandler:
                                    600 ;	User/stm8l15x_it.c: 312: }
                                    601 ; genLabel
                                    602 ; peephole j30 removed unused label 00101$.
                                    603 ; genEndFunction
      00C134 80               [11]  604 	iret
                                    605 ;	Total LCD_AES_IRQHandler function size at codegen: 1 bytes.
                                    606 ;	User/stm8l15x_it.c: 318: INTERRUPT_HANDLER(SWITCH_CSS_BREAK_DAC_IRQHandler,17)
                                    607 ; genLabel
                                    608 ;	-----------------------------------------
                                    609 ;	 function SWITCH_CSS_BREAK_DAC_IRQHandler
                                    610 ;	-----------------------------------------
                                    611 ;	Register assignment is optimal.
                                    612 ;	Stack space usage: 0 bytes.
      00C135                        613 _SWITCH_CSS_BREAK_DAC_IRQHandler:
                                    614 ;	User/stm8l15x_it.c: 323: }
                                    615 ; genLabel
                                    616 ; peephole j30 removed unused label 00101$.
                                    617 ; genEndFunction
      00C135 80               [11]  618 	iret
                                    619 ;	Total SWITCH_CSS_BREAK_DAC_IRQHandler function size at codegen: 1 bytes.
                                    620 ;	User/stm8l15x_it.c: 330: INTERRUPT_HANDLER(ADC1_COMP_IRQHandler,18)
                                    621 ; genLabel
                                    622 ;	-----------------------------------------
                                    623 ;	 function ADC1_COMP_IRQHandler
                                    624 ;	-----------------------------------------
                                    625 ;	Register assignment is optimal.
                                    626 ;	Stack space usage: 0 bytes.
      00C136                        627 _ADC1_COMP_IRQHandler:
                                    628 ;	User/stm8l15x_it.c: 335: }
                                    629 ; genLabel
                                    630 ; peephole j30 removed unused label 00101$.
                                    631 ; genEndFunction
      00C136 80               [11]  632 	iret
                                    633 ;	Total ADC1_COMP_IRQHandler function size at codegen: 1 bytes.
                                    634 ;	User/stm8l15x_it.c: 344: INTERRUPT_HANDLER(TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler,19)
                                    635 ; genLabel
                                    636 ;	-----------------------------------------
                                    637 ;	 function TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler
                                    638 ;	-----------------------------------------
                                    639 ;	Register assignment might be sub-optimal.
                                    640 ;	Stack space usage: 0 bytes.
      00C137                        641 _TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler:
                                    642 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      00C137 62               [ 2]  643 	div	x, a
                                    644 ;	User/stm8l15x_it.c: 351: TIM2_ClearITPendingBit(TIM2_IT_Update);
                                    645 ; genSend
      00C138 A6 01            [ 1]  646 	ld	a, #0x01
                                    647 ; genCall
      00C13A CD E5 90         [ 4]  648 	call	_TIM2_ClearITPendingBit
                                    649 ;	User/stm8l15x_it.c: 352: ticks=(ticks+1)%0xffffffff;
                                    650 ; genPlus
      00C13D CE 04 E1         [ 2]  651 	ldw	x, _ticks+2
      00C140 1C 00 01         [ 2]  652 	addw	x, #0x0001
      00C143 90 CE 04 DF      [ 2]  653 	ldw	y, _ticks+0
      00C147 24 02            [ 1]  654 	jrnc	00112$
      00C149 90 5C            [ 1]  655 	incw	y
      00C14B                        656 00112$:
                                    657 ; genIPush
      00C14B 4B FF            [ 1]  658 	push	#0xff
      00C14D 4B FF            [ 1]  659 	push	#0xff
      00C14F 4B FF            [ 1]  660 	push	#0xff
      00C151 4B FF            [ 1]  661 	push	#0xff
                                    662 ; genIPush
      00C153 89               [ 2]  663 	pushw	x
      00C154 90 89            [ 2]  664 	pushw	y
                                    665 ; genCall
      00C156 CD EC EA         [ 4]  666 	call	__modulong
      00C159 5B 08            [ 2]  667 	addw	sp, #8
                                    668 ; genAssign
      00C15B CF 04 E1         [ 2]  669 	ldw	_ticks+2, x
      00C15E 90 CF 04 DF      [ 2]  670 	ldw	_ticks+0, y
                                    671 ;	User/stm8l15x_it.c: 354: if(++i>250)
                                    672 ; genPlus
      00C162 72 5C 04 96      [ 1]  673 	inc	_TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler_i_10000_704+0
                                    674 ; genCmp
                                    675 ; genCmpTnz
      00C166 C6 04 96         [ 1]  676 	ld	a, _TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler_i_10000_704+0
      00C169 A1 FA            [ 1]  677 	cp	a, #0xfa
                                    678 ; peephole j5 changed absolute to relative unconditional jump.
      00C16B 23 0C            [ 2]  679 	jrule	00103$
                                    680 ; peephole j16 removed jra by using inverse jump logic
                                    681 ; peephole j30 removed unused label 00113$.
                                    682 ; skipping generated iCode
                                    683 ;	User/stm8l15x_it.c: 356: i=0;
                                    684 ; genAssign
      00C16D 72 5F 04 96      [ 1]  685 	clr	_TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler_i_10000_704+0
                                    686 ;	User/stm8l15x_it.c: 357: WWDG_SetCounter(0x7f);//49.15ms
                                    687 ; genSend
      00C171 A6 7F            [ 1]  688 	ld	a, #0x7f
                                    689 ; genCall
      00C173 CD EC B8         [ 4]  690 	call	_WWDG_SetCounter
                                    691 ;	User/stm8l15x_it.c: 358: Scan_Key();//按键扫描
                                    692 ; genCall
      00C176 CD 98 DF         [ 4]  693 	call	_Scan_Key
                                    694 ; genLabel
      00C179                        695 00103$:
                                    696 ;	User/stm8l15x_it.c: 361: }
                                    697 ; genEndFunction
      00C179 80               [11]  698 	iret
                                    699 ;	Total TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler function size at codegen: 1 bytes.
                                    700 ;	User/stm8l15x_it.c: 368: INTERRUPT_HANDLER(TIM2_CC_USART2_RX_IRQHandler,20)
                                    701 ; genLabel
                                    702 ;	-----------------------------------------
                                    703 ;	 function TIM2_CC_USART2_RX_IRQHandler
                                    704 ;	-----------------------------------------
                                    705 ;	Register assignment is optimal.
                                    706 ;	Stack space usage: 0 bytes.
      00C17A                        707 _TIM2_CC_USART2_RX_IRQHandler:
                                    708 ;	User/stm8l15x_it.c: 373: }
                                    709 ; genLabel
                                    710 ; peephole j30 removed unused label 00101$.
                                    711 ; genEndFunction
      00C17A 80               [11]  712 	iret
                                    713 ;	Total TIM2_CC_USART2_RX_IRQHandler function size at codegen: 1 bytes.
                                    714 ;	User/stm8l15x_it.c: 381: INTERRUPT_HANDLER(TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler,21)
                                    715 ; genLabel
                                    716 ;	-----------------------------------------
                                    717 ;	 function TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler
                                    718 ;	-----------------------------------------
                                    719 ;	Register assignment is optimal.
                                    720 ;	Stack space usage: 0 bytes.
      00C17B                        721 _TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler:
                                    722 ;	User/stm8l15x_it.c: 386: }
                                    723 ; genLabel
                                    724 ; peephole j30 removed unused label 00101$.
                                    725 ; genEndFunction
      00C17B 80               [11]  726 	iret
                                    727 ;	Total TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler function size at codegen: 1 bytes.
                                    728 ;	User/stm8l15x_it.c: 392: INTERRUPT_HANDLER(TIM3_CC_USART3_RX_IRQHandler,22)
                                    729 ; genLabel
                                    730 ;	-----------------------------------------
                                    731 ;	 function TIM3_CC_USART3_RX_IRQHandler
                                    732 ;	-----------------------------------------
                                    733 ;	Register assignment is optimal.
                                    734 ;	Stack space usage: 0 bytes.
      00C17C                        735 _TIM3_CC_USART3_RX_IRQHandler:
                                    736 ;	User/stm8l15x_it.c: 397: }
                                    737 ; genLabel
                                    738 ; peephole j30 removed unused label 00101$.
                                    739 ; genEndFunction
      00C17C 80               [11]  740 	iret
                                    741 ;	Total TIM3_CC_USART3_RX_IRQHandler function size at codegen: 1 bytes.
                                    742 ;	User/stm8l15x_it.c: 403: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_COM_IRQHandler,23)
                                    743 ; genLabel
                                    744 ;	-----------------------------------------
                                    745 ;	 function TIM1_UPD_OVF_TRG_COM_IRQHandler
                                    746 ;	-----------------------------------------
                                    747 ;	Register assignment is optimal.
                                    748 ;	Stack space usage: 0 bytes.
      00C17D                        749 _TIM1_UPD_OVF_TRG_COM_IRQHandler:
                                    750 ;	User/stm8l15x_it.c: 408: }
                                    751 ; genLabel
                                    752 ; peephole j30 removed unused label 00101$.
                                    753 ; genEndFunction
      00C17D 80               [11]  754 	iret
                                    755 ;	Total TIM1_UPD_OVF_TRG_COM_IRQHandler function size at codegen: 1 bytes.
                                    756 ;	User/stm8l15x_it.c: 414: INTERRUPT_HANDLER(TIM1_CC_IRQHandler,24)
                                    757 ; genLabel
                                    758 ;	-----------------------------------------
                                    759 ;	 function TIM1_CC_IRQHandler
                                    760 ;	-----------------------------------------
                                    761 ;	Register assignment is optimal.
                                    762 ;	Stack space usage: 0 bytes.
      00C17E                        763 _TIM1_CC_IRQHandler:
                                    764 ;	User/stm8l15x_it.c: 419: }
                                    765 ; genLabel
                                    766 ; peephole j30 removed unused label 00101$.
                                    767 ; genEndFunction
      00C17E 80               [11]  768 	iret
                                    769 ;	Total TIM1_CC_IRQHandler function size at codegen: 1 bytes.
                                    770 ;	User/stm8l15x_it.c: 426: INTERRUPT_HANDLER(TIM4_UPD_OVF_TRG_IRQHandler,25)//20ms
                                    771 ; genLabel
                                    772 ;	-----------------------------------------
                                    773 ;	 function TIM4_UPD_OVF_TRG_IRQHandler
                                    774 ;	-----------------------------------------
                                    775 ;	Register assignment is optimal.
                                    776 ;	Stack space usage: 0 bytes.
      00C17F                        777 _TIM4_UPD_OVF_TRG_IRQHandler:
                                    778 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      00C17F 62               [ 2]  779 	div	x, a
                                    780 ;	User/stm8l15x_it.c: 433: TIM4_ClearITPendingBit(TIM4_IT_Update);
                                    781 ; genSend
      00C180 A6 01            [ 1]  782 	ld	a, #0x01
                                    783 ; genCall
      00C182 CD E8 CE         [ 4]  784 	call	_TIM4_ClearITPendingBit
                                    785 ;	User/stm8l15x_it.c: 435: if(++t200>=1)//200ms
                                    786 ; genPlus
      00C185 72 5C 04 97      [ 1]  787 	inc	_TIM4_UPD_OVF_TRG_IRQHandler_t200_10000_722+0
                                    788 ; genCmp
                                    789 ; genCmpTnz
      00C189 C6 04 97         [ 1]  790 	ld	a, _TIM4_UPD_OVF_TRG_IRQHandler_t200_10000_722+0
      00C18C A1 01            [ 1]  791 	cp	a, #0x01
                                    792 ; peephole j5 changed absolute to relative unconditional jump.
      00C18E 25 14            [ 1]  793 	jrc	00102$
                                    794 ; peephole j9 removed jra by using inverse jump logic
                                    795 ; peephole j30 removed unused label 00121$.
                                    796 ; skipping generated iCode
                                    797 ;	User/stm8l15x_it.c: 437: t200=0;
                                    798 ; genAssign
      00C190 72 5F 04 97      [ 1]  799 	clr	_TIM4_UPD_OVF_TRG_IRQHandler_t200_10000_722+0
                                    800 ;	User/stm8l15x_it.c: 438: SendMsg(&MsgSystem,MSG_TIMER,0,0);
                                    801 ; skipping iCode since result will be rematerialized
                                    802 ; skipping iCode since result will be rematerialized
                                    803 ; genIPush
      00C194 5F               [ 1]  804 	clrw	x
      00C195 89               [ 2]  805 	pushw	x
      00C196 5F               [ 1]  806 	clrw	x
      00C197 89               [ 2]  807 	pushw	x
                                    808 ; genIPush
      00C198 5F               [ 1]  809 	clrw	x
      00C199 89               [ 2]  810 	pushw	x
      00C19A 5F               [ 1]  811 	clrw	x
      00C19B 89               [ 2]  812 	pushw	x
                                    813 ; genSend
      00C19C A6 01            [ 1]  814 	ld	a, #0x01
                                    815 ; genSend
      00C19E AE 01 0D         [ 2]  816 	ldw	x, #(_MsgSystem+0)
                                    817 ; genCall
      00C1A1 CD 9D 28         [ 4]  818 	call	_SendMsg
                                    819 ; genLabel
      00C1A4                        820 00102$:
                                    821 ;	User/stm8l15x_it.c: 440: if(++t1000>=2)//500ms
                                    822 ; genPlus
      00C1A4 72 5C 04 98      [ 1]  823 	inc	_TIM4_UPD_OVF_TRG_IRQHandler_t1000_10000_722+0
                                    824 ; genCmp
                                    825 ; genCmpTnz
      00C1A8 C6 04 98         [ 1]  826 	ld	a, _TIM4_UPD_OVF_TRG_IRQHandler_t1000_10000_722+0
      00C1AB A1 02            [ 1]  827 	cp	a, #0x02
                                    828 ; peephole j5 changed absolute to relative unconditional jump.
      00C1AD 25 16            [ 1]  829 	jrc	00105$
                                    830 ; peephole j9 removed jra by using inverse jump logic
                                    831 ; peephole j30 removed unused label 00122$.
                                    832 ; skipping generated iCode
                                    833 ;	User/stm8l15x_it.c: 442: t1000=0;
                                    834 ; genAssign
      00C1AF 72 5F 04 98      [ 1]  835 	clr	_TIM4_UPD_OVF_TRG_IRQHandler_t1000_10000_722+0
                                    836 ;	User/stm8l15x_it.c: 443: SendMsg(&MsgSystem,MSG_KEY_TIMER,FRESH_TIME,0);
                                    837 ; skipping iCode since result will be rematerialized
                                    838 ; skipping iCode since result will be rematerialized
                                    839 ; genIPush
      00C1B3 5F               [ 1]  840 	clrw	x
      00C1B4 89               [ 2]  841 	pushw	x
      00C1B5 5F               [ 1]  842 	clrw	x
      00C1B6 89               [ 2]  843 	pushw	x
                                    844 ; genIPush
      00C1B7 4B 63            [ 1]  845 	push	#0x63
      00C1B9 5F               [ 1]  846 	clrw	x
      00C1BA 89               [ 2]  847 	pushw	x
      00C1BB 4B 00            [ 1]  848 	push	#0x00
                                    849 ; genSend
      00C1BD A6 02            [ 1]  850 	ld	a, #0x02
                                    851 ; genSend
      00C1BF AE 01 0D         [ 2]  852 	ldw	x, #(_MsgSystem+0)
                                    853 ; genCall
      00C1C2 CD 9D 28         [ 4]  854 	call	_SendMsg
                                    855 ; genLabel
      00C1C5                        856 00105$:
                                    857 ;	User/stm8l15x_it.c: 462: }
                                    858 ; genEndFunction
      00C1C5 80               [11]  859 	iret
                                    860 ;	Total TIM4_UPD_OVF_TRG_IRQHandler function size at codegen: 1 bytes.
                                    861 ;	User/stm8l15x_it.c: 468: INTERRUPT_HANDLER(SPI1_IRQHandler,26)
                                    862 ; genLabel
                                    863 ;	-----------------------------------------
                                    864 ;	 function SPI1_IRQHandler
                                    865 ;	-----------------------------------------
                                    866 ;	Register assignment is optimal.
                                    867 ;	Stack space usage: 0 bytes.
      00C1C6                        868 _SPI1_IRQHandler:
                                    869 ;	User/stm8l15x_it.c: 473: }
                                    870 ; genLabel
                                    871 ; peephole j30 removed unused label 00101$.
                                    872 ; genEndFunction
      00C1C6 80               [11]  873 	iret
                                    874 ;	Total SPI1_IRQHandler function size at codegen: 1 bytes.
                                    875 ;	User/stm8l15x_it.c: 480: INTERRUPT_HANDLER(USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler,27)
                                    876 ; genLabel
                                    877 ;	-----------------------------------------
                                    878 ;	 function USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler
                                    879 ;	-----------------------------------------
                                    880 ;	Register assignment is optimal.
                                    881 ;	Stack space usage: 0 bytes.
      00C1C7                        882 _USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler:
                                    883 ;	User/stm8l15x_it.c: 485: }
                                    884 ; genLabel
                                    885 ; peephole j30 removed unused label 00101$.
                                    886 ; genEndFunction
      00C1C7 80               [11]  887 	iret
                                    888 ;	Total USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler function size at codegen: 1 bytes.
                                    889 ;	User/stm8l15x_it.c: 492: INTERRUPT_HANDLER(USART1_RX_TIM5_CC_IRQHandler,28)
                                    890 ; genLabel
                                    891 ;	-----------------------------------------
                                    892 ;	 function USART1_RX_TIM5_CC_IRQHandler
                                    893 ;	-----------------------------------------
                                    894 ;	Register assignment might be sub-optimal.
                                    895 ;	Stack space usage: 4 bytes.
      00C1C8                        896 _USART1_RX_TIM5_CC_IRQHandler:
                                    897 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      00C1C8 62               [ 2]  898 	div	x, a
      00C1C9 52 04            [ 2]  899 	sub	sp, #4
                                    900 ;	User/stm8l15x_it.c: 497: if(USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)
                                    901 ; genIPush
      00C1CB 4B 55            [ 1]  902 	push	#0x55
      00C1CD 4B 02            [ 1]  903 	push	#0x02
                                    904 ; genSend
      00C1CF AE 52 30         [ 2]  905 	ldw	x, #0x5230
                                    906 ; genCall
      00C1D2 CD EB F3         [ 4]  907 	call	_USART_GetITStatus
                                    908 ; genIfx
      00C1D5 4D               [ 1]  909 	tnz	a
                                    910 ; peephole j5 changed absolute to relative unconditional jump.
      00C1D6 27 44            [ 1]  911 	jreq	00108$
                                    912 ; peephole j10 removed jra by using inverse jump logic
                                    913 ; peephole j30 removed unused label 00131$.
                                    914 ;	User/stm8l15x_it.c: 499: u1buf.recbuf[u1buf.w]=USART_ReceiveData8(USART1);
                                    915 ; skipping iCode since result will be rematerialized
                                    916 ; skipping iCode since result will be rematerialized
                                    917 ; skipping iCode since result will be rematerialized
                                    918 ; genPointerGet
      00C1D8 CE 00 03         [ 2]  919 	ldw	x, _u1buf+2
                                    920 ; genPlus
      00C1DB 1C 00 07         [ 2]  921 	addw	x, #(_u1buf+6)
                                    922 ; genSend
      00C1DE 89               [ 2]  923 	pushw	x
      00C1DF AE 52 30         [ 2]  924 	ldw	x, #0x5230
                                    925 ; genCall
      00C1E2 CD EA 2F         [ 4]  926 	call	_USART_ReceiveData8
      00C1E5 85               [ 2]  927 	popw	x
                                    928 ; genPointerSet
      00C1E6 F7               [ 1]  929 	ld	(x), a
                                    930 ;	User/stm8l15x_it.c: 500: u1buf.w=(u1buf.w+1)%(UBUFLEN);
                                    931 ; genPointerGet
      00C1E7 CE 00 03         [ 2]  932 	ldw	x, _u1buf+2
                                    933 ; genCast
                                    934 ; genAssign
                                    935 ; genPlus
      00C1EA 5C               [ 1]  936 	incw	x
                                    937 ; peephole 0 removed dead load into a from xh.
                                    938 ; genAnd
      00C1EB 4F               [ 1]  939 	clr	a
      00C1EC 95               [ 1]  940 	ld	xh, a
                                    941 ; genCast
                                    942 ; genAssign
      00C1ED 51               [ 1]  943 	exgw	x, y
                                    944 ; genPointerSet
      00C1EE 90 CF 00 03      [ 2]  945 	ldw	_u1buf+2, y
                                    946 ;	User/stm8l15x_it.c: 502: if(u1buf.r!=u1buf.w)
                                    947 ; genPointerGet
      00C1F2 CE 00 01         [ 2]  948 	ldw	x, _u1buf+0
      00C1F5 1F 01            [ 2]  949 	ldw	(0x01, sp), x
                                    950 ; genCmpEQorNE
      00C1F7 93               [ 1]  951 	ldw	x, y
      00C1F8 13 01            [ 2]  952 	cpw	x, (0x01, sp)
                                    953 ; peephole j5 changed absolute to relative unconditional jump.
      00C1FA 27 20            [ 1]  954 	jreq	00108$
                                    955 ; peephole j10 removed jra by using inverse jump logic
                                    956 ; peephole j30 removed unused label 00133$.
                                    957 ; skipping generated iCode
                                    958 ;	User/stm8l15x_it.c: 504: if(u1buf.w>u1buf.r)
                                    959 ; genPointerGet
      00C1FC CE 00 03         [ 2]  960 	ldw	x, _u1buf+2
                                    961 ;	User/stm8l15x_it.c: 505: u1buf.revn=u1buf.w-u1buf.r;
                                    962 ; skipping iCode since result will be rematerialized
                                    963 ;	User/stm8l15x_it.c: 504: if(u1buf.w>u1buf.r)
                                    964 ; genCmp
                                    965 ; genCmpTnz
      00C1FF 13 01            [ 2]  966 	cpw	x, (0x01, sp)
                                    967 ; peephole j5 changed absolute to relative unconditional jump.
      00C201 23 08            [ 2]  968 	jrule	00102$
                                    969 ; peephole j16 removed jra by using inverse jump logic
                                    970 ; peephole j30 removed unused label 00135$.
                                    971 ; skipping generated iCode
                                    972 ;	User/stm8l15x_it.c: 505: u1buf.revn=u1buf.w-u1buf.r;
                                    973 ; genMinus
      00C203 72 F0 01         [ 2]  974 	subw	x, (0x01, sp)
                                    975 ; genPointerSet
      00C206 CF 00 05         [ 2]  976 	ldw	_u1buf+4, x
                                    977 ; genGoto
      00C209 20 11            [ 2]  978 	jra	00108$
                                    979 ; peephole j5 changed absolute to relative unconditional jump.
                                    980 ; genLabel
      00C20B                        981 00102$:
                                    982 ;	User/stm8l15x_it.c: 507: u1buf.revn=UBUFLEN-u1buf.r+u1buf.w;
                                    983 ; genMinus
      00C20B 7B 02            [ 1]  984 	ld	a, (0x02, sp)
      00C20D 40               [ 1]  985 	neg	a
      00C20E 6B 04            [ 1]  986 	ld	(0x04, sp), a
      00C210 A6 01            [ 1]  987 	ld	a, #0x01
      00C212 12 01            [ 1]  988 	sbc	a, (0x01, sp)
      00C214 6B 03            [ 1]  989 	ld	(0x03, sp), a
                                    990 ; genPlus
      00C216 72 FB 03         [ 2]  991 	addw	x, (0x03, sp)
                                    992 ; genPointerSet
      00C219 CF 00 05         [ 2]  993 	ldw	_u1buf+4, x
                                    994 ; genLabel
      00C21C                        995 00108$:
                                    996 ;	User/stm8l15x_it.c: 511: }
                                    997 ; genEndFunction
      00C21C 5B 04            [ 2]  998 	addw	sp, #4
      00C21E 80               [11]  999 	iret
                                   1000 ;	Total USART1_RX_TIM5_CC_IRQHandler function size at codegen: 3 bytes.
                                   1001 ;	User/stm8l15x_it.c: 518: INTERRUPT_HANDLER(I2C1_SPI2_IRQHandler,29)
                                   1002 ; genLabel
                                   1003 ;	-----------------------------------------
                                   1004 ;	 function I2C1_SPI2_IRQHandler
                                   1005 ;	-----------------------------------------
                                   1006 ;	Register assignment is optimal.
                                   1007 ;	Stack space usage: 0 bytes.
      00C21F                       1008 _I2C1_SPI2_IRQHandler:
                                   1009 ;	User/stm8l15x_it.c: 523: }
                                   1010 ; genLabel
                                   1011 ; peephole j30 removed unused label 00101$.
                                   1012 ; genEndFunction
      00C21F 80               [11] 1013 	iret
                                   1014 ;	Total I2C1_SPI2_IRQHandler function size at codegen: 1 bytes.
                                   1015 	.area CODE
                                   1016 	.area CONST
                                   1017 	.area INITIALIZER
                                   1018 	.area CABS (ABS)
