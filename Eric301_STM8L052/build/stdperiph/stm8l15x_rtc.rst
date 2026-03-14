                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8l15x_rtc
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _RTC_DeInit
                                     11 	.globl _RTC_Init
                                     12 	.globl _RTC_StructInit
                                     13 	.globl _RTC_WriteProtectionCmd
                                     14 	.globl _RTC_EnterInitMode
                                     15 	.globl _RTC_ExitInitMode
                                     16 	.globl _RTC_WaitForSynchro
                                     17 	.globl _RTC_RatioCmd
                                     18 	.globl _RTC_BypassShadowCmd
                                     19 	.globl _RTC_SetTime
                                     20 	.globl _RTC_TimeStructInit
                                     21 	.globl _RTC_GetTime
                                     22 	.globl _RTC_GetSubSecond
                                     23 	.globl _RTC_SetDate
                                     24 	.globl _RTC_DateStructInit
                                     25 	.globl _RTC_GetDate
                                     26 	.globl _RTC_SetAlarm
                                     27 	.globl _RTC_AlarmStructInit
                                     28 	.globl _RTC_GetAlarm
                                     29 	.globl _RTC_AlarmCmd
                                     30 	.globl _RTC_AlarmSubSecondConfig
                                     31 	.globl _RTC_WakeUpClockConfig
                                     32 	.globl _RTC_SetWakeUpCounter
                                     33 	.globl _RTC_GetWakeUpCounter
                                     34 	.globl _RTC_WakeUpCmd
                                     35 	.globl _RTC_DayLightSavingConfig
                                     36 	.globl _RTC_GetStoreOperation
                                     37 	.globl _RTC_OutputConfig
                                     38 	.globl _RTC_SynchroShiftConfig
                                     39 	.globl _RTC_SmoothCalibConfig
                                     40 	.globl _RTC_CalibOutputConfig
                                     41 	.globl _RTC_CalibOutputCmd
                                     42 	.globl _RTC_TamperLevelConfig
                                     43 	.globl _RTC_TamperFilterConfig
                                     44 	.globl _RTC_TamperSamplingFreqConfig
                                     45 	.globl _RTC_TamperPinsPrechargeDuration
                                     46 	.globl _RTC_TamperCmd
                                     47 	.globl _RTC_ITConfig
                                     48 	.globl _RTC_GetFlagStatus
                                     49 	.globl _RTC_ClearFlag
                                     50 	.globl _RTC_GetITStatus
                                     51 	.globl _RTC_ClearITPendingBit
                                     52 ;--------------------------------------------------------
                                     53 ; ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area DATA
                                     56 ;--------------------------------------------------------
                                     57 ; ram data
                                     58 ;--------------------------------------------------------
                                     59 	.area INITIALIZED
                                     60 ;--------------------------------------------------------
                                     61 ; absolute external ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area DABS (ABS)
                                     64 
                                     65 ; default segment ordering for linker
                                     66 	.area HOME
                                     67 	.area GSINIT
                                     68 	.area GSFINAL
                                     69 	.area CONST
                                     70 	.area INITIALIZER
                                     71 	.area CODE
                                     72 
                                     73 ;--------------------------------------------------------
                                     74 ; global & static initialisations
                                     75 ;--------------------------------------------------------
                                     76 	.area HOME
                                     77 	.area GSINIT
                                     78 	.area GSFINAL
                                     79 	.area GSINIT
                                     80 ;--------------------------------------------------------
                                     81 ; Home
                                     82 ;--------------------------------------------------------
                                     83 	.area HOME
                                     84 	.area HOME
                                     85 ;--------------------------------------------------------
                                     86 ; code
                                     87 ;--------------------------------------------------------
                                     88 	.area CODE
                                     89 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 232: ErrorStatus RTC_DeInit(void)
                                     90 ; genLabel
                                     91 ;	-----------------------------------------
                                     92 ;	 function RTC_DeInit
                                     93 ;	-----------------------------------------
                                     94 ;	Register assignment is optimal.
                                     95 ;	Stack space usage: 0 bytes.
      00D5CC                         96 _RTC_DeInit:
                                     97 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 239: RTC->WPR = 0xCA;
                                     98 ; genPointerSet
      00D5CC 35 CA 51 59      [ 1]   99 	mov	0x5159+0, #0xca
                                    100 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 240: RTC->WPR = 0x53;
                                    101 ; genPointerSet
      00D5D0 35 53 51 59      [ 1]  102 	mov	0x5159+0, #0x53
                                    103 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 243: if (RTC_EnterInitMode() == ERROR)
                                    104 ; genCall
      00D5D4 CD D7 01         [ 4]  105 	call	_RTC_EnterInitMode
                                    106 ; genIfx
      00D5D7 4D               [ 1]  107 	tnz	a
                                    108 ; peephole j5 changed absolute to relative unconditional jump.
      00D5D8 26 06            [ 1]  109 	jrne	00121$
                                    110 ; peephole j7 removed jra by using inverse jump logic
                                    111 ; peephole j30 removed unused label 00203$.
                                    112 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 245: status = ERROR;
                                    113 ; genAssign
      00D5DA 4F               [ 1]  114 	clr	a
                                    115 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 247: RTC->WPR = 0xFF; 
                                    116 ; genPointerSet
      00D5DB 35 FF 51 59      [ 1]  117 	mov	0x5159+0, #0xff
                                    118 ; genGoto
      00D5DF 81               [ 4]  119 	ret
                                    120 ; peephole j2e replaced jump by return.
                                    121 ; genLabel
      00D5E0                        122 00121$:
                                    123 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 252: RTC->TR1 = RTC_TR1_RESET_VALUE;
                                    124 ; genPointerSet
      00D5E0 35 00 51 40      [ 1]  125 	mov	0x5140+0, #0x00
                                    126 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 253: RTC->TR2 = RTC_TR2_RESET_VALUE;
                                    127 ; genPointerSet
      00D5E4 35 00 51 41      [ 1]  128 	mov	0x5141+0, #0x00
                                    129 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 254: RTC->TR3 = RTC_TR3_RESET_VALUE;
                                    130 ; genPointerSet
      00D5E8 35 00 51 42      [ 1]  131 	mov	0x5142+0, #0x00
                                    132 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 257: RTC->DR1 = RTC_DR1_RESET_VALUE;
                                    133 ; genPointerSet
      00D5EC 35 01 51 44      [ 1]  134 	mov	0x5144+0, #0x01
                                    135 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 258: RTC->DR2 = RTC_DR2_RESET_VALUE;
                                    136 ; genPointerSet
      00D5F0 35 21 51 45      [ 1]  137 	mov	0x5145+0, #0x21
                                    138 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 259: RTC->DR3 = RTC_DR3_RESET_VALUE;
                                    139 ; genPointerSet
      00D5F4 35 00 51 46      [ 1]  140 	mov	0x5146+0, #0x00
                                    141 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 262: RTC->SPRERH = RTC_SPRERH_RESET_VALUE;
                                    142 ; genPointerSet
      00D5F8 35 00 51 50      [ 1]  143 	mov	0x5150+0, #0x00
                                    144 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 263: RTC->SPRERL = RTC_SPRERL_RESET_VALUE;
                                    145 ; genPointerSet
      00D5FC 35 FF 51 51      [ 1]  146 	mov	0x5151+0, #0xff
                                    147 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 264: RTC->APRER  = RTC_APRER_RESET_VALUE;
                                    148 ; genPointerSet
      00D600 35 7F 51 52      [ 1]  149 	mov	0x5152+0, #0x7f
                                    150 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 266: RTC->TCR1 = RTC_TCR1_RESET_VALUE;
                                    151 ; genPointerSet
      00D604 35 00 51 6C      [ 1]  152 	mov	0x516c+0, #0x00
                                    153 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 267: RTC->TCR2 = RTC_TCR2_RESET_VALUE;
                                    154 ; genPointerSet
      00D608 35 00 51 6D      [ 1]  155 	mov	0x516d+0, #0x00
                                    156 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 271: RTC->CR1 = RTC_CR1_RESET_VALUE;
                                    157 ; genPointerSet
      00D60C 35 00 51 48      [ 1]  158 	mov	0x5148+0, #0x00
                                    159 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 272: RTC->CR2 = RTC_CR2_RESET_VALUE;
                                    160 ; genPointerSet
      00D610 35 00 51 49      [ 1]  161 	mov	0x5149+0, #0x00
                                    162 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 273: RTC->CR3 = RTC_CR3_RESET_VALUE;
                                    163 ; genPointerSet
      00D614 35 00 51 4A      [ 1]  164 	mov	0x514a+0, #0x00
                                    165 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 276: while (((RTC->ISR1 & RTC_ISR1_WUTWF) == RESET) && ( wutwfcount != WUTWF_TIMEOUT))
                                    166 ; genAssign
      00D618 5F               [ 1]  167 	clrw	x
                                    168 ; genLabel
      00D619                        169 00102$:
                                    170 ; genPointerGet
                                    171 ; genAnd
                                    172 ; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
                                    173 ; peephole j5 changed absolute to relative unconditional jump.
      00D619 72 04 51 4C 0C   [ 2]  174 	btjt	0x514c, #2, 00104$
                                    175 ; peephole j34 removed jra by using inverse bit-test-jump logic
                                    176 ; peephole j30 removed unused label 00204$.
                                    177 ; skipping generated iCode
                                    178 ; genCmpEQorNE
      00D61E A3 FF FF         [ 2]  179 	cpw	x, #0xffff
                                    180 ; peephole j5 changed absolute to relative unconditional jump.
      00D621 27 07            [ 1]  181 	jreq	00104$
                                    182 ; peephole j10 removed jra by using inverse jump logic
                                    183 ; peephole j30 removed unused label 00206$.
                                    184 ; skipping generated iCode
                                    185 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 278: wutwfcount++;
                                    186 ; genPlus
      00D623 5C               [ 1]  187 	incw	x
                                    188 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 279: RTC->ISR1 = 0;
                                    189 ; genPointerSet
      00D624 35 00 51 4C      [ 1]  190 	mov	0x514c+0, #0x00
                                    191 ; genGoto
      00D628 20 EF            [ 2]  192 	jra	00102$
                                    193 ; peephole j5 changed absolute to relative unconditional jump.
                                    194 ; genLabel
      00D62A                        195 00104$:
                                    196 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 282: if ((RTC->ISR1 & RTC_ISR1_WUTWF) == RESET)
                                    197 ; genPointerGet
                                    198 ; genAnd
                                    199 ; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
                                    200 ; peephole j5 changed absolute to relative unconditional jump.
      00D62A 72 04 51 4C 06   [ 2]  201 	btjt	0x514c, #2, 00118$
                                    202 ; peephole j34 removed jra by using inverse bit-test-jump logic
                                    203 ; peephole j30 removed unused label 00208$.
                                    204 ; skipping generated iCode
                                    205 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 284: status = ERROR;
                                    206 ; genAssign
      00D62F 4F               [ 1]  207 	clr	a
                                    208 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 286: RTC->WPR = 0xFF; 
                                    209 ; genPointerSet
      00D630 35 FF 51 59      [ 1]  210 	mov	0x5159+0, #0xff
                                    211 ; genGoto
      00D634 81               [ 4]  212 	ret
                                    213 ; peephole j2e replaced jump by return.
                                    214 ; genLabel
      00D635                        215 00118$:
                                    216 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 291: RTC->CR1 = RTC_CR1_RESET_VALUE;
                                    217 ; genPointerSet
      00D635 35 00 51 48      [ 1]  218 	mov	0x5148+0, #0x00
                                    219 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 294: RTC->WUTRH = RTC_WUTRH_RESET_VALUE;
                                    220 ; genPointerSet
      00D639 35 FF 51 54      [ 1]  221 	mov	0x5154+0, #0xff
                                    222 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 295: RTC->WUTRL = RTC_WUTRL_RESET_VALUE;
                                    223 ; genPointerSet
      00D63D 35 FF 51 55      [ 1]  224 	mov	0x5155+0, #0xff
                                    225 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 298: RTC->ALRMAR1 = RTC_ALRMAR1_RESET_VALUE;
                                    226 ; genPointerSet
      00D641 35 00 51 5C      [ 1]  227 	mov	0x515c+0, #0x00
                                    228 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 299: RTC->ALRMAR2 = RTC_ALRMAR2_RESET_VALUE;
                                    229 ; genPointerSet
      00D645 35 00 51 5D      [ 1]  230 	mov	0x515d+0, #0x00
                                    231 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 300: RTC->ALRMAR3 = RTC_ALRMAR3_RESET_VALUE;
                                    232 ; genPointerSet
      00D649 35 00 51 5E      [ 1]  233 	mov	0x515e+0, #0x00
                                    234 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 301: RTC->ALRMAR4 = RTC_ALRMAR4_RESET_VALUE;
                                    235 ; genPointerSet
      00D64D 35 00 51 5F      [ 1]  236 	mov	0x515f+0, #0x00
                                    237 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 303: RTC->ALRMASSRH = RTC_ALRMASSRH_RESET_VALUE;
                                    238 ; genPointerSet
      00D651 35 00 51 64      [ 1]  239 	mov	0x5164+0, #0x00
                                    240 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 304: RTC->ALRMASSRL = RTC_ALRMASSRL_RESET_VALUE;
                                    241 ; genPointerSet
      00D655 35 00 51 65      [ 1]  242 	mov	0x5165+0, #0x00
                                    243 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 305: RTC->ALRMASSMSKR = RTC_ALRMASSMSKR_RESET_VALUE;
                                    244 ; genPointerSet
      00D659 35 00 51 66      [ 1]  245 	mov	0x5166+0, #0x00
                                    246 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 308: RTC->ISR1 = (uint8_t)0x00;
                                    247 ; genPointerSet
      00D65D 35 00 51 4C      [ 1]  248 	mov	0x514c+0, #0x00
                                    249 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 309: RTC->ISR2 = RTC_ISR2_RESET_VALUE;
                                    250 ; genPointerSet
      00D661 35 00 51 4D      [ 1]  251 	mov	0x514d+0, #0x00
                                    252 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 311: if ((RTC->ISR1 & RTC_ISR1_RECALPF) != RESET)
                                    253 ; genPointerGet
                                    254 ; genAnd
                                    255 ; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x514c').
                                    256 ; peephole j5 changed absolute to relative unconditional jump.
      00D665 72 03 51 4C 0E   [ 2]  257 	btjf	0x514c, #1, 00110$
                                    258 ; peephole j33 removed jra by using inverse bit-test-jump logic
                                    259 ; peephole j30 removed unused label 00209$.
                                    260 ; skipping generated iCode
                                    261 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 313: while (((RTC->ISR1 & RTC_ISR1_RECALPF) != RESET) && (recalpfcount != RECALPF_TIMEOUT))
                                    262 ; genAssign
      00D66A 5F               [ 1]  263 	clrw	x
                                    264 ; genLabel
      00D66B                        265 00106$:
                                    266 ; genPointerGet
                                    267 ; genAnd
                                    268 ; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x514c').
                                    269 ; peephole j5 changed absolute to relative unconditional jump.
      00D66B 72 03 51 4C 08   [ 2]  270 	btjf	0x514c, #1, 00110$
                                    271 ; peephole j33 removed jra by using inverse bit-test-jump logic
                                    272 ; peephole j30 removed unused label 00210$.
                                    273 ; skipping generated iCode
                                    274 ; genCmpEQorNE
      00D670 A3 FF FF         [ 2]  275 	cpw	x, #0xffff
                                    276 ; peephole j5 changed absolute to relative unconditional jump.
      00D673 27 03            [ 1]  277 	jreq	00110$
                                    278 ; peephole j10 removed jra by using inverse jump logic
                                    279 ; peephole j30 removed unused label 00212$.
                                    280 ; skipping generated iCode
                                    281 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 315: recalpfcount++;
                                    282 ; genPlus
      00D675 5C               [ 1]  283 	incw	x
                                    284 ; genGoto
      00D676 20 F3            [ 2]  285 	jra	00106$
                                    286 ; peephole j5 changed absolute to relative unconditional jump.
                                    287 ; genLabel
      00D678                        288 00110$:
                                    289 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 318: if ((RTC->ISR1 & RTC_ISR1_RECALPF) == RESET)
                                    290 ; genPointerGet
                                    291 ; genAnd
                                    292 ; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
                                    293 ; peephole j5 changed absolute to relative unconditional jump.
      00D678 72 02 51 4C 14   [ 2]  294 	btjt	0x514c, #1, 00115$
                                    295 ; peephole j34 removed jra by using inverse bit-test-jump logic
                                    296 ; peephole j30 removed unused label 00214$.
                                    297 ; skipping generated iCode
                                    298 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 320: RTC->CALRH = RTC_CALRH_RESET_VALUE;
                                    299 ; genPointerSet
      00D67D 35 00 51 6A      [ 1]  300 	mov	0x516a+0, #0x00
                                    301 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 321: RTC->CALRL = RTC_CALRL_RESET_VALUE;
                                    302 ; genPointerSet
      00D681 35 00 51 6B      [ 1]  303 	mov	0x516b+0, #0x00
                                    304 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 323: if (RTC_WaitForSynchro() == ERROR)
                                    305 ; genCall
      00D685 CD D7 27         [ 4]  306 	call	_RTC_WaitForSynchro
                                    307 ; genIfx
      00D688 4D               [ 1]  308 	tnz	a
                                    309 ; peephole j5 changed absolute to relative unconditional jump.
      00D689 26 03            [ 1]  310 	jrne	00112$
                                    311 ; peephole j7 removed jra by using inverse jump logic
                                    312 ; peephole j30 removed unused label 00215$.
                                    313 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 325: status = ERROR;
                                    314 ; genAssign
      00D68B 4F               [ 1]  315 	clr	a
                                    316 ; genGoto
      00D68C 20 04            [ 2]  317 	jra	00116$
                                    318 ; peephole j5 changed absolute to relative unconditional jump.
                                    319 ; genLabel
      00D68E                        320 00112$:
                                    321 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 329: status = SUCCESS;
                                    322 ; genAssign
      00D68E A6 01            [ 1]  323 	ld	a, #0x01
                                    324 ; genGoto
                                    325 ; peephole j5 changed absolute to relative unconditional jump.
                                    326 ; genLabel
                                    327 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 334: status = ERROR;
                                    328 ; genAssign
                                    329 ; genLabel
      00D690 21                     330 	.byte 0x21
                                    331 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00D691                        332 00115$:
      00D691 4F               [ 1]  333 	clr	a
      00D692                        334 00116$:
                                    335 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 338: RTC->WPR = 0xFF; 
                                    336 ; genPointerSet
      00D692 35 FF 51 59      [ 1]  337 	mov	0x5159+0, #0xff
                                    338 ; genLabel
                                    339 ; peephole j30 removed unused label 00122$.
                                    340 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 343: return (ErrorStatus)status;
                                    341 ; genReturn
                                    342 ; genLabel
                                    343 ; peephole j30 removed unused label 00123$.
                                    344 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 344: }
                                    345 ; genEndFunction
      00D696 81               [ 4]  346 	ret
                                    347 ;	Total RTC_DeInit function size at codegen: 1 bytes.
                                    348 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 359: ErrorStatus RTC_Init(RTC_InitTypeDef* RTC_InitStruct)
                                    349 ; genLabel
                                    350 ;	-----------------------------------------
                                    351 ;	 function RTC_Init
                                    352 ;	-----------------------------------------
                                    353 ;	Register assignment might be sub-optimal.
                                    354 ;	Stack space usage: 3 bytes.
      00D697                        355 _RTC_Init:
      00D697 52 03            [ 2]  356 	sub	sp, #3
                                    357 ; genReceive
      00D699 1F 02            [ 2]  358 	ldw	(0x02, sp), x
                                    359 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 369: RTC->WPR = 0xCA;
                                    360 ; genPointerSet
      00D69B 35 CA 51 59      [ 1]  361 	mov	0x5159+0, #0xca
                                    362 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 370: RTC->WPR = 0x53;
                                    363 ; genPointerSet
      00D69F 35 53 51 59      [ 1]  364 	mov	0x5159+0, #0x53
                                    365 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 373: if (RTC_EnterInitMode() == ERROR)
                                    366 ; genCall
      00D6A3 CD D7 01         [ 4]  367 	call	_RTC_EnterInitMode
                                    368 ; genIfx
      00D6A6 4D               [ 1]  369 	tnz	a
                                    370 ; peephole j5 changed absolute to relative unconditional jump.
      00D6A7 26 03            [ 1]  371 	jrne	00102$
                                    372 ; peephole j7 removed jra by using inverse jump logic
                                    373 ; peephole j30 removed unused label 00113$.
                                    374 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 375: status = ERROR;
                                    375 ; genAssign
      00D6A9 4F               [ 1]  376 	clr	a
                                    377 ; genGoto
      00D6AA 20 2D            [ 2]  378 	jra	00103$
                                    379 ; peephole j5 changed absolute to relative unconditional jump.
                                    380 ; genLabel
      00D6AC                        381 00102$:
                                    382 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 380: RTC->CR1 &= ((uint8_t)~( RTC_CR1_FMT ));
                                    383 ; genPointerGet
                                    384 ; genAnd
                                    385 ; genPointerSet
      00D6AC 72 1D 51 48      [ 1]  386 	bres	0x5148, #6
                                    387 ; peephole 204x replaced 'and' by 'bres' ('0x5148').
                                    388 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 383: RTC->CR1 |=  ((uint8_t)(RTC_InitStruct->RTC_HourFormat));
                                    389 ; genPointerGet
      00D6B0 C6 51 48         [ 1]  390 	ld	a, 0x5148
      00D6B3 6B 01            [ 1]  391 	ld	(0x01, sp), a
                                    392 ; genPointerGet
      00D6B5 1E 02            [ 2]  393 	ldw	x, (0x02, sp)
      00D6B7 F6               [ 1]  394 	ld	a, (x)
                                    395 ; genOr
      00D6B8 1A 01            [ 1]  396 	or	a, (0x01, sp)
                                    397 ; genPointerSet
      00D6BA C7 51 48         [ 1]  398 	ld	0x5148, a
                                    399 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 386: RTC->SPRERH = (uint8_t)(RTC_InitStruct->RTC_SynchPrediv >> 8);
                                    400 ; genPlus
      00D6BD 1E 02            [ 2]  401 	ldw	x, (0x02, sp)
      00D6BF 5C               [ 1]  402 	incw	x
      00D6C0 5C               [ 1]  403 	incw	x
                                    404 ; genPointerGet
      00D6C1 E6 01            [ 1]  405 	ld	a, (0x1, x)
                                    406 ; peephole 0 removed dead load into yl from a.
      00D6C3 F6               [ 1]  407 	ld	a, (x)
                                    408 ; genGetByte
                                    409 ; genPointerSet
      00D6C4 C7 51 50         [ 1]  410 	ld	0x5150, a
                                    411 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 387: RTC->SPRERL = (uint8_t)(RTC_InitStruct->RTC_SynchPrediv);
                                    412 ; genPointerGet
      00D6C7 E6 01            [ 1]  413 	ld	a, (0x1, x)
                                    414 ; genPointerSet
      00D6C9 C7 51 51         [ 1]  415 	ld	0x5151, a
                                    416 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 388: RTC->APRER =  (uint8_t)(RTC_InitStruct->RTC_AsynchPrediv);
                                    417 ; genAssign
      00D6CC 1E 02            [ 2]  418 	ldw	x, (0x02, sp)
                                    419 ; genPointerGet
      00D6CE E6 01            [ 1]  420 	ld	a, (0x1, x)
                                    421 ; genPointerSet
      00D6D0 C7 51 52         [ 1]  422 	ld	0x5152, a
                                    423 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 391: RTC->ISR1 &= (uint8_t)~RTC_ISR1_INIT;
                                    424 ; genPointerGet
                                    425 ; genAnd
                                    426 ; genPointerSet
      00D6D3 72 1F 51 4C      [ 1]  427 	bres	0x514c, #7
                                    428 ; peephole 204x replaced 'and' by 'bres' ('0x514c').
                                    429 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 393: status = SUCCESS;
                                    430 ; genAssign
      00D6D7 A6 01            [ 1]  431 	ld	a, #0x01
                                    432 ; genLabel
      00D6D9                        433 00103$:
                                    434 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 397: RTC->WPR = 0xFF; 
                                    435 ; genPointerSet
      00D6D9 35 FF 51 59      [ 1]  436 	mov	0x5159+0, #0xff
                                    437 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 400: return (ErrorStatus)(status);
                                    438 ; genReturn
                                    439 ; genLabel
                                    440 ; peephole j30 removed unused label 00104$.
                                    441 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 401: }
                                    442 ; genEndFunction
      00D6DD 5B 03            [ 2]  443 	addw	sp, #3
      00D6DF 81               [ 4]  444 	ret
                                    445 ;	Total RTC_Init function size at codegen: 3 bytes.
                                    446 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 410: void RTC_StructInit(RTC_InitTypeDef* RTC_InitStruct)
                                    447 ; genLabel
                                    448 ;	-----------------------------------------
                                    449 ;	 function RTC_StructInit
                                    450 ;	-----------------------------------------
                                    451 ;	Register assignment might be sub-optimal.
                                    452 ;	Stack space usage: 0 bytes.
      00D6E0                        453 _RTC_StructInit:
                                    454 ; genReceive
      00D6E0 51               [ 1]  455 	exgw	x, y
                                    456 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 413: RTC_InitStruct->RTC_HourFormat = RTC_HourFormat_24;
                                    457 ; genPointerSet
      00D6E1 90 7F            [ 1]  458 	clr	(y)
                                    459 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 416: RTC_InitStruct->RTC_AsynchPrediv = RTC_APRER_RESET_VALUE;
                                    460 ; genPlus
      00D6E3 93               [ 1]  461 	ldw	x, y
      00D6E4 5C               [ 1]  462 	incw	x
                                    463 ; genPointerSet
      00D6E5 A6 7F            [ 1]  464 	ld	a, #0x7f
      00D6E7 F7               [ 1]  465 	ld	(x), a
                                    466 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 419: RTC_InitStruct->RTC_SynchPrediv = RTC_SPRERL_RESET_VALUE;
                                    467 ; genPlus
      00D6E8 93               [ 1]  468 	ldw	x, y
                                    469 ; genPointerSet
                                    470 ; peephole 10a moved addition of offset into storage instruction
      00D6E9 90 AE 00 FF      [ 2]  471 	ldw	y, #0x00ff
      00D6ED EF 02            [ 2]  472 	ldw	(0x02, x), y
                                    473 ; genLabel
                                    474 ; peephole j30 removed unused label 00101$.
                                    475 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 420: }
                                    476 ; genEndFunction
      00D6EF 81               [ 4]  477 	ret
                                    478 ;	Total RTC_StructInit function size at codegen: 1 bytes.
                                    479 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 430: void RTC_WriteProtectionCmd(FunctionalState NewState)
                                    480 ; genLabel
                                    481 ;	-----------------------------------------
                                    482 ;	 function RTC_WriteProtectionCmd
                                    483 ;	-----------------------------------------
                                    484 ;	Register assignment is optimal.
                                    485 ;	Stack space usage: 0 bytes.
      00D6F0                        486 _RTC_WriteProtectionCmd:
                                    487 ; genReceive
                                    488 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 435: if (NewState != DISABLE)
                                    489 ; genIfx
      00D6F0 4D               [ 1]  490 	tnz	a
                                    491 ; peephole j5 changed absolute to relative unconditional jump.
      00D6F1 27 05            [ 1]  492 	jreq	00102$
                                    493 ; peephole j10 removed jra by using inverse jump logic
                                    494 ; peephole j30 removed unused label 00113$.
                                    495 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 438: RTC->WPR = RTC_WPR_EnableKey;
                                    496 ; genPointerSet
      00D6F3 35 FF 51 59      [ 1]  497 	mov	0x5159+0, #0xff
                                    498 ; genGoto
      00D6F7 81               [ 4]  499 	ret
                                    500 ; peephole j2e replaced jump by return.
                                    501 ; genLabel
      00D6F8                        502 00102$:
                                    503 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 443: RTC->WPR = RTC_WPR_DisableKey1;
                                    504 ; genPointerSet
      00D6F8 35 CA 51 59      [ 1]  505 	mov	0x5159+0, #0xca
                                    506 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 444: RTC->WPR = RTC_WPR_DisableKey2;
                                    507 ; genPointerSet
      00D6FC 35 53 51 59      [ 1]  508 	mov	0x5159+0, #0x53
                                    509 ; genLabel
                                    510 ; peephole j30 removed unused label 00104$.
                                    511 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 446: }
                                    512 ; genEndFunction
      00D700 81               [ 4]  513 	ret
                                    514 ;	Total RTC_WriteProtectionCmd function size at codegen: 1 bytes.
                                    515 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 458: ErrorStatus RTC_EnterInitMode(void)
                                    516 ; genLabel
                                    517 ;	-----------------------------------------
                                    518 ;	 function RTC_EnterInitMode
                                    519 ;	-----------------------------------------
                                    520 ;	Register assignment is optimal.
                                    521 ;	Stack space usage: 0 bytes.
      00D701                        522 _RTC_EnterInitMode:
                                    523 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 464: if ((RTC->ISR1 & RTC_ISR1_INITF) == RESET)
                                    524 ; genPointerGet
                                    525 ; genAnd
                                    526 ; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
                                    527 ; peephole j5 changed absolute to relative unconditional jump.
      00D701 72 0C 51 4C 12   [ 2]  528 	btjt	0x514c, #6, 00106$
                                    529 ; peephole j34 removed jra by using inverse bit-test-jump logic
                                    530 ; peephole j30 removed unused label 00148$.
                                    531 ; skipping generated iCode
                                    532 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 467: RTC->ISR1 = (uint8_t)RTC_ISR1_INIT;
                                    533 ; genPointerSet
      00D706 35 80 51 4C      [ 1]  534 	mov	0x514c+0, #0x80
                                    535 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 470: while (((RTC->ISR1 & RTC_ISR1_INITF) == RESET) && ( initfcount != INITF_TIMEOUT))
                                    536 ; genAssign
      00D70A 5F               [ 1]  537 	clrw	x
                                    538 ; genLabel
      00D70B                        539 00102$:
                                    540 ; genPointerGet
                                    541 ; genAnd
                                    542 ; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
                                    543 ; peephole j5 changed absolute to relative unconditional jump.
      00D70B 72 0C 51 4C 08   [ 2]  544 	btjt	0x514c, #6, 00106$
                                    545 ; peephole j34 removed jra by using inverse bit-test-jump logic
                                    546 ; peephole j30 removed unused label 00149$.
                                    547 ; skipping generated iCode
                                    548 ; genCmpEQorNE
      00D710 A3 FF FF         [ 2]  549 	cpw	x, #0xffff
                                    550 ; peephole j5 changed absolute to relative unconditional jump.
      00D713 27 03            [ 1]  551 	jreq	00106$
                                    552 ; peephole j10 removed jra by using inverse jump logic
                                    553 ; peephole j30 removed unused label 00151$.
                                    554 ; skipping generated iCode
                                    555 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 472: initfcount++;
                                    556 ; genPlus
      00D715 5C               [ 1]  557 	incw	x
                                    558 ; genGoto
      00D716 20 F3            [ 2]  559 	jra	00102$
                                    560 ; peephole j5 changed absolute to relative unconditional jump.
                                    561 ; genLabel
      00D718                        562 00106$:
                                    563 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 476: if ((RTC->ISR1 & RTC_ISR1_INITF) == RESET)
                                    564 ; genPointerGet
                                    565 ; genAnd
                                    566 ; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
                                    567 ; peephole j5 changed absolute to relative unconditional jump.
      00D718 72 0C 51 4C 02   [ 2]  568 	btjt	0x514c, #6, 00108$
                                    569 ; peephole j34 removed jra by using inverse bit-test-jump logic
                                    570 ; peephole j30 removed unused label 00153$.
                                    571 ; skipping generated iCode
                                    572 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 478: status = ERROR;
                                    573 ; genAssign
      00D71D 4F               [ 1]  574 	clr	a
                                    575 ; genGoto
      00D71E 81               [ 4]  576 	ret
                                    577 ; peephole j2e replaced jump by return.
                                    578 ; genLabel
      00D71F                        579 00108$:
                                    580 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 482: status = SUCCESS;
                                    581 ; genAssign
      00D71F A6 01            [ 1]  582 	ld	a, #0x01
                                    583 ; genLabel
                                    584 ; peephole j30 removed unused label 00109$.
                                    585 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 485: return (ErrorStatus)status;
                                    586 ; genReturn
                                    587 ; genLabel
                                    588 ; peephole j30 removed unused label 00110$.
                                    589 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 486: }
                                    590 ; genEndFunction
      00D721 81               [ 4]  591 	ret
                                    592 ;	Total RTC_EnterInitMode function size at codegen: 1 bytes.
                                    593 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 498: void RTC_ExitInitMode(void)
                                    594 ; genLabel
                                    595 ;	-----------------------------------------
                                    596 ;	 function RTC_ExitInitMode
                                    597 ;	-----------------------------------------
                                    598 ;	Register assignment is optimal.
                                    599 ;	Stack space usage: 0 bytes.
      00D722                        600 _RTC_ExitInitMode:
                                    601 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 501: RTC->ISR1 &= (uint8_t)~RTC_ISR1_INIT;
                                    602 ; genPointerGet
                                    603 ; genAnd
                                    604 ; genPointerSet
      00D722 72 1F 51 4C      [ 1]  605 	bres	0x514c, #7
                                    606 ; peephole 204x replaced 'and' by 'bres' ('0x514c').
                                    607 ; genLabel
                                    608 ; peephole j30 removed unused label 00101$.
                                    609 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 502: }
                                    610 ; genEndFunction
      00D726 81               [ 4]  611 	ret
                                    612 ;	Total RTC_ExitInitMode function size at codegen: 1 bytes.
                                    613 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 527: ErrorStatus RTC_WaitForSynchro(void)
                                    614 ; genLabel
                                    615 ;	-----------------------------------------
                                    616 ;	 function RTC_WaitForSynchro
                                    617 ;	-----------------------------------------
                                    618 ;	Register assignment is optimal.
                                    619 ;	Stack space usage: 0 bytes.
      00D727                        620 _RTC_WaitForSynchro:
                                    621 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 533: RTC->WPR = 0xCA;
                                    622 ; genPointerSet
      00D727 35 CA 51 59      [ 1]  623 	mov	0x5159+0, #0xca
                                    624 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 534: RTC->WPR = 0x53;
                                    625 ; genPointerSet
      00D72B 35 53 51 59      [ 1]  626 	mov	0x5159+0, #0x53
                                    627 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 537: RTC->ISR1 &= (uint8_t)~(RTC_ISR1_RSF | RTC_ISR1_INIT);
                                    628 ; genPointerGet
      00D72F C6 51 4C         [ 1]  629 	ld	a, 0x514c
                                    630 ; genAnd
      00D732 A4 5F            [ 1]  631 	and	a, #0x5f
                                    632 ; genPointerSet
      00D734 C7 51 4C         [ 1]  633 	ld	0x514c, a
                                    634 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 540: while (((RTC->ISR1 & RTC_ISR1_RSF) == RESET) && ( rsfcount != RSF_TIMEOUT))
                                    635 ; genAssign
      00D737 5F               [ 1]  636 	clrw	x
                                    637 ; genLabel
      00D738                        638 00102$:
                                    639 ; genPointerGet
                                    640 ; genAnd
                                    641 ; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
                                    642 ; peephole j5 changed absolute to relative unconditional jump.
      00D738 72 0A 51 4C 08   [ 2]  643 	btjt	0x514c, #5, 00104$
                                    644 ; peephole j34 removed jra by using inverse bit-test-jump logic
                                    645 ; peephole j30 removed unused label 00139$.
                                    646 ; skipping generated iCode
                                    647 ; genCmpEQorNE
      00D73D A3 FF FF         [ 2]  648 	cpw	x, #0xffff
                                    649 ; peephole j5 changed absolute to relative unconditional jump.
      00D740 27 03            [ 1]  650 	jreq	00104$
                                    651 ; peephole j10 removed jra by using inverse jump logic
                                    652 ; peephole j30 removed unused label 00141$.
                                    653 ; skipping generated iCode
                                    654 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 542: rsfcount++;
                                    655 ; genPlus
      00D742 5C               [ 1]  656 	incw	x
                                    657 ; genGoto
      00D743 20 F3            [ 2]  658 	jra	00102$
                                    659 ; peephole j5 changed absolute to relative unconditional jump.
                                    660 ; genLabel
      00D745                        661 00104$:
                                    662 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 546: if ((RTC->ISR1 & RTC_ISR1_RSF) != RESET)
                                    663 ; genPointerGet
                                    664 ; genAnd
                                    665 ; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x514c').
                                    666 ; peephole j5 changed absolute to relative unconditional jump.
      00D745 72 0B 51 4C 03   [ 2]  667 	btjf	0x514c, #5, 00106$
                                    668 ; peephole j33 removed jra by using inverse bit-test-jump logic
                                    669 ; peephole j30 removed unused label 00143$.
                                    670 ; skipping generated iCode
                                    671 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 548: status = SUCCESS;
                                    672 ; genAssign
      00D74A A6 01            [ 1]  673 	ld	a, #0x01
                                    674 ; genGoto
                                    675 ; peephole j5 changed absolute to relative unconditional jump.
                                    676 ; genLabel
                                    677 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 552: status = ERROR;
                                    678 ; genAssign
                                    679 ; genLabel
      00D74C 21                     680 	.byte 0x21
                                    681 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00D74D                        682 00106$:
      00D74D 4F               [ 1]  683 	clr	a
      00D74E                        684 00107$:
                                    685 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 556: RTC->WPR = 0xFF; 
                                    686 ; genPointerSet
      00D74E 35 FF 51 59      [ 1]  687 	mov	0x5159+0, #0xff
                                    688 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 558: return (ErrorStatus)status;
                                    689 ; genReturn
                                    690 ; genLabel
                                    691 ; peephole j30 removed unused label 00108$.
                                    692 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 559: }
                                    693 ; genEndFunction
      00D752 81               [ 4]  694 	ret
                                    695 ;	Total RTC_WaitForSynchro function size at codegen: 1 bytes.
                                    696 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 568: void RTC_RatioCmd(FunctionalState NewState)
                                    697 ; genLabel
                                    698 ;	-----------------------------------------
                                    699 ;	 function RTC_RatioCmd
                                    700 ;	-----------------------------------------
                                    701 ;	Register assignment is optimal.
                                    702 ;	Stack space usage: 1 bytes.
      00D753                        703 _RTC_RatioCmd:
      00D753 88               [ 1]  704 	push	a
                                    705 ; genReceive
      00D754 6B 01            [ 1]  706 	ld	(0x01, sp), a
                                    707 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 574: RTC->WPR = 0xCA;
                                    708 ; genPointerSet
      00D756 35 CA 51 59      [ 1]  709 	mov	0x5159+0, #0xca
                                    710 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 575: RTC->WPR = 0x53;
                                    711 ; genPointerSet
      00D75A 35 53 51 59      [ 1]  712 	mov	0x5159+0, #0x53
                                    713 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 580: RTC->CR1 |= (uint8_t)RTC_CR1_RATIO;
                                    714 ; genPointerGet
      00D75E C6 51 48         [ 1]  715 	ld	a, 0x5148
                                    716 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 577: if (NewState != DISABLE)
                                    717 ; genIfx
      00D761 0D 01            [ 1]  718 	tnz	(0x01, sp)
                                    719 ; peephole j5 changed absolute to relative unconditional jump.
      00D763 27 07            [ 1]  720 	jreq	00102$
                                    721 ; peephole j10 removed jra by using inverse jump logic
                                    722 ; peephole j30 removed unused label 00113$.
                                    723 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 580: RTC->CR1 |= (uint8_t)RTC_CR1_RATIO;
                                    724 ; genOr
      00D765 AA 20            [ 1]  725 	or	a, #0x20
                                    726 ; genPointerSet
      00D767 C7 51 48         [ 1]  727 	ld	0x5148, a
                                    728 ; genGoto
      00D76A 20 05            [ 2]  729 	jra	00103$
                                    730 ; peephole j5 changed absolute to relative unconditional jump.
                                    731 ; genLabel
      00D76C                        732 00102$:
                                    733 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 585: RTC->CR1 &= (uint8_t)~RTC_CR1_RATIO;
                                    734 ; genAnd
      00D76C A4 DF            [ 1]  735 	and	a, #0xdf
                                    736 ; genPointerSet
      00D76E C7 51 48         [ 1]  737 	ld	0x5148, a
                                    738 ; genLabel
      00D771                        739 00103$:
                                    740 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 589: RTC->WPR = 0xFF; 
                                    741 ; genPointerSet
      00D771 35 FF 51 59      [ 1]  742 	mov	0x5159+0, #0xff
                                    743 ; genLabel
                                    744 ; peephole j30 removed unused label 00104$.
                                    745 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 590: }
                                    746 ; genEndFunction
      00D775 84               [ 1]  747 	pop	a
      00D776 81               [ 4]  748 	ret
                                    749 ;	Total RTC_RatioCmd function size at codegen: 2 bytes.
                                    750 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 598: void RTC_BypassShadowCmd(FunctionalState NewState)
                                    751 ; genLabel
                                    752 ;	-----------------------------------------
                                    753 ;	 function RTC_BypassShadowCmd
                                    754 ;	-----------------------------------------
                                    755 ;	Register assignment is optimal.
                                    756 ;	Stack space usage: 1 bytes.
      00D777                        757 _RTC_BypassShadowCmd:
      00D777 88               [ 1]  758 	push	a
                                    759 ; genReceive
      00D778 6B 01            [ 1]  760 	ld	(0x01, sp), a
                                    761 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 604: RTC->WPR = 0xCA;
                                    762 ; genPointerSet
      00D77A 35 CA 51 59      [ 1]  763 	mov	0x5159+0, #0xca
                                    764 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 605: RTC->WPR = 0x53;
                                    765 ; genPointerSet
      00D77E 35 53 51 59      [ 1]  766 	mov	0x5159+0, #0x53
                                    767 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 610: RTC->CR1 |= (uint8_t)RTC_CR1_BYPSHAD;
                                    768 ; genPointerGet
      00D782 C6 51 48         [ 1]  769 	ld	a, 0x5148
                                    770 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 607: if (NewState != DISABLE)
                                    771 ; genIfx
      00D785 0D 01            [ 1]  772 	tnz	(0x01, sp)
                                    773 ; peephole j5 changed absolute to relative unconditional jump.
      00D787 27 07            [ 1]  774 	jreq	00102$
                                    775 ; peephole j10 removed jra by using inverse jump logic
                                    776 ; peephole j30 removed unused label 00113$.
                                    777 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 610: RTC->CR1 |= (uint8_t)RTC_CR1_BYPSHAD;
                                    778 ; genOr
      00D789 AA 10            [ 1]  779 	or	a, #0x10
                                    780 ; genPointerSet
      00D78B C7 51 48         [ 1]  781 	ld	0x5148, a
                                    782 ; genGoto
      00D78E 20 05            [ 2]  783 	jra	00103$
                                    784 ; peephole j5 changed absolute to relative unconditional jump.
                                    785 ; genLabel
      00D790                        786 00102$:
                                    787 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 615: RTC->CR1 &= (uint8_t)~RTC_CR1_BYPSHAD;
                                    788 ; genAnd
      00D790 A4 EF            [ 1]  789 	and	a, #0xef
                                    790 ; genPointerSet
      00D792 C7 51 48         [ 1]  791 	ld	0x5148, a
                                    792 ; genLabel
      00D795                        793 00103$:
                                    794 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 619: RTC->WPR = 0xFF; 
                                    795 ; genPointerSet
      00D795 35 FF 51 59      [ 1]  796 	mov	0x5159+0, #0xff
                                    797 ; genLabel
                                    798 ; peephole j30 removed unused label 00104$.
                                    799 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 620: }
                                    800 ; genEndFunction
      00D799 84               [ 1]  801 	pop	a
      00D79A 81               [ 4]  802 	ret
                                    803 ;	Total RTC_BypassShadowCmd function size at codegen: 2 bytes.
                                    804 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 659: ErrorStatus RTC_SetTime(RTC_Format_TypeDef RTC_Format,
                                    805 ; genLabel
                                    806 ;	-----------------------------------------
                                    807 ;	 function RTC_SetTime
                                    808 ;	-----------------------------------------
                                    809 ;	Register assignment might be sub-optimal.
                                    810 ;	Stack space usage: 6 bytes.
      00D79B                        811 _RTC_SetTime:
      00D79B 52 06            [ 2]  812 	sub	sp, #6
                                    813 ; genReceive
      00D79D 6B 06            [ 1]  814 	ld	(0x06, sp), a
                                    815 ; genReceive
      00D79F 1F 04            [ 2]  816 	ldw	(0x04, sp), x
                                    817 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 671: if ((RTC->CR1 & RTC_CR1_FMT) != RESET)
                                    818 ; genPointerGet
                                    819 ; Dummy read
      00D7A1 C6 51 48         [ 1]  820 	ld	a, 0x5148
                                    821 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 701: RTC->WPR = 0xCA;
                                    822 ; genPointerSet
      00D7A4 35 CA 51 59      [ 1]  823 	mov	0x5159+0, #0xca
                                    824 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 702: RTC->WPR = 0x53;
                                    825 ; genPointerSet
      00D7A8 35 53 51 59      [ 1]  826 	mov	0x5159+0, #0x53
                                    827 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 705: if (RTC_EnterInitMode() == ERROR)
                                    828 ; genCall
      00D7AC CD D7 01         [ 4]  829 	call	_RTC_EnterInitMode
                                    830 ; genIfx
      00D7AF 4D               [ 1]  831 	tnz	a
                                    832 ; peephole j5 changed absolute to relative unconditional jump.
      00D7B0 26 07            [ 1]  833 	jrne	00123$
                                    834 ; peephole j7 removed jra by using inverse jump logic
                                    835 ; peephole j30 removed unused label 00166$.
                                    836 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 707: status = ERROR;
                                    837 ; genAssign
      00D7B2 4F               [ 1]  838 	clr	a
                                    839 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 709: RTC->WPR = 0xFF; 
                                    840 ; genPointerSet
      00D7B3 35 FF 51 59      [ 1]  841 	mov	0x5159+0, #0xff
                                    842 ; genGoto
      00D7B7 20 6B            [ 2]  843 	jra	00124$
                                    844 ; peephole j5 changed absolute to relative unconditional jump.
                                    845 ; genLabel
      00D7B9                        846 00123$:
                                    847 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 714: if ((RTC->CR1 & RTC_CR1_FMT) != RESET)
                                    848 ; genPointerGet
                                    849 ; genAnd
                                    850 ; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x5148').
                                    851 ; peephole j5 changed absolute to relative unconditional jump.
      00D7B9 72 0D 51 48 07   [ 2]  852 	btjf	0x5148, #6, 00111$
                                    853 ; peephole j33 removed jra by using inverse bit-test-jump logic
                                    854 ; peephole j30 removed unused label 00167$.
                                    855 ; skipping generated iCode
                                    856 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 717: temp = RTC_TimeStruct->RTC_H12;
                                    857 ; genAssign
      00D7BE 1E 04            [ 2]  858 	ldw	x, (0x04, sp)
                                    859 ; genPointerGet
      00D7C0 E6 03            [ 1]  860 	ld	a, (0x3, x)
      00D7C2 6B 01            [ 1]  861 	ld	(0x01, sp), a
                                    862 ; genGoto
                                    863 ; peephole j5 changed absolute to relative unconditional jump.
                                    864 ; genLabel
                                    865 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 721: temp = 0;
                                    866 ; genAssign
                                    867 ; genLabel
      00D7C4 C5                     868 	.byte 0xc5
                                    869 ; peephole jrf7 used bcp opcode to jump over 2-byte instruction.
      00D7C5                        870 00111$:
      00D7C5 0F 01            [ 1]  871 	clr	(0x01, sp)
      00D7C7                        872 00112$:
                                    873 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 726: RTC->TR1 = (uint8_t)(RTC_TimeStruct->RTC_Seconds);
                                    874 ; genAssign
      00D7C7 16 04            [ 2]  875 	ldw	y, (0x04, sp)
                                    876 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 727: RTC->TR2 = (uint8_t)(RTC_TimeStruct->RTC_Minutes) ;
                                    877 ; genPlus
      00D7C9 1E 04            [ 2]  878 	ldw	x, (0x04, sp)
      00D7CB 5C               [ 1]  879 	incw	x
      00D7CC 1F 02            [ 2]  880 	ldw	(0x02, sp), x
                                    881 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 728: RTC->TR3 = (uint8_t)( temp | RTC_TimeStruct->RTC_Hours) ;
                                    882 ; genCast
                                    883 ; genAssign
      00D7CE 1E 04            [ 2]  884 	ldw	x, (0x04, sp)
                                    885 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 726: RTC->TR1 = (uint8_t)(RTC_TimeStruct->RTC_Seconds);
                                    886 ; genPointerGet
      00D7D0 90 E6 02         [ 1]  887 	ld	a, (0x2, y)
                                    888 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 724: if (RTC_Format != RTC_Format_BIN)
                                    889 ; genIfx
      00D7D3 0D 06            [ 1]  890 	tnz	(0x06, sp)
                                    891 ; peephole j5 changed absolute to relative unconditional jump.
      00D7D5 27 12            [ 1]  892 	jreq	00114$
                                    893 ; peephole j10 removed jra by using inverse jump logic
                                    894 ; peephole j30 removed unused label 00168$.
                                    895 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 726: RTC->TR1 = (uint8_t)(RTC_TimeStruct->RTC_Seconds);
                                    896 ; genPointerSet
      00D7D7 C7 51 40         [ 1]  897 	ld	0x5140, a
                                    898 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 727: RTC->TR2 = (uint8_t)(RTC_TimeStruct->RTC_Minutes) ;
                                    899 ; genPointerGet
      00D7DA 16 02            [ 2]  900 	ldw	y, (0x02, sp)
      00D7DC 90 F6            [ 1]  901 	ld	a, (y)
                                    902 ; genPointerSet
      00D7DE C7 51 41         [ 1]  903 	ld	0x5141, a
                                    904 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 728: RTC->TR3 = (uint8_t)( temp | RTC_TimeStruct->RTC_Hours) ;
                                    905 ; genPointerGet
      00D7E1 F6               [ 1]  906 	ld	a, (x)
                                    907 ; genOr
      00D7E2 1A 01            [ 1]  908 	or	a, (0x01, sp)
                                    909 ; genPointerSet
      00D7E4 C7 51 42         [ 1]  910 	ld	0x5142, a
                                    911 ; genGoto
      00D7E7 20 1D            [ 2]  912 	jra	00115$
                                    913 ; peephole j5 changed absolute to relative unconditional jump.
                                    914 ; genLabel
      00D7E9                        915 00114$:
                                    916 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 732: RTC->TR1 = (uint8_t)(ByteToBcd2(RTC_TimeStruct->RTC_Seconds));
                                    917 ; genSend
      00D7E9 89               [ 2]  918 	pushw	x
                                    919 ; genCall
      00D7EA CD DE EF         [ 4]  920 	call	_ByteToBcd2
      00D7ED 85               [ 2]  921 	popw	x
                                    922 ; genPointerSet
      00D7EE C7 51 40         [ 1]  923 	ld	0x5140, a
                                    924 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 733: RTC->TR2 = (uint8_t)(ByteToBcd2(RTC_TimeStruct->RTC_Minutes)) ;
                                    925 ; genPointerGet
      00D7F1 16 02            [ 2]  926 	ldw	y, (0x02, sp)
      00D7F3 90 F6            [ 1]  927 	ld	a, (y)
                                    928 ; genSend
      00D7F5 89               [ 2]  929 	pushw	x
                                    930 ; genCall
      00D7F6 CD DE EF         [ 4]  931 	call	_ByteToBcd2
      00D7F9 85               [ 2]  932 	popw	x
                                    933 ; genPointerSet
      00D7FA C7 51 41         [ 1]  934 	ld	0x5141, a
                                    935 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 734: RTC->TR3 = (uint8_t)( temp | ByteToBcd2(RTC_TimeStruct->RTC_Hours));
                                    936 ; genPointerGet
      00D7FD F6               [ 1]  937 	ld	a, (x)
                                    938 ; genSend
                                    939 ; genCall
      00D7FE CD DE EF         [ 4]  940 	call	_ByteToBcd2
                                    941 ; genOr
      00D801 1A 01            [ 1]  942 	or	a, (0x01, sp)
                                    943 ; genPointerSet
      00D803 C7 51 42         [ 1]  944 	ld	0x5142, a
                                    945 ; genLabel
      00D806                        946 00115$:
                                    947 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 737: (void)(RTC->DR3);
                                    948 ; genPointerGet
                                    949 ; Dummy read
      00D806 C6 51 46         [ 1]  950 	ld	a, 0x5146
                                    951 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 740: RTC->ISR1 &= (uint8_t)~RTC_ISR1_INIT;
                                    952 ; genPointerGet
                                    953 ; genAnd
                                    954 ; genPointerSet
      00D809 72 1F 51 4C      [ 1]  955 	bres	0x514c, #7
                                    956 ; peephole 204x replaced 'and' by 'bres' ('0x514c').
                                    957 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 743: RTC->WPR = 0xFF; 
                                    958 ; genPointerSet
      00D80D 35 FF 51 59      [ 1]  959 	mov	0x5159+0, #0xff
                                    960 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 746: if ((RTC->CR1 & RTC_CR1_BYPSHAD) == RESET)
                                    961 ; genPointerGet
                                    962 ; genAnd
                                    963 ; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x5148').
                                    964 ; peephole j5 changed absolute to relative unconditional jump.
      00D811 72 08 51 48 0C   [ 2]  965 	btjt	0x5148, #4, 00120$
                                    966 ; peephole j34 removed jra by using inverse bit-test-jump logic
                                    967 ; peephole j30 removed unused label 00169$.
                                    968 ; skipping generated iCode
                                    969 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 748: if (RTC_WaitForSynchro() == ERROR)
                                    970 ; genCall
      00D816 CD D7 27         [ 4]  971 	call	_RTC_WaitForSynchro
                                    972 ; genIfx
      00D819 4D               [ 1]  973 	tnz	a
                                    974 ; peephole j5 changed absolute to relative unconditional jump.
      00D81A 26 03            [ 1]  975 	jrne	00117$
                                    976 ; peephole j7 removed jra by using inverse jump logic
                                    977 ; peephole j30 removed unused label 00170$.
                                    978 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 750: status = ERROR;
                                    979 ; genAssign
      00D81C 4F               [ 1]  980 	clr	a
                                    981 ; genGoto
      00D81D 20 05            [ 2]  982 	jra	00124$
                                    983 ; peephole j5 changed absolute to relative unconditional jump.
                                    984 ; genLabel
      00D81F                        985 00117$:
                                    986 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 754: status = SUCCESS;
                                    987 ; genAssign
      00D81F A6 01            [ 1]  988 	ld	a, #0x01
                                    989 ; genGoto
                                    990 ; peephole j5 changed absolute to relative unconditional jump.
                                    991 ; genLabel
                                    992 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 759: status = SUCCESS;
                                    993 ; genAssign
                                    994 ; genLabel
      00D821 C5                     995 	.byte 0xc5
                                    996 ; peephole jrf6 used bcp opcode to jump over 2-byte instruction.
      00D822                        997 00120$:
      00D822 A6 01            [ 1]  998 	ld	a, #0x01
      00D824                        999 00124$:
                                   1000 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 763: return (ErrorStatus)status;
                                   1001 ; genReturn
                                   1002 ; genLabel
                                   1003 ; peephole j30 removed unused label 00125$.
                                   1004 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 764: }
                                   1005 ; genEndFunction
      00D824 5B 06            [ 2] 1006 	addw	sp, #6
      00D826 81               [ 4] 1007 	ret
                                   1008 ;	Total RTC_SetTime function size at codegen: 3 bytes.
                                   1009 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 775: void RTC_TimeStructInit(RTC_TimeTypeDef* RTC_TimeStruct)
                                   1010 ; genLabel
                                   1011 ;	-----------------------------------------
                                   1012 ;	 function RTC_TimeStructInit
                                   1013 ;	-----------------------------------------
                                   1014 ;	Register assignment might be sub-optimal.
                                   1015 ;	Stack space usage: 0 bytes.
      00D827                       1016 _RTC_TimeStructInit:
                                   1017 ; genReceive
                                   1018 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 778: RTC_TimeStruct->RTC_H12 = RTC_H12_AM;
                                   1019 ; genPlus
                                   1020 ; peephole 5w replaced exgw-ldw by ldw.
      00D827 90 93            [ 1] 1021 	ldw	y, x
                                   1022 ; genPointerSet
                                   1023 ; peephole 9a moved addition of offset into clear instruction
      00D829 6F 03            [ 1] 1024 	clr	(0x0003, x)
                                   1025 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 779: RTC_TimeStruct->RTC_Hours = 0;
                                   1026 ; genPointerSet
      00D82B 90 7F            [ 1] 1027 	clr	(y)
                                   1028 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 780: RTC_TimeStruct->RTC_Minutes = 0;
                                   1029 ; genPlus
      00D82D 93               [ 1] 1030 	ldw	x, y
                                   1031 ; genPointerSet
                                   1032 ; peephole 10j moved addition of offset into instruction
      00D82E 6F 01            [ 1] 1033 	clr	(0x01, x)
                                   1034 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 781: RTC_TimeStruct->RTC_Seconds = 0;
                                   1035 ; genPlus
      00D830 93               [ 1] 1036 	ldw	x, y
                                   1037 ; genPointerSet
                                   1038 ; peephole 10i moved addition of offset into instruction
      00D831 6F 02            [ 1] 1039 	clr	(0x02, x)
                                   1040 ; genLabel
                                   1041 ; peephole j30 removed unused label 00101$.
                                   1042 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 782: }
                                   1043 ; genEndFunction
      00D833 81               [ 4] 1044 	ret
                                   1045 ;	Total RTC_TimeStructInit function size at codegen: 1 bytes.
                                   1046 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 798: void RTC_GetTime(RTC_Format_TypeDef RTC_Format,
                                   1047 ; genLabel
                                   1048 ;	-----------------------------------------
                                   1049 ;	 function RTC_GetTime
                                   1050 ;	-----------------------------------------
                                   1051 ;	Register assignment might be sub-optimal.
                                   1052 ;	Stack space usage: 6 bytes.
      00D834                       1053 _RTC_GetTime:
      00D834 52 06            [ 2] 1054 	sub	sp, #6
                                   1055 ; genReceive
      00D836 6B 06            [ 1] 1056 	ld	(0x06, sp), a
                                   1057 ; genReceive
                                   1058 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 808: RTC_TimeStruct->RTC_Seconds = RTC->TR1;
                                   1059 ; genPlus
                                   1060 ; peephole 5w replaced exgw-ldw by ldw.
      00D838 90 93            [ 1] 1061 	ldw	y, x
      00D83A 5C               [ 1] 1062 	incw	x
      00D83B 5C               [ 1] 1063 	incw	x
      00D83C 1F 01            [ 2] 1064 	ldw	(0x01, sp), x
                                   1065 ; genPointerGet
      00D83E C6 51 40         [ 1] 1066 	ld	a, 0x5140
                                   1067 ; genPointerSet
      00D841 1E 01            [ 2] 1068 	ldw	x, (0x01, sp)
      00D843 F7               [ 1] 1069 	ld	(x), a
                                   1070 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 811: RTC_TimeStruct->RTC_Minutes = RTC->TR2;
                                   1071 ; genPlus
      00D844 93               [ 1] 1072 	ldw	x, y
      00D845 5C               [ 1] 1073 	incw	x
      00D846 1F 03            [ 2] 1074 	ldw	(0x03, sp), x
                                   1075 ; genPointerGet
      00D848 C6 51 41         [ 1] 1076 	ld	a, 0x5141
                                   1077 ; genPointerSet
      00D84B 1E 03            [ 2] 1078 	ldw	x, (0x03, sp)
      00D84D F7               [ 1] 1079 	ld	(x), a
                                   1080 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 814: tmpreg = (uint8_t)RTC->TR3;
                                   1081 ; genPointerGet
      00D84E C6 51 42         [ 1] 1082 	ld	a, 0x5142
      00D851 6B 05            [ 1] 1083 	ld	(0x05, sp), a
                                   1084 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 817: (void) (RTC->DR3) ;
                                   1085 ; genPointerGet
                                   1086 ; Dummy read
      00D853 C6 51 46         [ 1] 1087 	ld	a, 0x5146
                                   1088 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 821: RTC_TimeStruct->RTC_Hours = (uint8_t)(tmpreg & (uint8_t)~(RTC_TR3_PM));
                                   1089 ; genCast
                                   1090 ; genAssign
      00D856 93               [ 1] 1091 	ldw	x, y
                                   1092 ; genAnd
      00D857 7B 05            [ 1] 1093 	ld	a, (0x05, sp)
      00D859 A4 BF            [ 1] 1094 	and	a, #0xbf
                                   1095 ; genPointerSet
      00D85B F7               [ 1] 1096 	ld	(x), a
                                   1097 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 824: RTC_TimeStruct->RTC_H12 = (RTC_H12_TypeDef)(tmpreg & RTC_TR3_PM);
                                   1098 ; genPlus
      00D85C 72 A9 00 03      [ 2] 1099 	addw	y, #0x0003
                                   1100 ; genAnd
      00D860 7B 05            [ 1] 1101 	ld	a, (0x05, sp)
      00D862 A4 40            [ 1] 1102 	and	a, #0x40
                                   1103 ; genPointerSet
      00D864 90 F7            [ 1] 1104 	ld	(y), a
                                   1105 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 827: if (RTC_Format == RTC_Format_BIN)
                                   1106 ; genIfx
      00D866 0D 06            [ 1] 1107 	tnz	(0x06, sp)
                                   1108 ; peephole j5 changed absolute to relative unconditional jump.
      00D868 26 19            [ 1] 1109 	jrne	00103$
                                   1110 ; peephole j7 removed jra by using inverse jump logic
                                   1111 ; peephole j30 removed unused label 00112$.
                                   1112 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 830: RTC_TimeStruct->RTC_Hours = (uint8_t)Bcd2ToByte(RTC_TimeStruct->RTC_Hours);
                                   1113 ; genPointerGet
      00D86A F6               [ 1] 1114 	ld	a, (x)
                                   1115 ; genSend
      00D86B 89               [ 2] 1116 	pushw	x
                                   1117 ; genCall
      00D86C CD DF 02         [ 4] 1118 	call	_Bcd2ToByte
      00D86F 85               [ 2] 1119 	popw	x
                                   1120 ; genPointerSet
      00D870 F7               [ 1] 1121 	ld	(x), a
                                   1122 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 831: RTC_TimeStruct->RTC_Minutes = (uint8_t)Bcd2ToByte(RTC_TimeStruct->RTC_Minutes);
                                   1123 ; genPointerGet
      00D871 1E 03            [ 2] 1124 	ldw	x, (0x03, sp)
      00D873 F6               [ 1] 1125 	ld	a, (x)
                                   1126 ; genSend
                                   1127 ; genCall
      00D874 CD DF 02         [ 4] 1128 	call	_Bcd2ToByte
                                   1129 ; genPointerSet
      00D877 1E 03            [ 2] 1130 	ldw	x, (0x03, sp)
      00D879 F7               [ 1] 1131 	ld	(x), a
                                   1132 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 832: RTC_TimeStruct->RTC_Seconds = (uint8_t)Bcd2ToByte(RTC_TimeStruct->RTC_Seconds);
                                   1133 ; genPointerGet
      00D87A 1E 01            [ 2] 1134 	ldw	x, (0x01, sp)
      00D87C F6               [ 1] 1135 	ld	a, (x)
                                   1136 ; genSend
                                   1137 ; genCall
      00D87D CD DF 02         [ 4] 1138 	call	_Bcd2ToByte
                                   1139 ; genPointerSet
      00D880 1E 01            [ 2] 1140 	ldw	x, (0x01, sp)
      00D882 F7               [ 1] 1141 	ld	(x), a
                                   1142 ; genLabel
      00D883                       1143 00103$:
                                   1144 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 834: }
                                   1145 ; genEndFunction
      00D883 5B 06            [ 2] 1146 	addw	sp, #6
      00D885 81               [ 4] 1147 	ret
                                   1148 ;	Total RTC_GetTime function size at codegen: 3 bytes.
                                   1149 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 845: uint16_t RTC_GetSubSecond(void)
                                   1150 ; genLabel
                                   1151 ;	-----------------------------------------
                                   1152 ;	 function RTC_GetSubSecond
                                   1153 ;	-----------------------------------------
                                   1154 ;	Register assignment might be sub-optimal.
                                   1155 ;	Stack space usage: 2 bytes.
      00D886                       1156 _RTC_GetSubSecond:
      00D886 89               [ 2] 1157 	pushw	x
                                   1158 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 851: ssrhreg = RTC->SSRH;
                                   1159 ; genPointerGet
      00D887 C6 51 57         [ 1] 1160 	ld	a, 0x5157
      00D88A 95               [ 1] 1161 	ld	xh, a
                                   1162 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 852: ssrlreg = RTC->SSRL;
                                   1163 ; genPointerGet
      00D88B C6 51 58         [ 1] 1164 	ld	a, 0x5158
      00D88E 97               [ 1] 1165 	ld	xl, a
                                   1166 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 855: (void) (RTC->DR3);
                                   1167 ; genPointerGet
                                   1168 ; Dummy read
      00D88F C6 51 46         [ 1] 1169 	ld	a, 0x5146
                                   1170 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 858: ssrreg = (uint16_t)((uint16_t)((uint16_t)ssrhreg << 8) | (uint16_t)(ssrlreg));
                                   1171 ; genCast
                                   1172 ; genAssign
                                   1173 ; peephole 1 removed dead clear of a.
                                   1174 ; genLeftShiftLiteral
      00D892 0F 02            [ 1] 1175 	clr	(0x02, sp)
                                   1176 ; genCast
                                   1177 ; genAssign
                                   1178 ; peephole 3 removed dead clrw of y.
                                   1179 ; genOr
                                   1180 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 859: return (uint16_t)(ssrreg);
                                   1181 ; genReturn
                                   1182 ; genLabel
                                   1183 ; peephole j30 removed unused label 00101$.
                                   1184 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 860: }
                                   1185 ; genEndFunction
      00D894 5B 02            [ 2] 1186 	addw	sp, #2
      00D896 81               [ 4] 1187 	ret
                                   1188 ;	Total RTC_GetSubSecond function size at codegen: 3 bytes.
                                   1189 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 876: ErrorStatus RTC_SetDate(RTC_Format_TypeDef RTC_Format,
                                   1190 ; genLabel
                                   1191 ;	-----------------------------------------
                                   1192 ;	 function RTC_SetDate
                                   1193 ;	-----------------------------------------
                                   1194 ;	Register assignment might be sub-optimal.
                                   1195 ;	Stack space usage: 10 bytes.
      00D897                       1196 _RTC_SetDate:
      00D897 52 0A            [ 2] 1197 	sub	sp, #10
                                   1198 ; genReceive
      00D899 6B 0A            [ 1] 1199 	ld	(0x0a, sp), a
                                   1200 ; genReceive
                                   1201 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 881: if ((RTC_Format == RTC_Format_BIN) && ((RTC_DateStruct->RTC_Month & TEN_VALUE_BCD) == TEN_VALUE_BCD))
                                   1202 ; genPlus
      00D89B 1F 08            [ 2] 1203 	ldw	(0x08, sp), x
                                   1204 ; peephole 13 removed redundant load from (0x08, sp) into x.
      00D89D 5C               [ 1] 1205 	incw	x
      00D89E 1F 01            [ 2] 1206 	ldw	(0x01, sp), x
                                   1207 ; genIfx
      00D8A0 0D 0A            [ 1] 1208 	tnz	(0x0a, sp)
                                   1209 ; peephole j5 changed absolute to relative unconditional jump.
      00D8A2 26 11            [ 1] 1210 	jrne	00106$
                                   1211 ; peephole j7 removed jra by using inverse jump logic
                                   1212 ; peephole j30 removed unused label 00163$.
                                   1213 ; genPointerGet
      00D8A4 1E 01            [ 2] 1214 	ldw	x, (0x01, sp)
      00D8A6 F6               [ 1] 1215 	ld	a, (x)
                                   1216 ; genAnd
      00D8A7 97               [ 1] 1217 	ld	xl, a
                                   1218 ; peephole 4 removed redundant load from xl into a.
                                   1219 ; genCmpEQorNE
      00D8A8 43               [ 1] 1220 	cpl	a
      00D8A9 A5 10            [ 1] 1221 	bcp	a, #0x10
                                   1222 ; peephole 111 replaced 'and-cp' by 'cpl-bcp'.
                                   1223 ; peephole j5 changed absolute to relative unconditional jump.
                                   1224 ; peephole j10 removed jra by using inverse jump logic
                                   1225 ; peephole j30 removed unused label 00165$.
                                   1226 ; peephole j5 changed absolute to relative unconditional jump.
      00D8AB 26 08            [ 1] 1227 	jrne	00106$
                                   1228 ; peephole j7 removed jra by using inverse jump logic
                                   1229 ; peephole j30 removed unused label 00166$.
                                   1230 ; skipping generated iCode
                                   1231 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 883: RTC_DateStruct->RTC_Month = (RTC_Month_TypeDef)((RTC_DateStruct->RTC_Month & (uint8_t)~(TEN_VALUE_BCD)) + TEN_VALUE_BIN);
                                   1232 ; genAnd
      00D8AD 9F               [ 1] 1233 	ld	a, xl
      00D8AE A4 EF            [ 1] 1234 	and	a, #0xef
                                   1235 ; genPlus
      00D8B0 AB 0A            [ 1] 1236 	add	a, #0x0a
                                   1237 ; genPointerSet
      00D8B2 1E 01            [ 2] 1238 	ldw	x, (0x01, sp)
      00D8B4 F7               [ 1] 1239 	ld	(x), a
                                   1240 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 902: assert_param(IS_RTC_DATE_MAX(Bcd2ToByte((uint8_t)RTC_DateStruct->RTC_Date)));
                                   1241 ; genLabel
      00D8B5                       1242 00106$:
                                   1243 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 907: RTC->WPR = 0xCA;
                                   1244 ; genPointerSet
      00D8B5 35 CA 51 59      [ 1] 1245 	mov	0x5159+0, #0xca
                                   1246 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 908: RTC->WPR = 0x53;
                                   1247 ; genPointerSet
      00D8B9 35 53 51 59      [ 1] 1248 	mov	0x5159+0, #0x53
                                   1249 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 911: if (RTC_EnterInitMode() == ERROR)
                                   1250 ; genCall
      00D8BD CD D7 01         [ 4] 1251 	call	_RTC_EnterInitMode
                                   1252 ; genIfx
      00D8C0 4D               [ 1] 1253 	tnz	a
                                   1254 ; peephole j5 changed absolute to relative unconditional jump.
      00D8C1 26 07            [ 1] 1255 	jrne	00117$
                                   1256 ; peephole j7 removed jra by using inverse jump logic
                                   1257 ; peephole j30 removed unused label 00167$.
                                   1258 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 913: status = ERROR;
                                   1259 ; genAssign
      00D8C3 4F               [ 1] 1260 	clr	a
                                   1261 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 915: RTC->WPR = 0xFF; 
                                   1262 ; genPointerSet
      00D8C4 35 FF 51 59      [ 1] 1263 	mov	0x5159+0, #0xff
                                   1264 ; genGoto
      00D8C8 20 71            [ 2] 1265 	jra	00118$
                                   1266 ; peephole j5 changed absolute to relative unconditional jump.
                                   1267 ; genLabel
      00D8CA                       1268 00117$:
                                   1269 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 919: (void)(RTC->TR1);
                                   1270 ; genPointerGet
                                   1271 ; Dummy read
      00D8CA C6 51 40         [ 1] 1272 	ld	a, 0x5140
                                   1273 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 924: RTC->DR1 = (uint8_t)(RTC_DateStruct->RTC_Date);
                                   1274 ; genAssign
      00D8CD 1E 08            [ 2] 1275 	ldw	x, (0x08, sp)
                                   1276 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 925: RTC->DR2 = (uint8_t)((RTC_DateStruct->RTC_Month) | (uint8_t)((RTC_DateStruct->RTC_WeekDay) << 5));
                                   1277 ; genCast
                                   1278 ; genAssign
      00D8CF 16 08            [ 2] 1279 	ldw	y, (0x08, sp)
      00D8D1 17 03            [ 2] 1280 	ldw	(0x03, sp), y
                                   1281 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 926: RTC->DR3 = (uint8_t)((RTC_DateStruct->RTC_Year));
                                   1282 ; genPlus
      00D8D3 16 08            [ 2] 1283 	ldw	y, (0x08, sp)
      00D8D5 72 A9 00 03      [ 2] 1284 	addw	y, #0x0003
      00D8D9 17 05            [ 2] 1285 	ldw	(0x05, sp), y
                                   1286 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 924: RTC->DR1 = (uint8_t)(RTC_DateStruct->RTC_Date);
                                   1287 ; genPointerGet
      00D8DB E6 02            [ 1] 1288 	ld	a, (0x2, x)
                                   1289 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 922: if (RTC_Format != RTC_Format_BIN)
                                   1290 ; genIfx
      00D8DD 0D 0A            [ 1] 1291 	tnz	(0x0a, sp)
                                   1292 ; peephole j5 changed absolute to relative unconditional jump.
      00D8DF 27 1C            [ 1] 1293 	jreq	00108$
                                   1294 ; peephole j10 removed jra by using inverse jump logic
                                   1295 ; peephole j30 removed unused label 00168$.
                                   1296 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 924: RTC->DR1 = (uint8_t)(RTC_DateStruct->RTC_Date);
                                   1297 ; genPointerSet
      00D8E1 C7 51 44         [ 1] 1298 	ld	0x5144, a
                                   1299 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 925: RTC->DR2 = (uint8_t)((RTC_DateStruct->RTC_Month) | (uint8_t)((RTC_DateStruct->RTC_WeekDay) << 5));
                                   1300 ; genPointerGet
      00D8E4 1E 01            [ 2] 1301 	ldw	x, (0x01, sp)
      00D8E6 F6               [ 1] 1302 	ld	a, (x)
      00D8E7 6B 07            [ 1] 1303 	ld	(0x07, sp), a
                                   1304 ; genPointerGet
      00D8E9 1E 03            [ 2] 1305 	ldw	x, (0x03, sp)
      00D8EB F6               [ 1] 1306 	ld	a, (x)
                                   1307 ; genLeftShiftLiteral
      00D8EC 4E               [ 1] 1308 	swap	a
      00D8ED A4 F0            [ 1] 1309 	and	a, #0xf0
      00D8EF 48               [ 1] 1310 	sll	a
                                   1311 ; genOr
      00D8F0 1A 07            [ 1] 1312 	or	a, (0x07, sp)
                                   1313 ; genPointerSet
      00D8F2 C7 51 45         [ 1] 1314 	ld	0x5145, a
                                   1315 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 926: RTC->DR3 = (uint8_t)((RTC_DateStruct->RTC_Year));
                                   1316 ; genPointerGet
      00D8F5 1E 05            [ 2] 1317 	ldw	x, (0x05, sp)
      00D8F7 F6               [ 1] 1318 	ld	a, (x)
                                   1319 ; genPointerSet
      00D8F8 C7 51 46         [ 1] 1320 	ld	0x5146, a
                                   1321 ; genGoto
      00D8FB 20 23            [ 2] 1322 	jra	00109$
                                   1323 ; peephole j5 changed absolute to relative unconditional jump.
                                   1324 ; genLabel
      00D8FD                       1325 00108$:
                                   1326 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 930: RTC->DR1 = (uint8_t)(ByteToBcd2 ((uint8_t)RTC_DateStruct->RTC_Date));
                                   1327 ; genSend
                                   1328 ; genCall
      00D8FD CD DE EF         [ 4] 1329 	call	_ByteToBcd2
                                   1330 ; genPointerSet
      00D900 C7 51 44         [ 1] 1331 	ld	0x5144, a
                                   1332 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 931: RTC->DR2 = (uint8_t)((ByteToBcd2((uint8_t)RTC_DateStruct->RTC_Month)) | (uint8_t)((RTC_DateStruct->RTC_WeekDay) << 5));
                                   1333 ; genPointerGet
      00D903 1E 01            [ 2] 1334 	ldw	x, (0x01, sp)
      00D905 F6               [ 1] 1335 	ld	a, (x)
                                   1336 ; genSend
                                   1337 ; genCall
      00D906 CD DE EF         [ 4] 1338 	call	_ByteToBcd2
      00D909 6B 07            [ 1] 1339 	ld	(0x07, sp), a
                                   1340 ; genPointerGet
      00D90B 1E 03            [ 2] 1341 	ldw	x, (0x03, sp)
      00D90D F6               [ 1] 1342 	ld	a, (x)
                                   1343 ; genLeftShiftLiteral
      00D90E 4E               [ 1] 1344 	swap	a
      00D90F A4 F0            [ 1] 1345 	and	a, #0xf0
      00D911 48               [ 1] 1346 	sll	a
                                   1347 ; genOr
      00D912 1A 07            [ 1] 1348 	or	a, (0x07, sp)
                                   1349 ; genPointerSet
      00D914 C7 51 45         [ 1] 1350 	ld	0x5145, a
                                   1351 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 932: RTC->DR3 = (uint8_t)(ByteToBcd2((uint8_t)RTC_DateStruct->RTC_Year));
                                   1352 ; genPointerGet
      00D917 1E 05            [ 2] 1353 	ldw	x, (0x05, sp)
      00D919 F6               [ 1] 1354 	ld	a, (x)
                                   1355 ; genSend
                                   1356 ; genCall
      00D91A CD DE EF         [ 4] 1357 	call	_ByteToBcd2
                                   1358 ; genPointerSet
      00D91D C7 51 46         [ 1] 1359 	ld	0x5146, a
                                   1360 ; genLabel
      00D920                       1361 00109$:
                                   1362 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 936: RTC->ISR1 &= (uint8_t)~RTC_ISR1_INIT;
                                   1363 ; genPointerGet
                                   1364 ; genAnd
                                   1365 ; genPointerSet
      00D920 72 1F 51 4C      [ 1] 1366 	bres	0x514c, #7
                                   1367 ; peephole 204x replaced 'and' by 'bres' ('0x514c').
                                   1368 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 939: RTC->WPR = 0xFF; 
                                   1369 ; genPointerSet
      00D924 35 FF 51 59      [ 1] 1370 	mov	0x5159+0, #0xff
                                   1371 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 942: if ((RTC->CR1 & RTC_CR1_BYPSHAD) == RESET)
                                   1372 ; genPointerGet
                                   1373 ; genAnd
                                   1374 ; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x5148').
                                   1375 ; peephole j5 changed absolute to relative unconditional jump.
      00D928 72 08 51 48 0C   [ 2] 1376 	btjt	0x5148, #4, 00114$
                                   1377 ; peephole j34 removed jra by using inverse bit-test-jump logic
                                   1378 ; peephole j30 removed unused label 00169$.
                                   1379 ; skipping generated iCode
                                   1380 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 944: if (RTC_WaitForSynchro() == ERROR)
                                   1381 ; genCall
      00D92D CD D7 27         [ 4] 1382 	call	_RTC_WaitForSynchro
                                   1383 ; genIfx
      00D930 4D               [ 1] 1384 	tnz	a
                                   1385 ; peephole j5 changed absolute to relative unconditional jump.
      00D931 26 03            [ 1] 1386 	jrne	00111$
                                   1387 ; peephole j7 removed jra by using inverse jump logic
                                   1388 ; peephole j30 removed unused label 00170$.
                                   1389 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 946: status = ERROR;
                                   1390 ; genAssign
      00D933 4F               [ 1] 1391 	clr	a
                                   1392 ; genGoto
      00D934 20 05            [ 2] 1393 	jra	00118$
                                   1394 ; peephole j5 changed absolute to relative unconditional jump.
                                   1395 ; genLabel
      00D936                       1396 00111$:
                                   1397 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 950: status = SUCCESS;
                                   1398 ; genAssign
      00D936 A6 01            [ 1] 1399 	ld	a, #0x01
                                   1400 ; genGoto
                                   1401 ; peephole j5 changed absolute to relative unconditional jump.
                                   1402 ; genLabel
                                   1403 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 955: status = SUCCESS;
                                   1404 ; genAssign
                                   1405 ; genLabel
      00D938 C5                    1406 	.byte 0xc5
                                   1407 ; peephole jrf6 used bcp opcode to jump over 2-byte instruction.
      00D939                       1408 00114$:
      00D939 A6 01            [ 1] 1409 	ld	a, #0x01
      00D93B                       1410 00118$:
                                   1411 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 959: return (ErrorStatus)status;
                                   1412 ; genReturn
                                   1413 ; genLabel
                                   1414 ; peephole j30 removed unused label 00119$.
                                   1415 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 960: }
                                   1416 ; genEndFunction
      00D93B 5B 0A            [ 2] 1417 	addw	sp, #10
      00D93D 81               [ 4] 1418 	ret
                                   1419 ;	Total RTC_SetDate function size at codegen: 3 bytes.
                                   1420 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 968: void RTC_DateStructInit(RTC_DateTypeDef* RTC_DateStruct)
                                   1421 ; genLabel
                                   1422 ;	-----------------------------------------
                                   1423 ;	 function RTC_DateStructInit
                                   1424 ;	-----------------------------------------
                                   1425 ;	Register assignment might be sub-optimal.
                                   1426 ;	Stack space usage: 0 bytes.
      00D93E                       1427 _RTC_DateStructInit:
                                   1428 ; genReceive
      00D93E 51               [ 1] 1429 	exgw	x, y
                                   1430 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 971: RTC_DateStruct->RTC_WeekDay = RTC_Weekday_Monday;
                                   1431 ; genPointerSet
      00D93F A6 01            [ 1] 1432 	ld	a, #0x01
      00D941 90 F7            [ 1] 1433 	ld	(y), a
                                   1434 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 972: RTC_DateStruct->RTC_Date = 1;
                                   1435 ; genPlus
      00D943 93               [ 1] 1436 	ldw	x, y
      00D944 5C               [ 1] 1437 	incw	x
      00D945 5C               [ 1] 1438 	incw	x
                                   1439 ; genPointerSet
      00D946 A6 01            [ 1] 1440 	ld	a, #0x01
      00D948 F7               [ 1] 1441 	ld	(x), a
                                   1442 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 973: RTC_DateStruct->RTC_Month = RTC_Month_January;
                                   1443 ; genPlus
      00D949 93               [ 1] 1444 	ldw	x, y
      00D94A 5C               [ 1] 1445 	incw	x
                                   1446 ; genPointerSet
      00D94B A6 01            [ 1] 1447 	ld	a, #0x01
      00D94D F7               [ 1] 1448 	ld	(x), a
                                   1449 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 974: RTC_DateStruct->RTC_Year = 0;
                                   1450 ; genPlus
      00D94E 93               [ 1] 1451 	ldw	x, y
                                   1452 ; genPointerSet
                                   1453 ; peephole 9a moved addition of offset into clear instruction
      00D94F 6F 03            [ 1] 1454 	clr	(0x0003, x)
                                   1455 ; genLabel
                                   1456 ; peephole j30 removed unused label 00101$.
                                   1457 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 975: }
                                   1458 ; genEndFunction
      00D951 81               [ 4] 1459 	ret
                                   1460 ;	Total RTC_DateStructInit function size at codegen: 1 bytes.
                                   1461 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 988: void RTC_GetDate(RTC_Format_TypeDef RTC_Format,
                                   1462 ; genLabel
                                   1463 ;	-----------------------------------------
                                   1464 ;	 function RTC_GetDate
                                   1465 ;	-----------------------------------------
                                   1466 ;	Register assignment might be sub-optimal.
                                   1467 ;	Stack space usage: 6 bytes.
      00D952                       1468 _RTC_GetDate:
      00D952 52 06            [ 2] 1469 	sub	sp, #6
                                   1470 ; genReceive
      00D954 6B 06            [ 1] 1471 	ld	(0x06, sp), a
                                   1472 ; genReceive
      00D956 51               [ 1] 1473 	exgw	x, y
                                   1474 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 997: (void) (RTC->TR1) ;
                                   1475 ; genPointerGet
                                   1476 ; Dummy read
      00D957 C6 51 40         [ 1] 1477 	ld	a, 0x5140
                                   1478 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 998: RTC_DateStruct->RTC_Date = (uint8_t)(RTC->DR1);
                                   1479 ; genPlus
      00D95A 93               [ 1] 1480 	ldw	x, y
      00D95B 5C               [ 1] 1481 	incw	x
      00D95C 5C               [ 1] 1482 	incw	x
      00D95D 1F 01            [ 2] 1483 	ldw	(0x01, sp), x
                                   1484 ; genPointerGet
      00D95F C6 51 44         [ 1] 1485 	ld	a, 0x5144
                                   1486 ; genPointerSet
      00D962 1E 01            [ 2] 1487 	ldw	x, (0x01, sp)
      00D964 F7               [ 1] 1488 	ld	(x), a
                                   1489 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 999: tmpreg = (uint8_t)RTC->DR2;
                                   1490 ; genPointerGet
      00D965 C6 51 45         [ 1] 1491 	ld	a, 0x5145
      00D968 6B 03            [ 1] 1492 	ld	(0x03, sp), a
                                   1493 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1000: RTC_DateStruct->RTC_Year = (uint8_t)(RTC->DR3);
                                   1494 ; genPlus
      00D96A 93               [ 1] 1495 	ldw	x, y
      00D96B 1C 00 03         [ 2] 1496 	addw	x, #0x0003
      00D96E 1F 04            [ 2] 1497 	ldw	(0x04, sp), x
                                   1498 ; genPointerGet
      00D970 C6 51 46         [ 1] 1499 	ld	a, 0x5146
                                   1500 ; genPointerSet
      00D973 1E 04            [ 2] 1501 	ldw	x, (0x04, sp)
      00D975 F7               [ 1] 1502 	ld	(x), a
                                   1503 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1003: RTC_DateStruct->RTC_Month = (RTC_Month_TypeDef)(tmpreg & (uint8_t)(RTC_DR2_MT | RTC_DR2_MU));
                                   1504 ; genPlus
      00D976 93               [ 1] 1505 	ldw	x, y
      00D977 5C               [ 1] 1506 	incw	x
                                   1507 ; genAnd
      00D978 7B 03            [ 1] 1508 	ld	a, (0x03, sp)
      00D97A A4 1F            [ 1] 1509 	and	a, #0x1f
                                   1510 ; genPointerSet
      00D97C F7               [ 1] 1511 	ld	(x), a
                                   1512 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1004: RTC_DateStruct->RTC_WeekDay = (RTC_Weekday_TypeDef)((uint8_t)((uint8_t)tmpreg & (uint8_t)(RTC_DR2_WDU)) >> (uint8_t)5);
                                   1513 ; genCast
                                   1514 ; genAssign
                                   1515 ; genAnd
      00D97D 7B 03            [ 1] 1516 	ld	a, (0x03, sp)
      00D97F A4 E0            [ 1] 1517 	and	a, #0xe0
                                   1518 ; genRightShiftLiteral
      00D981 4E               [ 1] 1519 	swap	a
      00D982 A4 0F            [ 1] 1520 	and	a, #0x0f
      00D984 44               [ 1] 1521 	srl	a
                                   1522 ; genPointerSet
      00D985 90 F7            [ 1] 1523 	ld	(y), a
                                   1524 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1007: if (RTC_Format == RTC_Format_BIN)
                                   1525 ; genIfx
      00D987 0D 06            [ 1] 1526 	tnz	(0x06, sp)
                                   1527 ; peephole j5 changed absolute to relative unconditional jump.
      00D989 26 1D            [ 1] 1528 	jrne	00103$
                                   1529 ; peephole j7 removed jra by using inverse jump logic
                                   1530 ; peephole j30 removed unused label 00112$.
                                   1531 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1010: RTC_DateStruct->RTC_Year = (uint8_t)Bcd2ToByte((uint8_t)RTC_DateStruct->RTC_Year);
                                   1532 ; genPointerGet
      00D98B 16 04            [ 2] 1533 	ldw	y, (0x04, sp)
      00D98D 90 F6            [ 1] 1534 	ld	a, (y)
                                   1535 ; genSend
      00D98F 89               [ 2] 1536 	pushw	x
                                   1537 ; genCall
      00D990 CD DF 02         [ 4] 1538 	call	_Bcd2ToByte
      00D993 85               [ 2] 1539 	popw	x
                                   1540 ; genPointerSet
      00D994 16 04            [ 2] 1541 	ldw	y, (0x04, sp)
      00D996 90 F7            [ 1] 1542 	ld	(y), a
                                   1543 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1011: RTC_DateStruct->RTC_Month = (RTC_Month_TypeDef)Bcd2ToByte((uint8_t)RTC_DateStruct->RTC_Month);
                                   1544 ; genPointerGet
      00D998 F6               [ 1] 1545 	ld	a, (x)
                                   1546 ; genSend
      00D999 89               [ 2] 1547 	pushw	x
                                   1548 ; genCall
      00D99A CD DF 02         [ 4] 1549 	call	_Bcd2ToByte
      00D99D 85               [ 2] 1550 	popw	x
                                   1551 ; genPointerSet
      00D99E F7               [ 1] 1552 	ld	(x), a
                                   1553 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1012: RTC_DateStruct->RTC_Date = (uint8_t)(Bcd2ToByte((uint8_t)RTC_DateStruct->RTC_Date));
                                   1554 ; genPointerGet
      00D99F 1E 01            [ 2] 1555 	ldw	x, (0x01, sp)
      00D9A1 F6               [ 1] 1556 	ld	a, (x)
                                   1557 ; genSend
                                   1558 ; genCall
      00D9A2 CD DF 02         [ 4] 1559 	call	_Bcd2ToByte
                                   1560 ; genPointerSet
      00D9A5 1E 01            [ 2] 1561 	ldw	x, (0x01, sp)
      00D9A7 F7               [ 1] 1562 	ld	(x), a
                                   1563 ; genLabel
      00D9A8                       1564 00103$:
                                   1565 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1014: }
                                   1566 ; genEndFunction
      00D9A8 5B 06            [ 2] 1567 	addw	sp, #6
      00D9AA 81               [ 4] 1568 	ret
                                   1569 ;	Total RTC_GetDate function size at codegen: 3 bytes.
                                   1570 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1044: void RTC_SetAlarm(RTC_Format_TypeDef RTC_Format,
                                   1571 ; genLabel
                                   1572 ;	-----------------------------------------
                                   1573 ;	 function RTC_SetAlarm
                                   1574 ;	-----------------------------------------
                                   1575 ;	Register assignment might be sub-optimal.
                                   1576 ;	Stack space usage: 17 bytes.
      00D9AB                       1577 _RTC_SetAlarm:
      00D9AB 52 11            [ 2] 1578 	sub	sp, #17
                                   1579 ; genReceive
      00D9AD 6B 11            [ 1] 1580 	ld	(0x11, sp), a
                                   1581 ; genReceive
      00D9AF 51               [ 1] 1582 	exgw	x, y
                                   1583 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1062: if ((RTC->CR1 & RTC_CR1_FMT) != RESET)
                                   1584 ; genPointerGet
                                   1585 ; Dummy read
      00D9B0 C6 51 48         [ 1] 1586 	ld	a, 0x5148
                                   1587 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1094: if ((RTC_AlarmStruct->RTC_AlarmMask & RTC_AlarmMask_DateWeekDay) == RESET )
                                   1588 ; genPlus
      00D9B3 93               [ 1] 1589 	ldw	x, y
      00D9B4 1C 00 04         [ 2] 1590 	addw	x, #0x0004
      00D9B7 1F 05            [ 2] 1591 	ldw	(0x05, sp), x
                                   1592 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1108: RTC->WPR = 0xCA;
                                   1593 ; genPointerSet
      00D9B9 35 CA 51 59      [ 1] 1594 	mov	0x5159+0, #0xca
                                   1595 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1109: RTC->WPR = 0x53;
                                   1596 ; genPointerSet
      00D9BD 35 53 51 59      [ 1] 1597 	mov	0x5159+0, #0x53
                                   1598 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1115: tmpreg1 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds) | \
                                   1599 ; genAssign
      00D9C1 17 01            [ 2] 1600 	ldw	(0x01, sp), y
                                   1601 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1118: tmpreg2 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes) | \
                                   1602 ; genPlus
      00D9C3 93               [ 1] 1603 	ldw	x, y
      00D9C4 5C               [ 1] 1604 	incw	x
      00D9C5 1F 03            [ 2] 1605 	ldw	(0x03, sp), x
                                   1606 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1121: tmpreg3 = (uint8_t)((uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours) | \
                                   1607 ; genCast
                                   1608 ; genAssign
      00D9C7 17 07            [ 2] 1609 	ldw	(0x07, sp), y
                                   1610 ; genPlus
      00D9C9 93               [ 1] 1611 	ldw	x, y
      00D9CA 1C 00 03         [ 2] 1612 	addw	x, #0x0003
      00D9CD 1F 09            [ 2] 1613 	ldw	(0x09, sp), x
                                   1614 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1125: tmpreg4 = (uint8_t)((uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmDateWeekDay) | \
                                   1615 ; genPlus
      00D9CF 93               [ 1] 1616 	ldw	x, y
      00D9D0 1C 00 06         [ 2] 1617 	addw	x, #0x0006
      00D9D3 1F 0B            [ 2] 1618 	ldw	(0x0b, sp), x
                                   1619 ; genPlus
      00D9D5 93               [ 1] 1620 	ldw	x, y
      00D9D6 1C 00 05         [ 2] 1621 	addw	x, #0x0005
      00D9D9 1F 0D            [ 2] 1622 	ldw	(0x0d, sp), x
                                   1623 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1115: tmpreg1 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds) | \
                                   1624 ; genPointerGet
      00D9DB 1E 01            [ 2] 1625 	ldw	x, (0x01, sp)
      00D9DD E6 02            [ 1] 1626 	ld	a, (0x2, x)
      00D9DF 6B 10            [ 1] 1627 	ld	(0x10, sp), a
                                   1628 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1113: if (RTC_Format != RTC_Format_BIN)
                                   1629 ; genIfx
      00D9E1 0D 11            [ 1] 1630 	tnz	(0x11, sp)
                                   1631 ; peephole j5 changed absolute to relative unconditional jump.
      00D9E3 27 47            [ 1] 1632 	jreq	00116$
                                   1633 ; peephole j10 removed jra by using inverse jump logic
                                   1634 ; peephole j30 removed unused label 00132$.
                                   1635 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1115: tmpreg1 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds) | \
                                   1636 ; genPointerGet
      00D9E5 1E 05            [ 2] 1637 	ldw	x, (0x05, sp)
      00D9E7 F6               [ 1] 1638 	ld	a, (x)
                                   1639 ; genAnd
      00D9E8 97               [ 1] 1640 	ld	xl, a
                                   1641 ; peephole 4 removed redundant load from xl into a.
      00D9E9 A4 80            [ 1] 1642 	and	a, #0x80
                                   1643 ; genOr
      00D9EB 1A 10            [ 1] 1644 	or	a, (0x10, sp)
      00D9ED 6B 0F            [ 1] 1645 	ld	(0x0f, sp), a
                                   1646 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1118: tmpreg2 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes) | \
                                   1647 ; genPointerGet
      00D9EF 16 03            [ 2] 1648 	ldw	y, (0x03, sp)
      00D9F1 90 F6            [ 1] 1649 	ld	a, (y)
      00D9F3 6B 10            [ 1] 1650 	ld	(0x10, sp), a
                                   1651 ; genLeftShiftLiteral
      00D9F5 9F               [ 1] 1652 	ld	a, xl
      00D9F6 48               [ 1] 1653 	sll	a
                                   1654 ; genAnd
      00D9F7 A4 80            [ 1] 1655 	and	a, #0x80
                                   1656 ; genOr
      00D9F9 1A 10            [ 1] 1657 	or	a, (0x10, sp)
      00D9FB 6B 10            [ 1] 1658 	ld	(0x10, sp), a
                                   1659 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1121: tmpreg3 = (uint8_t)((uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours) | \
                                   1660 ; genPointerGet
      00D9FD 16 07            [ 2] 1661 	ldw	y, (0x07, sp)
      00D9FF 90 F6            [ 1] 1662 	ld	a, (y)
      00DA01 6B 06            [ 1] 1663 	ld	(0x06, sp), a
                                   1664 ; genPointerGet
      00DA03 16 09            [ 2] 1665 	ldw	y, (0x09, sp)
      00DA05 90 F6            [ 1] 1666 	ld	a, (y)
                                   1667 ; genOr
      00DA07 1A 06            [ 1] 1668 	or	a, (0x06, sp)
      00DA09 6B 0A            [ 1] 1669 	ld	(0x0a, sp), a
                                   1670 ; genLeftShiftLiteral
      00DA0B 9F               [ 1] 1671 	ld	a, xl
      00DA0C 48               [ 1] 1672 	sll	a
      00DA0D 48               [ 1] 1673 	sll	a
                                   1674 ; genAnd
      00DA0E A4 80            [ 1] 1675 	and	a, #0x80
                                   1676 ; genOr
      00DA10 1A 0A            [ 1] 1677 	or	a, (0x0a, sp)
      00DA12 6B 0A            [ 1] 1678 	ld	(0x0a, sp), a
                                   1679 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1125: tmpreg4 = (uint8_t)((uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmDateWeekDay) | \
                                   1680 ; genPointerGet
      00DA14 16 0B            [ 2] 1681 	ldw	y, (0x0b, sp)
      00DA16 90 F6            [ 1] 1682 	ld	a, (y)
      00DA18 6B 09            [ 1] 1683 	ld	(0x09, sp), a
                                   1684 ; genPointerGet
      00DA1A 16 0D            [ 2] 1685 	ldw	y, (0x0d, sp)
      00DA1C 90 F6            [ 1] 1686 	ld	a, (y)
                                   1687 ; genOr
      00DA1E 1A 09            [ 1] 1688 	or	a, (0x09, sp)
      00DA20 6B 0E            [ 1] 1689 	ld	(0x0e, sp), a
                                   1690 ; genLeftShiftLiteral
      00DA22 9F               [ 1] 1691 	ld	a, xl
      00DA23 48               [ 1] 1692 	sll	a
      00DA24 48               [ 1] 1693 	sll	a
      00DA25 48               [ 1] 1694 	sll	a
                                   1695 ; genAnd
      00DA26 A4 80            [ 1] 1696 	and	a, #0x80
                                   1697 ; genOr
      00DA28 1A 0E            [ 1] 1698 	or	a, (0x0e, sp)
                                   1699 ; genGoto
      00DA2A 20 55            [ 2] 1700 	jra	00117$
                                   1701 ; peephole j5 changed absolute to relative unconditional jump.
                                   1702 ; genLabel
      00DA2C                       1703 00116$:
                                   1704 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1132: tmpreg1 = (uint8_t)((ByteToBcd2(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds)) | \
                                   1705 ; genSend
      00DA2C 7B 10            [ 1] 1706 	ld	a, (0x10, sp)
                                   1707 ; genCall
      00DA2E CD DE EF         [ 4] 1708 	call	_ByteToBcd2
      00DA31 6B 10            [ 1] 1709 	ld	(0x10, sp), a
                                   1710 ; genPointerGet
      00DA33 1E 05            [ 2] 1711 	ldw	x, (0x05, sp)
      00DA35 F6               [ 1] 1712 	ld	a, (x)
                                   1713 ; genAnd
      00DA36 A4 80            [ 1] 1714 	and	a, #0x80
                                   1715 ; genOr
      00DA38 1A 10            [ 1] 1716 	or	a, (0x10, sp)
      00DA3A 6B 0F            [ 1] 1717 	ld	(0x0f, sp), a
                                   1718 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1135: tmpreg2 = (uint8_t)((ByteToBcd2(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes)) | \
                                   1719 ; genPointerGet
      00DA3C 1E 03            [ 2] 1720 	ldw	x, (0x03, sp)
      00DA3E F6               [ 1] 1721 	ld	a, (x)
                                   1722 ; genSend
                                   1723 ; genCall
      00DA3F CD DE EF         [ 4] 1724 	call	_ByteToBcd2
      00DA42 6B 10            [ 1] 1725 	ld	(0x10, sp), a
                                   1726 ; genPointerGet
      00DA44 1E 05            [ 2] 1727 	ldw	x, (0x05, sp)
      00DA46 F6               [ 1] 1728 	ld	a, (x)
                                   1729 ; genLeftShiftLiteral
      00DA47 48               [ 1] 1730 	sll	a
                                   1731 ; genAnd
      00DA48 A4 80            [ 1] 1732 	and	a, #0x80
                                   1733 ; genOr
      00DA4A 1A 10            [ 1] 1734 	or	a, (0x10, sp)
      00DA4C 6B 10            [ 1] 1735 	ld	(0x10, sp), a
                                   1736 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1138: tmpreg3 = (uint8_t)((uint8_t)((ByteToBcd2(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours)) | \
                                   1737 ; genPointerGet
      00DA4E 1E 07            [ 2] 1738 	ldw	x, (0x07, sp)
      00DA50 F6               [ 1] 1739 	ld	a, (x)
                                   1740 ; genSend
                                   1741 ; genCall
      00DA51 CD DE EF         [ 4] 1742 	call	_ByteToBcd2
      00DA54 6B 08            [ 1] 1743 	ld	(0x08, sp), a
                                   1744 ; genPointerGet
      00DA56 1E 09            [ 2] 1745 	ldw	x, (0x09, sp)
      00DA58 F6               [ 1] 1746 	ld	a, (x)
                                   1747 ; genOr
      00DA59 1A 08            [ 1] 1748 	or	a, (0x08, sp)
      00DA5B 6B 0A            [ 1] 1749 	ld	(0x0a, sp), a
                                   1750 ; genPointerGet
      00DA5D 1E 05            [ 2] 1751 	ldw	x, (0x05, sp)
      00DA5F F6               [ 1] 1752 	ld	a, (x)
                                   1753 ; genLeftShiftLiteral
      00DA60 48               [ 1] 1754 	sll	a
      00DA61 48               [ 1] 1755 	sll	a
                                   1756 ; genAnd
      00DA62 A4 80            [ 1] 1757 	and	a, #0x80
                                   1758 ; genOr
      00DA64 1A 0A            [ 1] 1759 	or	a, (0x0a, sp)
      00DA66 6B 0A            [ 1] 1760 	ld	(0x0a, sp), a
                                   1761 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1142: tmpreg4 = (uint8_t)((uint8_t)((ByteToBcd2(RTC_AlarmStruct->RTC_AlarmDateWeekDay)) | \
                                   1762 ; genPointerGet
      00DA68 1E 0B            [ 2] 1763 	ldw	x, (0x0b, sp)
      00DA6A F6               [ 1] 1764 	ld	a, (x)
                                   1765 ; genSend
                                   1766 ; genCall
      00DA6B CD DE EF         [ 4] 1767 	call	_ByteToBcd2
      00DA6E 6B 0C            [ 1] 1768 	ld	(0x0c, sp), a
                                   1769 ; genPointerGet
      00DA70 1E 0D            [ 2] 1770 	ldw	x, (0x0d, sp)
      00DA72 F6               [ 1] 1771 	ld	a, (x)
                                   1772 ; genOr
      00DA73 1A 0C            [ 1] 1773 	or	a, (0x0c, sp)
      00DA75 6B 0E            [ 1] 1774 	ld	(0x0e, sp), a
                                   1775 ; genPointerGet
      00DA77 1E 05            [ 2] 1776 	ldw	x, (0x05, sp)
      00DA79 F6               [ 1] 1777 	ld	a, (x)
                                   1778 ; genLeftShiftLiteral
      00DA7A 48               [ 1] 1779 	sll	a
      00DA7B 48               [ 1] 1780 	sll	a
      00DA7C 48               [ 1] 1781 	sll	a
                                   1782 ; genAnd
      00DA7D A4 80            [ 1] 1783 	and	a, #0x80
                                   1784 ; genOr
      00DA7F 1A 0E            [ 1] 1785 	or	a, (0x0e, sp)
                                   1786 ; genLabel
      00DA81                       1787 00117$:
                                   1788 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1148: RTC->ALRMAR1 = tmpreg1;
                                   1789 ; genPointerSet
      00DA81 AE 51 5C         [ 2] 1790 	ldw	x, #0x515c
      00DA84 88               [ 1] 1791 	push	a
      00DA85 7B 10            [ 1] 1792 	ld	a, (0x10, sp)
      00DA87 F7               [ 1] 1793 	ld	(x), a
      00DA88 84               [ 1] 1794 	pop	a
                                   1795 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1149: RTC->ALRMAR2 = tmpreg2;
                                   1796 ; genPointerSet
      00DA89 AE 51 5D         [ 2] 1797 	ldw	x, #0x515d
      00DA8C 88               [ 1] 1798 	push	a
      00DA8D 7B 11            [ 1] 1799 	ld	a, (0x11, sp)
      00DA8F F7               [ 1] 1800 	ld	(x), a
      00DA90 84               [ 1] 1801 	pop	a
                                   1802 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1150: RTC->ALRMAR3 = tmpreg3;
                                   1803 ; genPointerSet
      00DA91 AE 51 5E         [ 2] 1804 	ldw	x, #0x515e
      00DA94 88               [ 1] 1805 	push	a
      00DA95 7B 0B            [ 1] 1806 	ld	a, (0x0b, sp)
      00DA97 F7               [ 1] 1807 	ld	(x), a
      00DA98 84               [ 1] 1808 	pop	a
                                   1809 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1151: RTC->ALRMAR4 = tmpreg4;
                                   1810 ; genPointerSet
      00DA99 C7 51 5F         [ 1] 1811 	ld	0x515f, a
                                   1812 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1154: RTC->WPR = 0xFF; 
                                   1813 ; genPointerSet
      00DA9C 35 FF 51 59      [ 1] 1814 	mov	0x5159+0, #0xff
                                   1815 ; genLabel
                                   1816 ; peephole j30 removed unused label 00118$.
                                   1817 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1155: }
                                   1818 ; genEndFunction
      00DAA0 5B 11            [ 2] 1819 	addw	sp, #17
      00DAA2 81               [ 4] 1820 	ret
                                   1821 ;	Total RTC_SetAlarm function size at codegen: 3 bytes.
                                   1822 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1165: void RTC_AlarmStructInit(RTC_AlarmTypeDef* RTC_AlarmStruct)
                                   1823 ; genLabel
                                   1824 ;	-----------------------------------------
                                   1825 ;	 function RTC_AlarmStructInit
                                   1826 ;	-----------------------------------------
                                   1827 ;	Register assignment might be sub-optimal.
                                   1828 ;	Stack space usage: 0 bytes.
      00DAA3                       1829 _RTC_AlarmStructInit:
                                   1830 ; genReceive
                                   1831 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1168: RTC_AlarmStruct->RTC_AlarmTime.RTC_H12 = RTC_H12_AM;
                                   1832 ; genPlus
                                   1833 ; peephole 5w replaced exgw-ldw by ldw.
      00DAA3 90 93            [ 1] 1834 	ldw	y, x
                                   1835 ; genPointerSet
                                   1836 ; peephole 9a moved addition of offset into clear instruction
      00DAA5 6F 03            [ 1] 1837 	clr	(0x0003, x)
                                   1838 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1169: RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours = 0;
                                   1839 ; genPointerSet
      00DAA7 90 7F            [ 1] 1840 	clr	(y)
                                   1841 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1170: RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes = 0;
                                   1842 ; genPlus
      00DAA9 93               [ 1] 1843 	ldw	x, y
                                   1844 ; genPointerSet
                                   1845 ; peephole 10j moved addition of offset into instruction
      00DAAA 6F 01            [ 1] 1846 	clr	(0x01, x)
                                   1847 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1171: RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds = 0;
                                   1848 ; genPlus
      00DAAC 93               [ 1] 1849 	ldw	x, y
                                   1850 ; genPointerSet
                                   1851 ; peephole 10i moved addition of offset into instruction
      00DAAD 6F 02            [ 1] 1852 	clr	(0x02, x)
                                   1853 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1174: RTC_AlarmStruct->RTC_AlarmDateWeekDaySel = RTC_AlarmDateWeekDaySel_Date;
                                   1854 ; genPlus
      00DAAF 93               [ 1] 1855 	ldw	x, y
                                   1856 ; genPointerSet
                                   1857 ; peephole 9a moved addition of offset into clear instruction
      00DAB0 6F 05            [ 1] 1858 	clr	(0x0005, x)
                                   1859 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1175: RTC_AlarmStruct->RTC_AlarmDateWeekDay = 1;
                                   1860 ; genPlus
                                   1861 ; genPointerSet
                                   1862 ; peephole 9 moved addition of offset into storage instruction
                                   1863 ; peephole 14c used y directly instead of going through x.
      00DAB2 A6 01            [ 1] 1864 	ld	a, #0x01
      00DAB4 90 E7 06         [ 1] 1865 	ld	(0x0006, y), a
                                   1866 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1178: RTC_AlarmStruct->RTC_AlarmMask = RTC_AlarmMask_All;
                                   1867 ; genPlus
                                   1868 ; genPointerSet
                                   1869 ; peephole 9 moved addition of offset into storage instruction
                                   1870 ; peephole 14c used y directly instead of going through x.
      00DAB7 A6 F0            [ 1] 1871 	ld	a, #0xf0
      00DAB9 90 E7 04         [ 1] 1872 	ld	(0x0004, y), a
                                   1873 ; genLabel
                                   1874 ; peephole j30 removed unused label 00101$.
                                   1875 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1179: }
                                   1876 ; genEndFunction
      00DABC 81               [ 4] 1877 	ret
                                   1878 ;	Total RTC_AlarmStructInit function size at codegen: 1 bytes.
                                   1879 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1188: void RTC_GetAlarm(RTC_Format_TypeDef RTC_Format,
                                   1880 ; genLabel
                                   1881 ;	-----------------------------------------
                                   1882 ;	 function RTC_GetAlarm
                                   1883 ;	-----------------------------------------
                                   1884 ;	Register assignment might be sub-optimal.
                                   1885 ;	Stack space usage: 11 bytes.
      00DABD                       1886 _RTC_GetAlarm:
      00DABD 52 0B            [ 2] 1887 	sub	sp, #11
                                   1888 ; genReceive
      00DABF 6B 0B            [ 1] 1889 	ld	(0x0b, sp), a
                                   1890 ; genReceive
      00DAC1 1F 09            [ 2] 1891 	ldw	(0x09, sp), x
                                   1892 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1201: tmpreg1 = (uint8_t)RTC->ALRMAR1;
                                   1893 ; genPointerGet
      00DAC3 C6 51 5C         [ 1] 1894 	ld	a, 0x515c
      00DAC6 6B 08            [ 1] 1895 	ld	(0x08, sp), a
                                   1896 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1202: tmpreg2 = (uint8_t)RTC->ALRMAR2;
                                   1897 ; genPointerGet
      00DAC8 C6 51 5D         [ 1] 1898 	ld	a, 0x515d
      00DACB 6B 01            [ 1] 1899 	ld	(0x01, sp), a
                                   1900 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1203: tmpreg3 = (uint8_t)RTC->ALRMAR3;
                                   1901 ; genPointerGet
      00DACD C6 51 5E         [ 1] 1902 	ld	a, 0x515e
      00DAD0 6B 02            [ 1] 1903 	ld	(0x02, sp), a
                                   1904 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1204: tmpreg4 = (uint8_t)RTC->ALRMAR4;
                                   1905 ; genPointerGet
      00DAD2 C6 51 5F         [ 1] 1906 	ld	a, 0x515f
      00DAD5 6B 03            [ 1] 1907 	ld	(0x03, sp), a
                                   1908 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1207: RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds = (uint8_t)((uint8_t)tmpreg1 & (uint8_t)((uint8_t)RTC_ALRMAR1_ST | (uint8_t)RTC_ALRMAR1_SU));
                                   1909 ; genPlus
      00DAD7 1E 09            [ 2] 1910 	ldw	x, (0x09, sp)
      00DAD9 5C               [ 1] 1911 	incw	x
      00DADA 5C               [ 1] 1912 	incw	x
      00DADB 1F 04            [ 2] 1913 	ldw	(0x04, sp), x
                                   1914 ; genAnd
      00DADD 7B 08            [ 1] 1915 	ld	a, (0x08, sp)
      00DADF A4 7F            [ 1] 1916 	and	a, #0x7f
                                   1917 ; genPointerSet
      00DAE1 1E 04            [ 2] 1918 	ldw	x, (0x04, sp)
      00DAE3 F7               [ 1] 1919 	ld	(x), a
                                   1920 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1208: alarmmask = (uint8_t)(tmpreg1 & RTC_ALRMAR1_MSK1);
                                   1921 ; genAnd
      00DAE4 7B 08            [ 1] 1922 	ld	a, (0x08, sp)
      00DAE6 A4 80            [ 1] 1923 	and	a, #0x80
      00DAE8 6B 08            [ 1] 1924 	ld	(0x08, sp), a
                                   1925 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1211: RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes = (uint8_t)((uint8_t)tmpreg2 & (uint8_t)((uint8_t)RTC_ALRMAR2_MNT | (uint8_t)RTC_ALRMAR2_MNU));
                                   1926 ; genPlus
      00DAEA 1E 09            [ 2] 1927 	ldw	x, (0x09, sp)
      00DAEC 5C               [ 1] 1928 	incw	x
      00DAED 1F 06            [ 2] 1929 	ldw	(0x06, sp), x
                                   1930 ; genAnd
      00DAEF 7B 01            [ 1] 1931 	ld	a, (0x01, sp)
      00DAF1 A4 7F            [ 1] 1932 	and	a, #0x7f
                                   1933 ; genPointerSet
      00DAF3 1E 06            [ 2] 1934 	ldw	x, (0x06, sp)
      00DAF5 F7               [ 1] 1935 	ld	(x), a
                                   1936 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1212: alarmmask = (uint8_t)((alarmmask) | (uint8_t)((uint8_t)(tmpreg2 & RTC_ALRMAR2_MSK2) >> 1));
                                   1937 ; genAnd
      00DAF6 7B 01            [ 1] 1938 	ld	a, (0x01, sp)
      00DAF8 A4 80            [ 1] 1939 	and	a, #0x80
                                   1940 ; genRightShiftLiteral
      00DAFA 44               [ 1] 1941 	srl	a
                                   1942 ; genOr
      00DAFB 1A 08            [ 1] 1943 	or	a, (0x08, sp)
      00DAFD 6B 08            [ 1] 1944 	ld	(0x08, sp), a
                                   1945 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1215: RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours = (uint8_t)((uint8_t)tmpreg3 & (uint8_t)((uint8_t)RTC_ALRMAR3_HT | (uint8_t)RTC_ALRMAR3_HU));
                                   1946 ; genCast
                                   1947 ; genAssign
      00DAFF 16 09            [ 2] 1948 	ldw	y, (0x09, sp)
                                   1949 ; genAnd
      00DB01 7B 02            [ 1] 1950 	ld	a, (0x02, sp)
      00DB03 A4 3F            [ 1] 1951 	and	a, #0x3f
                                   1952 ; genPointerSet
      00DB05 90 F7            [ 1] 1953 	ld	(y), a
                                   1954 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1216: RTC_AlarmStruct->RTC_AlarmTime.RTC_H12 = (RTC_H12_TypeDef)((uint8_t)tmpreg3 & (uint8_t)RTC_ALRMAR3_PM);
                                   1955 ; genPlus
      00DB07 1E 09            [ 2] 1956 	ldw	x, (0x09, sp)
      00DB09 1C 00 03         [ 2] 1957 	addw	x, #0x0003
                                   1958 ; genAnd
      00DB0C 7B 02            [ 1] 1959 	ld	a, (0x02, sp)
      00DB0E A4 40            [ 1] 1960 	and	a, #0x40
                                   1961 ; genPointerSet
      00DB10 F7               [ 1] 1962 	ld	(x), a
                                   1963 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1217: alarmmask = (uint8_t)((alarmmask) | (uint8_t)((uint8_t)((uint8_t)tmpreg3 & (uint8_t)RTC_ALRMAR3_MSK3) >> 2));
                                   1964 ; genAnd
      00DB11 7B 02            [ 1] 1965 	ld	a, (0x02, sp)
      00DB13 A4 80            [ 1] 1966 	and	a, #0x80
                                   1967 ; genRightShiftLiteral
      00DB15 44               [ 1] 1968 	srl	a
      00DB16 44               [ 1] 1969 	srl	a
                                   1970 ; genOr
      00DB17 1A 08            [ 1] 1971 	or	a, (0x08, sp)
      00DB19 6B 08            [ 1] 1972 	ld	(0x08, sp), a
                                   1973 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1220: RTC_AlarmStruct->RTC_AlarmDateWeekDay = (uint8_t)((uint8_t)tmpreg4 & (uint8_t)((uint8_t)RTC_ALRMAR4_DT | (uint8_t)RTC_ALRMAR4_DU));
                                   1974 ; genPlus
      00DB1B 1E 09            [ 2] 1975 	ldw	x, (0x09, sp)
      00DB1D 1C 00 06         [ 2] 1976 	addw	x, #0x0006
      00DB20 1F 01            [ 2] 1977 	ldw	(0x01, sp), x
                                   1978 ; genAnd
      00DB22 7B 03            [ 1] 1979 	ld	a, (0x03, sp)
      00DB24 A4 3F            [ 1] 1980 	and	a, #0x3f
                                   1981 ; genPointerSet
      00DB26 1E 01            [ 2] 1982 	ldw	x, (0x01, sp)
      00DB28 F7               [ 1] 1983 	ld	(x), a
                                   1984 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1221: RTC_AlarmStruct->RTC_AlarmDateWeekDaySel = (RTC_AlarmDateWeekDaySel_TypeDef)((uint8_t)tmpreg4 & (uint8_t)RTC_ALRMAR4_WDSEL);
                                   1985 ; genPlus
      00DB29 1E 09            [ 2] 1986 	ldw	x, (0x09, sp)
      00DB2B 1C 00 05         [ 2] 1987 	addw	x, #0x0005
                                   1988 ; genAnd
      00DB2E 7B 03            [ 1] 1989 	ld	a, (0x03, sp)
      00DB30 A4 40            [ 1] 1990 	and	a, #0x40
                                   1991 ; genPointerSet
      00DB32 F7               [ 1] 1992 	ld	(x), a
                                   1993 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1222: alarmmask = (uint8_t)((alarmmask) | (uint8_t)((uint8_t)((uint8_t)tmpreg4 & RTC_ALRMAR4_MSK4) >> 3));
                                   1994 ; genAnd
      00DB33 7B 03            [ 1] 1995 	ld	a, (0x03, sp)
      00DB35 A4 80            [ 1] 1996 	and	a, #0x80
                                   1997 ; genRightShiftLiteral
      00DB37 44               [ 1] 1998 	srl	a
      00DB38 44               [ 1] 1999 	srl	a
      00DB39 44               [ 1] 2000 	srl	a
                                   2001 ; genOr
      00DB3A 1A 08            [ 1] 2002 	or	a, (0x08, sp)
                                   2003 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1224: RTC_AlarmStruct->RTC_AlarmMask = alarmmask;
                                   2004 ; genPlus
      00DB3C 1E 09            [ 2] 2005 	ldw	x, (0x09, sp)
      00DB3E 1C 00 04         [ 2] 2006 	addw	x, #0x0004
                                   2007 ; genPointerSet
      00DB41 F7               [ 1] 2008 	ld	(x), a
                                   2009 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1226: if (RTC_Format == RTC_Format_BIN)
                                   2010 ; genIfx
      00DB42 0D 0B            [ 1] 2011 	tnz	(0x0b, sp)
                                   2012 ; peephole j5 changed absolute to relative unconditional jump.
      00DB44 26 26            [ 1] 2013 	jrne	00103$
                                   2014 ; peephole j7 removed jra by using inverse jump logic
                                   2015 ; peephole j30 removed unused label 00112$.
                                   2016 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1228: RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours = Bcd2ToByte(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours);
                                   2017 ; genPointerGet
      00DB46 90 F6            [ 1] 2018 	ld	a, (y)
                                   2019 ; genSend
      00DB48 90 89            [ 2] 2020 	pushw	y
                                   2021 ; genCall
      00DB4A CD DF 02         [ 4] 2022 	call	_Bcd2ToByte
      00DB4D 90 85            [ 2] 2023 	popw	y
                                   2024 ; genPointerSet
      00DB4F 90 F7            [ 1] 2025 	ld	(y), a
                                   2026 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1229: RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes = Bcd2ToByte(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes);
                                   2027 ; genPointerGet
      00DB51 1E 06            [ 2] 2028 	ldw	x, (0x06, sp)
      00DB53 F6               [ 1] 2029 	ld	a, (x)
                                   2030 ; genSend
                                   2031 ; genCall
      00DB54 CD DF 02         [ 4] 2032 	call	_Bcd2ToByte
                                   2033 ; genPointerSet
      00DB57 1E 06            [ 2] 2034 	ldw	x, (0x06, sp)
      00DB59 F7               [ 1] 2035 	ld	(x), a
                                   2036 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1230: RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds = Bcd2ToByte(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds);
                                   2037 ; genPointerGet
      00DB5A 1E 04            [ 2] 2038 	ldw	x, (0x04, sp)
      00DB5C F6               [ 1] 2039 	ld	a, (x)
                                   2040 ; genSend
                                   2041 ; genCall
      00DB5D CD DF 02         [ 4] 2042 	call	_Bcd2ToByte
                                   2043 ; genPointerSet
      00DB60 1E 04            [ 2] 2044 	ldw	x, (0x04, sp)
      00DB62 F7               [ 1] 2045 	ld	(x), a
                                   2046 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1231: RTC_AlarmStruct->RTC_AlarmDateWeekDay = Bcd2ToByte(RTC_AlarmStruct->RTC_AlarmDateWeekDay);
                                   2047 ; genPointerGet
      00DB63 1E 01            [ 2] 2048 	ldw	x, (0x01, sp)
      00DB65 F6               [ 1] 2049 	ld	a, (x)
                                   2050 ; genSend
                                   2051 ; genCall
      00DB66 CD DF 02         [ 4] 2052 	call	_Bcd2ToByte
                                   2053 ; genPointerSet
      00DB69 1E 01            [ 2] 2054 	ldw	x, (0x01, sp)
      00DB6B F7               [ 1] 2055 	ld	(x), a
                                   2056 ; genLabel
      00DB6C                       2057 00103$:
                                   2058 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1233: }
                                   2059 ; genEndFunction
      00DB6C 5B 0B            [ 2] 2060 	addw	sp, #11
      00DB6E 81               [ 4] 2061 	ret
                                   2062 ;	Total RTC_GetAlarm function size at codegen: 3 bytes.
                                   2063 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1242: ErrorStatus RTC_AlarmCmd(FunctionalState NewState)
                                   2064 ; genLabel
                                   2065 ;	-----------------------------------------
                                   2066 ;	 function RTC_AlarmCmd
                                   2067 ;	-----------------------------------------
                                   2068 ;	Register assignment might be sub-optimal.
                                   2069 ;	Stack space usage: 3 bytes.
      00DB6F                       2070 _RTC_AlarmCmd:
      00DB6F 52 03            [ 2] 2071 	sub	sp, #3
                                   2072 ; genReceive
      00DB71 6B 03            [ 1] 2073 	ld	(0x03, sp), a
                                   2074 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1244: __IO uint16_t alrawfcount = 0;
                                   2075 ; genAssign
      00DB73 5F               [ 1] 2076 	clrw	x
      00DB74 1F 01            [ 2] 2077 	ldw	(0x01, sp), x
                                   2078 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1252: RTC->WPR = 0xCA;
                                   2079 ; genPointerSet
      00DB76 35 CA 51 59      [ 1] 2080 	mov	0x5159+0, #0xca
                                   2081 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1253: RTC->WPR = 0x53;
                                   2082 ; genPointerSet
      00DB7A 35 53 51 59      [ 1] 2083 	mov	0x5159+0, #0x53
                                   2084 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1258: RTC->CR2 |= (uint8_t)(RTC_CR2_ALRAE);
                                   2085 ; genPointerGet
      00DB7E C6 51 49         [ 1] 2086 	ld	a, 0x5149
                                   2087 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1256: if (NewState != DISABLE)
                                   2088 ; genIfx
      00DB81 0D 03            [ 1] 2089 	tnz	(0x03, sp)
                                   2090 ; peephole j5 changed absolute to relative unconditional jump.
      00DB83 27 09            [ 1] 2091 	jreq	00109$
                                   2092 ; peephole j10 removed jra by using inverse jump logic
                                   2093 ; peephole j30 removed unused label 00148$.
                                   2094 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1258: RTC->CR2 |= (uint8_t)(RTC_CR2_ALRAE);
                                   2095 ; genOr
      00DB85 AA 01            [ 1] 2096 	or	a, #0x01
                                   2097 ; genPointerSet
      00DB87 C7 51 49         [ 1] 2098 	ld	0x5149, a
                                   2099 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1259: status = SUCCESS;
                                   2100 ; genAssign
      00DB8A A6 01            [ 1] 2101 	ld	a, #0x01
                                   2102 ; genGoto
      00DB8C 20 22            [ 2] 2103 	jra	00110$
                                   2104 ; peephole j5 changed absolute to relative unconditional jump.
                                   2105 ; genLabel
      00DB8E                       2106 00109$:
                                   2107 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1263: RTC->CR2 &= (uint8_t)~(RTC_CR2_ALRAE) ;
                                   2108 ; genAnd
      00DB8E A4 FE            [ 1] 2109 	and	a, #0xfe
                                   2110 ; genPointerSet
      00DB90 C7 51 49         [ 1] 2111 	ld	0x5149, a
                                   2112 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1266: temp1 = (uint8_t)(RTC->ISR1 & RTC_ISR1_ALRAWF);
                                   2113 ; genPointerGet
      00DB93 C6 51 4C         [ 1] 2114 	ld	a, 0x514c
                                   2115 ; genAnd
      00DB96 A4 01            [ 1] 2116 	and	a, #0x01
                                   2117 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1267: while ((alrawfcount != ALRAWF_TIMEOUT) && (temp1 == RESET))
                                   2118 ; genLabel
      00DB98                       2119 00102$:
                                   2120 ; genCmpEQorNE
      00DB98 1E 01            [ 2] 2121 	ldw	x, (0x01, sp)
      00DB9A 5C               [ 1] 2122 	incw	x
                                   2123 ; peephole j5 changed absolute to relative unconditional jump.
      00DB9B 27 0A            [ 1] 2124 	jreq	00104$
                                   2125 ; peephole j10 removed jra by using inverse jump logic
                                   2126 ; peephole j30 removed unused label 00150$.
                                   2127 ; skipping generated iCode
                                   2128 ; genIfx
      00DB9D 4D               [ 1] 2129 	tnz	a
                                   2130 ; peephole j5 changed absolute to relative unconditional jump.
      00DB9E 26 07            [ 1] 2131 	jrne	00104$
                                   2132 ; peephole j7 removed jra by using inverse jump logic
                                   2133 ; peephole j30 removed unused label 00152$.
                                   2134 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1269: alrawfcount++;
                                   2135 ; genAssign
      00DBA0 1E 01            [ 2] 2136 	ldw	x, (0x01, sp)
                                   2137 ; genPlus
      00DBA2 5C               [ 1] 2138 	incw	x
                                   2139 ; genAssign
      00DBA3 1F 01            [ 2] 2140 	ldw	(0x01, sp), x
                                   2141 ; genGoto
      00DBA5 20 F1            [ 2] 2142 	jra	00102$
                                   2143 ; peephole j5 changed absolute to relative unconditional jump.
                                   2144 ; genLabel
      00DBA7                       2145 00104$:
                                   2146 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1272: if ((RTC->ISR1 &  RTC_ISR1_ALRAWF) == RESET)
                                   2147 ; genPointerGet
                                   2148 ; genAnd
                                   2149 ; peephole j541x replaced 'ld-srl-jrnc' by 'btjf' ('0x514c').
                                   2150 ; peephole j5 changed absolute to relative unconditional jump.
      00DBA7 72 00 51 4C 02   [ 2] 2151 	btjt	0x514c, #0, 00106$
                                   2152 ; peephole j34 removed jra by using inverse bit-test-jump logic
                                   2153 ; peephole j30 removed unused label 00153$.
                                   2154 ; skipping generated iCode
                                   2155 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1274: status = ERROR;
                                   2156 ; genAssign
      00DBAC 4F               [ 1] 2157 	clr	a
                                   2158 ; genGoto
                                   2159 ; peephole j5 changed absolute to relative unconditional jump.
                                   2160 ; genLabel
                                   2161 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1278: status = SUCCESS;
                                   2162 ; genAssign
                                   2163 ; genLabel
      00DBAD C5                    2164 	.byte 0xc5
                                   2165 ; peephole jrf6 used bcp opcode to jump over 2-byte instruction.
      00DBAE                       2166 00106$:
      00DBAE A6 01            [ 1] 2167 	ld	a, #0x01
      00DBB0                       2168 00110$:
                                   2169 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1283: RTC->WPR = 0xFF; 
                                   2170 ; genPointerSet
      00DBB0 35 FF 51 59      [ 1] 2171 	mov	0x5159+0, #0xff
                                   2172 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1286: return (ErrorStatus)status;
                                   2173 ; genReturn
                                   2174 ; genLabel
                                   2175 ; peephole j30 removed unused label 00111$.
                                   2176 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1287: }
                                   2177 ; genEndFunction
      00DBB4 5B 03            [ 2] 2178 	addw	sp, #3
      00DBB6 81               [ 4] 2179 	ret
                                   2180 ;	Total RTC_AlarmCmd function size at codegen: 3 bytes.
                                   2181 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1298: ErrorStatus RTC_AlarmSubSecondConfig(uint16_t RTC_AlarmSubSecondValue,
                                   2182 ; genLabel
                                   2183 ;	-----------------------------------------
                                   2184 ;	 function RTC_AlarmSubSecondConfig
                                   2185 ;	-----------------------------------------
                                   2186 ;	Register assignment might be sub-optimal.
                                   2187 ;	Stack space usage: 2 bytes.
      00DBB7                       2188 _RTC_AlarmSubSecondConfig:
      00DBB7 89               [ 2] 2189 	pushw	x
                                   2190 ; genReceive
                                   2191 ; genReceive
      00DBB8 6B 02            [ 1] 2192 	ld	(0x02, sp), a
                                   2193 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1309: RTC->WPR = 0xCA;
                                   2194 ; genPointerSet
      00DBBA 35 CA 51 59      [ 1] 2195 	mov	0x5159+0, #0xca
                                   2196 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1310: RTC->WPR = 0x53;
                                   2197 ; genPointerSet
      00DBBE 35 53 51 59      [ 1] 2198 	mov	0x5159+0, #0x53
                                   2199 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1313: if ((RTC->ISR1 & RTC_ISR1_INITF) == RESET)
                                   2200 ; genPointerGet
                                   2201 ; genAnd
                                   2202 ; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
                                   2203 ; peephole j5 changed absolute to relative unconditional jump.
      00DBC2 72 0C 51 4C 24   [ 2] 2204 	btjt	0x514c, #6, 00102$
                                   2205 ; peephole j34 removed jra by using inverse bit-test-jump logic
                                   2206 ; peephole j30 removed unused label 00113$.
                                   2207 ; skipping generated iCode
                                   2208 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1316: alarmstatus = (uint8_t)(RTC->CR2 | RTC_CR2_ALRAE);
                                   2209 ; genPointerGet
      00DBC7 C6 51 49         [ 1] 2210 	ld	a, 0x5149
                                   2211 ; genOr
      00DBCA AA 01            [ 1] 2212 	or	a, #0x01
      00DBCC 6B 01            [ 1] 2213 	ld	(0x01, sp), a
                                   2214 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1319: RTC->CR2 &= (uint8_t)~(RTC_CR2_ALRAE);
                                   2215 ; genPointerGet
                                   2216 ; genAnd
                                   2217 ; genPointerSet
      00DBCE 72 11 51 49      [ 1] 2218 	bres	0x5149, #0
                                   2219 ; peephole 204x replaced 'and' by 'bres' ('0x5149').
                                   2220 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1322: RTC->ALRMASSRH = (uint8_t)(RTC_AlarmSubSecondValue >> 8);
                                   2221 ; genGetByte
      00DBD2 9E               [ 1] 2222 	ld	a, xh
                                   2223 ; genPointerSet
      00DBD3 C7 51 64         [ 1] 2224 	ld	0x5164, a
                                   2225 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1323: RTC->ALRMASSRL = (uint8_t)(RTC_AlarmSubSecondValue);
                                   2226 ; genCast
                                   2227 ; genAssign
      00DBD6 9F               [ 1] 2228 	ld	a, xl
                                   2229 ; genPointerSet
      00DBD7 C7 51 65         [ 1] 2230 	ld	0x5165, a
                                   2231 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1324: RTC->ALRMASSMSKR = (uint8_t)RTC_AlarmSubSecondMask;
                                   2232 ; genPointerSet
      00DBDA AE 51 66         [ 2] 2233 	ldw	x, #0x5166
      00DBDD 7B 02            [ 1] 2234 	ld	a, (0x02, sp)
      00DBDF F7               [ 1] 2235 	ld	(x), a
                                   2236 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1327: RTC->CR2 |= alarmstatus;
                                   2237 ; genPointerGet
      00DBE0 C6 51 49         [ 1] 2238 	ld	a, 0x5149
                                   2239 ; genOr
      00DBE3 1A 01            [ 1] 2240 	or	a, (0x01, sp)
                                   2241 ; genPointerSet
      00DBE5 C7 51 49         [ 1] 2242 	ld	0x5149, a
                                   2243 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1329: status = SUCCESS;
                                   2244 ; genAssign
      00DBE8 A6 01            [ 1] 2245 	ld	a, #0x01
                                   2246 ; genGoto
                                   2247 ; peephole j5 changed absolute to relative unconditional jump.
                                   2248 ; genLabel
                                   2249 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1333: status = ERROR;
                                   2250 ; genAssign
                                   2251 ; genLabel
      00DBEA 21                    2252 	.byte 0x21
                                   2253 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00DBEB                       2254 00102$:
      00DBEB 4F               [ 1] 2255 	clr	a
      00DBEC                       2256 00103$:
                                   2257 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1337: RTC->WPR = 0xFF; 
                                   2258 ; genPointerSet
      00DBEC 35 FF 51 59      [ 1] 2259 	mov	0x5159+0, #0xff
                                   2260 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1339: return (ErrorStatus)status;
                                   2261 ; genReturn
                                   2262 ; genLabel
                                   2263 ; peephole j30 removed unused label 00104$.
                                   2264 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1340: }
                                   2265 ; genEndFunction
      00DBF0 85               [ 2] 2266 	popw	x
      00DBF1 81               [ 4] 2267 	ret
                                   2268 ;	Total RTC_AlarmSubSecondConfig function size at codegen: 2 bytes.
                                   2269 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1369: void RTC_WakeUpClockConfig(RTC_WakeUpClock_TypeDef RTC_WakeUpClock)
                                   2270 ; genLabel
                                   2271 ;	-----------------------------------------
                                   2272 ;	 function RTC_WakeUpClockConfig
                                   2273 ;	-----------------------------------------
                                   2274 ;	Register assignment is optimal.
                                   2275 ;	Stack space usage: 1 bytes.
      00DBF2                       2276 _RTC_WakeUpClockConfig:
      00DBF2 88               [ 1] 2277 	push	a
                                   2278 ; genReceive
      00DBF3 6B 01            [ 1] 2279 	ld	(0x01, sp), a
                                   2280 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1376: RTC->WPR = 0xCA;
                                   2281 ; genPointerSet
      00DBF5 35 CA 51 59      [ 1] 2282 	mov	0x5159+0, #0xca
                                   2283 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1377: RTC->WPR = 0x53;
                                   2284 ; genPointerSet
      00DBF9 35 53 51 59      [ 1] 2285 	mov	0x5159+0, #0x53
                                   2286 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1380: RTC->CR2 &= (uint8_t)~RTC_CR2_WUTE;
                                   2287 ; genPointerGet
                                   2288 ; genAnd
                                   2289 ; genPointerSet
      00DBFD 72 15 51 49      [ 1] 2290 	bres	0x5149, #2
                                   2291 ; peephole 204x replaced 'and' by 'bres' ('0x5149').
                                   2292 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1383: RTC->CR1 &= (uint8_t)~RTC_CR1_WUCKSEL;
                                   2293 ; genPointerGet
      00DC01 C6 51 48         [ 1] 2294 	ld	a, 0x5148
                                   2295 ; genAnd
      00DC04 A4 F8            [ 1] 2296 	and	a, #0xf8
                                   2297 ; genPointerSet
      00DC06 C7 51 48         [ 1] 2298 	ld	0x5148, a
                                   2299 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1386: RTC->CR1 |= (uint8_t)RTC_WakeUpClock;
                                   2300 ; genPointerGet
      00DC09 C6 51 48         [ 1] 2301 	ld	a, 0x5148
                                   2302 ; genOr
      00DC0C 1A 01            [ 1] 2303 	or	a, (0x01, sp)
                                   2304 ; genPointerSet
      00DC0E C7 51 48         [ 1] 2305 	ld	0x5148, a
                                   2306 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1389: RTC->WPR = 0xFF; 
                                   2307 ; genPointerSet
      00DC11 35 FF 51 59      [ 1] 2308 	mov	0x5159+0, #0xff
                                   2309 ; genLabel
                                   2310 ; peephole j30 removed unused label 00101$.
                                   2311 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1390: }
                                   2312 ; genEndFunction
      00DC15 84               [ 1] 2313 	pop	a
      00DC16 81               [ 4] 2314 	ret
                                   2315 ;	Total RTC_WakeUpClockConfig function size at codegen: 2 bytes.
                                   2316 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1400: void RTC_SetWakeUpCounter(uint16_t RTC_WakeupCounter)
                                   2317 ; genLabel
                                   2318 ;	-----------------------------------------
                                   2319 ;	 function RTC_SetWakeUpCounter
                                   2320 ;	-----------------------------------------
                                   2321 ;	Register assignment is optimal.
                                   2322 ;	Stack space usage: 0 bytes.
      00DC17                       2323 _RTC_SetWakeUpCounter:
                                   2324 ; genReceive
                                   2325 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1403: RTC->WPR = 0xCA;
                                   2326 ; genPointerSet
      00DC17 35 CA 51 59      [ 1] 2327 	mov	0x5159+0, #0xca
                                   2328 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1404: RTC->WPR = 0x53;
                                   2329 ; genPointerSet
      00DC1B 35 53 51 59      [ 1] 2330 	mov	0x5159+0, #0x53
                                   2331 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1408: RTC->WUTRH = (uint8_t)(RTC_WakeupCounter >> 8);
                                   2332 ; genGetByte
      00DC1F 9E               [ 1] 2333 	ld	a, xh
                                   2334 ; genPointerSet
      00DC20 C7 51 54         [ 1] 2335 	ld	0x5154, a
                                   2336 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1409: RTC->WUTRL = (uint8_t)(RTC_WakeupCounter);
                                   2337 ; genCast
                                   2338 ; genAssign
      00DC23 9F               [ 1] 2339 	ld	a, xl
                                   2340 ; genPointerSet
      00DC24 C7 51 55         [ 1] 2341 	ld	0x5155, a
                                   2342 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1412: RTC->WPR = 0xFF; 
                                   2343 ; genPointerSet
      00DC27 35 FF 51 59      [ 1] 2344 	mov	0x5159+0, #0xff
                                   2345 ; genLabel
                                   2346 ; peephole j30 removed unused label 00101$.
                                   2347 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1413: }
                                   2348 ; genEndFunction
      00DC2B 81               [ 4] 2349 	ret
                                   2350 ;	Total RTC_SetWakeUpCounter function size at codegen: 1 bytes.
                                   2351 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1420: uint16_t RTC_GetWakeUpCounter(void)
                                   2352 ; genLabel
                                   2353 ;	-----------------------------------------
                                   2354 ;	 function RTC_GetWakeUpCounter
                                   2355 ;	-----------------------------------------
                                   2356 ;	Register assignment might be sub-optimal.
                                   2357 ;	Stack space usage: 2 bytes.
      00DC2C                       2358 _RTC_GetWakeUpCounter:
      00DC2C 89               [ 2] 2359 	pushw	x
                                   2360 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1425: tmpreg = ((uint16_t)RTC->WUTRH) << 8;
                                   2361 ; genPointerGet
      00DC2D C6 51 54         [ 1] 2362 	ld	a, 0x5154
                                   2363 ; genCast
                                   2364 ; genAssign
                                   2365 ; peephole 3 removed dead clrw of x.
                                   2366 ; genLeftShiftLiteral
      00DC30 95               [ 1] 2367 	ld	xh, a
      00DC31 0F 02            [ 1] 2368 	clr	(0x02, sp)
                                   2369 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1426: tmpreg |= RTC->WUTRL;
                                   2370 ; genPointerGet
      00DC33 C6 51 55         [ 1] 2371 	ld	a, 0x5155
                                   2372 ; genCast
                                   2373 ; genAssign
                                   2374 ; peephole 3 removed dead clrw of y.
                                   2375 ; genOr
                                   2376 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1429: return (uint16_t)tmpreg;
                                   2377 ; genReturn
      00DC36 97               [ 1] 2378 	ld	xl, a
                                   2379 ; genLabel
                                   2380 ; peephole j30 removed unused label 00101$.
                                   2381 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1430: }
                                   2382 ; genEndFunction
      00DC37 5B 02            [ 2] 2383 	addw	sp, #2
      00DC39 81               [ 4] 2384 	ret
                                   2385 ;	Total RTC_GetWakeUpCounter function size at codegen: 3 bytes.
                                   2386 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1440: ErrorStatus RTC_WakeUpCmd(FunctionalState NewState)
                                   2387 ; genLabel
                                   2388 ;	-----------------------------------------
                                   2389 ;	 function RTC_WakeUpCmd
                                   2390 ;	-----------------------------------------
                                   2391 ;	Register assignment might be sub-optimal.
                                   2392 ;	Stack space usage: 1 bytes.
      00DC3A                       2393 _RTC_WakeUpCmd:
      00DC3A 88               [ 1] 2394 	push	a
                                   2395 ; genReceive
      00DC3B 6B 01            [ 1] 2396 	ld	(0x01, sp), a
                                   2397 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1449: RTC->WPR = 0xCA;
                                   2398 ; genPointerSet
      00DC3D 35 CA 51 59      [ 1] 2399 	mov	0x5159+0, #0xca
                                   2400 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1450: RTC->WPR = 0x53;
                                   2401 ; genPointerSet
      00DC41 35 53 51 59      [ 1] 2402 	mov	0x5159+0, #0x53
                                   2403 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1455: RTC->CR2 |= (uint8_t)RTC_CR2_WUTE;
                                   2404 ; genPointerGet
      00DC45 C6 51 49         [ 1] 2405 	ld	a, 0x5149
                                   2406 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1452: if (NewState != DISABLE)
                                   2407 ; genIfx
      00DC48 0D 01            [ 1] 2408 	tnz	(0x01, sp)
                                   2409 ; peephole j5 changed absolute to relative unconditional jump.
      00DC4A 27 09            [ 1] 2410 	jreq	00109$
                                   2411 ; peephole j10 removed jra by using inverse jump logic
                                   2412 ; peephole j30 removed unused label 00149$.
                                   2413 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1455: RTC->CR2 |= (uint8_t)RTC_CR2_WUTE;
                                   2414 ; genOr
      00DC4C AA 04            [ 1] 2415 	or	a, #0x04
                                   2416 ; genPointerSet
      00DC4E C7 51 49         [ 1] 2417 	ld	0x5149, a
                                   2418 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1457: status = SUCCESS;
                                   2419 ; genAssign
      00DC51 A6 01            [ 1] 2420 	ld	a, #0x01
                                   2421 ; genGoto
      00DC53 20 1C            [ 2] 2422 	jra	00110$
                                   2423 ; peephole j5 changed absolute to relative unconditional jump.
                                   2424 ; genLabel
      00DC55                       2425 00109$:
                                   2426 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1462: RTC->CR2 &= (uint8_t)~RTC_CR2_WUTE;
                                   2427 ; genAnd
      00DC55 A4 FB            [ 1] 2428 	and	a, #0xfb
                                   2429 ; genPointerSet
      00DC57 C7 51 49         [ 1] 2430 	ld	0x5149, a
                                   2431 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1465: while (((RTC->ISR1 & RTC_ISR1_WUTWF) == RESET) && ( wutwfcount != WUTWF_TIMEOUT))
                                   2432 ; genAssign
      00DC5A 5F               [ 1] 2433 	clrw	x
                                   2434 ; genLabel
      00DC5B                       2435 00102$:
                                   2436 ; genPointerGet
                                   2437 ; genAnd
                                   2438 ; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
                                   2439 ; peephole j5 changed absolute to relative unconditional jump.
      00DC5B 72 04 51 4C 08   [ 2] 2440 	btjt	0x514c, #2, 00104$
                                   2441 ; peephole j34 removed jra by using inverse bit-test-jump logic
                                   2442 ; peephole j30 removed unused label 00150$.
                                   2443 ; skipping generated iCode
                                   2444 ; genCmpEQorNE
      00DC60 A3 FF FF         [ 2] 2445 	cpw	x, #0xffff
                                   2446 ; peephole j5 changed absolute to relative unconditional jump.
      00DC63 27 03            [ 1] 2447 	jreq	00104$
                                   2448 ; peephole j10 removed jra by using inverse jump logic
                                   2449 ; peephole j30 removed unused label 00152$.
                                   2450 ; skipping generated iCode
                                   2451 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1467: wutwfcount++;
                                   2452 ; genPlus
      00DC65 5C               [ 1] 2453 	incw	x
                                   2454 ; genGoto
      00DC66 20 F3            [ 2] 2455 	jra	00102$
                                   2456 ; peephole j5 changed absolute to relative unconditional jump.
                                   2457 ; genLabel
      00DC68                       2458 00104$:
                                   2459 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1471: if ((RTC->ISR1 & RTC_ISR1_WUTWF) == RESET)
                                   2460 ; genPointerGet
                                   2461 ; genAnd
                                   2462 ; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
                                   2463 ; peephole j5 changed absolute to relative unconditional jump.
      00DC68 72 04 51 4C 02   [ 2] 2464 	btjt	0x514c, #2, 00106$
                                   2465 ; peephole j34 removed jra by using inverse bit-test-jump logic
                                   2466 ; peephole j30 removed unused label 00154$.
                                   2467 ; skipping generated iCode
                                   2468 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1473: status = ERROR;
                                   2469 ; genAssign
      00DC6D 4F               [ 1] 2470 	clr	a
                                   2471 ; genGoto
                                   2472 ; peephole j5 changed absolute to relative unconditional jump.
                                   2473 ; genLabel
                                   2474 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1477: status = SUCCESS;
                                   2475 ; genAssign
                                   2476 ; genLabel
      00DC6E C5                    2477 	.byte 0xc5
                                   2478 ; peephole jrf6 used bcp opcode to jump over 2-byte instruction.
      00DC6F                       2479 00106$:
      00DC6F A6 01            [ 1] 2480 	ld	a, #0x01
      00DC71                       2481 00110$:
                                   2482 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1482: RTC->WPR = 0xFF; 
                                   2483 ; genPointerSet
      00DC71 35 FF 51 59      [ 1] 2484 	mov	0x5159+0, #0xff
                                   2485 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1485: return (ErrorStatus)status;
                                   2486 ; genReturn
                                   2487 ; genLabel
                                   2488 ; peephole j30 removed unused label 00111$.
                                   2489 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1486: }
                                   2490 ; genEndFunction
      00DC75 5B 01            [ 2] 2491 	addw	sp, #1
      00DC77 81               [ 4] 2492 	ret
                                   2493 ;	Total RTC_WakeUpCmd function size at codegen: 3 bytes.
                                   2494 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1522: void RTC_DayLightSavingConfig(RTC_DayLightSaving_TypeDef RTC_DayLightSaving,
                                   2495 ; genLabel
                                   2496 ;	-----------------------------------------
                                   2497 ;	 function RTC_DayLightSavingConfig
                                   2498 ;	-----------------------------------------
                                   2499 ;	Register assignment is optimal.
                                   2500 ;	Stack space usage: 1 bytes.
      00DC78                       2501 _RTC_DayLightSavingConfig:
      00DC78 88               [ 1] 2502 	push	a
                                   2503 ; genReceive
      00DC79 97               [ 1] 2504 	ld	xl, a
                                   2505 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1530: RTC->WPR = 0xCA;
                                   2506 ; genPointerSet
      00DC7A 35 CA 51 59      [ 1] 2507 	mov	0x5159+0, #0xca
                                   2508 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1531: RTC->WPR = 0x53;
                                   2509 ; genPointerSet
      00DC7E 35 53 51 59      [ 1] 2510 	mov	0x5159+0, #0x53
                                   2511 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1534: RTC->CR3 &= (uint8_t)~(RTC_CR3_BCK);
                                   2512 ; genPointerGet
      00DC82 C6 51 4A         [ 1] 2513 	ld	a, 0x514a
                                   2514 ; genAnd
      00DC85 A4 FB            [ 1] 2515 	and	a, #0xfb
                                   2516 ; genPointerSet
      00DC87 C7 51 4A         [ 1] 2517 	ld	0x514a, a
                                   2518 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1537: RTC->CR3 |= (uint8_t)((uint8_t)RTC_DayLightSaving | (uint8_t)RTC_StoreOperation);
                                   2519 ; genPointerGet
      00DC8A C6 51 4A         [ 1] 2520 	ld	a, 0x514a
      00DC8D 6B 01            [ 1] 2521 	ld	(0x01, sp), a
                                   2522 ; genOr
      00DC8F 9F               [ 1] 2523 	ld	a, xl
      00DC90 1A 04            [ 1] 2524 	or	a, (0x04, sp)
                                   2525 ; genOr
      00DC92 1A 01            [ 1] 2526 	or	a, (0x01, sp)
                                   2527 ; genPointerSet
      00DC94 C7 51 4A         [ 1] 2528 	ld	0x514a, a
                                   2529 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1540: RTC->WPR = 0xFF; 
                                   2530 ; genPointerSet
      00DC97 35 FF 51 59      [ 1] 2531 	mov	0x5159+0, #0xff
                                   2532 ; genLabel
                                   2533 ; peephole j30 removed unused label 00101$.
                                   2534 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1541: }
                                   2535 ; genEndFunction
      00DC9B 84               [ 1] 2536 	pop	a
      00DC9C 85               [ 2] 2537 	popw	x
      00DC9D 84               [ 1] 2538 	pop	a
      00DC9E FC               [ 2] 2539 	jp	(x)
                                   2540 ;	Total RTC_DayLightSavingConfig function size at codegen: 4 bytes.
                                   2541 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1549: RTC_StoreOperation_TypeDef  RTC_GetStoreOperation(void)
                                   2542 ; genLabel
                                   2543 ;	-----------------------------------------
                                   2544 ;	 function RTC_GetStoreOperation
                                   2545 ;	-----------------------------------------
                                   2546 ;	Register assignment is optimal.
                                   2547 ;	Stack space usage: 0 bytes.
      00DC9F                       2548 _RTC_GetStoreOperation:
                                   2549 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1552: return (RTC_StoreOperation_TypeDef)(RTC->CR3 & RTC_CR3_BCK);
                                   2550 ; genPointerGet
      00DC9F C6 51 4A         [ 1] 2551 	ld	a, 0x514a
                                   2552 ; genAnd
      00DCA2 A4 04            [ 1] 2553 	and	a, #0x04
                                   2554 ; genReturn
                                   2555 ; genLabel
                                   2556 ; peephole j30 removed unused label 00101$.
                                   2557 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1553: }
                                   2558 ; genEndFunction
      00DCA4 81               [ 4] 2559 	ret
                                   2560 ;	Total RTC_GetStoreOperation function size at codegen: 1 bytes.
                                   2561 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1587: void RTC_OutputConfig(RTC_Output_TypeDef RTC_Output,
                                   2562 ; genLabel
                                   2563 ;	-----------------------------------------
                                   2564 ;	 function RTC_OutputConfig
                                   2565 ;	-----------------------------------------
                                   2566 ;	Register assignment is optimal.
                                   2567 ;	Stack space usage: 1 bytes.
      00DCA5                       2568 _RTC_OutputConfig:
      00DCA5 88               [ 1] 2569 	push	a
                                   2570 ; genReceive
      00DCA6 97               [ 1] 2571 	ld	xl, a
                                   2572 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1595: RTC->WPR = 0xCA;
                                   2573 ; genPointerSet
      00DCA7 35 CA 51 59      [ 1] 2574 	mov	0x5159+0, #0xca
                                   2575 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1596: RTC->WPR = 0x53;
                                   2576 ; genPointerSet
      00DCAB 35 53 51 59      [ 1] 2577 	mov	0x5159+0, #0x53
                                   2578 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1599: RTC->CR3 &= (uint8_t)~(RTC_CR3_OSEL | RTC_CR3_POL);
                                   2579 ; genPointerGet
      00DCAF C6 51 4A         [ 1] 2580 	ld	a, 0x514a
                                   2581 ; genAnd
      00DCB2 A4 8F            [ 1] 2582 	and	a, #0x8f
                                   2583 ; genPointerSet
      00DCB4 C7 51 4A         [ 1] 2584 	ld	0x514a, a
                                   2585 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1602: RTC->CR3 |= (uint8_t)((uint8_t)RTC_Output | (uint8_t)RTC_OutputPolarity);
                                   2586 ; genPointerGet
      00DCB7 C6 51 4A         [ 1] 2587 	ld	a, 0x514a
      00DCBA 6B 01            [ 1] 2588 	ld	(0x01, sp), a
                                   2589 ; genOr
      00DCBC 9F               [ 1] 2590 	ld	a, xl
      00DCBD 1A 04            [ 1] 2591 	or	a, (0x04, sp)
                                   2592 ; genOr
      00DCBF 1A 01            [ 1] 2593 	or	a, (0x01, sp)
                                   2594 ; genPointerSet
      00DCC1 C7 51 4A         [ 1] 2595 	ld	0x514a, a
                                   2596 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1605: RTC->WPR = 0xFF; 
                                   2597 ; genPointerSet
      00DCC4 35 FF 51 59      [ 1] 2598 	mov	0x5159+0, #0xff
                                   2599 ; genLabel
                                   2600 ; peephole j30 removed unused label 00101$.
                                   2601 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1606: }
                                   2602 ; genEndFunction
      00DCC8 84               [ 1] 2603 	pop	a
      00DCC9 85               [ 2] 2604 	popw	x
      00DCCA 84               [ 1] 2605 	pop	a
      00DCCB FC               [ 2] 2606 	jp	(x)
                                   2607 ;	Total RTC_OutputConfig function size at codegen: 4 bytes.
                                   2608 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1639: ErrorStatus RTC_SynchroShiftConfig(RTC_ShiftAdd1S_TypeDef RTC_ShiftAdd1S,
                                   2609 ; genLabel
                                   2610 ;	-----------------------------------------
                                   2611 ;	 function RTC_SynchroShiftConfig
                                   2612 ;	-----------------------------------------
                                   2613 ;	Register assignment might be sub-optimal.
                                   2614 ;	Stack space usage: 1 bytes.
      00DCCC                       2615 _RTC_SynchroShiftConfig:
      00DCCC 88               [ 1] 2616 	push	a
                                   2617 ; genReceive
      00DCCD 6B 01            [ 1] 2618 	ld	(0x01, sp), a
                                   2619 ; genReceive
      00DCCF 51               [ 1] 2620 	exgw	x, y
                                   2621 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1651: RTC->WPR = 0xCA;
                                   2622 ; genPointerSet
      00DCD0 35 CA 51 59      [ 1] 2623 	mov	0x5159+0, #0xca
                                   2624 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1652: RTC->WPR = 0x53;
                                   2625 ; genPointerSet
      00DCD4 35 53 51 59      [ 1] 2626 	mov	0x5159+0, #0x53
                                   2627 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1655: if ((RTC->ISR1 & RTC_ISR1_SHPF) != RESET)
                                   2628 ; genPointerGet
                                   2629 ; genAnd
                                   2630 ; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x514c').
                                   2631 ; peephole j5 changed absolute to relative unconditional jump.
      00DCD8 72 07 51 4C 0E   [ 2] 2632 	btjf	0x514c, #3, 00106$
                                   2633 ; peephole j33 removed jra by using inverse bit-test-jump logic
                                   2634 ; peephole j30 removed unused label 00147$.
                                   2635 ; skipping generated iCode
                                   2636 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1658: while (((RTC->ISR1 & RTC_ISR1_SHPF) != RESET) && (shpfcount != SHPF_TIMEOUT))
                                   2637 ; genAssign
      00DCDD 5F               [ 1] 2638 	clrw	x
                                   2639 ; genLabel
      00DCDE                       2640 00102$:
                                   2641 ; genPointerGet
                                   2642 ; genAnd
                                   2643 ; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x514c').
                                   2644 ; peephole j5 changed absolute to relative unconditional jump.
      00DCDE 72 07 51 4C 08   [ 2] 2645 	btjf	0x514c, #3, 00106$
                                   2646 ; peephole j33 removed jra by using inverse bit-test-jump logic
                                   2647 ; peephole j30 removed unused label 00148$.
                                   2648 ; skipping generated iCode
                                   2649 ; genCmpEQorNE
      00DCE3 A3 FF FF         [ 2] 2650 	cpw	x, #0xffff
                                   2651 ; peephole j5 changed absolute to relative unconditional jump.
      00DCE6 27 03            [ 1] 2652 	jreq	00106$
                                   2653 ; peephole j10 removed jra by using inverse jump logic
                                   2654 ; peephole j30 removed unused label 00150$.
                                   2655 ; skipping generated iCode
                                   2656 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1660: shpfcount++;
                                   2657 ; genPlus
      00DCE8 5C               [ 1] 2658 	incw	x
                                   2659 ; genGoto
      00DCE9 20 F3            [ 2] 2660 	jra	00102$
                                   2661 ; peephole j5 changed absolute to relative unconditional jump.
                                   2662 ; genLabel
      00DCEB                       2663 00106$:
                                   2664 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1665: if ((RTC->ISR1 & RTC_ISR1_SHPF) == RESET)
                                   2665 ; genPointerGet
                                   2666 ; genAnd
                                   2667 ; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
                                   2668 ; peephole j5 changed absolute to relative unconditional jump.
      00DCEB 72 06 51 4C 0F   [ 2] 2669 	btjt	0x514c, #3, 00108$
                                   2670 ; peephole j34 removed jra by using inverse bit-test-jump logic
                                   2671 ; peephole j30 removed unused label 00152$.
                                   2672 ; skipping generated iCode
                                   2673 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1668: shiftrhreg = (uint8_t)((uint8_t)(RTC_ShiftSubFS >> 8) | (uint8_t)(RTC_ShiftAdd1S));
                                   2674 ; genGetByte
      00DCF0 90 9E            [ 1] 2675 	ld	a, yh
                                   2676 ; genOr
      00DCF2 1A 01            [ 1] 2677 	or	a, (0x01, sp)
                                   2678 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1669: RTC->SHIFTRH = (uint8_t)(shiftrhreg);
                                   2679 ; genPointerSet
      00DCF4 C7 51 5A         [ 1] 2680 	ld	0x515a, a
                                   2681 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1670: RTC->SHIFTRL = (uint8_t)(RTC_ShiftSubFS);
                                   2682 ; genCast
                                   2683 ; genAssign
      00DCF7 90 9F            [ 1] 2684 	ld	a, yl
                                   2685 ; genPointerSet
      00DCF9 C7 51 5B         [ 1] 2686 	ld	0x515b, a
                                   2687 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1672: status = SUCCESS;
                                   2688 ; genAssign
      00DCFC A6 01            [ 1] 2689 	ld	a, #0x01
                                   2690 ; genGoto
                                   2691 ; peephole j5 changed absolute to relative unconditional jump.
                                   2692 ; genLabel
                                   2693 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1676: status = ERROR;
                                   2694 ; genAssign
                                   2695 ; genLabel
      00DCFE 21                    2696 	.byte 0x21
                                   2697 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00DCFF                       2698 00108$:
      00DCFF 4F               [ 1] 2699 	clr	a
      00DD00                       2700 00109$:
                                   2701 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1680: RTC->WPR = 0xFF; 
                                   2702 ; genPointerSet
      00DD00 35 FF 51 59      [ 1] 2703 	mov	0x5159+0, #0xff
                                   2704 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1682: return (ErrorStatus)(status);
                                   2705 ; genReturn
                                   2706 ; genLabel
                                   2707 ; peephole j30 removed unused label 00110$.
                                   2708 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1683: }
                                   2709 ; genEndFunction
      00DD04 5B 01            [ 2] 2710 	addw	sp, #1
      00DD06 81               [ 4] 2711 	ret
                                   2712 ;	Total RTC_SynchroShiftConfig function size at codegen: 3 bytes.
                                   2713 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1718: ErrorStatus RTC_SmoothCalibConfig(RTC_SmoothCalibPeriod_TypeDef RTC_SmoothCalibPeriod,
                                   2714 ; genLabel
                                   2715 ;	-----------------------------------------
                                   2716 ;	 function RTC_SmoothCalibConfig
                                   2717 ;	-----------------------------------------
                                   2718 ;	Register assignment is optimal.
                                   2719 ;	Stack space usage: 1 bytes.
      00DD07                       2720 _RTC_SmoothCalibConfig:
      00DD07 88               [ 1] 2721 	push	a
                                   2722 ; genReceive
      00DD08 90 97            [ 1] 2723 	ld	yl, a
                                   2724 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1731: RTC->WPR = 0xCA;
                                   2725 ; genPointerSet
      00DD0A 35 CA 51 59      [ 1] 2726 	mov	0x5159+0, #0xca
                                   2727 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1732: RTC->WPR = 0x53;
                                   2728 ; genPointerSet
      00DD0E 35 53 51 59      [ 1] 2729 	mov	0x5159+0, #0x53
                                   2730 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1735: if ((RTC->ISR1 & RTC_ISR1_RECALPF) != RESET)
                                   2731 ; genPointerGet
                                   2732 ; genAnd
                                   2733 ; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x514c').
                                   2734 ; peephole j5 changed absolute to relative unconditional jump.
      00DD12 72 03 51 4C 0E   [ 2] 2735 	btjf	0x514c, #1, 00106$
                                   2736 ; peephole j33 removed jra by using inverse bit-test-jump logic
                                   2737 ; peephole j30 removed unused label 00147$.
                                   2738 ; skipping generated iCode
                                   2739 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1738: while (((RTC->ISR1 & RTC_ISR1_RECALPF) != RESET) && (recalpfcount != RECALPF_TIMEOUT))
                                   2740 ; genAssign
      00DD17 5F               [ 1] 2741 	clrw	x
                                   2742 ; genLabel
      00DD18                       2743 00102$:
                                   2744 ; genPointerGet
                                   2745 ; genAnd
                                   2746 ; peephole j531x replaced 'ld-bcp-jrne' by 'btjt' ('0x514c').
                                   2747 ; peephole j5 changed absolute to relative unconditional jump.
      00DD18 72 03 51 4C 08   [ 2] 2748 	btjf	0x514c, #1, 00106$
                                   2749 ; peephole j33 removed jra by using inverse bit-test-jump logic
                                   2750 ; peephole j30 removed unused label 00148$.
                                   2751 ; skipping generated iCode
                                   2752 ; genCmpEQorNE
      00DD1D A3 FF FF         [ 2] 2753 	cpw	x, #0xffff
                                   2754 ; peephole j5 changed absolute to relative unconditional jump.
      00DD20 27 03            [ 1] 2755 	jreq	00106$
                                   2756 ; peephole j10 removed jra by using inverse jump logic
                                   2757 ; peephole j30 removed unused label 00150$.
                                   2758 ; skipping generated iCode
                                   2759 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1740: recalpfcount++;
                                   2760 ; genPlus
      00DD22 5C               [ 1] 2761 	incw	x
                                   2762 ; genGoto
      00DD23 20 F3            [ 2] 2763 	jra	00102$
                                   2764 ; peephole j5 changed absolute to relative unconditional jump.
                                   2765 ; genLabel
      00DD25                       2766 00106$:
                                   2767 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1746: if ((RTC->ISR1 & RTC_ISR1_RECALPF) == RESET)
                                   2768 ; genPointerGet
                                   2769 ; genAnd
                                   2770 ; peephole j530x replaced 'ld-bcp-jreq' by 'btjf' ('0x514c').
                                   2771 ; peephole j5 changed absolute to relative unconditional jump.
      00DD25 72 02 51 4C 15   [ 2] 2772 	btjt	0x514c, #1, 00108$
                                   2773 ; peephole j34 removed jra by using inverse bit-test-jump logic
                                   2774 ; peephole j30 removed unused label 00152$.
                                   2775 ; skipping generated iCode
                                   2776 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1749: RTC->CALRH = (uint8_t)((uint8_t)((uint8_t)RTC_SmoothCalibPeriod | \
                                   2777 ; genOr
      00DD2A 90 9F            [ 1] 2778 	ld	a, yl
      00DD2C 1A 04            [ 1] 2779 	or	a, (0x04, sp)
      00DD2E 6B 01            [ 1] 2780 	ld	(0x01, sp), a
                                   2781 ; genGetByte
      00DD30 7B 05            [ 1] 2782 	ld	a, (0x05, sp)
                                   2783 ; genOr
      00DD32 1A 01            [ 1] 2784 	or	a, (0x01, sp)
                                   2785 ; genPointerSet
      00DD34 C7 51 6A         [ 1] 2786 	ld	0x516a, a
                                   2787 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1752: RTC->CALRL = (uint8_t)(RTC_SmouthCalibMinusPulsesValue);
                                   2788 ; genCast
                                   2789 ; genAssign
      00DD37 7B 06            [ 1] 2790 	ld	a, (0x06, sp)
                                   2791 ; genPointerSet
      00DD39 C7 51 6B         [ 1] 2792 	ld	0x516b, a
                                   2793 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1754: status = SUCCESS;
                                   2794 ; genAssign
      00DD3C A6 01            [ 1] 2795 	ld	a, #0x01
                                   2796 ; genGoto
                                   2797 ; peephole j5 changed absolute to relative unconditional jump.
                                   2798 ; genLabel
                                   2799 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1758: status = ERROR;
                                   2800 ; genAssign
                                   2801 ; genLabel
      00DD3E 21                    2802 	.byte 0x21
                                   2803 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00DD3F                       2804 00108$:
      00DD3F 4F               [ 1] 2805 	clr	a
      00DD40                       2806 00109$:
                                   2807 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1762: RTC->WPR = 0xFF; 
                                   2808 ; genPointerSet
      00DD40 35 FF 51 59      [ 1] 2809 	mov	0x5159+0, #0xff
                                   2810 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1764: return (ErrorStatus)(status);
                                   2811 ; genReturn
                                   2812 ; genLabel
                                   2813 ; peephole j30 removed unused label 00110$.
                                   2814 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1765: }
                                   2815 ; genEndFunction
      00DD44 1E 02            [ 2] 2816 	ldw	x, (2, sp)
      00DD46 5B 06            [ 2] 2817 	addw	sp, #6
      00DD48 FC               [ 2] 2818 	jp	(x)
                                   2819 ;	Total RTC_SmoothCalibConfig function size at codegen: 5 bytes.
                                   2820 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1790: void RTC_CalibOutputConfig(RTC_CalibOutput_TypeDef RTC_CalibOutput)
                                   2821 ; genLabel
                                   2822 ;	-----------------------------------------
                                   2823 ;	 function RTC_CalibOutputConfig
                                   2824 ;	-----------------------------------------
                                   2825 ;	Register assignment is optimal.
                                   2826 ;	Stack space usage: 1 bytes.
      00DD49                       2827 _RTC_CalibOutputConfig:
      00DD49 88               [ 1] 2828 	push	a
                                   2829 ; genReceive
      00DD4A 6B 01            [ 1] 2830 	ld	(0x01, sp), a
                                   2831 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1796: RTC->WPR = 0xCA;
                                   2832 ; genPointerSet
      00DD4C 35 CA 51 59      [ 1] 2833 	mov	0x5159+0, #0xca
                                   2834 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1797: RTC->WPR = 0x53;
                                   2835 ; genPointerSet
      00DD50 35 53 51 59      [ 1] 2836 	mov	0x5159+0, #0x53
                                   2837 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1802: RTC->CR3 |= (uint8_t)RTC_CR3_COSEL;
                                   2838 ; genPointerGet
      00DD54 C6 51 4A         [ 1] 2839 	ld	a, 0x514a
                                   2840 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1799: if (RTC_CalibOutput != RTC_CalibOutput_512Hz)
                                   2841 ; genIfx
      00DD57 0D 01            [ 1] 2842 	tnz	(0x01, sp)
                                   2843 ; peephole j5 changed absolute to relative unconditional jump.
      00DD59 27 07            [ 1] 2844 	jreq	00102$
                                   2845 ; peephole j10 removed jra by using inverse jump logic
                                   2846 ; peephole j30 removed unused label 00113$.
                                   2847 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1802: RTC->CR3 |= (uint8_t)RTC_CR3_COSEL;
                                   2848 ; genOr
      00DD5B AA 08            [ 1] 2849 	or	a, #0x08
                                   2850 ; genPointerSet
      00DD5D C7 51 4A         [ 1] 2851 	ld	0x514a, a
                                   2852 ; genGoto
      00DD60 20 05            [ 2] 2853 	jra	00103$
                                   2854 ; peephole j5 changed absolute to relative unconditional jump.
                                   2855 ; genLabel
      00DD62                       2856 00102$:
                                   2857 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1807: RTC->CR3 &= (uint8_t)~RTC_CR3_COSEL;
                                   2858 ; genAnd
      00DD62 A4 F7            [ 1] 2859 	and	a, #0xf7
                                   2860 ; genPointerSet
      00DD64 C7 51 4A         [ 1] 2861 	ld	0x514a, a
                                   2862 ; genLabel
      00DD67                       2863 00103$:
                                   2864 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1811: RTC->WPR = 0xFF; 
                                   2865 ; genPointerSet
      00DD67 35 FF 51 59      [ 1] 2866 	mov	0x5159+0, #0xff
                                   2867 ; genLabel
                                   2868 ; peephole j30 removed unused label 00104$.
                                   2869 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1812: }
                                   2870 ; genEndFunction
      00DD6B 84               [ 1] 2871 	pop	a
      00DD6C 81               [ 4] 2872 	ret
                                   2873 ;	Total RTC_CalibOutputConfig function size at codegen: 2 bytes.
                                   2874 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1820: void RTC_CalibOutputCmd(FunctionalState NewState)
                                   2875 ; genLabel
                                   2876 ;	-----------------------------------------
                                   2877 ;	 function RTC_CalibOutputCmd
                                   2878 ;	-----------------------------------------
                                   2879 ;	Register assignment is optimal.
                                   2880 ;	Stack space usage: 1 bytes.
      00DD6D                       2881 _RTC_CalibOutputCmd:
      00DD6D 88               [ 1] 2882 	push	a
                                   2883 ; genReceive
      00DD6E 6B 01            [ 1] 2884 	ld	(0x01, sp), a
                                   2885 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1826: RTC->WPR = 0xCA;
                                   2886 ; genPointerSet
      00DD70 35 CA 51 59      [ 1] 2887 	mov	0x5159+0, #0xca
                                   2888 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1827: RTC->WPR = 0x53;
                                   2889 ; genPointerSet
      00DD74 35 53 51 59      [ 1] 2890 	mov	0x5159+0, #0x53
                                   2891 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1832: RTC->CR3 |= (uint8_t)RTC_CR3_COE;
                                   2892 ; genPointerGet
      00DD78 C6 51 4A         [ 1] 2893 	ld	a, 0x514a
                                   2894 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1829: if (NewState != DISABLE)
                                   2895 ; genIfx
      00DD7B 0D 01            [ 1] 2896 	tnz	(0x01, sp)
                                   2897 ; peephole j5 changed absolute to relative unconditional jump.
      00DD7D 27 07            [ 1] 2898 	jreq	00102$
                                   2899 ; peephole j10 removed jra by using inverse jump logic
                                   2900 ; peephole j30 removed unused label 00113$.
                                   2901 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1832: RTC->CR3 |= (uint8_t)RTC_CR3_COE;
                                   2902 ; genOr
      00DD7F AA 80            [ 1] 2903 	or	a, #0x80
                                   2904 ; genPointerSet
      00DD81 C7 51 4A         [ 1] 2905 	ld	0x514a, a
                                   2906 ; genGoto
      00DD84 20 05            [ 2] 2907 	jra	00103$
                                   2908 ; peephole j5 changed absolute to relative unconditional jump.
                                   2909 ; genLabel
      00DD86                       2910 00102$:
                                   2911 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1837: RTC->CR3 &= (uint8_t)~RTC_CR3_COE;
                                   2912 ; genAnd
      00DD86 A4 7F            [ 1] 2913 	and	a, #0x7f
                                   2914 ; genPointerSet
      00DD88 C7 51 4A         [ 1] 2915 	ld	0x514a, a
                                   2916 ; genLabel
      00DD8B                       2917 00103$:
                                   2918 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1841: RTC->WPR = 0xFF; 
                                   2919 ; genPointerSet
      00DD8B 35 FF 51 59      [ 1] 2920 	mov	0x5159+0, #0xff
                                   2921 ; genLabel
                                   2922 ; peephole j30 removed unused label 00104$.
                                   2923 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1842: }
                                   2924 ; genEndFunction
      00DD8F 84               [ 1] 2925 	pop	a
      00DD90 81               [ 4] 2926 	ret
                                   2927 ;	Total RTC_CalibOutputCmd function size at codegen: 2 bytes.
                                   2928 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1871: void RTC_TamperLevelConfig(RTC_Tamper_TypeDef RTC_Tamper,
                                   2929 ; genLabel
                                   2930 ;	-----------------------------------------
                                   2931 ;	 function RTC_TamperLevelConfig
                                   2932 ;	-----------------------------------------
                                   2933 ;	Register assignment is optimal.
                                   2934 ;	Stack space usage: 1 bytes.
      00DD91                       2935 _RTC_TamperLevelConfig:
      00DD91 88               [ 1] 2936 	push	a
                                   2937 ; genReceive
      00DD92 97               [ 1] 2938 	ld	xl, a
                                   2939 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1879: RTC->WPR = 0xCA;
                                   2940 ; genPointerSet
      00DD93 35 CA 51 59      [ 1] 2941 	mov	0x5159+0, #0xca
                                   2942 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1880: RTC->WPR = 0x53;
                                   2943 ; genPointerSet
      00DD97 35 53 51 59      [ 1] 2944 	mov	0x5159+0, #0x53
                                   2945 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1885: RTC->TCR1 |= (uint8_t)(RTC_Tamper << 1);
                                   2946 ; genPointerGet
      00DD9B C6 51 6C         [ 1] 2947 	ld	a, 0x516c
      00DD9E 6B 01            [ 1] 2948 	ld	(0x01, sp), a
                                   2949 ; genLeftShiftLiteral
      00DDA0 9F               [ 1] 2950 	ld	a, xl
      00DDA1 48               [ 1] 2951 	sll	a
                                   2952 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1882: if (RTC_TamperLevel != RTC_TamperLevel_Low)
                                   2953 ; genIfx
      00DDA2 0D 04            [ 1] 2954 	tnz	(0x04, sp)
                                   2955 ; peephole j5 changed absolute to relative unconditional jump.
      00DDA4 27 07            [ 1] 2956 	jreq	00102$
                                   2957 ; peephole j10 removed jra by using inverse jump logic
                                   2958 ; peephole j30 removed unused label 00113$.
                                   2959 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1885: RTC->TCR1 |= (uint8_t)(RTC_Tamper << 1);
                                   2960 ; genOr
      00DDA6 1A 01            [ 1] 2961 	or	a, (0x01, sp)
                                   2962 ; genPointerSet
      00DDA8 C7 51 6C         [ 1] 2963 	ld	0x516c, a
                                   2964 ; genGoto
      00DDAB 20 06            [ 2] 2965 	jra	00103$
                                   2966 ; peephole j5 changed absolute to relative unconditional jump.
                                   2967 ; genLabel
      00DDAD                       2968 00102$:
                                   2969 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1890: RTC->TCR1 &= (uint8_t)~(uint8_t)(RTC_Tamper << 1);
                                   2970 ; genCpl
      00DDAD 43               [ 1] 2971 	cpl	a
                                   2972 ; genAnd
      00DDAE 14 01            [ 1] 2973 	and	a, (0x01, sp)
                                   2974 ; genPointerSet
      00DDB0 C7 51 6C         [ 1] 2975 	ld	0x516c, a
                                   2976 ; genLabel
      00DDB3                       2977 00103$:
                                   2978 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1894: RTC->WPR = 0xFF; 
                                   2979 ; genPointerSet
      00DDB3 35 FF 51 59      [ 1] 2980 	mov	0x5159+0, #0xff
                                   2981 ; genLabel
                                   2982 ; peephole j30 removed unused label 00104$.
                                   2983 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1895: }
                                   2984 ; genEndFunction
      00DDB7 84               [ 1] 2985 	pop	a
      00DDB8 85               [ 2] 2986 	popw	x
      00DDB9 84               [ 1] 2987 	pop	a
      00DDBA FC               [ 2] 2988 	jp	(x)
                                   2989 ;	Total RTC_TamperLevelConfig function size at codegen: 4 bytes.
                                   2990 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1903: void RTC_TamperFilterConfig(RTC_TamperFilter_TypeDef RTC_TamperFilter)
                                   2991 ; genLabel
                                   2992 ;	-----------------------------------------
                                   2993 ;	 function RTC_TamperFilterConfig
                                   2994 ;	-----------------------------------------
                                   2995 ;	Register assignment is optimal.
                                   2996 ;	Stack space usage: 1 bytes.
      00DDBB                       2997 _RTC_TamperFilterConfig:
      00DDBB 88               [ 1] 2998 	push	a
                                   2999 ; genReceive
      00DDBC 6B 01            [ 1] 3000 	ld	(0x01, sp), a
                                   3001 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1910: RTC->WPR = 0xCA;
                                   3002 ; genPointerSet
      00DDBE 35 CA 51 59      [ 1] 3003 	mov	0x5159+0, #0xca
                                   3004 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1911: RTC->WPR = 0x53;
                                   3005 ; genPointerSet
      00DDC2 35 53 51 59      [ 1] 3006 	mov	0x5159+0, #0x53
                                   3007 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1914: RTC->TCR2 &= (uint8_t)~(RTC_TCR2_TAMPFLT);
                                   3008 ; genPointerGet
      00DDC6 C6 51 6D         [ 1] 3009 	ld	a, 0x516d
                                   3010 ; genAnd
      00DDC9 A4 E7            [ 1] 3011 	and	a, #0xe7
                                   3012 ; genPointerSet
      00DDCB C7 51 6D         [ 1] 3013 	ld	0x516d, a
                                   3014 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1917: RTC->TCR2 |= (uint8_t)RTC_TamperFilter;
                                   3015 ; genPointerGet
      00DDCE C6 51 6D         [ 1] 3016 	ld	a, 0x516d
                                   3017 ; genOr
      00DDD1 1A 01            [ 1] 3018 	or	a, (0x01, sp)
                                   3019 ; genPointerSet
      00DDD3 C7 51 6D         [ 1] 3020 	ld	0x516d, a
                                   3021 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1920: RTC->WPR = 0xFF; 
                                   3022 ; genPointerSet
      00DDD6 35 FF 51 59      [ 1] 3023 	mov	0x5159+0, #0xff
                                   3024 ; genLabel
                                   3025 ; peephole j30 removed unused label 00101$.
                                   3026 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1922: }
                                   3027 ; genEndFunction
      00DDDA 84               [ 1] 3028 	pop	a
      00DDDB 81               [ 4] 3029 	ret
                                   3030 ;	Total RTC_TamperFilterConfig function size at codegen: 2 bytes.
                                   3031 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1931: void RTC_TamperSamplingFreqConfig(RTC_TamperSamplingFreq_TypeDef RTC_TamperSamplingFreq)
                                   3032 ; genLabel
                                   3033 ;	-----------------------------------------
                                   3034 ;	 function RTC_TamperSamplingFreqConfig
                                   3035 ;	-----------------------------------------
                                   3036 ;	Register assignment is optimal.
                                   3037 ;	Stack space usage: 1 bytes.
      00DDDC                       3038 _RTC_TamperSamplingFreqConfig:
      00DDDC 88               [ 1] 3039 	push	a
                                   3040 ; genReceive
      00DDDD 6B 01            [ 1] 3041 	ld	(0x01, sp), a
                                   3042 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1937: RTC->WPR = 0xCA;
                                   3043 ; genPointerSet
      00DDDF 35 CA 51 59      [ 1] 3044 	mov	0x5159+0, #0xca
                                   3045 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1938: RTC->WPR = 0x53;
                                   3046 ; genPointerSet
      00DDE3 35 53 51 59      [ 1] 3047 	mov	0x5159+0, #0x53
                                   3048 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1941: RTC->TCR2 &= (uint8_t)~(RTC_TCR2_TAMPFREQ);
                                   3049 ; genPointerGet
      00DDE7 C6 51 6D         [ 1] 3050 	ld	a, 0x516d
                                   3051 ; genAnd
      00DDEA A4 F8            [ 1] 3052 	and	a, #0xf8
                                   3053 ; genPointerSet
      00DDEC C7 51 6D         [ 1] 3054 	ld	0x516d, a
                                   3055 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1944: RTC->TCR2 |= (uint8_t)RTC_TamperSamplingFreq;
                                   3056 ; genPointerGet
      00DDEF C6 51 6D         [ 1] 3057 	ld	a, 0x516d
                                   3058 ; genOr
      00DDF2 1A 01            [ 1] 3059 	or	a, (0x01, sp)
                                   3060 ; genPointerSet
      00DDF4 C7 51 6D         [ 1] 3061 	ld	0x516d, a
                                   3062 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1947: RTC->WPR = 0xFF; 
                                   3063 ; genPointerSet
      00DDF7 35 FF 51 59      [ 1] 3064 	mov	0x5159+0, #0xff
                                   3065 ; genLabel
                                   3066 ; peephole j30 removed unused label 00101$.
                                   3067 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1948: }
                                   3068 ; genEndFunction
      00DDFB 84               [ 1] 3069 	pop	a
      00DDFC 81               [ 4] 3070 	ret
                                   3071 ;	Total RTC_TamperSamplingFreqConfig function size at codegen: 2 bytes.
                                   3072 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1958: void RTC_TamperPinsPrechargeDuration(RTC_TamperPrechargeDuration_TypeDef RTC_TamperPrechargeDuration)
                                   3073 ; genLabel
                                   3074 ;	-----------------------------------------
                                   3075 ;	 function RTC_TamperPinsPrechargeDuration
                                   3076 ;	-----------------------------------------
                                   3077 ;	Register assignment is optimal.
                                   3078 ;	Stack space usage: 1 bytes.
      00DDFD                       3079 _RTC_TamperPinsPrechargeDuration:
      00DDFD 88               [ 1] 3080 	push	a
                                   3081 ; genReceive
      00DDFE 6B 01            [ 1] 3082 	ld	(0x01, sp), a
                                   3083 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1964: RTC->WPR = 0xCA;
                                   3084 ; genPointerSet
      00DE00 35 CA 51 59      [ 1] 3085 	mov	0x5159+0, #0xca
                                   3086 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1965: RTC->WPR = 0x53;
                                   3087 ; genPointerSet
      00DE04 35 53 51 59      [ 1] 3088 	mov	0x5159+0, #0x53
                                   3089 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1968: RTC->TCR2 &= (uint8_t)~(RTC_TCR2_TAMPPUDIS | RTC_TCR2_TAMPPRCH);
                                   3090 ; genPointerGet
      00DE08 C6 51 6D         [ 1] 3091 	ld	a, 0x516d
                                   3092 ; genAnd
      00DE0B A4 1F            [ 1] 3093 	and	a, #0x1f
                                   3094 ; genPointerSet
      00DE0D C7 51 6D         [ 1] 3095 	ld	0x516d, a
                                   3096 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1971: RTC->TCR2 |= (uint8_t)RTC_TamperPrechargeDuration;
                                   3097 ; genPointerGet
      00DE10 C6 51 6D         [ 1] 3098 	ld	a, 0x516d
                                   3099 ; genOr
      00DE13 1A 01            [ 1] 3100 	or	a, (0x01, sp)
                                   3101 ; genPointerSet
      00DE15 C7 51 6D         [ 1] 3102 	ld	0x516d, a
                                   3103 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1974: RTC->WPR = 0xFF; 
                                   3104 ; genPointerSet
      00DE18 35 FF 51 59      [ 1] 3105 	mov	0x5159+0, #0xff
                                   3106 ; genLabel
                                   3107 ; peephole j30 removed unused label 00101$.
                                   3108 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1975: }
                                   3109 ; genEndFunction
      00DE1C 84               [ 1] 3110 	pop	a
      00DE1D 81               [ 4] 3111 	ret
                                   3112 ;	Total RTC_TamperPinsPrechargeDuration function size at codegen: 2 bytes.
                                   3113 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1987: void RTC_TamperCmd(RTC_Tamper_TypeDef RTC_Tamper,
                                   3114 ; genLabel
                                   3115 ;	-----------------------------------------
                                   3116 ;	 function RTC_TamperCmd
                                   3117 ;	-----------------------------------------
                                   3118 ;	Register assignment is optimal.
                                   3119 ;	Stack space usage: 1 bytes.
      00DE1E                       3120 _RTC_TamperCmd:
      00DE1E 88               [ 1] 3121 	push	a
                                   3122 ; genReceive
                                   3123 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1996: RTC->WPR = 0xCA;
                                   3124 ; genPointerSet
      00DE1F 35 CA 51 59      [ 1] 3125 	mov	0x5159+0, #0xca
                                   3126 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 1997: RTC->WPR = 0x53;
                                   3127 ; genPointerSet
      00DE23 35 53 51 59      [ 1] 3128 	mov	0x5159+0, #0x53
                                   3129 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2003: RTC->TCR1 |= (uint8_t)RTC_Tamper;
                                   3130 ; genPointerGet
      00DE27 AE 51 6C         [ 2] 3131 	ldw	x, #0x516c
      00DE2A 88               [ 1] 3132 	push	a
      00DE2B F6               [ 1] 3133 	ld	a, (x)
      00DE2C 6B 02            [ 1] 3134 	ld	(0x02, sp), a
      00DE2E 84               [ 1] 3135 	pop	a
                                   3136 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2000: if (NewState != DISABLE)
                                   3137 ; genIfx
      00DE2F 0D 04            [ 1] 3138 	tnz	(0x04, sp)
                                   3139 ; peephole j5 changed absolute to relative unconditional jump.
      00DE31 27 07            [ 1] 3140 	jreq	00102$
                                   3141 ; peephole j10 removed jra by using inverse jump logic
                                   3142 ; peephole j30 removed unused label 00113$.
                                   3143 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2003: RTC->TCR1 |= (uint8_t)RTC_Tamper;
                                   3144 ; genOr
      00DE33 1A 01            [ 1] 3145 	or	a, (0x01, sp)
                                   3146 ; genPointerSet
      00DE35 C7 51 6C         [ 1] 3147 	ld	0x516c, a
                                   3148 ; genGoto
      00DE38 20 06            [ 2] 3149 	jra	00103$
                                   3150 ; peephole j5 changed absolute to relative unconditional jump.
                                   3151 ; genLabel
      00DE3A                       3152 00102$:
                                   3153 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2008: RTC->TCR1 &= (uint8_t)~RTC_Tamper;
                                   3154 ; genCpl
      00DE3A 43               [ 1] 3155 	cpl	a
                                   3156 ; genAnd
      00DE3B 14 01            [ 1] 3157 	and	a, (0x01, sp)
                                   3158 ; genPointerSet
      00DE3D C7 51 6C         [ 1] 3159 	ld	0x516c, a
                                   3160 ; genLabel
      00DE40                       3161 00103$:
                                   3162 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2013: RTC->WPR = 0xFF; 
                                   3163 ; genPointerSet
      00DE40 35 FF 51 59      [ 1] 3164 	mov	0x5159+0, #0xff
                                   3165 ; genLabel
                                   3166 ; peephole j30 removed unused label 00104$.
                                   3167 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2014: }
                                   3168 ; genEndFunction
      00DE44 84               [ 1] 3169 	pop	a
      00DE45 85               [ 2] 3170 	popw	x
      00DE46 84               [ 1] 3171 	pop	a
      00DE47 FC               [ 2] 3172 	jp	(x)
                                   3173 ;	Total RTC_TamperCmd function size at codegen: 4 bytes.
                                   3174 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2058: void RTC_ITConfig(RTC_IT_TypeDef RTC_IT, FunctionalState NewState)
                                   3175 ; genLabel
                                   3176 ;	-----------------------------------------
                                   3177 ;	 function RTC_ITConfig
                                   3178 ;	-----------------------------------------
                                   3179 ;	Register assignment might be sub-optimal.
                                   3180 ;	Stack space usage: 3 bytes.
      00DE48                       3181 _RTC_ITConfig:
      00DE48 52 03            [ 2] 3182 	sub	sp, #3
                                   3183 ; genReceive
                                   3184 ; genReceive
      00DE4A 6B 03            [ 1] 3185 	ld	(0x03, sp), a
                                   3186 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2065: RTC->WPR = 0xCA;
                                   3187 ; genPointerSet
      00DE4C 35 CA 51 59      [ 1] 3188 	mov	0x5159+0, #0xca
                                   3189 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2066: RTC->WPR = 0x53;
                                   3190 ; genPointerSet
      00DE50 35 53 51 59      [ 1] 3191 	mov	0x5159+0, #0x53
                                   3192 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2071: RTC->CR2 |= (uint8_t)((uint16_t)RTC_IT & (uint16_t)0x00F0);
                                   3193 ; genPointerGet
      00DE54 C6 51 49         [ 1] 3194 	ld	a, 0x5149
      00DE57 6B 02            [ 1] 3195 	ld	(0x02, sp), a
                                   3196 ; genCast
                                   3197 ; genAssign
                                   3198 ; genAnd
      00DE59 9F               [ 1] 3199 	ld	a, xl
      00DE5A A4 F0            [ 1] 3200 	and	a, #0xf0
                                   3201 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2072: RTC->TCR1 |= (uint8_t)((uint16_t)RTC_IT & RTC_TCR1_TAMPIE);
                                   3202 ; genAnd
      00DE5C 88               [ 1] 3203 	push	a
      00DE5D 9F               [ 1] 3204 	ld	a, xl
      00DE5E A4 01            [ 1] 3205 	and	a, #0x01
      00DE60 6B 02            [ 1] 3206 	ld	(0x02, sp), a
      00DE62 84               [ 1] 3207 	pop	a
                                   3208 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2068: if (NewState != DISABLE)
                                   3209 ; genIfx
      00DE63 0D 03            [ 1] 3210 	tnz	(0x03, sp)
                                   3211 ; peephole j5 changed absolute to relative unconditional jump.
      00DE65 27 0F            [ 1] 3212 	jreq	00102$
                                   3213 ; peephole j10 removed jra by using inverse jump logic
                                   3214 ; peephole j30 removed unused label 00113$.
                                   3215 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2071: RTC->CR2 |= (uint8_t)((uint16_t)RTC_IT & (uint16_t)0x00F0);
                                   3216 ; genOr
      00DE67 1A 02            [ 1] 3217 	or	a, (0x02, sp)
                                   3218 ; genPointerSet
      00DE69 C7 51 49         [ 1] 3219 	ld	0x5149, a
                                   3220 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2072: RTC->TCR1 |= (uint8_t)((uint16_t)RTC_IT & RTC_TCR1_TAMPIE);
                                   3221 ; genPointerGet
      00DE6C C6 51 6C         [ 1] 3222 	ld	a, 0x516c
                                   3223 ; genOr
      00DE6F 1A 01            [ 1] 3224 	or	a, (0x01, sp)
                                   3225 ; genPointerSet
      00DE71 C7 51 6C         [ 1] 3226 	ld	0x516c, a
                                   3227 ; genGoto
      00DE74 20 13            [ 2] 3228 	jra	00103$
                                   3229 ; peephole j5 changed absolute to relative unconditional jump.
                                   3230 ; genLabel
      00DE76                       3231 00102$:
                                   3232 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2077: RTC->CR2  &= (uint8_t)~(uint8_t)((uint16_t)RTC_IT & (uint16_t)0x00F0);
                                   3233 ; genCpl
      00DE76 43               [ 1] 3234 	cpl	a
                                   3235 ; genAnd
      00DE77 14 02            [ 1] 3236 	and	a, (0x02, sp)
                                   3237 ; genPointerSet
      00DE79 C7 51 49         [ 1] 3238 	ld	0x5149, a
                                   3239 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2078: RTC->TCR1 &= (uint8_t)~(uint8_t)((uint16_t)RTC_IT & (uint16_t)RTC_TCR1_TAMPIE);
                                   3240 ; genPointerGet
      00DE7C C6 51 6C         [ 1] 3241 	ld	a, 0x516c
      00DE7F 6B 02            [ 1] 3242 	ld	(0x02, sp), a
                                   3243 ; genCpl
      00DE81 7B 01            [ 1] 3244 	ld	a, (0x01, sp)
      00DE83 43               [ 1] 3245 	cpl	a
                                   3246 ; genAnd
      00DE84 14 02            [ 1] 3247 	and	a, (0x02, sp)
                                   3248 ; genPointerSet
      00DE86 C7 51 6C         [ 1] 3249 	ld	0x516c, a
                                   3250 ; genLabel
      00DE89                       3251 00103$:
                                   3252 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2082: RTC->WPR = 0xFF; 
                                   3253 ; genPointerSet
      00DE89 35 FF 51 59      [ 1] 3254 	mov	0x5159+0, #0xff
                                   3255 ; genLabel
                                   3256 ; peephole j30 removed unused label 00104$.
                                   3257 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2083: }
                                   3258 ; genEndFunction
      00DE8D 5B 03            [ 2] 3259 	addw	sp, #3
      00DE8F 81               [ 4] 3260 	ret
                                   3261 ;	Total RTC_ITConfig function size at codegen: 3 bytes.
                                   3262 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2090: FlagStatus RTC_GetFlagStatus(RTC_Flag_TypeDef RTC_FLAG)
                                   3263 ; genLabel
                                   3264 ;	-----------------------------------------
                                   3265 ;	 function RTC_GetFlagStatus
                                   3266 ;	-----------------------------------------
                                   3267 ;	Register assignment might be sub-optimal.
                                   3268 ;	Stack space usage: 6 bytes.
      00DE90                       3269 _RTC_GetFlagStatus:
      00DE90 52 06            [ 2] 3270 	sub	sp, #6
                                   3271 ; genReceive
                                   3272 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2100: tmpreg2 = (uint16_t)((uint16_t)RTC->ISR1 << 8);
                                   3273 ; genPointerGet
      00DE92 C6 51 4C         [ 1] 3274 	ld	a, 0x514c
                                   3275 ; genCast
                                   3276 ; genAssign
      00DE95 90 97            [ 1] 3277 	ld	yl, a
                                   3278 ; peephole 1 removed dead clear of a.
                                   3279 ; genLeftShiftLiteral
      00DE97 0F 02            [ 1] 3280 	clr	(0x02, sp)
                                   3281 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2101: tmpreg1 = (uint16_t)((uint16_t)((uint16_t)(RTC->ISR2)) | tmpreg2);
                                   3282 ; genPointerGet
      00DE99 C6 51 4D         [ 1] 3283 	ld	a, 0x514d
                                   3284 ; genCast
                                   3285 ; genAssign
      00DE9C 0F 03            [ 1] 3286 	clr	(0x03, sp)
                                   3287 ; genOr
      00DE9E 6B 06            [ 1] 3288 	ld	(0x06, sp), a
      00DEA0 61               [ 1] 3289 	exg	a, yl
      00DEA1 6B 05            [ 1] 3290 	ld	(0x05, sp), a
      00DEA3 61               [ 1] 3291 	exg	a, yl
                                   3292 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2104: if ((tmpreg1 & (uint16_t)RTC_FLAG) != RESET)
                                   3293 ; genCast
                                   3294 ; genAssign
      00DEA4 9F               [ 1] 3295 	ld	a, xl
                                   3296 ; genAnd
      00DEA5 14 06            [ 1] 3297 	and	a, (0x06, sp)
      00DEA7 02               [ 1] 3298 	rlwa	x
                                   3299 ; peephole r1 used rlwa.
      00DEA8 14 05            [ 1] 3300 	and	a, (0x05, sp)
      00DEAA 95               [ 1] 3301 	ld	xh, a
                                   3302 ; genIfx
      00DEAB 5D               [ 2] 3303 	tnzw	x
                                   3304 ; peephole j5 changed absolute to relative unconditional jump.
      00DEAC 27 03            [ 1] 3305 	jreq	00102$
                                   3306 ; peephole j10 removed jra by using inverse jump logic
                                   3307 ; peephole j30 removed unused label 00113$.
                                   3308 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2106: flagstatus = SET;
                                   3309 ; genAssign
      00DEAE A6 01            [ 1] 3310 	ld	a, #0x01
                                   3311 ; genGoto
                                   3312 ; peephole j5 changed absolute to relative unconditional jump.
                                   3313 ; genLabel
                                   3314 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2110: flagstatus = RESET;
                                   3315 ; genAssign
                                   3316 ; genLabel
      00DEB0 21                    3317 	.byte 0x21
                                   3318 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00DEB1                       3319 00102$:
      00DEB1 4F               [ 1] 3320 	clr	a
      00DEB2                       3321 00103$:
                                   3322 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2112: return (FlagStatus)flagstatus;
                                   3323 ; genReturn
                                   3324 ; genLabel
                                   3325 ; peephole j30 removed unused label 00104$.
                                   3326 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2113: }
                                   3327 ; genEndFunction
      00DEB2 5B 06            [ 2] 3328 	addw	sp, #6
      00DEB4 81               [ 4] 3329 	ret
                                   3330 ;	Total RTC_GetFlagStatus function size at codegen: 3 bytes.
                                   3331 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2122: void RTC_ClearFlag(RTC_Flag_TypeDef RTC_FLAG)
                                   3332 ; genLabel
                                   3333 ;	-----------------------------------------
                                   3334 ;	 function RTC_ClearFlag
                                   3335 ;	-----------------------------------------
                                   3336 ;	Register assignment might be sub-optimal.
                                   3337 ;	Stack space usage: 0 bytes.
      00DEB5                       3338 _RTC_ClearFlag:
                                   3339 ; genReceive
                                   3340 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2128: RTC->ISR2 = (uint8_t)~((uint8_t)RTC_FLAG) ;
                                   3341 ; genCast
                                   3342 ; genAssign
      00DEB5 9F               [ 1] 3343 	ld	a, xl
                                   3344 ; genCpl
      00DEB6 43               [ 1] 3345 	cpl	a
                                   3346 ; genPointerSet
      00DEB7 C7 51 4D         [ 1] 3347 	ld	0x514d, a
                                   3348 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2129: RTC->ISR1 = (uint8_t)(((uint8_t)~(uint8_t)((uint16_t)RTC_FLAG >> (uint8_t)8)) & ((uint8_t)~(uint8_t)(RTC_ISR1_INIT)));
                                   3349 ; genCast
                                   3350 ; genAssign
      00DEBA 9E               [ 1] 3351 	ld	a, xh
                                   3352 ; genGetByte
                                   3353 ; genCpl
      00DEBB 43               [ 1] 3354 	cpl	a
                                   3355 ; genAnd
      00DEBC A4 7F            [ 1] 3356 	and	a, #0x7f
                                   3357 ; genPointerSet
      00DEBE C7 51 4C         [ 1] 3358 	ld	0x514c, a
                                   3359 ; genLabel
                                   3360 ; peephole j30 removed unused label 00101$.
                                   3361 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2130: }
                                   3362 ; genEndFunction
      00DEC1 81               [ 4] 3363 	ret
                                   3364 ;	Total RTC_ClearFlag function size at codegen: 1 bytes.
                                   3365 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2138: ITStatus RTC_GetITStatus(RTC_IT_TypeDef RTC_IT)
                                   3366 ; genLabel
                                   3367 ;	-----------------------------------------
                                   3368 ;	 function RTC_GetITStatus
                                   3369 ;	-----------------------------------------
                                   3370 ;	Register assignment might be sub-optimal.
                                   3371 ;	Stack space usage: 1 bytes.
      00DEC2                       3372 _RTC_GetITStatus:
      00DEC2 88               [ 1] 3373 	push	a
                                   3374 ; genReceive
                                   3375 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2147: enablestatus = (uint8_t)(RTC->CR2 & (uint16_t)RTC_IT);
                                   3376 ; genPointerGet
      00DEC3 C6 51 49         [ 1] 3377 	ld	a, 0x5149
      00DEC6 6B 01            [ 1] 3378 	ld	(0x01, sp), a
                                   3379 ; genCast
                                   3380 ; genAssign
      00DEC8 9F               [ 1] 3381 	ld	a, xl
                                   3382 ; genAnd
      00DEC9 14 01            [ 1] 3383 	and	a, (0x01, sp)
      00DECB 6B 01            [ 1] 3384 	ld	(0x01, sp), a
                                   3385 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2150: tmpreg = (uint8_t)(RTC->ISR2 & (uint8_t)((uint16_t)RTC_IT >> 4));
                                   3386 ; genPointerGet
      00DECD C6 51 4D         [ 1] 3387 	ld	a, 0x514d
                                   3388 ; genCast
                                   3389 ; genAssign
                                   3390 ; genRightShiftLiteral
      00DED0 54               [ 2] 3391 	srlw	x
      00DED1 54               [ 2] 3392 	srlw	x
      00DED2 54               [ 2] 3393 	srlw	x
      00DED3 54               [ 2] 3394 	srlw	x
                                   3395 ; genCast
                                   3396 ; genAssign
                                   3397 ; genAnd
      00DED4 89               [ 2] 3398 	pushw	x
      00DED5 14 02            [ 1] 3399 	and	a, (2, sp)
      00DED7 85               [ 2] 3400 	popw	x
                                   3401 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2153: if ((enablestatus != (uint8_t)RESET) && (tmpreg != (uint8_t)RESET))
                                   3402 ; genIfx
      00DED8 0D 01            [ 1] 3403 	tnz	(0x01, sp)
                                   3404 ; peephole j5 changed absolute to relative unconditional jump.
      00DEDA 27 06            [ 1] 3405 	jreq	00102$
                                   3406 ; peephole j10 removed jra by using inverse jump logic
                                   3407 ; peephole j30 removed unused label 00121$.
                                   3408 ; genIfx
      00DEDC 4D               [ 1] 3409 	tnz	a
                                   3410 ; peephole j5 changed absolute to relative unconditional jump.
      00DEDD 27 03            [ 1] 3411 	jreq	00102$
                                   3412 ; peephole j10 removed jra by using inverse jump logic
                                   3413 ; peephole j30 removed unused label 00122$.
                                   3414 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2155: itstatus = SET;
                                   3415 ; genAssign
      00DEDF A6 01            [ 1] 3416 	ld	a, #0x01
                                   3417 ; genGoto
                                   3418 ; peephole j5 changed absolute to relative unconditional jump.
                                   3419 ; genLabel
                                   3420 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2159: itstatus = RESET;
                                   3421 ; genAssign
                                   3422 ; genLabel
      00DEE1 21                    3423 	.byte 0x21
                                   3424 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00DEE2                       3425 00102$:
      00DEE2 4F               [ 1] 3426 	clr	a
      00DEE3                       3427 00103$:
                                   3428 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2162: return (ITStatus)itstatus;
                                   3429 ; genReturn
                                   3430 ; genLabel
                                   3431 ; peephole j30 removed unused label 00105$.
                                   3432 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2163: }
                                   3433 ; genEndFunction
      00DEE3 5B 01            [ 2] 3434 	addw	sp, #1
      00DEE5 81               [ 4] 3435 	ret
                                   3436 ;	Total RTC_GetITStatus function size at codegen: 3 bytes.
                                   3437 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2172: void RTC_ClearITPendingBit(RTC_IT_TypeDef RTC_IT)
                                   3438 ; genLabel
                                   3439 ;	-----------------------------------------
                                   3440 ;	 function RTC_ClearITPendingBit
                                   3441 ;	-----------------------------------------
                                   3442 ;	Register assignment might be sub-optimal.
                                   3443 ;	Stack space usage: 0 bytes.
      00DEE6                       3444 _RTC_ClearITPendingBit:
                                   3445 ; genReceive
                                   3446 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2178: RTC->ISR2 = (uint8_t)~(uint8_t)((uint16_t)RTC_IT >> 4);
                                   3447 ; genCast
                                   3448 ; genAssign
                                   3449 ; genRightShiftLiteral
      00DEE6 A6 10            [ 1] 3450 	ld	a, #0x10
      00DEE8 62               [ 2] 3451 	div	x, a
                                   3452 ; genCast
                                   3453 ; genAssign
      00DEE9 9F               [ 1] 3454 	ld	a, xl
                                   3455 ; genCpl
      00DEEA 43               [ 1] 3456 	cpl	a
                                   3457 ; genPointerSet
      00DEEB C7 51 4D         [ 1] 3458 	ld	0x514d, a
                                   3459 ; genLabel
                                   3460 ; peephole j30 removed unused label 00101$.
                                   3461 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2179: }
                                   3462 ; genEndFunction
      00DEEE 81               [ 4] 3463 	ret
                                   3464 ;	Total RTC_ClearITPendingBit function size at codegen: 1 bytes.
                                   3465 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2202: static uint8_t ByteToBcd2(uint8_t Value)
                                   3466 ; genLabel
                                   3467 ;	-----------------------------------------
                                   3468 ;	 function ByteToBcd2
                                   3469 ;	-----------------------------------------
                                   3470 ;	Register assignment is optimal.
                                   3471 ;	Stack space usage: 0 bytes.
      00DEEF                       3472 _ByteToBcd2:
                                   3473 ; genReceive
                                   3474 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2206: while (Value >= 10)
                                   3475 ; genAssign
      00DEEF 5F               [ 1] 3476 	clrw	x
                                   3477 ; genLabel
      00DEF0                       3478 00101$:
                                   3479 ; genCmp
                                   3480 ; genCmpTnz
      00DEF0 A1 0A            [ 1] 3481 	cp	a, #0x0a
                                   3482 ; peephole j5 changed absolute to relative unconditional jump.
      00DEF2 25 05            [ 1] 3483 	jrc	00103$
                                   3484 ; peephole j9 removed jra by using inverse jump logic
                                   3485 ; peephole j30 removed unused label 00121$.
                                   3486 ; skipping generated iCode
                                   3487 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2208: bcdhigh++;
                                   3488 ; genPlus
      00DEF4 5C               [ 1] 3489 	incw	x
                                   3490 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2209: Value -= 10;
                                   3491 ; genCast
                                   3492 ; genAssign
                                   3493 ; genMinus
      00DEF5 A0 0A            [ 1] 3494 	sub	a, #0x0a
                                   3495 ; genGoto
      00DEF7 20 F7            [ 2] 3496 	jra	00101$
                                   3497 ; peephole j5 changed absolute to relative unconditional jump.
                                   3498 ; genLabel
      00DEF9                       3499 00103$:
                                   3500 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2212: return  (uint8_t)((uint8_t)(bcdhigh << 4) | Value);
                                   3501 ; genLeftShiftLiteral
      00DEF9 58               [ 2] 3502 	sllw	x
      00DEFA 58               [ 2] 3503 	sllw	x
      00DEFB 58               [ 2] 3504 	sllw	x
      00DEFC 58               [ 2] 3505 	sllw	x
                                   3506 ; genOr
      00DEFD 89               [ 2] 3507 	pushw	x
      00DEFE 1A 02            [ 1] 3508 	or	a, (2, sp)
      00DF00 85               [ 2] 3509 	popw	x
                                   3510 ; genReturn
                                   3511 ; genLabel
                                   3512 ; peephole j30 removed unused label 00104$.
                                   3513 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2213: }
                                   3514 ; genEndFunction
      00DF01 81               [ 4] 3515 	ret
                                   3516 ;	Total ByteToBcd2 function size at codegen: 1 bytes.
                                   3517 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2220: static uint8_t Bcd2ToByte(uint8_t Value)
                                   3518 ; genLabel
                                   3519 ;	-----------------------------------------
                                   3520 ;	 function Bcd2ToByte
                                   3521 ;	-----------------------------------------
                                   3522 ;	Register assignment is optimal.
                                   3523 ;	Stack space usage: 0 bytes.
      00DF02                       3524 _Bcd2ToByte:
                                   3525 ; genReceive
                                   3526 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2224: tmp = (uint8_t)((uint8_t)((uint8_t)(Value & (uint8_t)0xF0) >> 4) * (uint8_t)10);
                                   3527 ; genAnd
      00DF02 90 97            [ 1] 3528 	ld	yl, a
                                   3529 ; peephole 4 removed redundant load from yl into a.
      00DF04 A4 F0            [ 1] 3530 	and	a, #0xf0
                                   3531 ; genRightShiftLiteral
      00DF06 4E               [ 1] 3532 	swap	a
      00DF07 A4 0F            [ 1] 3533 	and	a, #0x0f
      00DF09 97               [ 1] 3534 	ld	xl, a
                                   3535 ; genMult
      00DF0A A6 0A            [ 1] 3536 	ld	a, #0x0a
      00DF0C 42               [ 4] 3537 	mul	x, a
                                   3538 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2226: return (uint8_t)(tmp + (Value & (uint8_t)0x0F));
                                   3539 ; genAnd
      00DF0D 90 9F            [ 1] 3540 	ld	a, yl
      00DF0F A4 0F            [ 1] 3541 	and	a, #0x0f
                                   3542 ; genPlus
      00DF11 89               [ 2] 3543 	pushw	x
      00DF12 1B 02            [ 1] 3544 	add	a, (2, sp)
      00DF14 85               [ 2] 3545 	popw	x
                                   3546 ; genReturn
                                   3547 ; genLabel
                                   3548 ; peephole j30 removed unused label 00101$.
                                   3549 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_rtc.c: 2227: }
                                   3550 ; genEndFunction
      00DF15 81               [ 4] 3551 	ret
                                   3552 ;	Total Bcd2ToByte function size at codegen: 1 bytes.
                                   3553 	.area CODE
                                   3554 	.area CONST
                                   3555 	.area INITIALIZER
                                   3556 	.area CABS (ABS)
