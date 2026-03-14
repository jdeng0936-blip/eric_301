                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8l15x_itc
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _ITC_GetCPUCC
                                     11 	.globl _ITC_DeInit
                                     12 	.globl _ITC_GetSoftIntStatus
                                     13 	.globl _ITC_GetSoftwarePriority
                                     14 	.globl _ITC_SetSoftwarePriority
                                     15 ;--------------------------------------------------------
                                     16 ; ram data
                                     17 ;--------------------------------------------------------
                                     18 	.area DATA
                                     19 ;--------------------------------------------------------
                                     20 ; ram data
                                     21 ;--------------------------------------------------------
                                     22 	.area INITIALIZED
                                     23 ;--------------------------------------------------------
                                     24 ; absolute external ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area DABS (ABS)
                                     27 
                                     28 ; default segment ordering for linker
                                     29 	.area HOME
                                     30 	.area GSINIT
                                     31 	.area GSFINAL
                                     32 	.area CONST
                                     33 	.area INITIALIZER
                                     34 	.area CODE
                                     35 
                                     36 ;--------------------------------------------------------
                                     37 ; global & static initialisations
                                     38 ;--------------------------------------------------------
                                     39 	.area HOME
                                     40 	.area GSINIT
                                     41 	.area GSFINAL
                                     42 	.area GSINIT
                                     43 ;--------------------------------------------------------
                                     44 ; Home
                                     45 ;--------------------------------------------------------
                                     46 	.area HOME
                                     47 	.area HOME
                                     48 ;--------------------------------------------------------
                                     49 ; code
                                     50 ;--------------------------------------------------------
                                     51 	.area CODE
                                     52 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 56: uint8_t ITC_GetCPUCC(void)
                                     53 ; genLabel
                                     54 ;	-----------------------------------------
                                     55 ;	 function ITC_GetCPUCC
                                     56 ;	-----------------------------------------
                                     57 ;	Register assignment is optimal.
                                     58 ;	Stack space usage: 0 bytes.
      00D316                         59 _ITC_GetCPUCC:
                                     60 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 65: __asm__("push cc");
                                     61 ;	genInline
      00D316 8A               [ 1]   62 	push	cc
                                     63 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 66: __asm__("pop a");
                                     64 ;	genInline
      00D317 84               [ 1]   65 	pop	a
                                     66 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 67: return 0;
                                     67 ; genReturn
      00D318 4F               [ 1]   68 	clr	a
                                     69 ; genLabel
                                     70 ; peephole j30 removed unused label 00101$.
                                     71 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 72: }
                                     72 ; genEndFunction
      00D319 81               [ 4]   73 	ret
                                     74 ;	Total ITC_GetCPUCC function size at codegen: 1 bytes.
                                     75 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 91: void ITC_DeInit(void)
                                     76 ; genLabel
                                     77 ;	-----------------------------------------
                                     78 ;	 function ITC_DeInit
                                     79 ;	-----------------------------------------
                                     80 ;	Register assignment is optimal.
                                     81 ;	Stack space usage: 0 bytes.
      00D31A                         82 _ITC_DeInit:
                                     83 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 93: ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
                                     84 ; genPointerSet
      00D31A 35 FF 7F 70      [ 1]   85 	mov	0x7f70+0, #0xff
                                     86 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 94: ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
                                     87 ; genPointerSet
      00D31E 35 FF 7F 71      [ 1]   88 	mov	0x7f71+0, #0xff
                                     89 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 95: ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
                                     90 ; genPointerSet
      00D322 35 FF 7F 72      [ 1]   91 	mov	0x7f72+0, #0xff
                                     92 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 96: ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
                                     93 ; genPointerSet
      00D326 35 FF 7F 73      [ 1]   94 	mov	0x7f73+0, #0xff
                                     95 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 97: ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
                                     96 ; genPointerSet
      00D32A 35 FF 7F 74      [ 1]   97 	mov	0x7f74+0, #0xff
                                     98 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 98: ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
                                     99 ; genPointerSet
      00D32E 35 FF 7F 75      [ 1]  100 	mov	0x7f75+0, #0xff
                                    101 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 99: ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
                                    102 ; genPointerSet
      00D332 35 FF 7F 76      [ 1]  103 	mov	0x7f76+0, #0xff
                                    104 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 100: ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
                                    105 ; genPointerSet
      00D336 35 FF 7F 77      [ 1]  106 	mov	0x7f77+0, #0xff
                                    107 ; genLabel
                                    108 ; peephole j30 removed unused label 00101$.
                                    109 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 101: }
                                    110 ; genEndFunction
      00D33A 81               [ 4]  111 	ret
                                    112 ;	Total ITC_DeInit function size at codegen: 1 bytes.
                                    113 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 108: uint8_t ITC_GetSoftIntStatus(void)
                                    114 ; genLabel
                                    115 ;	-----------------------------------------
                                    116 ;	 function ITC_GetSoftIntStatus
                                    117 ;	-----------------------------------------
                                    118 ;	Register assignment is optimal.
                                    119 ;	Stack space usage: 0 bytes.
      00D33B                        120 _ITC_GetSoftIntStatus:
                                    121 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 110: return ((uint8_t)(ITC_GetCPUCC() & CPU_SOFT_INT_DISABLED));
                                    122 ; genCall
      00D33B CD D3 16         [ 4]  123 	call	_ITC_GetCPUCC
                                    124 ; genAnd
      00D33E A4 28            [ 1]  125 	and	a, #0x28
                                    126 ; genReturn
                                    127 ; genLabel
                                    128 ; peephole j30 removed unused label 00101$.
                                    129 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 111: }
                                    130 ; genEndFunction
      00D340 81               [ 4]  131 	ret
                                    132 ;	Total ITC_GetSoftIntStatus function size at codegen: 1 bytes.
                                    133 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 118: ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(IRQn_TypeDef IRQn)
                                    134 ; genLabel
                                    135 ;	-----------------------------------------
                                    136 ;	 function ITC_GetSoftwarePriority
                                    137 ;	-----------------------------------------
                                    138 ;	Register assignment might be sub-optimal.
                                    139 ;	Stack space usage: 2 bytes.
      00D341                        140 _ITC_GetSoftwarePriority:
      00D341 89               [ 2]  141 	pushw	x
                                    142 ; genReceive
      00D342 97               [ 1]  143 	ld	xl, a
                                    144 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 120: uint8_t Value = 0;
                                    145 ; genAssign
      00D343 4F               [ 1]  146 	clr	a
                                    147 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 127: Mask = (uint8_t)(0x03U << ((IRQn % 4U) * 2U));
                                    148 ; genCast
                                    149 ; genAssign
      00D344 90 93            [ 1]  150 	ldw	y, x
                                    151 ; genAnd
      00D346 88               [ 1]  152 	push	a
      00D347 90 9F            [ 1]  153 	ld	a, yl
      00D349 A4 03            [ 1]  154 	and	a, #0x03
      00D34B 95               [ 1]  155 	ld	xh, a
      00D34C 84               [ 1]  156 	pop	a
                                    157 ; genCast
                                    158 ; genAssign
                                    159 ; genLeftShiftLiteral
      00D34D 02               [ 1]  160 	rlwa	x
      00D34E 6B 01            [ 1]  161 	ld	(0x01, sp), a
      00D350 01               [ 1]  162 	rrwa	x
      00D351 08 01            [ 1]  163 	sll	(0x01, sp)
                                    164 ; genLeftShift
      00D353 88               [ 1]  165 	push	a
      00D354 A6 03            [ 1]  166 	ld	a, #0x03
      00D356 6B 03            [ 1]  167 	ld	(0x03, sp), a
      00D358 7B 02            [ 1]  168 	ld	a, (0x02, sp)
      00D35A 27 05            [ 1]  169 	jreq	00142$
      00D35C                        170 00141$:
      00D35C 08 03            [ 1]  171 	sll	(0x03, sp)
      00D35E 4A               [ 1]  172 	dec	a
      00D35F 26 FB            [ 1]  173 	jrne	00141$
      00D361                        174 00142$:
                                    175 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 129: switch (IRQn)
                                    176 ; genCmp
                                    177 ; genCmpTnz
                                    178 ; peephole 6 removed dead pop / push pair.
      00D361 9F               [ 1]  179 	ld	a, xl
      00D362 A1 1D            [ 1]  180 	cp	a, #0x1d
      00D364 84               [ 1]  181 	pop	a
                                    182 ; peephole j5 changed absolute to relative unconditional jump.
      00D365 22 7A            [ 1]  183 	jrugt	00131$
                                    184 ; peephole j17 removed jp by using inverse jump logic
                                    185 ; peephole j30 removed unused label 00143$.
                                    186 ; skipping generated iCode
                                    187 ; genJumpTab
      00D367 02               [ 1]  188 	rlwa	x
      00D368 4F               [ 1]  189 	clr	a
      00D369 01               [ 1]  190 	rrwa	x
      00D36A 58               [ 2]  191 	sllw	x
      00D36B DE D3 6F         [ 2]  192 	ldw	x, (#00144$, x)
      00D36E FC               [ 2]  193 	jp	(x)
      00D36F                        194 00144$:
      00D36F D3 E1                  195 	.dw	#00131$
      00D371 D3 AB                  196 	.dw	#00103$
      00D373 D3 AB                  197 	.dw	#00103$
      00D375 D3 AB                  198 	.dw	#00103$
      00D377 D3 B2                  199 	.dw	#00107$
      00D379 D3 B2                  200 	.dw	#00107$
      00D37B D3 B2                  201 	.dw	#00107$
      00D37D D3 B2                  202 	.dw	#00107$
      00D37F D3 B9                  203 	.dw	#00111$
      00D381 D3 B9                  204 	.dw	#00111$
      00D383 D3 B9                  205 	.dw	#00111$
      00D385 D3 B9                  206 	.dw	#00111$
      00D387 D3 C0                  207 	.dw	#00115$
      00D389 D3 C0                  208 	.dw	#00115$
      00D38B D3 C0                  209 	.dw	#00115$
      00D38D D3 C0                  210 	.dw	#00115$
      00D38F D3 C7                  211 	.dw	#00119$
      00D391 D3 C7                  212 	.dw	#00119$
      00D393 D3 C7                  213 	.dw	#00119$
      00D395 D3 C7                  214 	.dw	#00119$
      00D397 D3 CE                  215 	.dw	#00123$
      00D399 D3 CE                  216 	.dw	#00123$
      00D39B D3 CE                  217 	.dw	#00123$
      00D39D D3 CE                  218 	.dw	#00123$
      00D39F D3 D5                  219 	.dw	#00127$
      00D3A1 D3 D5                  220 	.dw	#00127$
      00D3A3 D3 D5                  221 	.dw	#00127$
      00D3A5 D3 D5                  222 	.dw	#00127$
      00D3A7 D3 DC                  223 	.dw	#00129$
      00D3A9 D3 DC                  224 	.dw	#00129$
                                    225 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 133: case DMA1_CHANNEL2_3_IRQn:
                                    226 ; genLabel
      00D3AB                        227 00103$:
                                    228 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 134: Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
                                    229 ; genPointerGet
      00D3AB C6 7F 70         [ 1]  230 	ld	a, 0x7f70
                                    231 ; genAnd
      00D3AE 14 02            [ 1]  232 	and	a, (0x02, sp)
                                    233 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 135: break;
                                    234 ; genGoto
      00D3B0 20 2F            [ 2]  235 	jra	00131$
                                    236 ; peephole j5 changed absolute to relative unconditional jump.
                                    237 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 141: case EXTID_IRQn:
                                    238 ; genLabel
      00D3B2                        239 00107$:
                                    240 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 151: Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
                                    241 ; genPointerGet
      00D3B2 C6 7F 71         [ 1]  242 	ld	a, 0x7f71
                                    243 ; genAnd
      00D3B5 14 02            [ 1]  244 	and	a, (0x02, sp)
                                    245 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 152: break;
                                    246 ; genGoto
      00D3B7 20 28            [ 2]  247 	jra	00131$
                                    248 ; peephole j5 changed absolute to relative unconditional jump.
                                    249 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 157: case EXTI3_IRQn:
                                    250 ; genLabel
      00D3B9                        251 00111$:
                                    252 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 158: Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
                                    253 ; genPointerGet
      00D3B9 C6 7F 72         [ 1]  254 	ld	a, 0x7f72
                                    255 ; genAnd
      00D3BC 14 02            [ 1]  256 	and	a, (0x02, sp)
                                    257 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 159: break;
                                    258 ; genGoto
      00D3BE 20 21            [ 2]  259 	jra	00131$
                                    260 ; peephole j5 changed absolute to relative unconditional jump.
                                    261 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 164: case EXTI7_IRQn:
                                    262 ; genLabel
      00D3C0                        263 00115$:
                                    264 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 165: Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
                                    265 ; genPointerGet
      00D3C0 C6 7F 73         [ 1]  266 	ld	a, 0x7f73
                                    267 ; genAnd
      00D3C3 14 02            [ 1]  268 	and	a, (0x02, sp)
                                    269 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 166: break;
                                    270 ; genGoto
      00D3C5 20 1A            [ 2]  271 	jra	00131$
                                    272 ; peephole j5 changed absolute to relative unconditional jump.
                                    273 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 176: case TIM2_UPD_OVF_TRG_BRK_IRQn:
                                    274 ; genLabel
      00D3C7                        275 00119$:
                                    276 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 183: Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
                                    277 ; genPointerGet
      00D3C7 C6 7F 74         [ 1]  278 	ld	a, 0x7f74
                                    279 ; genAnd
      00D3CA 14 02            [ 1]  280 	and	a, (0x02, sp)
                                    281 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 184: break;
                                    282 ; genGoto
      00D3CC 20 13            [ 2]  283 	jra	00131$
                                    284 ; peephole j5 changed absolute to relative unconditional jump.
                                    285 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 193: case TIM3_CC_IRQn:
                                    286 ; genLabel
      00D3CE                        287 00123$:
                                    288 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 199: Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
                                    289 ; genPointerGet
      00D3CE C6 7F 75         [ 1]  290 	ld	a, 0x7f75
                                    291 ; genAnd
      00D3D1 14 02            [ 1]  292 	and	a, (0x02, sp)
                                    293 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 200: break;
                                    294 ; genGoto
      00D3D3 20 0C            [ 2]  295 	jra	00131$
                                    296 ; peephole j5 changed absolute to relative unconditional jump.
                                    297 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 209: case USART1_TX_IRQn:
                                    298 ; genLabel
      00D3D5                        299 00127$:
                                    300 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 213: Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
                                    301 ; genPointerGet
      00D3D5 C6 7F 76         [ 1]  302 	ld	a, 0x7f76
                                    303 ; genAnd
      00D3D8 14 02            [ 1]  304 	and	a, (0x02, sp)
                                    305 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 214: break;
                                    306 ; genGoto
      00D3DA 20 05            [ 2]  307 	jra	00131$
                                    308 ; peephole j5 changed absolute to relative unconditional jump.
                                    309 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 219: case I2C1_IRQn:
                                    310 ; genLabel
      00D3DC                        311 00129$:
                                    312 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 224: Value = (uint8_t)(ITC->ISPR8 & Mask); /* Read software priority */
                                    313 ; genPointerGet
      00D3DC C6 7F 77         [ 1]  314 	ld	a, 0x7f77
                                    315 ; genAnd
      00D3DF 14 02            [ 1]  316 	and	a, (0x02, sp)
                                    317 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 229: }
                                    318 ; genLabel
      00D3E1                        319 00131$:
                                    320 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 231: Value >>= (uint8_t)((IRQn % 4u) * 2u);
                                    321 ; genRightShift
      00D3E1 88               [ 1]  322 	push	a
      00D3E2 7B 02            [ 1]  323 	ld	a, (0x02, sp)
      00D3E4 27 05            [ 1]  324 	jreq	00146$
      00D3E6                        325 00145$:
      00D3E6 04 01            [ 1]  326 	srl	(1, sp)
      00D3E8 4A               [ 1]  327 	dec	a
      00D3E9 26 FB            [ 1]  328 	jrne	00145$
      00D3EB                        329 00146$:
      00D3EB 84               [ 1]  330 	pop	a
                                    331 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 233: return((ITC_PriorityLevel_TypeDef)Value);
                                    332 ; genReturn
                                    333 ; genLabel
                                    334 ; peephole j30 removed unused label 00132$.
                                    335 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 235: }
                                    336 ; genEndFunction
      00D3EC 85               [ 2]  337 	popw	x
      00D3ED 81               [ 4]  338 	ret
                                    339 ;	Total ITC_GetSoftwarePriority function size at codegen: 2 bytes.
                                    340 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 254: void ITC_SetSoftwarePriority(IRQn_TypeDef IRQn, ITC_PriorityLevel_TypeDef ITC_PriorityLevel)
                                    341 ; genLabel
                                    342 ;	-----------------------------------------
                                    343 ;	 function ITC_SetSoftwarePriority
                                    344 ;	-----------------------------------------
                                    345 ;	Register assignment might be sub-optimal.
                                    346 ;	Stack space usage: 2 bytes.
      00D3EE                        347 _ITC_SetSoftwarePriority:
      00D3EE 89               [ 2]  348 	pushw	x
                                    349 ; genReceive
                                    350 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 268: Mask = (uint8_t)(~(uint8_t)(0x03U << ((IRQn % 4U) * 2U)));
                                    351 ; genCast
                                    352 ; genAssign
      00D3EF 97               [ 1]  353 	ld	xl, a
                                    354 ; peephole 4 removed redundant load from xl into a.
                                    355 ; genAnd
      00D3F0 A4 03            [ 1]  356 	and	a, #0x03
                                    357 ; genCast
                                    358 ; genAssign
                                    359 ; genLeftShiftLiteral
      00D3F2 48               [ 1]  360 	sll	a
      00D3F3 95               [ 1]  361 	ld	xh, a
                                    362 ; genLeftShift
      00D3F4 A6 03            [ 1]  363 	ld	a, #0x03
      00D3F6 88               [ 1]  364 	push	a
      00D3F7 9E               [ 1]  365 	ld	a, xh
      00D3F8 4D               [ 1]  366 	tnz	a
      00D3F9 27 05            [ 1]  367 	jreq	00142$
      00D3FB                        368 00141$:
      00D3FB 08 01            [ 1]  369 	sll	(1, sp)
      00D3FD 4A               [ 1]  370 	dec	a
      00D3FE 26 FB            [ 1]  371 	jrne	00141$
      00D400                        372 00142$:
      00D400 84               [ 1]  373 	pop	a
                                    374 ; genCpl
      00D401 43               [ 1]  375 	cpl	a
      00D402 6B 01            [ 1]  376 	ld	(0x01, sp), a
                                    377 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 270: NewPriority = (uint8_t)((uint8_t)(ITC_PriorityLevel) << ((IRQn % 4U) * 2U));
                                    378 ; genLeftShift
      00D404 7B 05            [ 1]  379 	ld	a, (0x05, sp)
      00D406 88               [ 1]  380 	push	a
      00D407 9E               [ 1]  381 	ld	a, xh
      00D408 4D               [ 1]  382 	tnz	a
      00D409 27 05            [ 1]  383 	jreq	00144$
      00D40B                        384 00143$:
      00D40B 08 01            [ 1]  385 	sll	(1, sp)
      00D40D 4A               [ 1]  386 	dec	a
      00D40E 26 FB            [ 1]  387 	jrne	00143$
      00D410                        388 00144$:
      00D410 84               [ 1]  389 	pop	a
      00D411 6B 02            [ 1]  390 	ld	(0x02, sp), a
                                    391 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 272: switch (IRQn)
                                    392 ; genCmp
                                    393 ; genCmpTnz
      00D413 9F               [ 1]  394 	ld	a, xl
      00D414 A1 1D            [ 1]  395 	cp	a, #0x1d
      00D416 23 03            [ 2]  396 	jrule	00145$
      00D418 CC D4 EC         [ 2]  397 	jp	00132$
      00D41B                        398 00145$:
                                    399 ; skipping generated iCode
                                    400 ; genJumpTab
      00D41B 4F               [ 1]  401 	clr	a
      00D41C 95               [ 1]  402 	ld	xh, a
      00D41D 58               [ 2]  403 	sllw	x
      00D41E DE D4 22         [ 2]  404 	ldw	x, (#00146$, x)
      00D421 FC               [ 2]  405 	jp	(x)
      00D422                        406 00146$:
      00D422 D4 EC                  407 	.dw	#00132$
      00D424 D4 5E                  408 	.dw	#00103$
      00D426 D4 5E                  409 	.dw	#00103$
      00D428 D4 5E                  410 	.dw	#00103$
      00D42A D4 70                  411 	.dw	#00107$
      00D42C D4 70                  412 	.dw	#00107$
      00D42E D4 70                  413 	.dw	#00107$
      00D430 D4 70                  414 	.dw	#00107$
      00D432 D4 82                  415 	.dw	#00111$
      00D434 D4 82                  416 	.dw	#00111$
      00D436 D4 82                  417 	.dw	#00111$
      00D438 D4 82                  418 	.dw	#00111$
      00D43A D4 94                  419 	.dw	#00115$
      00D43C D4 94                  420 	.dw	#00115$
      00D43E D4 94                  421 	.dw	#00115$
      00D440 D4 94                  422 	.dw	#00115$
      00D442 D4 A6                  423 	.dw	#00119$
      00D444 D4 A6                  424 	.dw	#00119$
      00D446 D4 A6                  425 	.dw	#00119$
      00D448 D4 A6                  426 	.dw	#00119$
      00D44A D4 B8                  427 	.dw	#00123$
      00D44C D4 B8                  428 	.dw	#00123$
      00D44E D4 B8                  429 	.dw	#00123$
      00D450 D4 B8                  430 	.dw	#00123$
      00D452 D4 CA                  431 	.dw	#00127$
      00D454 D4 CA                  432 	.dw	#00127$
      00D456 D4 CA                  433 	.dw	#00127$
      00D458 D4 CA                  434 	.dw	#00127$
      00D45A D4 DC                  435 	.dw	#00129$
      00D45C D4 DC                  436 	.dw	#00129$
                                    437 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 276: case DMA1_CHANNEL2_3_IRQn:
                                    438 ; genLabel
      00D45E                        439 00103$:
                                    440 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 277: ITC->ISPR1 &= Mask;
                                    441 ; genPointerGet
      00D45E C6 7F 70         [ 1]  442 	ld	a, 0x7f70
                                    443 ; genAnd
      00D461 14 01            [ 1]  444 	and	a, (0x01, sp)
                                    445 ; genPointerSet
      00D463 C7 7F 70         [ 1]  446 	ld	0x7f70, a
                                    447 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 278: ITC->ISPR1 |= NewPriority;
                                    448 ; genPointerGet
      00D466 C6 7F 70         [ 1]  449 	ld	a, 0x7f70
                                    450 ; genOr
      00D469 1A 02            [ 1]  451 	or	a, (0x02, sp)
                                    452 ; genPointerSet
      00D46B C7 7F 70         [ 1]  453 	ld	0x7f70, a
                                    454 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 279: break;
                                    455 ; genGoto
      00D46E 20 7C            [ 2]  456 	jra	00132$
                                    457 ; peephole j5 changed absolute to relative unconditional jump.
                                    458 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 285: case EXTID_IRQn:
                                    459 ; genLabel
      00D470                        460 00107$:
                                    461 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 295: ITC->ISPR2 &= Mask;
                                    462 ; genPointerGet
      00D470 C6 7F 71         [ 1]  463 	ld	a, 0x7f71
                                    464 ; genAnd
      00D473 14 01            [ 1]  465 	and	a, (0x01, sp)
                                    466 ; genPointerSet
      00D475 C7 7F 71         [ 1]  467 	ld	0x7f71, a
                                    468 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 296: ITC->ISPR2 |= NewPriority;
                                    469 ; genPointerGet
      00D478 C6 7F 71         [ 1]  470 	ld	a, 0x7f71
                                    471 ; genOr
      00D47B 1A 02            [ 1]  472 	or	a, (0x02, sp)
                                    473 ; genPointerSet
      00D47D C7 7F 71         [ 1]  474 	ld	0x7f71, a
                                    475 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 297: break;
                                    476 ; genGoto
      00D480 20 6A            [ 2]  477 	jra	00132$
                                    478 ; peephole j5 changed absolute to relative unconditional jump.
                                    479 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 302: case EXTI3_IRQn:
                                    480 ; genLabel
      00D482                        481 00111$:
                                    482 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 303: ITC->ISPR3 &= Mask;
                                    483 ; genPointerGet
      00D482 C6 7F 72         [ 1]  484 	ld	a, 0x7f72
                                    485 ; genAnd
      00D485 14 01            [ 1]  486 	and	a, (0x01, sp)
                                    487 ; genPointerSet
      00D487 C7 7F 72         [ 1]  488 	ld	0x7f72, a
                                    489 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 304: ITC->ISPR3 |= NewPriority;
                                    490 ; genPointerGet
      00D48A C6 7F 72         [ 1]  491 	ld	a, 0x7f72
                                    492 ; genOr
      00D48D 1A 02            [ 1]  493 	or	a, (0x02, sp)
                                    494 ; genPointerSet
      00D48F C7 7F 72         [ 1]  495 	ld	0x7f72, a
                                    496 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 305: break;
                                    497 ; genGoto
      00D492 20 58            [ 2]  498 	jra	00132$
                                    499 ; peephole j5 changed absolute to relative unconditional jump.
                                    500 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 310: case EXTI7_IRQn:
                                    501 ; genLabel
      00D494                        502 00115$:
                                    503 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 311: ITC->ISPR4 &= Mask;
                                    504 ; genPointerGet
      00D494 C6 7F 73         [ 1]  505 	ld	a, 0x7f73
                                    506 ; genAnd
      00D497 14 01            [ 1]  507 	and	a, (0x01, sp)
                                    508 ; genPointerSet
      00D499 C7 7F 73         [ 1]  509 	ld	0x7f73, a
                                    510 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 312: ITC->ISPR4 |= NewPriority;
                                    511 ; genPointerGet
      00D49C C6 7F 73         [ 1]  512 	ld	a, 0x7f73
                                    513 ; genOr
      00D49F 1A 02            [ 1]  514 	or	a, (0x02, sp)
                                    515 ; genPointerSet
      00D4A1 C7 7F 73         [ 1]  516 	ld	0x7f73, a
                                    517 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 313: break;
                                    518 ; genGoto
      00D4A4 20 46            [ 2]  519 	jra	00132$
                                    520 ; peephole j5 changed absolute to relative unconditional jump.
                                    521 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 322: case TIM2_UPD_OVF_TRG_BRK_IRQn:
                                    522 ; genLabel
      00D4A6                        523 00119$:
                                    524 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 329: ITC->ISPR5 &= Mask;
                                    525 ; genPointerGet
      00D4A6 C6 7F 74         [ 1]  526 	ld	a, 0x7f74
                                    527 ; genAnd
      00D4A9 14 01            [ 1]  528 	and	a, (0x01, sp)
                                    529 ; genPointerSet
      00D4AB C7 7F 74         [ 1]  530 	ld	0x7f74, a
                                    531 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 330: ITC->ISPR5 |= NewPriority;
                                    532 ; genPointerGet
      00D4AE C6 7F 74         [ 1]  533 	ld	a, 0x7f74
                                    534 ; genOr
      00D4B1 1A 02            [ 1]  535 	or	a, (0x02, sp)
                                    536 ; genPointerSet
      00D4B3 C7 7F 74         [ 1]  537 	ld	0x7f74, a
                                    538 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 331: break;
                                    539 ; genGoto
      00D4B6 20 34            [ 2]  540 	jra	00132$
                                    541 ; peephole j5 changed absolute to relative unconditional jump.
                                    542 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 339: case TIM3_CC_IRQn:
                                    543 ; genLabel
      00D4B8                        544 00123$:
                                    545 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 345: ITC->ISPR6 &= Mask;
                                    546 ; genPointerGet
      00D4B8 C6 7F 75         [ 1]  547 	ld	a, 0x7f75
                                    548 ; genAnd
      00D4BB 14 01            [ 1]  549 	and	a, (0x01, sp)
                                    550 ; genPointerSet
      00D4BD C7 7F 75         [ 1]  551 	ld	0x7f75, a
                                    552 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 346: ITC->ISPR6 |= NewPriority;
                                    553 ; genPointerGet
      00D4C0 C6 7F 75         [ 1]  554 	ld	a, 0x7f75
                                    555 ; genOr
      00D4C3 1A 02            [ 1]  556 	or	a, (0x02, sp)
                                    557 ; genPointerSet
      00D4C5 C7 7F 75         [ 1]  558 	ld	0x7f75, a
                                    559 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 347: break;
                                    560 ; genGoto
      00D4C8 20 22            [ 2]  561 	jra	00132$
                                    562 ; peephole j5 changed absolute to relative unconditional jump.
                                    563 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 356: case USART1_TX_IRQn:
                                    564 ; genLabel
      00D4CA                        565 00127$:
                                    566 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 360: ITC->ISPR7 &= Mask;
                                    567 ; genPointerGet
      00D4CA C6 7F 76         [ 1]  568 	ld	a, 0x7f76
                                    569 ; genAnd
      00D4CD 14 01            [ 1]  570 	and	a, (0x01, sp)
                                    571 ; genPointerSet
      00D4CF C7 7F 76         [ 1]  572 	ld	0x7f76, a
                                    573 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 361: ITC->ISPR7 |= NewPriority;
                                    574 ; genPointerGet
      00D4D2 C6 7F 76         [ 1]  575 	ld	a, 0x7f76
                                    576 ; genOr
      00D4D5 1A 02            [ 1]  577 	or	a, (0x02, sp)
                                    578 ; genPointerSet
      00D4D7 C7 7F 76         [ 1]  579 	ld	0x7f76, a
                                    580 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 362: break;
                                    581 ; genGoto
      00D4DA 20 10            [ 2]  582 	jra	00132$
                                    583 ; peephole j5 changed absolute to relative unconditional jump.
                                    584 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 367: case I2C1_IRQn:
                                    585 ; genLabel
      00D4DC                        586 00129$:
                                    587 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 372: ITC->ISPR8 &= Mask;
                                    588 ; genPointerGet
      00D4DC C6 7F 77         [ 1]  589 	ld	a, 0x7f77
                                    590 ; genAnd
      00D4DF 14 01            [ 1]  591 	and	a, (0x01, sp)
                                    592 ; genPointerSet
      00D4E1 C7 7F 77         [ 1]  593 	ld	0x7f77, a
                                    594 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 373: ITC->ISPR8 |= NewPriority;
                                    595 ; genPointerGet
      00D4E4 C6 7F 77         [ 1]  596 	ld	a, 0x7f77
                                    597 ; genOr
      00D4E7 1A 02            [ 1]  598 	or	a, (0x02, sp)
                                    599 ; genPointerSet
      00D4E9 C7 7F 77         [ 1]  600 	ld	0x7f77, a
                                    601 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 378: }
                                    602 ; genLabel
      00D4EC                        603 00132$:
                                    604 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_itc.c: 379: }
                                    605 ; genEndFunction
      00D4EC 85               [ 2]  606 	popw	x
      00D4ED 85               [ 2]  607 	popw	x
      00D4EE 84               [ 1]  608 	pop	a
      00D4EF FC               [ 2]  609 	jp	(x)
                                    610 ;	Total ITC_SetSoftwarePriority function size at codegen: 4 bytes.
                                    611 	.area CODE
                                    612 	.area CONST
                                    613 	.area INITIALIZER
                                    614 	.area CABS (ABS)
