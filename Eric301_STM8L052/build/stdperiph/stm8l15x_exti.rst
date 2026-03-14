                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8l15x_exti
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _EXTI_DeInit
                                     11 	.globl _EXTI_SetPinSensitivity
                                     12 	.globl _EXTI_SelectPort
                                     13 	.globl _EXTI_SetHalfPortSelection
                                     14 	.globl _EXTI_SetPortSensitivity
                                     15 	.globl _EXTI_GetPinSensitivity
                                     16 	.globl _EXTI_GetPortSensitivity
                                     17 	.globl _EXTI_GetITStatus
                                     18 	.globl _EXTI_ClearITPendingBit
                                     19 ;--------------------------------------------------------
                                     20 ; ram data
                                     21 ;--------------------------------------------------------
                                     22 	.area DATA
                                     23 ;--------------------------------------------------------
                                     24 ; ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area INITIALIZED
                                     27 ;--------------------------------------------------------
                                     28 ; absolute external ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area DABS (ABS)
                                     31 
                                     32 ; default segment ordering for linker
                                     33 	.area HOME
                                     34 	.area GSINIT
                                     35 	.area GSFINAL
                                     36 	.area CONST
                                     37 	.area INITIALIZER
                                     38 	.area CODE
                                     39 
                                     40 ;--------------------------------------------------------
                                     41 ; global & static initialisations
                                     42 ;--------------------------------------------------------
                                     43 	.area HOME
                                     44 	.area GSINIT
                                     45 	.area GSFINAL
                                     46 	.area GSINIT
                                     47 ;--------------------------------------------------------
                                     48 ; Home
                                     49 ;--------------------------------------------------------
                                     50 	.area HOME
                                     51 	.area HOME
                                     52 ;--------------------------------------------------------
                                     53 ; code
                                     54 ;--------------------------------------------------------
                                     55 	.area CODE
                                     56 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 123: void EXTI_DeInit(void)
                                     57 ; genLabel
                                     58 ;	-----------------------------------------
                                     59 ;	 function EXTI_DeInit
                                     60 ;	-----------------------------------------
                                     61 ;	Register assignment is optimal.
                                     62 ;	Stack space usage: 0 bytes.
      00C90F                         63 _EXTI_DeInit:
                                     64 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 125: EXTI->CR1 = EXTI_CR1_RESET_VALUE;
                                     65 ; genPointerSet
      00C90F 35 00 50 A0      [ 1]   66 	mov	0x50a0+0, #0x00
                                     67 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 126: EXTI->CR2 = EXTI_CR2_RESET_VALUE;
                                     68 ; genPointerSet
      00C913 35 00 50 A1      [ 1]   69 	mov	0x50a1+0, #0x00
                                     70 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 127: EXTI->CR3 = EXTI_CR3_RESET_VALUE;
                                     71 ; genPointerSet
      00C917 35 00 50 A2      [ 1]   72 	mov	0x50a2+0, #0x00
                                     73 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 128: EXTI->CR4 = EXTI_CR4_RESET_VALUE;
                                     74 ; genPointerSet
      00C91B 35 00 50 AA      [ 1]   75 	mov	0x50aa+0, #0x00
                                     76 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 129: EXTI->SR1 = 0xFF; /* Setting SR1 bits in order to clear flags */
                                     77 ; genPointerSet
      00C91F 35 FF 50 A3      [ 1]   78 	mov	0x50a3+0, #0xff
                                     79 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 130: EXTI->SR2 = 0xFF; /* Setting SR2 bits in order to clear flags */
                                     80 ; genPointerSet
      00C923 35 FF 50 A4      [ 1]   81 	mov	0x50a4+0, #0xff
                                     82 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 131: EXTI->CONF1 = EXTI_CONF1_RESET_VALUE;
                                     83 ; genPointerSet
      00C927 35 00 50 A5      [ 1]   84 	mov	0x50a5+0, #0x00
                                     85 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 132: EXTI->CONF2 = EXTI_CONF2_RESET_VALUE;
                                     86 ; genPointerSet
      00C92B 35 00 50 AB      [ 1]   87 	mov	0x50ab+0, #0x00
                                     88 ; genLabel
                                     89 ; peephole j30 removed unused label 00101$.
                                     90 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 133: }
                                     91 ; genEndFunction
      00C92F 81               [ 4]   92 	ret
                                     93 ;	Total EXTI_DeInit function size at codegen: 1 bytes.
                                     94 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 160: void EXTI_SetPinSensitivity(EXTI_Pin_TypeDef EXTI_Pin, EXTI_Trigger_TypeDef EXTI_Trigger)
                                     95 ; genLabel
                                     96 ;	-----------------------------------------
                                     97 ;	 function EXTI_SetPinSensitivity
                                     98 ;	-----------------------------------------
                                     99 ;	Register assignment might be sub-optimal.
                                    100 ;	Stack space usage: 1 bytes.
      00C930                        101 _EXTI_SetPinSensitivity:
      00C930 88               [ 1]  102 	push	a
                                    103 ; genReceive
                                    104 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 172: EXTI->CR1 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Pin);
                                    105 ; genLeftShift
      00C931 88               [ 1]  106 	push	a
      00C932 88               [ 1]  107 	push	a
      00C933 7B 06            [ 1]  108 	ld	a, (0x06, sp)
      00C935 6B 03            [ 1]  109 	ld	(0x03, sp), a
      00C937 84               [ 1]  110 	pop	a
      00C938 4D               [ 1]  111 	tnz	a
      00C939 27 05            [ 1]  112 	jreq	00170$
      00C93B                        113 00169$:
      00C93B 08 02            [ 1]  114 	sll	(0x02, sp)
      00C93D 4A               [ 1]  115 	dec	a
      00C93E 26 FB            [ 1]  116 	jrne	00169$
      00C940                        117 00170$:
      00C940 84               [ 1]  118 	pop	a
                                    119 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 168: switch (EXTI_Pin)
                                    120 ; genCmpEQorNE
      00C941 A1 00            [ 1]  121 	cp	a, #0x00
                                    122 ; peephole j5 changed absolute to relative unconditional jump.
      00C943 27 34            [ 1]  123 	jreq	00101$
                                    124 ; peephole j10 removed jra by using inverse jump logic
                                    125 ; peephole j30 removed unused label 00172$.
                                    126 ; skipping generated iCode
                                    127 ; genCmpEQorNE
      00C945 A1 02            [ 1]  128 	cp	a, #0x02
                                    129 ; peephole j5 changed absolute to relative unconditional jump.
      00C947 27 42            [ 1]  130 	jreq	00102$
                                    131 ; peephole j10 removed jra by using inverse jump logic
                                    132 ; peephole j30 removed unused label 00175$.
                                    133 ; skipping generated iCode
                                    134 ; genCmpEQorNE
      00C949 A1 04            [ 1]  135 	cp	a, #0x04
                                    136 ; peephole j5 changed absolute to relative unconditional jump.
      00C94B 27 50            [ 1]  137 	jreq	00103$
                                    138 ; peephole j10 removed jra by using inverse jump logic
                                    139 ; peephole j30 removed unused label 00178$.
                                    140 ; skipping generated iCode
                                    141 ; genCmpEQorNE
      00C94D A1 06            [ 1]  142 	cp	a, #0x06
                                    143 ; peephole j5 changed absolute to relative unconditional jump.
      00C94F 27 5E            [ 1]  144 	jreq	00104$
                                    145 ; peephole j10 removed jra by using inverse jump logic
                                    146 ; peephole j30 removed unused label 00181$.
                                    147 ; skipping generated iCode
                                    148 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 188: EXTI->CR2 |= (uint8_t)((uint8_t)(EXTI_Trigger) << ((uint8_t)EXTI_Pin & (uint8_t)0xEF));
                                    149 ; genAnd
      00C951 88               [ 1]  150 	push	a
      00C952 A4 EF            [ 1]  151 	and	a, #0xef
      00C954 97               [ 1]  152 	ld	xl, a
                                    153 ; genLeftShift
                                    154 ; peephole 6 removed dead pop / push pair.
      00C955 7B 05            [ 1]  155 	ld	a, (0x05, sp)
      00C957 6B 02            [ 1]  156 	ld	(0x02, sp), a
      00C959 9F               [ 1]  157 	ld	a, xl
      00C95A 4D               [ 1]  158 	tnz	a
      00C95B 27 05            [ 1]  159 	jreq	00184$
      00C95D                        160 00183$:
      00C95D 08 02            [ 1]  161 	sll	(0x02, sp)
      00C95F 4A               [ 1]  162 	dec	a
      00C960 26 FB            [ 1]  163 	jrne	00183$
      00C962                        164 00184$:
      00C962 84               [ 1]  165 	pop	a
                                    166 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 168: switch (EXTI_Pin)
                                    167 ; genCmpEQorNE
      00C963 A1 10            [ 1]  168 	cp	a, #0x10
                                    169 ; peephole j5 changed absolute to relative unconditional jump.
      00C965 27 5A            [ 1]  170 	jreq	00105$
                                    171 ; peephole j10 removed jra by using inverse jump logic
                                    172 ; peephole j30 removed unused label 00186$.
                                    173 ; skipping generated iCode
                                    174 ; genCmpEQorNE
      00C967 A1 12            [ 1]  175 	cp	a, #0x12
                                    176 ; peephole j5 changed absolute to relative unconditional jump.
      00C969 27 68            [ 1]  177 	jreq	00106$
                                    178 ; peephole j10 removed jra by using inverse jump logic
                                    179 ; peephole j30 removed unused label 00189$.
                                    180 ; skipping generated iCode
                                    181 ; genCmpEQorNE
      00C96B A1 14            [ 1]  182 	cp	a, #0x14
                                    183 ; peephole j5 changed absolute to relative unconditional jump.
      00C96D 27 76            [ 1]  184 	jreq	00107$
                                    185 ; peephole j10 removed jra by using inverse jump logic
                                    186 ; peephole j30 removed unused label 00192$.
                                    187 ; skipping generated iCode
                                    188 ; genCmpEQorNE
      00C96F A1 16            [ 1]  189 	cp	a, #0x16
      00C971 26 03            [ 1]  190 	jrne	00195$
      00C973 CC C9 F7         [ 2]  191 	jp	00108$
      00C976                        192 00195$:
                                    193 ; skipping generated iCode
                                    194 ; genGoto
      00C976 CC CA 07         [ 2]  195 	jp	00111$
                                    196 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 170: case EXTI_Pin_0:
                                    197 ; genLabel
      00C979                        198 00101$:
                                    199 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 171: EXTI->CR1 &=  (uint8_t)(~EXTI_CR1_P0IS);
                                    200 ; genPointerGet
      00C979 C6 50 A0         [ 1]  201 	ld	a, 0x50a0
                                    202 ; genAnd
      00C97C A4 FC            [ 1]  203 	and	a, #0xfc
                                    204 ; genPointerSet
      00C97E C7 50 A0         [ 1]  205 	ld	0x50a0, a
                                    206 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 172: EXTI->CR1 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Pin);
                                    207 ; genPointerGet
      00C981 C6 50 A0         [ 1]  208 	ld	a, 0x50a0
                                    209 ; genOr
      00C984 1A 01            [ 1]  210 	or	a, (0x01, sp)
                                    211 ; genPointerSet
      00C986 C7 50 A0         [ 1]  212 	ld	0x50a0, a
                                    213 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 173: break;
                                    214 ; genGoto
      00C989 20 7C            [ 2]  215 	jra	00111$
                                    216 ; peephole j5 changed absolute to relative unconditional jump.
                                    217 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 174: case EXTI_Pin_1:
                                    218 ; genLabel
      00C98B                        219 00102$:
                                    220 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 175: EXTI->CR1 &=  (uint8_t)(~EXTI_CR1_P1IS);
                                    221 ; genPointerGet
      00C98B C6 50 A0         [ 1]  222 	ld	a, 0x50a0
                                    223 ; genAnd
      00C98E A4 F3            [ 1]  224 	and	a, #0xf3
                                    225 ; genPointerSet
      00C990 C7 50 A0         [ 1]  226 	ld	0x50a0, a
                                    227 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 176: EXTI->CR1 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Pin);
                                    228 ; genPointerGet
      00C993 C6 50 A0         [ 1]  229 	ld	a, 0x50a0
                                    230 ; genOr
      00C996 1A 01            [ 1]  231 	or	a, (0x01, sp)
                                    232 ; genPointerSet
      00C998 C7 50 A0         [ 1]  233 	ld	0x50a0, a
                                    234 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 177: break;
                                    235 ; genGoto
      00C99B 20 6A            [ 2]  236 	jra	00111$
                                    237 ; peephole j5 changed absolute to relative unconditional jump.
                                    238 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 178: case EXTI_Pin_2:
                                    239 ; genLabel
      00C99D                        240 00103$:
                                    241 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 179: EXTI->CR1 &=  (uint8_t)(~EXTI_CR1_P2IS);
                                    242 ; genPointerGet
      00C99D C6 50 A0         [ 1]  243 	ld	a, 0x50a0
                                    244 ; genAnd
      00C9A0 A4 CF            [ 1]  245 	and	a, #0xcf
                                    246 ; genPointerSet
      00C9A2 C7 50 A0         [ 1]  247 	ld	0x50a0, a
                                    248 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 180: EXTI->CR1 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Pin);
                                    249 ; genPointerGet
      00C9A5 C6 50 A0         [ 1]  250 	ld	a, 0x50a0
                                    251 ; genOr
      00C9A8 1A 01            [ 1]  252 	or	a, (0x01, sp)
                                    253 ; genPointerSet
      00C9AA C7 50 A0         [ 1]  254 	ld	0x50a0, a
                                    255 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 181: break;
                                    256 ; genGoto
      00C9AD 20 58            [ 2]  257 	jra	00111$
                                    258 ; peephole j5 changed absolute to relative unconditional jump.
                                    259 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 182: case EXTI_Pin_3:
                                    260 ; genLabel
      00C9AF                        261 00104$:
                                    262 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 183: EXTI->CR1 &=  (uint8_t)(~EXTI_CR1_P3IS);
                                    263 ; genPointerGet
      00C9AF C6 50 A0         [ 1]  264 	ld	a, 0x50a0
                                    265 ; genAnd
      00C9B2 A4 3F            [ 1]  266 	and	a, #0x3f
                                    267 ; genPointerSet
      00C9B4 C7 50 A0         [ 1]  268 	ld	0x50a0, a
                                    269 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 184: EXTI->CR1 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Pin);
                                    270 ; genPointerGet
      00C9B7 C6 50 A0         [ 1]  271 	ld	a, 0x50a0
                                    272 ; genOr
      00C9BA 1A 01            [ 1]  273 	or	a, (0x01, sp)
                                    274 ; genPointerSet
      00C9BC C7 50 A0         [ 1]  275 	ld	0x50a0, a
                                    276 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 185: break;
                                    277 ; genGoto
      00C9BF 20 46            [ 2]  278 	jra	00111$
                                    279 ; peephole j5 changed absolute to relative unconditional jump.
                                    280 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 186: case EXTI_Pin_4:
                                    281 ; genLabel
      00C9C1                        282 00105$:
                                    283 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 187: EXTI->CR2 &=  (uint8_t)(~EXTI_CR2_P4IS);
                                    284 ; genPointerGet
      00C9C1 C6 50 A1         [ 1]  285 	ld	a, 0x50a1
                                    286 ; genAnd
      00C9C4 A4 FC            [ 1]  287 	and	a, #0xfc
                                    288 ; genPointerSet
      00C9C6 C7 50 A1         [ 1]  289 	ld	0x50a1, a
                                    290 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 188: EXTI->CR2 |= (uint8_t)((uint8_t)(EXTI_Trigger) << ((uint8_t)EXTI_Pin & (uint8_t)0xEF));
                                    291 ; genPointerGet
      00C9C9 C6 50 A1         [ 1]  292 	ld	a, 0x50a1
                                    293 ; genOr
      00C9CC 1A 01            [ 1]  294 	or	a, (0x01, sp)
                                    295 ; genPointerSet
      00C9CE C7 50 A1         [ 1]  296 	ld	0x50a1, a
                                    297 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 189: break;
                                    298 ; genGoto
      00C9D1 20 34            [ 2]  299 	jra	00111$
                                    300 ; peephole j5 changed absolute to relative unconditional jump.
                                    301 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 190: case EXTI_Pin_5:
                                    302 ; genLabel
      00C9D3                        303 00106$:
                                    304 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 191: EXTI->CR2 &=  (uint8_t)(~EXTI_CR2_P5IS);
                                    305 ; genPointerGet
      00C9D3 C6 50 A1         [ 1]  306 	ld	a, 0x50a1
                                    307 ; genAnd
      00C9D6 A4 F3            [ 1]  308 	and	a, #0xf3
                                    309 ; genPointerSet
      00C9D8 C7 50 A1         [ 1]  310 	ld	0x50a1, a
                                    311 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 192: EXTI->CR2 |= (uint8_t)((uint8_t)(EXTI_Trigger) << ((uint8_t)EXTI_Pin & (uint8_t)0xEF));
                                    312 ; genPointerGet
      00C9DB C6 50 A1         [ 1]  313 	ld	a, 0x50a1
                                    314 ; genOr
      00C9DE 1A 01            [ 1]  315 	or	a, (0x01, sp)
                                    316 ; genPointerSet
      00C9E0 C7 50 A1         [ 1]  317 	ld	0x50a1, a
                                    318 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 193: break;
                                    319 ; genGoto
      00C9E3 20 22            [ 2]  320 	jra	00111$
                                    321 ; peephole j5 changed absolute to relative unconditional jump.
                                    322 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 194: case EXTI_Pin_6:
                                    323 ; genLabel
      00C9E5                        324 00107$:
                                    325 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 195: EXTI->CR2 &=  (uint8_t)(~EXTI_CR2_P6IS);
                                    326 ; genPointerGet
      00C9E5 C6 50 A1         [ 1]  327 	ld	a, 0x50a1
                                    328 ; genAnd
      00C9E8 A4 CF            [ 1]  329 	and	a, #0xcf
                                    330 ; genPointerSet
      00C9EA C7 50 A1         [ 1]  331 	ld	0x50a1, a
                                    332 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 196: EXTI->CR2 |= (uint8_t)((uint8_t)(EXTI_Trigger) << ((uint8_t)EXTI_Pin & (uint8_t)0xEF));
                                    333 ; genPointerGet
      00C9ED C6 50 A1         [ 1]  334 	ld	a, 0x50a1
                                    335 ; genOr
      00C9F0 1A 01            [ 1]  336 	or	a, (0x01, sp)
                                    337 ; genPointerSet
      00C9F2 C7 50 A1         [ 1]  338 	ld	0x50a1, a
                                    339 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 197: break;
                                    340 ; genGoto
      00C9F5 20 10            [ 2]  341 	jra	00111$
                                    342 ; peephole j5 changed absolute to relative unconditional jump.
                                    343 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 198: case EXTI_Pin_7:
                                    344 ; genLabel
      00C9F7                        345 00108$:
                                    346 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 199: EXTI->CR2 &=  (uint8_t)(~EXTI_CR2_P7IS);
                                    347 ; genPointerGet
      00C9F7 C6 50 A1         [ 1]  348 	ld	a, 0x50a1
                                    349 ; genAnd
      00C9FA A4 3F            [ 1]  350 	and	a, #0x3f
                                    351 ; genPointerSet
      00C9FC C7 50 A1         [ 1]  352 	ld	0x50a1, a
                                    353 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 200: EXTI->CR2 |= (uint8_t)((uint8_t)(EXTI_Trigger) << ((uint8_t)EXTI_Pin & (uint8_t)0xEF));
                                    354 ; genPointerGet
      00C9FF C6 50 A1         [ 1]  355 	ld	a, 0x50a1
                                    356 ; genOr
      00CA02 1A 01            [ 1]  357 	or	a, (0x01, sp)
                                    358 ; genPointerSet
      00CA04 C7 50 A1         [ 1]  359 	ld	0x50a1, a
                                    360 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 204: }
                                    361 ; genLabel
      00CA07                        362 00111$:
                                    363 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 205: }
                                    364 ; genEndFunction
      00CA07 84               [ 1]  365 	pop	a
      00CA08 85               [ 2]  366 	popw	x
      00CA09 84               [ 1]  367 	pop	a
      00CA0A FC               [ 2]  368 	jp	(x)
                                    369 ;	Total EXTI_SetPinSensitivity function size at codegen: 4 bytes.
                                    370 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 219: void EXTI_SelectPort(EXTI_Port_TypeDef EXTI_Port)
                                    371 ; genLabel
                                    372 ;	-----------------------------------------
                                    373 ;	 function EXTI_SelectPort
                                    374 ;	-----------------------------------------
                                    375 ;	Register assignment is optimal.
                                    376 ;	Stack space usage: 0 bytes.
      00CA0B                        377 _EXTI_SelectPort:
                                    378 ; genReceive
                                    379 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 224: if (EXTI_Port == EXTI_Port_B)
                                    380 ; genIfx
      00CA0B 4D               [ 1]  381 	tnz	a
                                    382 ; peephole j5 changed absolute to relative unconditional jump.
      00CA0C 26 05            [ 1]  383 	jrne	00114$
                                    384 ; peephole j7 removed jra by using inverse jump logic
                                    385 ; peephole j30 removed unused label 00153$.
                                    386 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 227: EXTI->CONF2 &= (uint8_t) (~EXTI_CONF2_PGBS);
                                    387 ; genPointerGet
                                    388 ; genAnd
                                    389 ; genPointerSet
      00CA0E 72 1B 50 AB      [ 1]  390 	bres	0x50ab, #5
                                    391 ; peephole 204x replaced 'and' by 'bres' ('0x50ab').
                                    392 ; genGoto
      00CA12 81               [ 4]  393 	ret
                                    394 ; peephole j2e replaced jump by return.
                                    395 ; genLabel
      00CA13                        396 00114$:
                                    397 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 229: else if (EXTI_Port == EXTI_Port_D)
                                    398 ; genCmpEQorNE
      00CA13 A1 02            [ 1]  399 	cp	a, #0x02
                                    400 ; peephole j5 changed absolute to relative unconditional jump.
                                    401 ; peephole j10 removed jra by using inverse jump logic
                                    402 ; peephole j30 removed unused label 00155$.
                                    403 ; peephole j5 changed absolute to relative unconditional jump.
      00CA15 26 05            [ 1]  404 	jrne	00111$
                                    405 ; peephole j7 removed jra by using inverse jump logic
                                    406 ; peephole j30 removed unused label 00156$.
                                    407 ; skipping generated iCode
                                    408 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 232: EXTI->CONF2 &= (uint8_t) (~EXTI_CONF2_PHDS);
                                    409 ; genPointerGet
                                    410 ; genAnd
                                    411 ; genPointerSet
      00CA17 72 1D 50 AB      [ 1]  412 	bres	0x50ab, #6
                                    413 ; peephole 204x replaced 'and' by 'bres' ('0x50ab').
                                    414 ; genGoto
      00CA1B 81               [ 4]  415 	ret
                                    416 ; peephole j2e replaced jump by return.
                                    417 ; genLabel
      00CA1C                        418 00111$:
                                    419 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 234: else if (EXTI_Port == EXTI_Port_E)
                                    420 ; genCmpEQorNE
      00CA1C A1 04            [ 1]  421 	cp	a, #0x04
                                    422 ; peephole j5 changed absolute to relative unconditional jump.
                                    423 ; peephole j10 removed jra by using inverse jump logic
                                    424 ; peephole j30 removed unused label 00158$.
                                    425 ; peephole j5 changed absolute to relative unconditional jump.
      00CA1E 26 05            [ 1]  426 	jrne	00108$
                                    427 ; peephole j7 removed jra by using inverse jump logic
                                    428 ; peephole j30 removed unused label 00159$.
                                    429 ; skipping generated iCode
                                    430 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 237: EXTI->CONF1 &= (uint8_t) (~EXTI_CONF1_PFES);
                                    431 ; genPointerGet
                                    432 ; genAnd
                                    433 ; genPointerSet
      00CA20 72 1F 50 A5      [ 1]  434 	bres	0x50a5, #7
                                    435 ; peephole 204x replaced 'and' by 'bres' ('0x50a5').
                                    436 ; genGoto
      00CA24 81               [ 4]  437 	ret
                                    438 ; peephole j2e replaced jump by return.
                                    439 ; genLabel
      00CA25                        440 00108$:
                                    441 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 239: else if (EXTI_Port == EXTI_Port_F)
                                    442 ; genCmpEQorNE
      00CA25 A1 06            [ 1]  443 	cp	a, #0x06
                                    444 ; peephole j5 changed absolute to relative unconditional jump.
                                    445 ; peephole j10 removed jra by using inverse jump logic
                                    446 ; peephole j30 removed unused label 00161$.
                                    447 ; peephole j5 changed absolute to relative unconditional jump.
      00CA27 26 05            [ 1]  448 	jrne	00105$
                                    449 ; peephole j7 removed jra by using inverse jump logic
                                    450 ; peephole j30 removed unused label 00162$.
                                    451 ; skipping generated iCode
                                    452 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 242: EXTI->CONF1 |= (uint8_t) (EXTI_CONF1_PFES);
                                    453 ; genPointerGet
                                    454 ; genOr
                                    455 ; genPointerSet
      00CA29 72 1E 50 A5      [ 1]  456 	bset	0x50a5, #7
                                    457 ; peephole 202x replaced 'or' by 'bset' ('0x50a5').
                                    458 ; genGoto
      00CA2D 81               [ 4]  459 	ret
                                    460 ; peephole j2e replaced jump by return.
                                    461 ; genLabel
      00CA2E                        462 00105$:
                                    463 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 227: EXTI->CONF2 &= (uint8_t) (~EXTI_CONF2_PGBS);
                                    464 ; genPointerGet
      00CA2E AE 50 AB         [ 2]  465 	ldw	x, #0x50ab
      00CA31 88               [ 1]  466 	push	a
      00CA32 F6               [ 1]  467 	ld	a, (x)
      00CA33 97               [ 1]  468 	ld	xl, a
      00CA34 84               [ 1]  469 	pop	a
                                    470 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 244: else if (EXTI_Port == EXTI_Port_G)
                                    471 ; genCmpEQorNE
      00CA35 A1 10            [ 1]  472 	cp	a, #0x10
                                    473 ; peephole j5 changed absolute to relative unconditional jump.
                                    474 ; peephole j10 removed jra by using inverse jump logic
                                    475 ; peephole j30 removed unused label 00164$.
                                    476 ; peephole j5 changed absolute to relative unconditional jump.
      00CA37 26 07            [ 1]  477 	jrne	00102$
                                    478 ; peephole j7 removed jra by using inverse jump logic
                                    479 ; peephole j30 removed unused label 00165$.
                                    480 ; skipping generated iCode
                                    481 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 247: EXTI->CONF2 |= (uint8_t) (EXTI_CONF2_PGBS);
                                    482 ; genOr
      00CA39 9F               [ 1]  483 	ld	a, xl
      00CA3A AA 20            [ 1]  484 	or	a, #0x20
                                    485 ; genPointerSet
      00CA3C C7 50 AB         [ 1]  486 	ld	0x50ab, a
                                    487 ; genGoto
      00CA3F 81               [ 4]  488 	ret
                                    489 ; peephole j2e replaced jump by return.
                                    490 ; genLabel
      00CA40                        491 00102$:
                                    492 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 252: EXTI->CONF2 |= (uint8_t) (EXTI_CONF2_PHDS);
                                    493 ; genOr
      00CA40 9F               [ 1]  494 	ld	a, xl
      00CA41 AA 40            [ 1]  495 	or	a, #0x40
                                    496 ; genPointerSet
      00CA43 C7 50 AB         [ 1]  497 	ld	0x50ab, a
                                    498 ; genLabel
                                    499 ; peephole j30 removed unused label 00116$.
                                    500 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 254: }
                                    501 ; genEndFunction
      00CA46 81               [ 4]  502 	ret
                                    503 ;	Total EXTI_SelectPort function size at codegen: 1 bytes.
                                    504 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 280: void EXTI_SetHalfPortSelection(EXTI_HalfPort_TypeDef EXTI_HalfPort,
                                    505 ; genLabel
                                    506 ;	-----------------------------------------
                                    507 ;	 function EXTI_SetHalfPortSelection
                                    508 ;	-----------------------------------------
                                    509 ;	Register assignment might be sub-optimal.
                                    510 ;	Stack space usage: 1 bytes.
      00CA47                        511 _EXTI_SetHalfPortSelection:
      00CA47 88               [ 1]  512 	push	a
                                    513 ; genReceive
                                    514 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 287: if ((EXTI_HalfPort & 0x80) == 0x00)
                                    515 ; genAnd
      00CA48 4D               [ 1]  516 	tnz	a
                                    517 ; peephole j5 changed absolute to relative unconditional jump.
      00CA49 2B 1B            [ 1]  518 	jrmi	00108$
                                    519 ; peephole j11 removed jra by using inverse jump logic
                                    520 ; peephole j30 removed unused label 00133$.
                                    521 ; skipping generated iCode
                                    522 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 292: EXTI->CONF1 |= (uint8_t)EXTI_HalfPort;
                                    523 ; genPointerGet
      00CA4B AE 50 A5         [ 2]  524 	ldw	x, #0x50a5
      00CA4E 88               [ 1]  525 	push	a
      00CA4F F6               [ 1]  526 	ld	a, (x)
      00CA50 6B 02            [ 1]  527 	ld	(0x02, sp), a
      00CA52 84               [ 1]  528 	pop	a
                                    529 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 289: if (NewState != DISABLE)
                                    530 ; genIfx
      00CA53 0D 04            [ 1]  531 	tnz	(0x04, sp)
                                    532 ; peephole j5 changed absolute to relative unconditional jump.
      00CA55 27 07            [ 1]  533 	jreq	00102$
                                    534 ; peephole j10 removed jra by using inverse jump logic
                                    535 ; peephole j30 removed unused label 00134$.
                                    536 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 292: EXTI->CONF1 |= (uint8_t)EXTI_HalfPort;
                                    537 ; genOr
      00CA57 1A 01            [ 1]  538 	or	a, (0x01, sp)
                                    539 ; genPointerSet
      00CA59 C7 50 A5         [ 1]  540 	ld	0x50a5, a
                                    541 ; genGoto
      00CA5C 20 23            [ 2]  542 	jra	00110$
                                    543 ; peephole j5 changed absolute to relative unconditional jump.
                                    544 ; genLabel
      00CA5E                        545 00102$:
                                    546 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 297: EXTI->CONF1 &= (uint8_t)(~(uint8_t)EXTI_HalfPort);
                                    547 ; genCpl
      00CA5E 43               [ 1]  548 	cpl	a
                                    549 ; genAnd
      00CA5F 14 01            [ 1]  550 	and	a, (0x01, sp)
                                    551 ; genPointerSet
      00CA61 C7 50 A5         [ 1]  552 	ld	0x50a5, a
                                    553 ; genGoto
      00CA64 20 1B            [ 2]  554 	jra	00110$
                                    555 ; peephole j5 changed absolute to relative unconditional jump.
                                    556 ; genLabel
      00CA66                        557 00108$:
                                    558 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 305: EXTI->CONF2 |= (uint8_t)(EXTI_HalfPort & (uint8_t)0x7F);
                                    559 ; genPointerGet
      00CA66 AE 50 AB         [ 2]  560 	ldw	x, #0x50ab
      00CA69 88               [ 1]  561 	push	a
      00CA6A F6               [ 1]  562 	ld	a, (x)
      00CA6B 6B 02            [ 1]  563 	ld	(0x02, sp), a
      00CA6D 84               [ 1]  564 	pop	a
                                    565 ; genAnd
      00CA6E A4 7F            [ 1]  566 	and	a, #0x7f
                                    567 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 302: if (NewState != DISABLE)
                                    568 ; genIfx
      00CA70 0D 04            [ 1]  569 	tnz	(0x04, sp)
                                    570 ; peephole j5 changed absolute to relative unconditional jump.
      00CA72 27 07            [ 1]  571 	jreq	00105$
                                    572 ; peephole j10 removed jra by using inverse jump logic
                                    573 ; peephole j30 removed unused label 00135$.
                                    574 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 305: EXTI->CONF2 |= (uint8_t)(EXTI_HalfPort & (uint8_t)0x7F);
                                    575 ; genOr
      00CA74 1A 01            [ 1]  576 	or	a, (0x01, sp)
                                    577 ; genPointerSet
      00CA76 C7 50 AB         [ 1]  578 	ld	0x50ab, a
                                    579 ; genGoto
      00CA79 20 06            [ 2]  580 	jra	00110$
                                    581 ; peephole j5 changed absolute to relative unconditional jump.
                                    582 ; genLabel
      00CA7B                        583 00105$:
                                    584 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 310: EXTI->CONF2 &= (uint8_t)(~(uint8_t) (EXTI_HalfPort & (uint8_t)0x7F));
                                    585 ; genCpl
      00CA7B 43               [ 1]  586 	cpl	a
                                    587 ; genAnd
      00CA7C 14 01            [ 1]  588 	and	a, (0x01, sp)
                                    589 ; genPointerSet
      00CA7E C7 50 AB         [ 1]  590 	ld	0x50ab, a
                                    591 ; genLabel
      00CA81                        592 00110$:
                                    593 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 313: }
                                    594 ; genEndFunction
      00CA81 84               [ 1]  595 	pop	a
      00CA82 85               [ 2]  596 	popw	x
      00CA83 84               [ 1]  597 	pop	a
      00CA84 FC               [ 2]  598 	jp	(x)
                                    599 ;	Total EXTI_SetHalfPortSelection function size at codegen: 4 bytes.
                                    600 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 338: void EXTI_SetPortSensitivity(EXTI_Port_TypeDef EXTI_Port,
                                    601 ; genLabel
                                    602 ;	-----------------------------------------
                                    603 ;	 function EXTI_SetPortSensitivity
                                    604 ;	-----------------------------------------
                                    605 ;	Register assignment might be sub-optimal.
                                    606 ;	Stack space usage: 1 bytes.
      00CA85                        607 _EXTI_SetPortSensitivity:
      00CA85 88               [ 1]  608 	push	a
                                    609 ; genReceive
                                    610 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 346: if ((EXTI_Port & 0xF0) == 0x00)
                                    611 ; genAnd
      00CA86 97               [ 1]  612 	ld	xl, a
                                    613 ; peephole 4 removed redundant load from xl into a.
      00CA87 A5 F0            [ 1]  614 	bcp	a, #0xf0
                                    615 ; peephole j5 changed absolute to relative unconditional jump.
      00CA89 26 31            [ 1]  616 	jrne	00102$
                                    617 ; peephole j7 removed jra by using inverse jump logic
                                    618 ; peephole j30 removed unused label 00113$.
                                    619 ; skipping generated iCode
                                    620 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 349: EXTI->CR3 &= (uint8_t) (~(uint8_t)((uint8_t)0x03 << EXTI_Port));
                                    621 ; genPointerGet
      00CA8B C6 50 A2         [ 1]  622 	ld	a, 0x50a2
      00CA8E 6B 01            [ 1]  623 	ld	(0x01, sp), a
                                    624 ; genLeftShift
      00CA90 A6 03            [ 1]  625 	ld	a, #0x03
      00CA92 88               [ 1]  626 	push	a
      00CA93 9F               [ 1]  627 	ld	a, xl
      00CA94 4D               [ 1]  628 	tnz	a
      00CA95 27 05            [ 1]  629 	jreq	00115$
      00CA97                        630 00114$:
      00CA97 08 01            [ 1]  631 	sll	(1, sp)
      00CA99 4A               [ 1]  632 	dec	a
      00CA9A 26 FB            [ 1]  633 	jrne	00114$
      00CA9C                        634 00115$:
      00CA9C 84               [ 1]  635 	pop	a
                                    636 ; genCpl
      00CA9D 43               [ 1]  637 	cpl	a
                                    638 ; genAnd
      00CA9E 14 01            [ 1]  639 	and	a, (0x01, sp)
                                    640 ; genPointerSet
      00CAA0 C7 50 A2         [ 1]  641 	ld	0x50a2, a
                                    642 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 351: EXTI->CR3 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Port);
                                    643 ; genPointerGet
      00CAA3 C6 50 A2         [ 1]  644 	ld	a, 0x50a2
                                    645 ; genLeftShift
      00CAA6 88               [ 1]  646 	push	a
      00CAA7 7B 05            [ 1]  647 	ld	a, (0x05, sp)
      00CAA9 6B 02            [ 1]  648 	ld	(0x02, sp), a
      00CAAB 9F               [ 1]  649 	ld	a, xl
      00CAAC 4D               [ 1]  650 	tnz	a
      00CAAD 27 05            [ 1]  651 	jreq	00117$
      00CAAF                        652 00116$:
      00CAAF 08 02            [ 1]  653 	sll	(0x02, sp)
      00CAB1 4A               [ 1]  654 	dec	a
      00CAB2 26 FB            [ 1]  655 	jrne	00116$
      00CAB4                        656 00117$:
      00CAB4 84               [ 1]  657 	pop	a
                                    658 ; genOr
      00CAB5 1A 01            [ 1]  659 	or	a, (0x01, sp)
                                    660 ; genPointerSet
      00CAB7 C7 50 A2         [ 1]  661 	ld	0x50a2, a
                                    662 ; genGoto
      00CABA 20 33            [ 2]  663 	jra	00104$
                                    664 ; peephole j5 changed absolute to relative unconditional jump.
                                    665 ; genLabel
      00CABC                        666 00102$:
                                    667 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 356: EXTI->CR4 &= (uint8_t) (~(uint8_t)((uint8_t)0x03 << (EXTI_Port & 0x0F)));
                                    668 ; genPointerGet
      00CABC C6 50 AA         [ 1]  669 	ld	a, 0x50aa
      00CABF 6B 01            [ 1]  670 	ld	(0x01, sp), a
                                    671 ; genAnd
      00CAC1 9F               [ 1]  672 	ld	a, xl
      00CAC2 A4 0F            [ 1]  673 	and	a, #0x0f
      00CAC4 97               [ 1]  674 	ld	xl, a
                                    675 ; genLeftShift
      00CAC5 A6 03            [ 1]  676 	ld	a, #0x03
      00CAC7 88               [ 1]  677 	push	a
      00CAC8 9F               [ 1]  678 	ld	a, xl
      00CAC9 4D               [ 1]  679 	tnz	a
      00CACA 27 05            [ 1]  680 	jreq	00119$
      00CACC                        681 00118$:
      00CACC 08 01            [ 1]  682 	sll	(1, sp)
      00CACE 4A               [ 1]  683 	dec	a
      00CACF 26 FB            [ 1]  684 	jrne	00118$
      00CAD1                        685 00119$:
      00CAD1 84               [ 1]  686 	pop	a
                                    687 ; genCpl
      00CAD2 43               [ 1]  688 	cpl	a
                                    689 ; genAnd
      00CAD3 14 01            [ 1]  690 	and	a, (0x01, sp)
                                    691 ; genPointerSet
      00CAD5 C7 50 AA         [ 1]  692 	ld	0x50aa, a
                                    693 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 358: EXTI->CR4 |= (uint8_t)(EXTI_Trigger << (EXTI_Port & 0x0F));
                                    694 ; genPointerGet
      00CAD8 C6 50 AA         [ 1]  695 	ld	a, 0x50aa
      00CADB 6B 01            [ 1]  696 	ld	(0x01, sp), a
                                    697 ; genLeftShift
      00CADD 7B 04            [ 1]  698 	ld	a, (0x04, sp)
      00CADF 88               [ 1]  699 	push	a
      00CAE0 9F               [ 1]  700 	ld	a, xl
      00CAE1 4D               [ 1]  701 	tnz	a
      00CAE2 27 05            [ 1]  702 	jreq	00121$
      00CAE4                        703 00120$:
      00CAE4 08 01            [ 1]  704 	sll	(1, sp)
      00CAE6 4A               [ 1]  705 	dec	a
      00CAE7 26 FB            [ 1]  706 	jrne	00120$
      00CAE9                        707 00121$:
      00CAE9 84               [ 1]  708 	pop	a
                                    709 ; genOr
      00CAEA 1A 01            [ 1]  710 	or	a, (0x01, sp)
                                    711 ; genPointerSet
      00CAEC C7 50 AA         [ 1]  712 	ld	0x50aa, a
                                    713 ; genLabel
      00CAEF                        714 00104$:
                                    715 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 360: }
                                    716 ; genEndFunction
      00CAEF 84               [ 1]  717 	pop	a
      00CAF0 85               [ 2]  718 	popw	x
      00CAF1 84               [ 1]  719 	pop	a
      00CAF2 FC               [ 2]  720 	jp	(x)
                                    721 ;	Total EXTI_SetPortSensitivity function size at codegen: 4 bytes.
                                    722 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 376: EXTI_Trigger_TypeDef EXTI_GetPinSensitivity(EXTI_Pin_TypeDef EXTI_Pin)
                                    723 ; genLabel
                                    724 ;	-----------------------------------------
                                    725 ;	 function EXTI_GetPinSensitivity
                                    726 ;	-----------------------------------------
                                    727 ;	Register assignment is optimal.
                                    728 ;	Stack space usage: 0 bytes.
      00CAF3                        729 _EXTI_GetPinSensitivity:
                                    730 ; genReceive
                                    731 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 378: uint8_t value = 0;
                                    732 ; genAssign
      00CAF3 5F               [ 1]  733 	clrw	x
                                    734 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 383: switch (EXTI_Pin)
                                    735 ; genCmpEQorNE
      00CAF4 A1 00            [ 1]  736 	cp	a, #0x00
                                    737 ; peephole j5 changed absolute to relative unconditional jump.
      00CAF6 27 1E            [ 1]  738 	jreq	00101$
                                    739 ; peephole j10 removed jra by using inverse jump logic
                                    740 ; peephole j30 removed unused label 00170$.
                                    741 ; skipping generated iCode
                                    742 ; genCmpEQorNE
      00CAF8 A1 02            [ 1]  743 	cp	a, #0x02
                                    744 ; peephole j5 changed absolute to relative unconditional jump.
      00CAFA 27 22            [ 1]  745 	jreq	00102$
                                    746 ; peephole j10 removed jra by using inverse jump logic
                                    747 ; peephole j30 removed unused label 00173$.
                                    748 ; skipping generated iCode
                                    749 ; genCmpEQorNE
      00CAFC A1 04            [ 1]  750 	cp	a, #0x04
                                    751 ; peephole j5 changed absolute to relative unconditional jump.
      00CAFE 27 28            [ 1]  752 	jreq	00103$
                                    753 ; peephole j10 removed jra by using inverse jump logic
                                    754 ; peephole j30 removed unused label 00176$.
                                    755 ; skipping generated iCode
                                    756 ; genCmpEQorNE
      00CB00 A1 06            [ 1]  757 	cp	a, #0x06
                                    758 ; peephole j5 changed absolute to relative unconditional jump.
      00CB02 27 2F            [ 1]  759 	jreq	00104$
                                    760 ; peephole j10 removed jra by using inverse jump logic
                                    761 ; peephole j30 removed unused label 00179$.
                                    762 ; skipping generated iCode
                                    763 ; genCmpEQorNE
      00CB04 A1 10            [ 1]  764 	cp	a, #0x10
                                    765 ; peephole j5 changed absolute to relative unconditional jump.
      00CB06 27 38            [ 1]  766 	jreq	00105$
                                    767 ; peephole j10 removed jra by using inverse jump logic
                                    768 ; peephole j30 removed unused label 00182$.
                                    769 ; skipping generated iCode
                                    770 ; genCmpEQorNE
      00CB08 A1 12            [ 1]  771 	cp	a, #0x12
                                    772 ; peephole j5 changed absolute to relative unconditional jump.
      00CB0A 27 3C            [ 1]  773 	jreq	00106$
                                    774 ; peephole j10 removed jra by using inverse jump logic
                                    775 ; peephole j30 removed unused label 00185$.
                                    776 ; skipping generated iCode
                                    777 ; genCmpEQorNE
      00CB0C A1 14            [ 1]  778 	cp	a, #0x14
                                    779 ; peephole j5 changed absolute to relative unconditional jump.
      00CB0E 27 42            [ 1]  780 	jreq	00107$
                                    781 ; peephole j10 removed jra by using inverse jump logic
                                    782 ; peephole j30 removed unused label 00188$.
                                    783 ; skipping generated iCode
                                    784 ; genCmpEQorNE
      00CB10 A1 16            [ 1]  785 	cp	a, #0x16
                                    786 ; peephole j5 changed absolute to relative unconditional jump.
      00CB12 27 49            [ 1]  787 	jreq	00108$
                                    788 ; peephole j10 removed jra by using inverse jump logic
                                    789 ; peephole j30 removed unused label 00191$.
                                    790 ; skipping generated iCode
                                    791 ; genGoto
      00CB14 20 52            [ 2]  792 	jra	00110$
                                    793 ; peephole j5 changed absolute to relative unconditional jump.
                                    794 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 385: case EXTI_Pin_0:
                                    795 ; genLabel
      00CB16                        796 00101$:
                                    797 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 386: value = (uint8_t)(EXTI->CR1 & EXTI_CR1_P0IS);
                                    798 ; genPointerGet
      00CB16 C6 50 A0         [ 1]  799 	ld	a, 0x50a0
                                    800 ; genAnd
      00CB19 A4 03            [ 1]  801 	and	a, #0x03
      00CB1B 97               [ 1]  802 	ld	xl, a
                                    803 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 387: break;
                                    804 ; genGoto
      00CB1C 20 4A            [ 2]  805 	jra	00110$
                                    806 ; peephole j5 changed absolute to relative unconditional jump.
                                    807 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 388: case EXTI_Pin_1:
                                    808 ; genLabel
      00CB1E                        809 00102$:
                                    810 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 389: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_P1IS) >> EXTI_Pin_1);
                                    811 ; genPointerGet
      00CB1E C6 50 A0         [ 1]  812 	ld	a, 0x50a0
                                    813 ; genAnd
      00CB21 A4 0C            [ 1]  814 	and	a, #0x0c
                                    815 ; genRightShiftLiteral
      00CB23 44               [ 1]  816 	srl	a
      00CB24 44               [ 1]  817 	srl	a
      00CB25 97               [ 1]  818 	ld	xl, a
                                    819 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 390: break;
                                    820 ; genGoto
      00CB26 20 40            [ 2]  821 	jra	00110$
                                    822 ; peephole j5 changed absolute to relative unconditional jump.
                                    823 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 391: case EXTI_Pin_2:
                                    824 ; genLabel
      00CB28                        825 00103$:
                                    826 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 392: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_P2IS) >> EXTI_Pin_2);
                                    827 ; genPointerGet
      00CB28 C6 50 A0         [ 1]  828 	ld	a, 0x50a0
                                    829 ; genAnd
      00CB2B A4 30            [ 1]  830 	and	a, #0x30
                                    831 ; genRightShiftLiteral
      00CB2D 4E               [ 1]  832 	swap	a
      00CB2E A4 0F            [ 1]  833 	and	a, #0x0f
      00CB30 97               [ 1]  834 	ld	xl, a
                                    835 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 393: break;
                                    836 ; genGoto
      00CB31 20 35            [ 2]  837 	jra	00110$
                                    838 ; peephole j5 changed absolute to relative unconditional jump.
                                    839 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 394: case EXTI_Pin_3:
                                    840 ; genLabel
      00CB33                        841 00104$:
                                    842 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 395: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_P3IS) >> EXTI_Pin_3);
                                    843 ; genPointerGet
      00CB33 C6 50 A0         [ 1]  844 	ld	a, 0x50a0
                                    845 ; genAnd
      00CB36 A4 C0            [ 1]  846 	and	a, #0xc0
                                    847 ; genRightShiftLiteral
      00CB38 4E               [ 1]  848 	swap	a
      00CB39 A4 0F            [ 1]  849 	and	a, #0x0f
      00CB3B 44               [ 1]  850 	srl	a
      00CB3C 44               [ 1]  851 	srl	a
      00CB3D 97               [ 1]  852 	ld	xl, a
                                    853 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 396: break;
                                    854 ; genGoto
      00CB3E 20 28            [ 2]  855 	jra	00110$
                                    856 ; peephole j5 changed absolute to relative unconditional jump.
                                    857 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 397: case EXTI_Pin_4:
                                    858 ; genLabel
      00CB40                        859 00105$:
                                    860 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 398: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_P4IS);
                                    861 ; genPointerGet
      00CB40 C6 50 A1         [ 1]  862 	ld	a, 0x50a1
                                    863 ; genAnd
      00CB43 A4 03            [ 1]  864 	and	a, #0x03
      00CB45 97               [ 1]  865 	ld	xl, a
                                    866 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 399: break;
                                    867 ; genGoto
      00CB46 20 20            [ 2]  868 	jra	00110$
                                    869 ; peephole j5 changed absolute to relative unconditional jump.
                                    870 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 400: case EXTI_Pin_5:
                                    871 ; genLabel
      00CB48                        872 00106$:
                                    873 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 401: value = (uint8_t)((uint8_t)(EXTI->CR2 & EXTI_CR2_P5IS) >> ((uint8_t)EXTI_Pin_5 & (uint8_t)0x0F));
                                    874 ; genPointerGet
      00CB48 C6 50 A1         [ 1]  875 	ld	a, 0x50a1
                                    876 ; genAnd
      00CB4B A4 0C            [ 1]  877 	and	a, #0x0c
                                    878 ; genRightShiftLiteral
      00CB4D 44               [ 1]  879 	srl	a
      00CB4E 44               [ 1]  880 	srl	a
      00CB4F 97               [ 1]  881 	ld	xl, a
                                    882 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 402: break;
                                    883 ; genGoto
      00CB50 20 16            [ 2]  884 	jra	00110$
                                    885 ; peephole j5 changed absolute to relative unconditional jump.
                                    886 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 403: case EXTI_Pin_6:
                                    887 ; genLabel
      00CB52                        888 00107$:
                                    889 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 404: value = (uint8_t)((uint8_t)(EXTI->CR2 & EXTI_CR2_P6IS) >> ((uint8_t)EXTI_Pin_6 & (uint8_t)0x0F));
                                    890 ; genPointerGet
      00CB52 C6 50 A1         [ 1]  891 	ld	a, 0x50a1
                                    892 ; genAnd
      00CB55 A4 30            [ 1]  893 	and	a, #0x30
                                    894 ; genRightShiftLiteral
      00CB57 4E               [ 1]  895 	swap	a
      00CB58 A4 0F            [ 1]  896 	and	a, #0x0f
      00CB5A 97               [ 1]  897 	ld	xl, a
                                    898 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 405: break;
                                    899 ; genGoto
      00CB5B 20 0B            [ 2]  900 	jra	00110$
                                    901 ; peephole j5 changed absolute to relative unconditional jump.
                                    902 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 406: case EXTI_Pin_7:
                                    903 ; genLabel
      00CB5D                        904 00108$:
                                    905 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 407: value = (uint8_t)((uint8_t)(EXTI->CR2 & EXTI_CR2_P7IS) >> ((uint8_t)EXTI_Pin_7 & (uint8_t)0x0F));
                                    906 ; genPointerGet
      00CB5D C6 50 A1         [ 1]  907 	ld	a, 0x50a1
                                    908 ; genAnd
      00CB60 A4 C0            [ 1]  909 	and	a, #0xc0
                                    910 ; genRightShiftLiteral
      00CB62 4E               [ 1]  911 	swap	a
      00CB63 A4 0F            [ 1]  912 	and	a, #0x0f
      00CB65 44               [ 1]  913 	srl	a
      00CB66 44               [ 1]  914 	srl	a
      00CB67 97               [ 1]  915 	ld	xl, a
                                    916 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 411: }
                                    917 ; genLabel
      00CB68                        918 00110$:
                                    919 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 412: return((EXTI_Trigger_TypeDef)value);
                                    920 ; genReturn
      00CB68 9F               [ 1]  921 	ld	a, xl
                                    922 ; genLabel
                                    923 ; peephole j30 removed unused label 00111$.
                                    924 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 413: }
                                    925 ; genEndFunction
      00CB69 81               [ 4]  926 	ret
                                    927 ;	Total EXTI_GetPinSensitivity function size at codegen: 1 bytes.
                                    928 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 427: EXTI_Trigger_TypeDef EXTI_GetPortSensitivity(EXTI_Port_TypeDef EXTI_Port)
                                    929 ; genLabel
                                    930 ;	-----------------------------------------
                                    931 ;	 function EXTI_GetPortSensitivity
                                    932 ;	-----------------------------------------
                                    933 ;	Register assignment might be sub-optimal.
                                    934 ;	Stack space usage: 0 bytes.
      00CB6A                        935 _EXTI_GetPortSensitivity:
                                    936 ; genReceive
                                    937 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 435: if ((EXTI_Port & 0xF0) == 0x00)
                                    938 ; genAnd
      00CB6A 97               [ 1]  939 	ld	xl, a
                                    940 ; peephole 4 removed redundant load from xl into a.
      00CB6B A5 F0            [ 1]  941 	bcp	a, #0xf0
                                    942 ; peephole j5 changed absolute to relative unconditional jump.
      00CB6D 26 11            [ 1]  943 	jrne	00102$
                                    944 ; peephole j7 removed jra by using inverse jump logic
                                    945 ; peephole j30 removed unused label 00113$.
                                    946 ; skipping generated iCode
                                    947 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 438: portsensitivity = (uint8_t)((uint8_t)0x03 & (uint8_t)(EXTI->CR3 >> EXTI_Port));
                                    948 ; genPointerGet
      00CB6F C6 50 A2         [ 1]  949 	ld	a, 0x50a2
                                    950 ; genRightShift
      00CB72 88               [ 1]  951 	push	a
      00CB73 9F               [ 1]  952 	ld	a, xl
      00CB74 4D               [ 1]  953 	tnz	a
      00CB75 27 05            [ 1]  954 	jreq	00115$
      00CB77                        955 00114$:
      00CB77 04 01            [ 1]  956 	srl	(1, sp)
      00CB79 4A               [ 1]  957 	dec	a
      00CB7A 26 FB            [ 1]  958 	jrne	00114$
      00CB7C                        959 00115$:
      00CB7C 84               [ 1]  960 	pop	a
                                    961 ; genAnd
      00CB7D A4 03            [ 1]  962 	and	a, #0x03
                                    963 ; genGoto
      00CB7F 81               [ 4]  964 	ret
                                    965 ; peephole j2e replaced jump by return.
                                    966 ; genLabel
      00CB80                        967 00102$:
                                    968 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 444: portsensitivity = (uint8_t)((uint8_t)0x03 & (uint8_t)(EXTI->CR4 >> (EXTI_Port & 0x0F)));
                                    969 ; genPointerGet
      00CB80 C6 50 AA         [ 1]  970 	ld	a, 0x50aa
      00CB83 95               [ 1]  971 	ld	xh, a
                                    972 ; genAnd
      00CB84 9F               [ 1]  973 	ld	a, xl
                                    974 ; genRightShift
      00CB85 A4 0F            [ 1]  975 	and	a, #0x0f
                                    976 ; peephole 23 removed redundant tnz.
      00CB87 27 06            [ 1]  977 	jreq	00117$
      00CB89                        978 00116$:
      00CB89 02               [ 1]  979 	rlwa	x
      00CB8A 44               [ 1]  980 	srl	a
      00CB8B 01               [ 1]  981 	rrwa	x
      00CB8C 4A               [ 1]  982 	dec	a
      00CB8D 26 FA            [ 1]  983 	jrne	00116$
      00CB8F                        984 00117$:
                                    985 ; genAnd
      00CB8F 9E               [ 1]  986 	ld	a, xh
      00CB90 A4 03            [ 1]  987 	and	a, #0x03
                                    988 ; genLabel
                                    989 ; peephole j30 removed unused label 00103$.
                                    990 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 447: return((EXTI_Trigger_TypeDef)portsensitivity);
                                    991 ; genReturn
                                    992 ; genLabel
                                    993 ; peephole j30 removed unused label 00104$.
                                    994 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 448: }
                                    995 ; genEndFunction
      00CB92 81               [ 4]  996 	ret
                                    997 ;	Total EXTI_GetPortSensitivity function size at codegen: 1 bytes.
                                    998 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 487: ITStatus EXTI_GetITStatus(EXTI_IT_TypeDef EXTI_IT)
                                    999 ; genLabel
                                   1000 ;	-----------------------------------------
                                   1001 ;	 function EXTI_GetITStatus
                                   1002 ;	-----------------------------------------
                                   1003 ;	Register assignment might be sub-optimal.
                                   1004 ;	Stack space usage: 1 bytes.
      00CB93                       1005 _EXTI_GetITStatus:
      00CB93 88               [ 1] 1006 	push	a
                                   1007 ; genReceive
                                   1008 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 493: if (((uint16_t)EXTI_IT & (uint16_t)0xFF00) == 0x0100)
                                   1009 ; genCast
                                   1010 ; genAssign
                                   1011 ; peephole 5w replaced exgw-ldw by ldw.
      00CB94 90 93            [ 1] 1012 	ldw	y, x
                                   1013 ; genAnd
      00CB96 4F               [ 1] 1014 	clr	a
                                   1015 ; genCast
                                   1016 ; genAssign
                                   1017 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 495: status = (ITStatus)(EXTI->SR2 & (uint8_t)((uint16_t)EXTI_IT & (uint16_t)0x00FF));
                                   1018 ; genCast
                                   1019 ; genAssign
      00CB97 61               [ 1] 1020 	exg	a, yl
      00CB98 6B 01            [ 1] 1021 	ld	(0x01, sp), a
      00CB9A 61               [ 1] 1022 	exg	a, yl
                                   1023 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 493: if (((uint16_t)EXTI_IT & (uint16_t)0xFF00) == 0x0100)
                                   1024 ; genCmpEQorNE
      00CB9B 97               [ 1] 1025 	ld	xl, a
      00CB9C A3 01 00         [ 2] 1026 	cpw	x, #0x0100
                                   1027 ; peephole j5 changed absolute to relative unconditional jump.
                                   1028 ; peephole j10 removed jra by using inverse jump logic
                                   1029 ; peephole j30 removed unused label 00114$.
                                   1030 ; peephole j5 changed absolute to relative unconditional jump.
      00CB9F 26 0A            [ 1] 1031 	jrne	00102$
                                   1032 ; peephole j7 removed jra by using inverse jump logic
                                   1033 ; peephole j30 removed unused label 00115$.
                                   1034 ; skipping generated iCode
                                   1035 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 495: status = (ITStatus)(EXTI->SR2 & (uint8_t)((uint16_t)EXTI_IT & (uint16_t)0x00FF));
                                   1036 ; genPointerGet
      00CBA1 C6 50 A4         [ 1] 1037 	ld	a, 0x50a4
                                   1038 ; genAnd
      00CBA4 14 01            [ 1] 1039 	and	a, (0x01, sp)
                                   1040 ; genCast
      00CBA6 40               [ 1] 1041 	neg	a
      00CBA7 4F               [ 1] 1042 	clr	a
      00CBA8 49               [ 1] 1043 	rlc	a
                                   1044 ; genGoto
      00CBA9 20 08            [ 2] 1045 	jra	00103$
                                   1046 ; peephole j5 changed absolute to relative unconditional jump.
                                   1047 ; genLabel
      00CBAB                       1048 00102$:
                                   1049 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 499: status = (ITStatus)(EXTI->SR1 & ((uint8_t)((uint16_t)EXTI_IT & (uint16_t)0x00FF)));
                                   1050 ; genPointerGet
      00CBAB C6 50 A3         [ 1] 1051 	ld	a, 0x50a3
                                   1052 ; genAnd
      00CBAE 14 01            [ 1] 1053 	and	a, (0x01, sp)
                                   1054 ; genCast
      00CBB0 40               [ 1] 1055 	neg	a
      00CBB1 4F               [ 1] 1056 	clr	a
      00CBB2 49               [ 1] 1057 	rlc	a
                                   1058 ; genLabel
      00CBB3                       1059 00103$:
                                   1060 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 501: return((ITStatus)status);
                                   1061 ; genReturn
                                   1062 ; genLabel
                                   1063 ; peephole j30 removed unused label 00104$.
                                   1064 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 502: }
                                   1065 ; genEndFunction
      00CBB3 5B 01            [ 2] 1066 	addw	sp, #1
      00CBB5 81               [ 4] 1067 	ret
                                   1068 ;	Total EXTI_GetITStatus function size at codegen: 3 bytes.
                                   1069 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 524: void EXTI_ClearITPendingBit(EXTI_IT_TypeDef EXTI_IT)
                                   1070 ; genLabel
                                   1071 ;	-----------------------------------------
                                   1072 ;	 function EXTI_ClearITPendingBit
                                   1073 ;	-----------------------------------------
                                   1074 ;	Register assignment might be sub-optimal.
                                   1075 ;	Stack space usage: 0 bytes.
      00CBB6                       1076 _EXTI_ClearITPendingBit:
                                   1077 ; genReceive
                                   1078 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 531: tempvalue = ((uint16_t)EXTI_IT & (uint16_t)0xFF00);
                                   1079 ; genCast
                                   1080 ; genAssign
      00CBB6 90 93            [ 1] 1081 	ldw	y, x
                                   1082 ; genAnd
      00CBB8 4F               [ 1] 1083 	clr	a
                                   1084 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 533: if ( tempvalue == 0x0100)
                                   1085 ; genCast
                                   1086 ; genAssign
      00CBB9 90 97            [ 1] 1087 	ld	yl, a
                                   1088 ; genCmpEQorNE
      00CBBB 90 A3 01 00      [ 2] 1089 	cpw	y, #0x0100
                                   1090 ; peephole j5 changed absolute to relative unconditional jump.
                                   1091 ; peephole j10 removed jra by using inverse jump logic
                                   1092 ; peephole j30 removed unused label 00114$.
                                   1093 ; peephole j5 changed absolute to relative unconditional jump.
      00CBBF 26 05            [ 1] 1094 	jrne	00102$
                                   1095 ; peephole j7 removed jra by using inverse jump logic
                                   1096 ; peephole j30 removed unused label 00115$.
                                   1097 ; skipping generated iCode
                                   1098 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 535: EXTI->SR2 = (uint8_t)((uint16_t)EXTI_IT & (uint16_t)0x00FF);
                                   1099 ; genCast
                                   1100 ; genAssign
      00CBC1 9F               [ 1] 1101 	ld	a, xl
                                   1102 ; genPointerSet
      00CBC2 C7 50 A4         [ 1] 1103 	ld	0x50a4, a
                                   1104 ; genGoto
      00CBC5 81               [ 4] 1105 	ret
                                   1106 ; peephole j2e replaced jump by return.
                                   1107 ; genLabel
      00CBC6                       1108 00102$:
                                   1109 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 539: EXTI->SR1 = (uint8_t) (EXTI_IT);
                                   1110 ; genCast
                                   1111 ; genAssign
      00CBC6 9F               [ 1] 1112 	ld	a, xl
                                   1113 ; genPointerSet
      00CBC7 C7 50 A3         [ 1] 1114 	ld	0x50a3, a
                                   1115 ; genLabel
                                   1116 ; peephole j30 removed unused label 00104$.
                                   1117 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_exti.c: 541: }
                                   1118 ; genEndFunction
      00CBCA 81               [ 4] 1119 	ret
                                   1120 ;	Total EXTI_ClearITPendingBit function size at codegen: 1 bytes.
                                   1121 	.area CODE
                                   1122 	.area CONST
                                   1123 	.area INITIALIZER
                                   1124 	.area CABS (ABS)
