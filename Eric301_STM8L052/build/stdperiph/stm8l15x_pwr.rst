                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8l15x_pwr
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _PWR_DeInit
                                     11 	.globl _PWR_PVDLevelConfig
                                     12 	.globl _PWR_PVDCmd
                                     13 	.globl _PWR_FastWakeUpCmd
                                     14 	.globl _PWR_UltraLowPowerCmd
                                     15 	.globl _PWR_PVDITConfig
                                     16 	.globl _PWR_GetFlagStatus
                                     17 	.globl _PWR_PVDClearFlag
                                     18 	.globl _PWR_PVDGetITStatus
                                     19 	.globl _PWR_PVDClearITPendingBit
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area DATA
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area INITIALIZED
                                     28 ;--------------------------------------------------------
                                     29 ; absolute external ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area DABS (ABS)
                                     32 
                                     33 ; default segment ordering for linker
                                     34 	.area HOME
                                     35 	.area GSINIT
                                     36 	.area GSFINAL
                                     37 	.area CONST
                                     38 	.area INITIALIZER
                                     39 	.area CODE
                                     40 
                                     41 ;--------------------------------------------------------
                                     42 ; global & static initialisations
                                     43 ;--------------------------------------------------------
                                     44 	.area HOME
                                     45 	.area GSINIT
                                     46 	.area GSFINAL
                                     47 	.area GSINIT
                                     48 ;--------------------------------------------------------
                                     49 ; Home
                                     50 ;--------------------------------------------------------
                                     51 	.area HOME
                                     52 	.area HOME
                                     53 ;--------------------------------------------------------
                                     54 ; code
                                     55 ;--------------------------------------------------------
                                     56 	.area CODE
                                     57 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 82: void PWR_DeInit(void)
                                     58 ; genLabel
                                     59 ;	-----------------------------------------
                                     60 ;	 function PWR_DeInit
                                     61 ;	-----------------------------------------
                                     62 ;	Register assignment is optimal.
                                     63 ;	Stack space usage: 0 bytes.
      00D4F0                         64 _PWR_DeInit:
                                     65 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 84: PWR->CSR1 = PWR_CSR1_PVDIF;
                                     66 ; genPointerSet
      00D4F0 35 20 50 B2      [ 1]   67 	mov	0x50b2+0, #0x20
                                     68 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 85: PWR->CSR2 = PWR_CSR2_RESET_VALUE;
                                     69 ; genPointerSet
      00D4F4 35 00 50 B3      [ 1]   70 	mov	0x50b3+0, #0x00
                                     71 ; genLabel
                                     72 ; peephole j30 removed unused label 00101$.
                                     73 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 86: }
                                     74 ; genEndFunction
      00D4F8 81               [ 4]   75 	ret
                                     76 ;	Total PWR_DeInit function size at codegen: 1 bytes.
                                     77 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 102: void PWR_PVDLevelConfig(PWR_PVDLevel_TypeDef PWR_PVDLevel)
                                     78 ; genLabel
                                     79 ;	-----------------------------------------
                                     80 ;	 function PWR_PVDLevelConfig
                                     81 ;	-----------------------------------------
                                     82 ;	Register assignment is optimal.
                                     83 ;	Stack space usage: 1 bytes.
      00D4F9                         84 _PWR_PVDLevelConfig:
      00D4F9 88               [ 1]   85 	push	a
                                     86 ; genReceive
      00D4FA 6B 01            [ 1]   87 	ld	(0x01, sp), a
                                     88 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 108: PWR->CSR1 &= (uint8_t)(~PWR_CSR1_PLS);
                                     89 ; genPointerGet
      00D4FC C6 50 B2         [ 1]   90 	ld	a, 0x50b2
                                     91 ; genAnd
      00D4FF A4 F1            [ 1]   92 	and	a, #0xf1
                                     93 ; genPointerSet
      00D501 C7 50 B2         [ 1]   94 	ld	0x50b2, a
                                     95 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 111: PWR->CSR1 |= PWR_PVDLevel;
                                     96 ; genPointerGet
      00D504 C6 50 B2         [ 1]   97 	ld	a, 0x50b2
                                     98 ; genOr
      00D507 1A 01            [ 1]   99 	or	a, (0x01, sp)
                                    100 ; genPointerSet
      00D509 C7 50 B2         [ 1]  101 	ld	0x50b2, a
                                    102 ; genLabel
                                    103 ; peephole j30 removed unused label 00101$.
                                    104 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 113: }
                                    105 ; genEndFunction
      00D50C 84               [ 1]  106 	pop	a
      00D50D 81               [ 4]  107 	ret
                                    108 ;	Total PWR_PVDLevelConfig function size at codegen: 2 bytes.
                                    109 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 121: void PWR_PVDCmd(FunctionalState NewState)
                                    110 ; genLabel
                                    111 ;	-----------------------------------------
                                    112 ;	 function PWR_PVDCmd
                                    113 ;	-----------------------------------------
                                    114 ;	Register assignment is optimal.
                                    115 ;	Stack space usage: 1 bytes.
      00D50E                        116 _PWR_PVDCmd:
      00D50E 88               [ 1]  117 	push	a
                                    118 ; genReceive
      00D50F 6B 01            [ 1]  119 	ld	(0x01, sp), a
                                    120 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 129: PWR->CSR1 |= PWR_CSR1_PVDE;
                                    121 ; genPointerGet
      00D511 C6 50 B2         [ 1]  122 	ld	a, 0x50b2
                                    123 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 126: if (NewState != DISABLE)
                                    124 ; genIfx
      00D514 0D 01            [ 1]  125 	tnz	(0x01, sp)
                                    126 ; peephole j5 changed absolute to relative unconditional jump.
      00D516 27 07            [ 1]  127 	jreq	00102$
                                    128 ; peephole j10 removed jra by using inverse jump logic
                                    129 ; peephole j30 removed unused label 00113$.
                                    130 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 129: PWR->CSR1 |= PWR_CSR1_PVDE;
                                    131 ; genOr
      00D518 AA 01            [ 1]  132 	or	a, #0x01
                                    133 ; genPointerSet
      00D51A C7 50 B2         [ 1]  134 	ld	0x50b2, a
                                    135 ; genGoto
      00D51D 20 05            [ 2]  136 	jra	00104$
                                    137 ; peephole j5 changed absolute to relative unconditional jump.
                                    138 ; genLabel
      00D51F                        139 00102$:
                                    140 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 134: PWR->CSR1 &= (uint8_t)(~PWR_CSR1_PVDE);
                                    141 ; genAnd
      00D51F A4 FE            [ 1]  142 	and	a, #0xfe
                                    143 ; genPointerSet
      00D521 C7 50 B2         [ 1]  144 	ld	0x50b2, a
                                    145 ; genLabel
      00D524                        146 00104$:
                                    147 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 136: }
                                    148 ; genEndFunction
      00D524 84               [ 1]  149 	pop	a
      00D525 81               [ 4]  150 	ret
                                    151 ;	Total PWR_PVDCmd function size at codegen: 2 bytes.
                                    152 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 171: void PWR_FastWakeUpCmd(FunctionalState NewState)
                                    153 ; genLabel
                                    154 ;	-----------------------------------------
                                    155 ;	 function PWR_FastWakeUpCmd
                                    156 ;	-----------------------------------------
                                    157 ;	Register assignment is optimal.
                                    158 ;	Stack space usage: 1 bytes.
      00D526                        159 _PWR_FastWakeUpCmd:
      00D526 88               [ 1]  160 	push	a
                                    161 ; genReceive
      00D527 6B 01            [ 1]  162 	ld	(0x01, sp), a
                                    163 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 179: PWR->CSR2 |= PWR_CSR2_FWU;
                                    164 ; genPointerGet
      00D529 C6 50 B3         [ 1]  165 	ld	a, 0x50b3
                                    166 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 176: if (NewState != DISABLE)
                                    167 ; genIfx
      00D52C 0D 01            [ 1]  168 	tnz	(0x01, sp)
                                    169 ; peephole j5 changed absolute to relative unconditional jump.
      00D52E 27 07            [ 1]  170 	jreq	00102$
                                    171 ; peephole j10 removed jra by using inverse jump logic
                                    172 ; peephole j30 removed unused label 00113$.
                                    173 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 179: PWR->CSR2 |= PWR_CSR2_FWU;
                                    174 ; genOr
      00D530 AA 04            [ 1]  175 	or	a, #0x04
                                    176 ; genPointerSet
      00D532 C7 50 B3         [ 1]  177 	ld	0x50b3, a
                                    178 ; genGoto
      00D535 20 05            [ 2]  179 	jra	00104$
                                    180 ; peephole j5 changed absolute to relative unconditional jump.
                                    181 ; genLabel
      00D537                        182 00102$:
                                    183 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 184: PWR->CSR2 &= (uint8_t)(~PWR_CSR2_FWU);
                                    184 ; genAnd
      00D537 A4 FB            [ 1]  185 	and	a, #0xfb
                                    186 ; genPointerSet
      00D539 C7 50 B3         [ 1]  187 	ld	0x50b3, a
                                    188 ; genLabel
      00D53C                        189 00104$:
                                    190 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 186: }
                                    191 ; genEndFunction
      00D53C 84               [ 1]  192 	pop	a
      00D53D 81               [ 4]  193 	ret
                                    194 ;	Total PWR_FastWakeUpCmd function size at codegen: 2 bytes.
                                    195 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 194: void PWR_UltraLowPowerCmd(FunctionalState NewState)
                                    196 ; genLabel
                                    197 ;	-----------------------------------------
                                    198 ;	 function PWR_UltraLowPowerCmd
                                    199 ;	-----------------------------------------
                                    200 ;	Register assignment is optimal.
                                    201 ;	Stack space usage: 1 bytes.
      00D53E                        202 _PWR_UltraLowPowerCmd:
      00D53E 88               [ 1]  203 	push	a
                                    204 ; genReceive
      00D53F 6B 01            [ 1]  205 	ld	(0x01, sp), a
                                    206 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 202: PWR->CSR2 |= PWR_CSR2_ULP;
                                    207 ; genPointerGet
      00D541 C6 50 B3         [ 1]  208 	ld	a, 0x50b3
                                    209 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 199: if (NewState != DISABLE)
                                    210 ; genIfx
      00D544 0D 01            [ 1]  211 	tnz	(0x01, sp)
                                    212 ; peephole j5 changed absolute to relative unconditional jump.
      00D546 27 07            [ 1]  213 	jreq	00102$
                                    214 ; peephole j10 removed jra by using inverse jump logic
                                    215 ; peephole j30 removed unused label 00113$.
                                    216 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 202: PWR->CSR2 |= PWR_CSR2_ULP;
                                    217 ; genOr
      00D548 AA 02            [ 1]  218 	or	a, #0x02
                                    219 ; genPointerSet
      00D54A C7 50 B3         [ 1]  220 	ld	0x50b3, a
                                    221 ; genGoto
      00D54D 20 05            [ 2]  222 	jra	00104$
                                    223 ; peephole j5 changed absolute to relative unconditional jump.
                                    224 ; genLabel
      00D54F                        225 00102$:
                                    226 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 207: PWR->CSR2 &= (uint8_t)(~PWR_CSR2_ULP);
                                    227 ; genAnd
      00D54F A4 FD            [ 1]  228 	and	a, #0xfd
                                    229 ; genPointerSet
      00D551 C7 50 B3         [ 1]  230 	ld	0x50b3, a
                                    231 ; genLabel
      00D554                        232 00104$:
                                    233 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 209: }
                                    234 ; genEndFunction
      00D554 84               [ 1]  235 	pop	a
      00D555 81               [ 4]  236 	ret
                                    237 ;	Total PWR_UltraLowPowerCmd function size at codegen: 2 bytes.
                                    238 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 232: void PWR_PVDITConfig(FunctionalState NewState)
                                    239 ; genLabel
                                    240 ;	-----------------------------------------
                                    241 ;	 function PWR_PVDITConfig
                                    242 ;	-----------------------------------------
                                    243 ;	Register assignment is optimal.
                                    244 ;	Stack space usage: 1 bytes.
      00D556                        245 _PWR_PVDITConfig:
      00D556 88               [ 1]  246 	push	a
                                    247 ; genReceive
      00D557 6B 01            [ 1]  248 	ld	(0x01, sp), a
                                    249 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 240: PWR->CSR1 |= PWR_CSR1_PVDIEN;
                                    250 ; genPointerGet
      00D559 C6 50 B2         [ 1]  251 	ld	a, 0x50b2
                                    252 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 237: if (NewState != DISABLE)
                                    253 ; genIfx
      00D55C 0D 01            [ 1]  254 	tnz	(0x01, sp)
                                    255 ; peephole j5 changed absolute to relative unconditional jump.
      00D55E 27 07            [ 1]  256 	jreq	00102$
                                    257 ; peephole j10 removed jra by using inverse jump logic
                                    258 ; peephole j30 removed unused label 00113$.
                                    259 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 240: PWR->CSR1 |= PWR_CSR1_PVDIEN;
                                    260 ; genOr
      00D560 AA 10            [ 1]  261 	or	a, #0x10
                                    262 ; genPointerSet
      00D562 C7 50 B2         [ 1]  263 	ld	0x50b2, a
                                    264 ; genGoto
      00D565 20 05            [ 2]  265 	jra	00104$
                                    266 ; peephole j5 changed absolute to relative unconditional jump.
                                    267 ; genLabel
      00D567                        268 00102$:
                                    269 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 245: PWR->CSR1 &= (uint8_t)(~PWR_CSR1_PVDIEN);
                                    270 ; genAnd
      00D567 A4 EF            [ 1]  271 	and	a, #0xef
                                    272 ; genPointerSet
      00D569 C7 50 B2         [ 1]  273 	ld	0x50b2, a
                                    274 ; genLabel
      00D56C                        275 00104$:
                                    276 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 247: }
                                    277 ; genEndFunction
      00D56C 84               [ 1]  278 	pop	a
      00D56D 81               [ 4]  279 	ret
                                    280 ;	Total PWR_PVDITConfig function size at codegen: 2 bytes.
                                    281 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 261: FlagStatus PWR_GetFlagStatus(PWR_FLAG_TypeDef PWR_FLAG)
                                    282 ; genLabel
                                    283 ;	-----------------------------------------
                                    284 ;	 function PWR_GetFlagStatus
                                    285 ;	-----------------------------------------
                                    286 ;	Register assignment is optimal.
                                    287 ;	Stack space usage: 1 bytes.
      00D56E                        288 _PWR_GetFlagStatus:
      00D56E 88               [ 1]  289 	push	a
                                    290 ; genReceive
                                    291 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 268: if ((PWR_FLAG & PWR_FLAG_VREFINTF) != 0)
                                    292 ; genAnd
      00D56F 6B 01            [ 1]  293 	ld	(0x01, sp), a
                                    294 ; peephole 4a removed redundant load from (0x01, sp) into a.
      00D571 44               [ 1]  295 	srl	a
                                    296 ; peephole j5 changed absolute to relative unconditional jump.
      00D572 24 0C            [ 1]  297 	jrnc	00108$
                                    298 ; peephole j6 removed jra by using inverse jump logic
                                    299 ; peephole j30 removed unused label 00133$.
                                    300 ; skipping generated iCode
                                    301 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 270: if ((PWR->CSR2 & PWR_CR2_VREFINTF) != (uint8_t)RESET )
                                    302 ; genPointerGet
                                    303 ; genAnd
                                    304 ; peephole j540x replaced 'ld-srl-jrc' by 'btjt' ('0x50b3').
                                    305 ; peephole j5 changed absolute to relative unconditional jump.
      00D574 72 01 50 B3 04   [ 2]  306 	btjf	0x50b3, #0, 00102$
                                    307 ; peephole j33 removed jra by using inverse bit-test-jump logic
                                    308 ; peephole j30 removed unused label 00134$.
                                    309 ; skipping generated iCode
                                    310 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 272: bitstatus = SET;
                                    311 ; genAssign
      00D579 A6 01            [ 1]  312 	ld	a, #0x01
                                    313 ; genGoto
      00D57B 20 0E            [ 2]  314 	jra	00109$
                                    315 ; peephole j5 changed absolute to relative unconditional jump.
                                    316 ; genLabel
      00D57D                        317 00102$:
                                    318 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 276: bitstatus = RESET;
                                    319 ; genAssign
      00D57D 4F               [ 1]  320 	clr	a
                                    321 ; genGoto
      00D57E 20 0B            [ 2]  322 	jra	00109$
                                    323 ; peephole j5 changed absolute to relative unconditional jump.
                                    324 ; genLabel
      00D580                        325 00108$:
                                    326 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 281: if ((PWR->CSR1 & PWR_FLAG) != (uint8_t)RESET )
                                    327 ; genPointerGet
      00D580 C6 50 B2         [ 1]  328 	ld	a, 0x50b2
                                    329 ; genAnd
                                    330 ; genIfx
      00D583 14 01            [ 1]  331 	and	a, (0x01, sp)
                                    332 ; peephole 23 removed redundant tnz.
                                    333 ; peephole j5 changed absolute to relative unconditional jump.
      00D585 27 03            [ 1]  334 	jreq	00105$
                                    335 ; peephole j10 removed jra by using inverse jump logic
                                    336 ; peephole j30 removed unused label 00135$.
                                    337 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 283: bitstatus = SET;
                                    338 ; genAssign
      00D587 A6 01            [ 1]  339 	ld	a, #0x01
                                    340 ; genGoto
                                    341 ; peephole j5 changed absolute to relative unconditional jump.
                                    342 ; genLabel
                                    343 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 287: bitstatus = RESET;
                                    344 ; genAssign
                                    345 ; genLabel
      00D589 21                     346 	.byte 0x21
                                    347 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00D58A                        348 00105$:
      00D58A 4F               [ 1]  349 	clr	a
      00D58B                        350 00109$:
                                    351 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 292: return((FlagStatus)bitstatus);
                                    352 ; genReturn
                                    353 ; genLabel
                                    354 ; peephole j30 removed unused label 00110$.
                                    355 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 293: }
                                    356 ; genEndFunction
      00D58B 5B 01            [ 2]  357 	addw	sp, #1
      00D58D 81               [ 4]  358 	ret
                                    359 ;	Total PWR_GetFlagStatus function size at codegen: 3 bytes.
                                    360 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 300: void PWR_PVDClearFlag(void)
                                    361 ; genLabel
                                    362 ;	-----------------------------------------
                                    363 ;	 function PWR_PVDClearFlag
                                    364 ;	-----------------------------------------
                                    365 ;	Register assignment is optimal.
                                    366 ;	Stack space usage: 0 bytes.
      00D58E                        367 _PWR_PVDClearFlag:
                                    368 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 303: PWR->CSR1 |= PWR_CSR1_PVDIF;
                                    369 ; genPointerGet
                                    370 ; genOr
                                    371 ; genPointerSet
      00D58E 72 1A 50 B2      [ 1]  372 	bset	0x50b2, #5
                                    373 ; peephole 202x replaced 'or' by 'bset' ('0x50b2').
                                    374 ; genLabel
                                    375 ; peephole j30 removed unused label 00101$.
                                    376 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 304: }
                                    377 ; genEndFunction
      00D592 81               [ 4]  378 	ret
                                    379 ;	Total PWR_PVDClearFlag function size at codegen: 1 bytes.
                                    380 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 311: ITStatus PWR_PVDGetITStatus(void)
                                    381 ; genLabel
                                    382 ;	-----------------------------------------
                                    383 ;	 function PWR_PVDGetITStatus
                                    384 ;	-----------------------------------------
                                    385 ;	Register assignment is optimal.
                                    386 ;	Stack space usage: 1 bytes.
      00D593                        387 _PWR_PVDGetITStatus:
      00D593 88               [ 1]  388 	push	a
                                    389 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 317: PVD_itStatus = (uint8_t)(PWR->CSR1 & (uint8_t)PWR_CSR1_PVDIF);
                                    390 ; genPointerGet
      00D594 C6 50 B2         [ 1]  391 	ld	a, 0x50b2
                                    392 ; genAnd
      00D597 A4 20            [ 1]  393 	and	a, #0x20
      00D599 6B 01            [ 1]  394 	ld	(0x01, sp), a
                                    395 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 318: PVD_itEnable = (uint8_t)(PWR->CSR1 & (uint8_t)PWR_CSR1_PVDIEN);
                                    396 ; genPointerGet
      00D59B C6 50 B2         [ 1]  397 	ld	a, 0x50b2
                                    398 ; genAnd
      00D59E A4 10            [ 1]  399 	and	a, #0x10
                                    400 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 320: if ((PVD_itStatus != (uint8_t)RESET ) && (PVD_itEnable != (uint8_t)RESET))
                                    401 ; genIfx
      00D5A0 0D 01            [ 1]  402 	tnz	(0x01, sp)
                                    403 ; peephole j5 changed absolute to relative unconditional jump.
      00D5A2 27 06            [ 1]  404 	jreq	00102$
                                    405 ; peephole j10 removed jra by using inverse jump logic
                                    406 ; peephole j30 removed unused label 00121$.
                                    407 ; genIfx
      00D5A4 4D               [ 1]  408 	tnz	a
                                    409 ; peephole j5 changed absolute to relative unconditional jump.
      00D5A5 27 03            [ 1]  410 	jreq	00102$
                                    411 ; peephole j10 removed jra by using inverse jump logic
                                    412 ; peephole j30 removed unused label 00122$.
                                    413 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 322: bitstatus = (ITStatus)SET;
                                    414 ; genAssign
      00D5A7 A6 01            [ 1]  415 	ld	a, #0x01
                                    416 ; genGoto
                                    417 ; peephole j5 changed absolute to relative unconditional jump.
                                    418 ; genLabel
                                    419 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 326: bitstatus = (ITStatus)RESET;
                                    420 ; genAssign
                                    421 ; genLabel
      00D5A9 21                     422 	.byte 0x21
                                    423 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00D5AA                        424 00102$:
      00D5AA 4F               [ 1]  425 	clr	a
      00D5AB                        426 00103$:
                                    427 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 328: return ((ITStatus)bitstatus);
                                    428 ; genReturn
                                    429 ; genLabel
                                    430 ; peephole j30 removed unused label 00105$.
                                    431 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 329: }
                                    432 ; genEndFunction
      00D5AB 5B 01            [ 2]  433 	addw	sp, #1
      00D5AD 81               [ 4]  434 	ret
                                    435 ;	Total PWR_PVDGetITStatus function size at codegen: 3 bytes.
                                    436 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 336: void PWR_PVDClearITPendingBit(void)
                                    437 ; genLabel
                                    438 ;	-----------------------------------------
                                    439 ;	 function PWR_PVDClearITPendingBit
                                    440 ;	-----------------------------------------
                                    441 ;	Register assignment is optimal.
                                    442 ;	Stack space usage: 0 bytes.
      00D5AE                        443 _PWR_PVDClearITPendingBit:
                                    444 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 339: PWR->CSR1 |= PWR_CSR1_PVDIF;
                                    445 ; genPointerGet
                                    446 ; genOr
                                    447 ; genPointerSet
      00D5AE 72 1A 50 B2      [ 1]  448 	bset	0x50b2, #5
                                    449 ; peephole 202x replaced 'or' by 'bset' ('0x50b2').
                                    450 ; genLabel
                                    451 ; peephole j30 removed unused label 00101$.
                                    452 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_pwr.c: 340: }
                                    453 ; genEndFunction
      00D5B2 81               [ 4]  454 	ret
                                    455 ;	Total PWR_PVDClearITPendingBit function size at codegen: 1 bytes.
                                    456 	.area CODE
                                    457 	.area CONST
                                    458 	.area INITIALIZER
                                    459 	.area CABS (ABS)
