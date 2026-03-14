                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8l15x_clk
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _SYSDivFactor
                                     11 	.globl _CLK_DeInit
                                     12 	.globl _CLK_HSICmd
                                     13 	.globl _CLK_AdjustHSICalibrationValue
                                     14 	.globl _CLK_LSICmd
                                     15 	.globl _CLK_HSEConfig
                                     16 	.globl _CLK_LSEConfig
                                     17 	.globl _CLK_ClockSecuritySystemEnable
                                     18 	.globl _CLK_ClockSecuritySytemDeglitchCmd
                                     19 	.globl _CLK_CCOConfig
                                     20 	.globl _CLK_SYSCLKSourceConfig
                                     21 	.globl _CLK_GetSYSCLKSource
                                     22 	.globl _CLK_GetClockFreq
                                     23 	.globl _CLK_SYSCLKDivConfig
                                     24 	.globl _CLK_SYSCLKSourceSwitchCmd
                                     25 	.globl _CLK_RTCClockConfig
                                     26 	.globl _CLK_BEEPClockConfig
                                     27 	.globl _CLK_PeripheralClockConfig
                                     28 	.globl _CLK_LSEClockSecuritySystemEnable
                                     29 	.globl _CLK_RTCCLKSwitchOnLSEFailureEnable
                                     30 	.globl _CLK_HaltConfig
                                     31 	.globl _CLK_MainRegulatorCmd
                                     32 	.globl _CLK_ITConfig
                                     33 	.globl _CLK_GetFlagStatus
                                     34 	.globl _CLK_ClearFlag
                                     35 	.globl _CLK_GetITStatus
                                     36 	.globl _CLK_ClearITPendingBit
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DATA
                                     41 ;--------------------------------------------------------
                                     42 ; ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area INITIALIZED
                                     45 ;--------------------------------------------------------
                                     46 ; absolute external ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area DABS (ABS)
                                     49 
                                     50 ; default segment ordering for linker
                                     51 	.area HOME
                                     52 	.area GSINIT
                                     53 	.area GSFINAL
                                     54 	.area CONST
                                     55 	.area INITIALIZER
                                     56 	.area CODE
                                     57 
                                     58 ;--------------------------------------------------------
                                     59 ; global & static initialisations
                                     60 ;--------------------------------------------------------
                                     61 	.area HOME
                                     62 	.area GSINIT
                                     63 	.area GSFINAL
                                     64 	.area GSINIT
                                     65 ;--------------------------------------------------------
                                     66 ; Home
                                     67 ;--------------------------------------------------------
                                     68 	.area HOME
                                     69 	.area HOME
                                     70 ;--------------------------------------------------------
                                     71 ; code
                                     72 ;--------------------------------------------------------
                                     73 	.area CODE
                                     74 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 120: void CLK_DeInit(void)
                                     75 ; genLabel
                                     76 ;	-----------------------------------------
                                     77 ;	 function CLK_DeInit
                                     78 ;	-----------------------------------------
                                     79 ;	Register assignment is optimal.
                                     80 ;	Stack space usage: 0 bytes.
      00C43A                         81 _CLK_DeInit:
                                     82 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 122: CLK->ICKCR = CLK_ICKCR_RESET_VALUE;
                                     83 ; genPointerSet
      00C43A 35 11 50 C2      [ 1]   84 	mov	0x50c2+0, #0x11
                                     85 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 123: CLK->ECKCR = CLK_ECKCR_RESET_VALUE;
                                     86 ; genPointerSet
      00C43E 35 00 50 C6      [ 1]   87 	mov	0x50c6+0, #0x00
                                     88 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 124: CLK->CRTCR = CLK_CRTCR_RESET_VALUE;
                                     89 ; genPointerSet
      00C442 35 00 50 C1      [ 1]   90 	mov	0x50c1+0, #0x00
                                     91 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 125: CLK->CBEEPR = CLK_CBEEPR_RESET_VALUE;
                                     92 ; genPointerSet
      00C446 35 00 50 CB      [ 1]   93 	mov	0x50cb+0, #0x00
                                     94 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 126: CLK->SWR  = CLK_SWR_RESET_VALUE;
                                     95 ; genPointerSet
      00C44A 35 01 50 C8      [ 1]   96 	mov	0x50c8+0, #0x01
                                     97 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 127: CLK->SWCR = CLK_SWCR_RESET_VALUE;
                                     98 ; genPointerSet
      00C44E 35 00 50 C9      [ 1]   99 	mov	0x50c9+0, #0x00
                                    100 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 128: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
                                    101 ; genPointerSet
      00C452 35 03 50 C0      [ 1]  102 	mov	0x50c0+0, #0x03
                                    103 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 129: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
                                    104 ; genPointerSet
      00C456 35 00 50 C3      [ 1]  105 	mov	0x50c3+0, #0x00
                                    106 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 130: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
                                    107 ; genPointerSet
      00C45A 35 80 50 C4      [ 1]  108 	mov	0x50c4+0, #0x80
                                    109 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 131: CLK->PCKENR3 = CLK_PCKENR3_RESET_VALUE;
                                    110 ; genPointerSet
      00C45E 35 00 50 D0      [ 1]  111 	mov	0x50d0+0, #0x00
                                    112 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 132: CLK->CSSR  = CLK_CSSR_RESET_VALUE;
                                    113 ; genPointerSet
      00C462 35 00 50 CA      [ 1]  114 	mov	0x50ca+0, #0x00
                                    115 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 133: CLK->CCOR = CLK_CCOR_RESET_VALUE;
                                    116 ; genPointerSet
      00C466 35 00 50 C5      [ 1]  117 	mov	0x50c5+0, #0x00
                                    118 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 134: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
                                    119 ; genPointerSet
      00C46A 35 00 50 CD      [ 1]  120 	mov	0x50cd+0, #0x00
                                    121 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 135: CLK->HSICALR = CLK_HSICALR_RESET_VALUE;
                                    122 ; genPointerSet
      00C46E 35 00 50 CC      [ 1]  123 	mov	0x50cc+0, #0x00
                                    124 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 136: CLK->HSIUNLCKR = CLK_HSIUNLCKR_RESET_VALUE;
                                    125 ; genPointerSet
      00C472 35 00 50 CE      [ 1]  126 	mov	0x50ce+0, #0x00
                                    127 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 137: CLK->REGCSR = CLK_REGCSR_RESET_VALUE;
                                    128 ; genPointerSet
      00C476 35 B9 50 CF      [ 1]  129 	mov	0x50cf+0, #0xb9
                                    130 ; genLabel
                                    131 ; peephole j30 removed unused label 00101$.
                                    132 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 138: }
                                    133 ; genEndFunction
      00C47A 81               [ 4]  134 	ret
                                    135 ;	Total CLK_DeInit function size at codegen: 1 bytes.
                                    136 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 160: void CLK_HSICmd(FunctionalState NewState)
                                    137 ; genLabel
                                    138 ;	-----------------------------------------
                                    139 ;	 function CLK_HSICmd
                                    140 ;	-----------------------------------------
                                    141 ;	Register assignment is optimal.
                                    142 ;	Stack space usage: 1 bytes.
      00C47B                        143 _CLK_HSICmd:
      00C47B 88               [ 1]  144 	push	a
                                    145 ; genReceive
      00C47C 6B 01            [ 1]  146 	ld	(0x01, sp), a
                                    147 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 168: CLK->ICKCR |= CLK_ICKCR_HSION;
                                    148 ; genPointerGet
      00C47E C6 50 C2         [ 1]  149 	ld	a, 0x50c2
                                    150 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 165: if (NewState != DISABLE)
                                    151 ; genIfx
      00C481 0D 01            [ 1]  152 	tnz	(0x01, sp)
                                    153 ; peephole j5 changed absolute to relative unconditional jump.
      00C483 27 07            [ 1]  154 	jreq	00102$
                                    155 ; peephole j10 removed jra by using inverse jump logic
                                    156 ; peephole j30 removed unused label 00113$.
                                    157 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 168: CLK->ICKCR |= CLK_ICKCR_HSION;
                                    158 ; genOr
      00C485 AA 01            [ 1]  159 	or	a, #0x01
                                    160 ; genPointerSet
      00C487 C7 50 C2         [ 1]  161 	ld	0x50c2, a
                                    162 ; genGoto
      00C48A 20 05            [ 2]  163 	jra	00104$
                                    164 ; peephole j5 changed absolute to relative unconditional jump.
                                    165 ; genLabel
      00C48C                        166 00102$:
                                    167 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 173: CLK->ICKCR &= (uint8_t)(~CLK_ICKCR_HSION);
                                    168 ; genAnd
      00C48C A4 FE            [ 1]  169 	and	a, #0xfe
                                    170 ; genPointerSet
      00C48E C7 50 C2         [ 1]  171 	ld	0x50c2, a
                                    172 ; genLabel
      00C491                        173 00104$:
                                    174 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 175: }
                                    175 ; genEndFunction
      00C491 84               [ 1]  176 	pop	a
      00C492 81               [ 4]  177 	ret
                                    178 ;	Total CLK_HSICmd function size at codegen: 2 bytes.
                                    179 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 188: void CLK_AdjustHSICalibrationValue(uint8_t CLK_HSICalibrationValue)
                                    180 ; genLabel
                                    181 ;	-----------------------------------------
                                    182 ;	 function CLK_AdjustHSICalibrationValue
                                    183 ;	-----------------------------------------
                                    184 ;	Register assignment is optimal.
                                    185 ;	Stack space usage: 0 bytes.
      00C493                        186 _CLK_AdjustHSICalibrationValue:
                                    187 ; genReceive
                                    188 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 191: CLK->HSIUNLCKR = 0xAC;
                                    189 ; genPointerSet
      00C493 35 AC 50 CE      [ 1]  190 	mov	0x50ce+0, #0xac
                                    191 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 192: CLK->HSIUNLCKR = 0x35;
                                    192 ; genPointerSet
      00C497 35 35 50 CE      [ 1]  193 	mov	0x50ce+0, #0x35
                                    194 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 195: CLK->HSITRIMR = (uint8_t)CLK_HSICalibrationValue;
                                    195 ; genPointerSet
      00C49B C7 50 CD         [ 1]  196 	ld	0x50cd, a
                                    197 ; genLabel
                                    198 ; peephole j30 removed unused label 00101$.
                                    199 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 196: }
                                    200 ; genEndFunction
      00C49E 81               [ 4]  201 	ret
                                    202 ;	Total CLK_AdjustHSICalibrationValue function size at codegen: 1 bytes.
                                    203 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 212: void CLK_LSICmd(FunctionalState NewState)
                                    204 ; genLabel
                                    205 ;	-----------------------------------------
                                    206 ;	 function CLK_LSICmd
                                    207 ;	-----------------------------------------
                                    208 ;	Register assignment is optimal.
                                    209 ;	Stack space usage: 1 bytes.
      00C49F                        210 _CLK_LSICmd:
      00C49F 88               [ 1]  211 	push	a
                                    212 ; genReceive
      00C4A0 6B 01            [ 1]  213 	ld	(0x01, sp), a
                                    214 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 221: CLK->ICKCR |= CLK_ICKCR_LSION;
                                    215 ; genPointerGet
      00C4A2 C6 50 C2         [ 1]  216 	ld	a, 0x50c2
                                    217 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 218: if (NewState != DISABLE)
                                    218 ; genIfx
      00C4A5 0D 01            [ 1]  219 	tnz	(0x01, sp)
                                    220 ; peephole j5 changed absolute to relative unconditional jump.
      00C4A7 27 07            [ 1]  221 	jreq	00102$
                                    222 ; peephole j10 removed jra by using inverse jump logic
                                    223 ; peephole j30 removed unused label 00113$.
                                    224 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 221: CLK->ICKCR |= CLK_ICKCR_LSION;
                                    225 ; genOr
      00C4A9 AA 04            [ 1]  226 	or	a, #0x04
                                    227 ; genPointerSet
      00C4AB C7 50 C2         [ 1]  228 	ld	0x50c2, a
                                    229 ; genGoto
      00C4AE 20 05            [ 2]  230 	jra	00104$
                                    231 ; peephole j5 changed absolute to relative unconditional jump.
                                    232 ; genLabel
      00C4B0                        233 00102$:
                                    234 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 226: CLK->ICKCR &= (uint8_t)(~CLK_ICKCR_LSION);
                                    235 ; genAnd
      00C4B0 A4 FB            [ 1]  236 	and	a, #0xfb
                                    237 ; genPointerSet
      00C4B2 C7 50 C2         [ 1]  238 	ld	0x50c2, a
                                    239 ; genLabel
      00C4B5                        240 00104$:
                                    241 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 228: }
                                    242 ; genEndFunction
      00C4B5 84               [ 1]  243 	pop	a
      00C4B6 81               [ 4]  244 	ret
                                    245 ;	Total CLK_LSICmd function size at codegen: 2 bytes.
                                    246 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 249: void CLK_HSEConfig(CLK_HSE_TypeDef CLK_HSE)
                                    247 ; genLabel
                                    248 ;	-----------------------------------------
                                    249 ;	 function CLK_HSEConfig
                                    250 ;	-----------------------------------------
                                    251 ;	Register assignment is optimal.
                                    252 ;	Stack space usage: 1 bytes.
      00C4B7                        253 _CLK_HSEConfig:
      00C4B7 88               [ 1]  254 	push	a
                                    255 ; genReceive
      00C4B8 6B 01            [ 1]  256 	ld	(0x01, sp), a
                                    257 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 256: CLK->ECKCR &= (uint8_t)~CLK_ECKCR_HSEON;
                                    258 ; genPointerGet
                                    259 ; genAnd
                                    260 ; genPointerSet
      00C4BA 72 11 50 C6      [ 1]  261 	bres	0x50c6, #0
                                    262 ; peephole 204x replaced 'and' by 'bres' ('0x50c6').
                                    263 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 259: CLK->ECKCR &= (uint8_t)~CLK_ECKCR_HSEBYP;
                                    264 ; genPointerGet
                                    265 ; genAnd
                                    266 ; genPointerSet
      00C4BE 72 19 50 C6      [ 1]  267 	bres	0x50c6, #4
                                    268 ; peephole 204x replaced 'and' by 'bres' ('0x50c6').
                                    269 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 262: CLK->ECKCR |= (uint8_t)CLK_HSE;
                                    270 ; genPointerGet
      00C4C2 C6 50 C6         [ 1]  271 	ld	a, 0x50c6
                                    272 ; genOr
      00C4C5 1A 01            [ 1]  273 	or	a, (0x01, sp)
                                    274 ; genPointerSet
      00C4C7 C7 50 C6         [ 1]  275 	ld	0x50c6, a
                                    276 ; genLabel
                                    277 ; peephole j30 removed unused label 00101$.
                                    278 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 263: }
                                    279 ; genEndFunction
      00C4CA 84               [ 1]  280 	pop	a
      00C4CB 81               [ 4]  281 	ret
                                    282 ;	Total CLK_HSEConfig function size at codegen: 2 bytes.
                                    283 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 280: void CLK_LSEConfig(CLK_LSE_TypeDef CLK_LSE)
                                    284 ; genLabel
                                    285 ;	-----------------------------------------
                                    286 ;	 function CLK_LSEConfig
                                    287 ;	-----------------------------------------
                                    288 ;	Register assignment is optimal.
                                    289 ;	Stack space usage: 1 bytes.
      00C4CC                        290 _CLK_LSEConfig:
      00C4CC 88               [ 1]  291 	push	a
                                    292 ; genReceive
      00C4CD 6B 01            [ 1]  293 	ld	(0x01, sp), a
                                    294 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 287: CLK->ECKCR &= (uint8_t)~CLK_ECKCR_LSEON;
                                    295 ; genPointerGet
                                    296 ; genAnd
                                    297 ; genPointerSet
      00C4CF 72 15 50 C6      [ 1]  298 	bres	0x50c6, #2
                                    299 ; peephole 204x replaced 'and' by 'bres' ('0x50c6').
                                    300 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 290: CLK->ECKCR &= (uint8_t)~CLK_ECKCR_LSEBYP;
                                    301 ; genPointerGet
                                    302 ; genAnd
                                    303 ; genPointerSet
      00C4D3 72 1B 50 C6      [ 1]  304 	bres	0x50c6, #5
                                    305 ; peephole 204x replaced 'and' by 'bres' ('0x50c6').
                                    306 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 293: CLK->ECKCR |= (uint8_t)CLK_LSE;
                                    307 ; genPointerGet
      00C4D7 C6 50 C6         [ 1]  308 	ld	a, 0x50c6
                                    309 ; genOr
      00C4DA 1A 01            [ 1]  310 	or	a, (0x01, sp)
                                    311 ; genPointerSet
      00C4DC C7 50 C6         [ 1]  312 	ld	0x50c6, a
                                    313 ; genLabel
                                    314 ; peephole j30 removed unused label 00101$.
                                    315 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 295: }
                                    316 ; genEndFunction
      00C4DF 84               [ 1]  317 	pop	a
      00C4E0 81               [ 4]  318 	ret
                                    319 ;	Total CLK_LSEConfig function size at codegen: 2 bytes.
                                    320 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 306: void CLK_ClockSecuritySystemEnable(void)
                                    321 ; genLabel
                                    322 ;	-----------------------------------------
                                    323 ;	 function CLK_ClockSecuritySystemEnable
                                    324 ;	-----------------------------------------
                                    325 ;	Register assignment is optimal.
                                    326 ;	Stack space usage: 0 bytes.
      00C4E1                        327 _CLK_ClockSecuritySystemEnable:
                                    328 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 309: CLK->CSSR |= CLK_CSSR_CSSEN;
                                    329 ; genPointerGet
                                    330 ; genOr
                                    331 ; genPointerSet
      00C4E1 72 10 50 CA      [ 1]  332 	bset	0x50ca, #0
                                    333 ; peephole 202x replaced 'or' by 'bset' ('0x50ca').
                                    334 ; genLabel
                                    335 ; peephole j30 removed unused label 00101$.
                                    336 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 310: }
                                    337 ; genEndFunction
      00C4E5 81               [ 4]  338 	ret
                                    339 ;	Total CLK_ClockSecuritySystemEnable function size at codegen: 1 bytes.
                                    340 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 317: void CLK_ClockSecuritySytemDeglitchCmd(FunctionalState NewState)
                                    341 ; genLabel
                                    342 ;	-----------------------------------------
                                    343 ;	 function CLK_ClockSecuritySytemDeglitchCmd
                                    344 ;	-----------------------------------------
                                    345 ;	Register assignment is optimal.
                                    346 ;	Stack space usage: 1 bytes.
      00C4E6                        347 _CLK_ClockSecuritySytemDeglitchCmd:
      00C4E6 88               [ 1]  348 	push	a
                                    349 ; genReceive
      00C4E7 6B 01            [ 1]  350 	ld	(0x01, sp), a
                                    351 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 325: CLK->CSSR |= CLK_CSSR_CSSDGON;
                                    352 ; genPointerGet
      00C4E9 C6 50 CA         [ 1]  353 	ld	a, 0x50ca
                                    354 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 322: if (NewState != DISABLE)
                                    355 ; genIfx
      00C4EC 0D 01            [ 1]  356 	tnz	(0x01, sp)
                                    357 ; peephole j5 changed absolute to relative unconditional jump.
      00C4EE 27 07            [ 1]  358 	jreq	00102$
                                    359 ; peephole j10 removed jra by using inverse jump logic
                                    360 ; peephole j30 removed unused label 00113$.
                                    361 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 325: CLK->CSSR |= CLK_CSSR_CSSDGON;
                                    362 ; genOr
      00C4F0 AA 10            [ 1]  363 	or	a, #0x10
                                    364 ; genPointerSet
      00C4F2 C7 50 CA         [ 1]  365 	ld	0x50ca, a
                                    366 ; genGoto
      00C4F5 20 05            [ 2]  367 	jra	00104$
                                    368 ; peephole j5 changed absolute to relative unconditional jump.
                                    369 ; genLabel
      00C4F7                        370 00102$:
                                    371 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 330: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDGON);
                                    372 ; genAnd
      00C4F7 A4 EF            [ 1]  373 	and	a, #0xef
                                    374 ; genPointerSet
      00C4F9 C7 50 CA         [ 1]  375 	ld	0x50ca, a
                                    376 ; genLabel
      00C4FC                        377 00104$:
                                    378 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 332: }
                                    379 ; genEndFunction
      00C4FC 84               [ 1]  380 	pop	a
      00C4FD 81               [ 4]  381 	ret
                                    382 ;	Total CLK_ClockSecuritySytemDeglitchCmd function size at codegen: 2 bytes.
                                    383 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 356: void CLK_CCOConfig(CLK_CCOSource_TypeDef CLK_CCOSource, CLK_CCODiv_TypeDef CLK_CCODiv)
                                    384 ; genLabel
                                    385 ;	-----------------------------------------
                                    386 ;	 function CLK_CCOConfig
                                    387 ;	-----------------------------------------
                                    388 ;	Register assignment is optimal.
                                    389 ;	Stack space usage: 0 bytes.
      00C4FE                        390 _CLK_CCOConfig:
                                    391 ; genReceive
                                    392 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 363: CLK->CCOR = (uint8_t)((uint8_t)CLK_CCOSource | (uint8_t)CLK_CCODiv);
                                    393 ; genOr
      00C4FE 1A 03            [ 1]  394 	or	a, (0x03, sp)
                                    395 ; genPointerSet
      00C500 C7 50 C5         [ 1]  396 	ld	0x50c5, a
                                    397 ; genLabel
                                    398 ; peephole j30 removed unused label 00101$.
                                    399 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 364: }
                                    400 ; genEndFunction
      00C503 85               [ 2]  401 	popw	x
      00C504 84               [ 1]  402 	pop	a
      00C505 FC               [ 2]  403 	jp	(x)
                                    404 ;	Total CLK_CCOConfig function size at codegen: 3 bytes.
                                    405 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 416: void CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_TypeDef CLK_SYSCLKSource)
                                    406 ; genLabel
                                    407 ;	-----------------------------------------
                                    408 ;	 function CLK_SYSCLKSourceConfig
                                    409 ;	-----------------------------------------
                                    410 ;	Register assignment is optimal.
                                    411 ;	Stack space usage: 0 bytes.
      00C506                        412 _CLK_SYSCLKSourceConfig:
                                    413 ; genReceive
                                    414 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 422: CLK->SWR = (uint8_t)CLK_SYSCLKSource;
                                    415 ; genPointerSet
      00C506 C7 50 C8         [ 1]  416 	ld	0x50c8, a
                                    417 ; genLabel
                                    418 ; peephole j30 removed unused label 00101$.
                                    419 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 423: }
                                    420 ; genEndFunction
      00C509 81               [ 4]  421 	ret
                                    422 ;	Total CLK_SYSCLKSourceConfig function size at codegen: 1 bytes.
                                    423 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 435: CLK_SYSCLKSource_TypeDef CLK_GetSYSCLKSource(void)
                                    424 ; genLabel
                                    425 ;	-----------------------------------------
                                    426 ;	 function CLK_GetSYSCLKSource
                                    427 ;	-----------------------------------------
                                    428 ;	Register assignment is optimal.
                                    429 ;	Stack space usage: 0 bytes.
      00C50A                        430 _CLK_GetSYSCLKSource:
                                    431 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 437: return ((CLK_SYSCLKSource_TypeDef)(CLK->SCSR));
                                    432 ; genPointerGet
      00C50A C6 50 C7         [ 1]  433 	ld	a, 0x50c7
                                    434 ; genReturn
                                    435 ; genLabel
                                    436 ; peephole j30 removed unused label 00101$.
                                    437 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 438: }
                                    438 ; genEndFunction
      00C50D 81               [ 4]  439 	ret
                                    440 ;	Total CLK_GetSYSCLKSource function size at codegen: 1 bytes.
                                    441 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 478: uint32_t CLK_GetClockFreq(void)
                                    442 ; genLabel
                                    443 ;	-----------------------------------------
                                    444 ;	 function CLK_GetClockFreq
                                    445 ;	-----------------------------------------
                                    446 ;	Register assignment might be sub-optimal.
                                    447 ;	Stack space usage: 8 bytes.
      00C50E                        448 _CLK_GetClockFreq:
      00C50E 52 08            [ 2]  449 	sub	sp, #8
                                    450 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 481: uint32_t sourcefrequency = 0;
                                    451 ; genAssign
      00C510 5F               [ 1]  452 	clrw	x
      00C511 1F 03            [ 2]  453 	ldw	(0x03, sp), x
      00C513 1F 01            [ 2]  454 	ldw	(0x01, sp), x
                                    455 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 486: clocksource = (CLK_SYSCLKSource_TypeDef)CLK->SCSR;
                                    456 ; genPointerGet
      00C515 C6 50 C7         [ 1]  457 	ld	a, 0x50c7
                                    458 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 488: if ( clocksource == CLK_SYSCLKSource_HSI)
                                    459 ; genCmpEQorNE
      00C518 A1 01            [ 1]  460 	cp	a, #0x01
                                    461 ; peephole j5 changed absolute to relative unconditional jump.
                                    462 ; peephole j10 removed jra by using inverse jump logic
                                    463 ; peephole j30 removed unused label 00134$.
                                    464 ; peephole j5 changed absolute to relative unconditional jump.
      00C51A 26 0C            [ 1]  465 	jrne	00108$
                                    466 ; peephole j7 removed jra by using inverse jump logic
                                    467 ; peephole j30 removed unused label 00135$.
                                    468 ; skipping generated iCode
                                    469 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 490: sourcefrequency = HSI_VALUE;
                                    470 ; genAssign
      00C51C AE 24 00         [ 2]  471 	ldw	x, #0x2400
      00C51F 1F 03            [ 2]  472 	ldw	(0x03, sp), x
      00C521 AE 00 F4         [ 2]  473 	ldw	x, #0x00f4
      00C524 1F 01            [ 2]  474 	ldw	(0x01, sp), x
                                    475 ; genGoto
      00C526 20 1C            [ 2]  476 	jra	00109$
                                    477 ; peephole j5 changed absolute to relative unconditional jump.
                                    478 ; genLabel
      00C528                        479 00108$:
                                    480 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 492: else if ( clocksource == CLK_SYSCLKSource_LSI)
                                    481 ; genCmpEQorNE
      00C528 A1 02            [ 1]  482 	cp	a, #0x02
                                    483 ; peephole j5 changed absolute to relative unconditional jump.
                                    484 ; peephole j10 removed jra by using inverse jump logic
                                    485 ; peephole j30 removed unused label 00137$.
                                    486 ; peephole j5 changed absolute to relative unconditional jump.
      00C52A 26 0A            [ 1]  487 	jrne	00105$
                                    488 ; peephole j7 removed jra by using inverse jump logic
                                    489 ; peephole j30 removed unused label 00138$.
                                    490 ; skipping generated iCode
                                    491 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 494: sourcefrequency = LSI_VALUE;
                                    492 ; genAssign
      00C52C AE 94 70         [ 2]  493 	ldw	x, #0x9470
      00C52F 1F 03            [ 2]  494 	ldw	(0x03, sp), x
      00C531 5F               [ 1]  495 	clrw	x
      00C532 1F 01            [ 2]  496 	ldw	(0x01, sp), x
                                    497 ; genGoto
      00C534 20 0E            [ 2]  498 	jra	00109$
                                    499 ; peephole j5 changed absolute to relative unconditional jump.
                                    500 ; genLabel
      00C536                        501 00105$:
                                    502 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 496: else if ( clocksource == CLK_SYSCLKSource_HSE)
                                    503 ; genCmpEQorNE
      00C536 A1 04            [ 1]  504 	cp	a, #0x04
                                    505 ; peephole j5 changed absolute to relative unconditional jump.
                                    506 ; peephole j10 removed jra by using inverse jump logic
                                    507 ; peephole j30 removed unused label 00140$.
                                    508 ; peephole j5 changed absolute to relative unconditional jump.
      00C538 26 0A            [ 1]  509 	jrne	00109$
                                    510 ; peephole j7 removed jra by using inverse jump logic
                                    511 ; peephole j30 removed unused label 00141$.
                                    512 ; skipping generated iCode
                                    513 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 498: sourcefrequency = HSE_VALUE;
                                    514 ; genAssign
      00C53A AE 24 00         [ 2]  515 	ldw	x, #0x2400
      00C53D 1F 03            [ 2]  516 	ldw	(0x03, sp), x
      00C53F AE 00 F4         [ 2]  517 	ldw	x, #0x00f4
      00C542 1F 01            [ 2]  518 	ldw	(0x01, sp), x
                                    519 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 502: clockfrequency = LSE_VALUE;
                                    520 ; genLabel
      00C544                        521 00109$:
                                    522 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 506: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_CKM);
                                    523 ; genPointerGet
      00C544 C6 50 C0         [ 1]  524 	ld	a, 0x50c0
                                    525 ; genAnd
      00C547 A4 07            [ 1]  526 	and	a, #0x07
                                    527 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 507: presc = SYSDivFactor[tmp];
                                    528 ; skipping iCode since result will be rematerialized
                                    529 ; genPlus
      00C549 5F               [ 1]  530 	clrw	x
      00C54A 97               [ 1]  531 	ld	xl, a
                                    532 ; genPointerGet
                                    533 ; peephole 10b moved addition of offset into storage instruction
      00C54B D6 90 1A         [ 1]  534 	ld	a, (_SYSDivFactor+0, x)
                                    535 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 510: clockfrequency = sourcefrequency / presc;
                                    536 ; genCast
                                    537 ; genAssign
      00C54E 5F               [ 1]  538 	clrw	x
      00C54F 0F 05            [ 1]  539 	clr	(0x05, sp)
                                    540 ; genIPush
      00C551 88               [ 1]  541 	push	a
      00C552 89               [ 2]  542 	pushw	x
      00C553 4F               [ 1]  543 	clr	a
      00C554 88               [ 1]  544 	push	a
                                    545 ; genIPush
      00C555 1E 07            [ 2]  546 	ldw	x, (0x07, sp)
      00C557 89               [ 2]  547 	pushw	x
      00C558 1E 07            [ 2]  548 	ldw	x, (0x07, sp)
      00C55A 89               [ 2]  549 	pushw	x
                                    550 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 512: return((uint32_t)clockfrequency);
                                    551 ; genCall
      00C55B CD ED 50         [ 4]  552 	call	__divulong
                                    553 ; genReturn
                                    554 ; genLabel
                                    555 ; peephole j30 removed unused label 00110$.
                                    556 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 513: }
                                    557 ; genEndFunction
      00C55E 5B 10            [ 2]  558 	addw	sp, #16
                                    559 ; peephole 33 combined additions to sp.
      00C560 81               [ 4]  560 	ret
                                    561 ;	Total CLK_GetClockFreq function size at codegen: 3 bytes.
                                    562 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 528: void CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_TypeDef CLK_SYSCLKDiv)
                                    563 ; genLabel
                                    564 ;	-----------------------------------------
                                    565 ;	 function CLK_SYSCLKDivConfig
                                    566 ;	-----------------------------------------
                                    567 ;	Register assignment is optimal.
                                    568 ;	Stack space usage: 0 bytes.
      00C561                        569 _CLK_SYSCLKDivConfig:
                                    570 ; genReceive
                                    571 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 533: CLK->CKDIVR = (uint8_t)(CLK_SYSCLKDiv);
                                    572 ; genPointerSet
      00C561 C7 50 C0         [ 1]  573 	ld	0x50c0, a
                                    574 ; genLabel
                                    575 ; peephole j30 removed unused label 00101$.
                                    576 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 534: }
                                    577 ; genEndFunction
      00C564 81               [ 4]  578 	ret
                                    579 ;	Total CLK_SYSCLKDivConfig function size at codegen: 1 bytes.
                                    580 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 541: void CLK_SYSCLKSourceSwitchCmd(FunctionalState NewState)
                                    581 ; genLabel
                                    582 ;	-----------------------------------------
                                    583 ;	 function CLK_SYSCLKSourceSwitchCmd
                                    584 ;	-----------------------------------------
                                    585 ;	Register assignment is optimal.
                                    586 ;	Stack space usage: 1 bytes.
      00C565                        587 _CLK_SYSCLKSourceSwitchCmd:
      00C565 88               [ 1]  588 	push	a
                                    589 ; genReceive
      00C566 6B 01            [ 1]  590 	ld	(0x01, sp), a
                                    591 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 549: CLK->SWCR |= CLK_SWCR_SWEN;
                                    592 ; genPointerGet
      00C568 C6 50 C9         [ 1]  593 	ld	a, 0x50c9
                                    594 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 546: if (NewState != DISABLE)
                                    595 ; genIfx
      00C56B 0D 01            [ 1]  596 	tnz	(0x01, sp)
                                    597 ; peephole j5 changed absolute to relative unconditional jump.
      00C56D 27 07            [ 1]  598 	jreq	00102$
                                    599 ; peephole j10 removed jra by using inverse jump logic
                                    600 ; peephole j30 removed unused label 00113$.
                                    601 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 549: CLK->SWCR |= CLK_SWCR_SWEN;
                                    602 ; genOr
      00C56F AA 02            [ 1]  603 	or	a, #0x02
                                    604 ; genPointerSet
      00C571 C7 50 C9         [ 1]  605 	ld	0x50c9, a
                                    606 ; genGoto
      00C574 20 05            [ 2]  607 	jra	00104$
                                    608 ; peephole j5 changed absolute to relative unconditional jump.
                                    609 ; genLabel
      00C576                        610 00102$:
                                    611 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 554: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
                                    612 ; genAnd
      00C576 A4 FD            [ 1]  613 	and	a, #0xfd
                                    614 ; genPointerSet
      00C578 C7 50 C9         [ 1]  615 	ld	0x50c9, a
                                    616 ; genLabel
      00C57B                        617 00104$:
                                    618 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 556: }
                                    619 ; genEndFunction
      00C57B 84               [ 1]  620 	pop	a
      00C57C 81               [ 4]  621 	ret
                                    622 ;	Total CLK_SYSCLKSourceSwitchCmd function size at codegen: 2 bytes.
                                    623 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 616: void CLK_RTCClockConfig(CLK_RTCCLKSource_TypeDef CLK_RTCCLKSource, CLK_RTCCLKDiv_TypeDef CLK_RTCCLKDiv)
                                    624 ; genLabel
                                    625 ;	-----------------------------------------
                                    626 ;	 function CLK_RTCClockConfig
                                    627 ;	-----------------------------------------
                                    628 ;	Register assignment is optimal.
                                    629 ;	Stack space usage: 0 bytes.
      00C57D                        630 _CLK_RTCClockConfig:
                                    631 ; genReceive
                                    632 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 623: CLK->CRTCR = (uint8_t)((uint8_t)CLK_RTCCLKSource | (uint8_t)CLK_RTCCLKDiv);
                                    633 ; genOr
      00C57D 1A 03            [ 1]  634 	or	a, (0x03, sp)
                                    635 ; genPointerSet
      00C57F C7 50 C1         [ 1]  636 	ld	0x50c1, a
                                    637 ; genLabel
                                    638 ; peephole j30 removed unused label 00101$.
                                    639 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 624: }
                                    640 ; genEndFunction
      00C582 85               [ 2]  641 	popw	x
      00C583 84               [ 1]  642 	pop	a
      00C584 FC               [ 2]  643 	jp	(x)
                                    644 ;	Total CLK_RTCClockConfig function size at codegen: 3 bytes.
                                    645 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 635: void CLK_BEEPClockConfig(CLK_BEEPCLKSource_TypeDef CLK_BEEPCLKSource)
                                    646 ; genLabel
                                    647 ;	-----------------------------------------
                                    648 ;	 function CLK_BEEPClockConfig
                                    649 ;	-----------------------------------------
                                    650 ;	Register assignment is optimal.
                                    651 ;	Stack space usage: 0 bytes.
      00C585                        652 _CLK_BEEPClockConfig:
                                    653 ; genReceive
                                    654 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 641: CLK->CBEEPR = (uint8_t)(CLK_BEEPCLKSource);
                                    655 ; genPointerSet
      00C585 C7 50 CB         [ 1]  656 	ld	0x50cb, a
                                    657 ; genLabel
                                    658 ; peephole j30 removed unused label 00101$.
                                    659 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 643: }
                                    660 ; genEndFunction
      00C588 81               [ 4]  661 	ret
                                    662 ;	Total CLK_BEEPClockConfig function size at codegen: 1 bytes.
                                    663 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 677: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    664 ; genLabel
                                    665 ;	-----------------------------------------
                                    666 ;	 function CLK_PeripheralClockConfig
                                    667 ;	-----------------------------------------
                                    668 ;	Register assignment might be sub-optimal.
                                    669 ;	Stack space usage: 2 bytes.
      00C589                        670 _CLK_PeripheralClockConfig:
      00C589 89               [ 2]  671 	pushw	x
                                    672 ; genReceive
                                    673 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 686: reg = (uint8_t)((uint8_t)CLK_Peripheral & (uint8_t)0xF0);
                                    674 ; genAnd
      00C58A 88               [ 1]  675 	push	a
      00C58B A4 F0            [ 1]  676 	and	a, #0xf0
      00C58D 97               [ 1]  677 	ld	xl, a
      00C58E 84               [ 1]  678 	pop	a
                                    679 ; genAssign
      00C58F 90 93            [ 1]  680 	ldw	y, x
                                    681 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 693: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    682 ; genAnd
      00C591 A4 0F            [ 1]  683 	and	a, #0x0f
                                    684 ; genLeftShift
      00C593 88               [ 1]  685 	push	a
      00C594 A6 01            [ 1]  686 	ld	a, #0x01
      00C596 6B 02            [ 1]  687 	ld	(0x02, sp), a
      00C598 84               [ 1]  688 	pop	a
      00C599 4D               [ 1]  689 	tnz	a
      00C59A 27 05            [ 1]  690 	jreq	00154$
      00C59C                        691 00153$:
      00C59C 08 01            [ 1]  692 	sll	(0x01, sp)
      00C59E 4A               [ 1]  693 	dec	a
      00C59F 26 FB            [ 1]  694 	jrne	00153$
      00C5A1                        695 00154$:
                                    696 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 698: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
                                    697 ; genCpl
      00C5A1 7B 01            [ 1]  698 	ld	a, (0x01, sp)
      00C5A3 43               [ 1]  699 	cpl	a
      00C5A4 6B 02            [ 1]  700 	ld	(0x02, sp), a
                                    701 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 688: if ( reg == 0x00)
                                    702 ; genIfx
      00C5A6 9F               [ 1]  703 	ld	a, xl
      00C5A7 4D               [ 1]  704 	tnz	a
                                    705 ; peephole j5 changed absolute to relative unconditional jump.
      00C5A8 26 15            [ 1]  706 	jrne	00114$
                                    707 ; peephole j7 removed jra by using inverse jump logic
                                    708 ; peephole j30 removed unused label 00155$.
                                    709 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 693: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    710 ; genPointerGet
      00C5AA C6 50 C3         [ 1]  711 	ld	a, 0x50c3
                                    712 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 690: if (NewState != DISABLE)
                                    713 ; genIfx
      00C5AD 0D 05            [ 1]  714 	tnz	(0x05, sp)
                                    715 ; peephole j5 changed absolute to relative unconditional jump.
      00C5AF 27 07            [ 1]  716 	jreq	00102$
                                    717 ; peephole j10 removed jra by using inverse jump logic
                                    718 ; peephole j30 removed unused label 00156$.
                                    719 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 693: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    720 ; genOr
      00C5B1 1A 01            [ 1]  721 	or	a, (0x01, sp)
                                    722 ; genPointerSet
      00C5B3 C7 50 C3         [ 1]  723 	ld	0x50c3, a
                                    724 ; genGoto
      00C5B6 20 35            [ 2]  725 	jra	00116$
                                    726 ; peephole j5 changed absolute to relative unconditional jump.
                                    727 ; genLabel
      00C5B8                        728 00102$:
                                    729 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 698: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
                                    730 ; genAnd
      00C5B8 14 02            [ 1]  731 	and	a, (0x02, sp)
                                    732 ; genPointerSet
      00C5BA C7 50 C3         [ 1]  733 	ld	0x50c3, a
                                    734 ; genGoto
      00C5BD 20 2E            [ 2]  735 	jra	00116$
                                    736 ; peephole j5 changed absolute to relative unconditional jump.
                                    737 ; genLabel
      00C5BF                        738 00114$:
                                    739 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 701: else if (reg == 0x10)
                                    740 ; genCmpEQorNE
      00C5BF 90 9F            [ 1]  741 	ld	a, yl
      00C5C1 A1 10            [ 1]  742 	cp	a, #0x10
                                    743 ; peephole j5 changed absolute to relative unconditional jump.
                                    744 ; peephole j10 removed jra by using inverse jump logic
                                    745 ; peephole j30 removed unused label 00158$.
                                    746 ; peephole j5 changed absolute to relative unconditional jump.
      00C5C3 26 15            [ 1]  747 	jrne	00111$
                                    748 ; peephole j7 removed jra by using inverse jump logic
                                    749 ; peephole j30 removed unused label 00159$.
                                    750 ; skipping generated iCode
                                    751 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 706: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    752 ; genPointerGet
      00C5C5 C6 50 C4         [ 1]  753 	ld	a, 0x50c4
                                    754 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 703: if (NewState != DISABLE)
                                    755 ; genIfx
      00C5C8 0D 05            [ 1]  756 	tnz	(0x05, sp)
                                    757 ; peephole j5 changed absolute to relative unconditional jump.
      00C5CA 27 07            [ 1]  758 	jreq	00105$
                                    759 ; peephole j10 removed jra by using inverse jump logic
                                    760 ; peephole j30 removed unused label 00160$.
                                    761 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 706: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    762 ; genOr
      00C5CC 1A 01            [ 1]  763 	or	a, (0x01, sp)
                                    764 ; genPointerSet
      00C5CE C7 50 C4         [ 1]  765 	ld	0x50c4, a
                                    766 ; genGoto
      00C5D1 20 1A            [ 2]  767 	jra	00116$
                                    768 ; peephole j5 changed absolute to relative unconditional jump.
                                    769 ; genLabel
      00C5D3                        770 00105$:
                                    771 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 711: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
                                    772 ; genAnd
      00C5D3 14 02            [ 1]  773 	and	a, (0x02, sp)
                                    774 ; genPointerSet
      00C5D5 C7 50 C4         [ 1]  775 	ld	0x50c4, a
                                    776 ; genGoto
      00C5D8 20 13            [ 2]  777 	jra	00116$
                                    778 ; peephole j5 changed absolute to relative unconditional jump.
                                    779 ; genLabel
      00C5DA                        780 00111$:
                                    781 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 719: CLK->PCKENR3 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    782 ; genPointerGet
      00C5DA C6 50 D0         [ 1]  783 	ld	a, 0x50d0
                                    784 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 716: if (NewState != DISABLE)
                                    785 ; genIfx
      00C5DD 0D 05            [ 1]  786 	tnz	(0x05, sp)
                                    787 ; peephole j5 changed absolute to relative unconditional jump.
      00C5DF 27 07            [ 1]  788 	jreq	00108$
                                    789 ; peephole j10 removed jra by using inverse jump logic
                                    790 ; peephole j30 removed unused label 00161$.
                                    791 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 719: CLK->PCKENR3 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    792 ; genOr
      00C5E1 1A 01            [ 1]  793 	or	a, (0x01, sp)
                                    794 ; genPointerSet
      00C5E3 C7 50 D0         [ 1]  795 	ld	0x50d0, a
                                    796 ; genGoto
      00C5E6 20 05            [ 2]  797 	jra	00116$
                                    798 ; peephole j5 changed absolute to relative unconditional jump.
                                    799 ; genLabel
      00C5E8                        800 00108$:
                                    801 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 724: CLK->PCKENR3 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
                                    802 ; genAnd
      00C5E8 14 02            [ 1]  803 	and	a, (0x02, sp)
                                    804 ; genPointerSet
      00C5EA C7 50 D0         [ 1]  805 	ld	0x50d0, a
                                    806 ; genLabel
      00C5ED                        807 00116$:
                                    808 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 727: }
                                    809 ; genEndFunction
      00C5ED 85               [ 2]  810 	popw	x
      00C5EE 85               [ 2]  811 	popw	x
      00C5EF 84               [ 1]  812 	pop	a
      00C5F0 FC               [ 2]  813 	jp	(x)
                                    814 ;	Total CLK_PeripheralClockConfig function size at codegen: 4 bytes.
                                    815 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 765: void CLK_LSEClockSecuritySystemEnable(void)
                                    816 ; genLabel
                                    817 ;	-----------------------------------------
                                    818 ;	 function CLK_LSEClockSecuritySystemEnable
                                    819 ;	-----------------------------------------
                                    820 ;	Register assignment is optimal.
                                    821 ;	Stack space usage: 0 bytes.
      00C5F1                        822 _CLK_LSEClockSecuritySystemEnable:
                                    823 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 768: CSSLSE->CSR |= CSSLSE_CSR_CSSEN;
                                    824 ; genPointerGet
                                    825 ; genOr
                                    826 ; genPointerSet
      00C5F1 72 10 51 90      [ 1]  827 	bset	0x5190, #0
                                    828 ; peephole 202x replaced 'or' by 'bset' ('0x5190').
                                    829 ; genLabel
                                    830 ; peephole j30 removed unused label 00101$.
                                    831 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 769: }
                                    832 ; genEndFunction
      00C5F5 81               [ 4]  833 	ret
                                    834 ;	Total CLK_LSEClockSecuritySystemEnable function size at codegen: 1 bytes.
                                    835 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 777: void CLK_RTCCLKSwitchOnLSEFailureEnable(void)
                                    836 ; genLabel
                                    837 ;	-----------------------------------------
                                    838 ;	 function CLK_RTCCLKSwitchOnLSEFailureEnable
                                    839 ;	-----------------------------------------
                                    840 ;	Register assignment is optimal.
                                    841 ;	Stack space usage: 0 bytes.
      00C5F6                        842 _CLK_RTCCLKSwitchOnLSEFailureEnable:
                                    843 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 780: CSSLSE->CSR |= CSSLSE_CSR_SWITCHEN;
                                    844 ; genPointerGet
                                    845 ; genOr
                                    846 ; genPointerSet
      00C5F6 72 12 51 90      [ 1]  847 	bset	0x5190, #1
                                    848 ; peephole 202x replaced 'or' by 'bset' ('0x5190').
                                    849 ; genLabel
                                    850 ; peephole j30 removed unused label 00101$.
                                    851 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 781: }
                                    852 ; genEndFunction
      00C5FA 81               [ 4]  853 	ret
                                    854 ;	Total CLK_RTCCLKSwitchOnLSEFailureEnable function size at codegen: 1 bytes.
                                    855 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 807: void CLK_HaltConfig(CLK_Halt_TypeDef CLK_Halt, FunctionalState NewState)
                                    856 ; genLabel
                                    857 ;	-----------------------------------------
                                    858 ;	 function CLK_HaltConfig
                                    859 ;	-----------------------------------------
                                    860 ;	Register assignment is optimal.
                                    861 ;	Stack space usage: 1 bytes.
      00C5FB                        862 _CLK_HaltConfig:
      00C5FB 88               [ 1]  863 	push	a
                                    864 ; genReceive
                                    865 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 815: CLK->ICKCR |= (uint8_t)(CLK_Halt);
                                    866 ; genPointerGet
      00C5FC AE 50 C2         [ 2]  867 	ldw	x, #0x50c2
      00C5FF 88               [ 1]  868 	push	a
      00C600 F6               [ 1]  869 	ld	a, (x)
      00C601 6B 02            [ 1]  870 	ld	(0x02, sp), a
      00C603 84               [ 1]  871 	pop	a
                                    872 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 813: if (NewState != DISABLE)
                                    873 ; genIfx
      00C604 0D 04            [ 1]  874 	tnz	(0x04, sp)
                                    875 ; peephole j5 changed absolute to relative unconditional jump.
      00C606 27 07            [ 1]  876 	jreq	00102$
                                    877 ; peephole j10 removed jra by using inverse jump logic
                                    878 ; peephole j30 removed unused label 00113$.
                                    879 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 815: CLK->ICKCR |= (uint8_t)(CLK_Halt);
                                    880 ; genOr
      00C608 1A 01            [ 1]  881 	or	a, (0x01, sp)
                                    882 ; genPointerSet
      00C60A C7 50 C2         [ 1]  883 	ld	0x50c2, a
                                    884 ; genGoto
      00C60D 20 06            [ 2]  885 	jra	00104$
                                    886 ; peephole j5 changed absolute to relative unconditional jump.
                                    887 ; genLabel
      00C60F                        888 00102$:
                                    889 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 819: CLK->ICKCR &= (uint8_t)(~CLK_Halt);
                                    890 ; genCpl
      00C60F 43               [ 1]  891 	cpl	a
                                    892 ; genAnd
      00C610 14 01            [ 1]  893 	and	a, (0x01, sp)
                                    894 ; genPointerSet
      00C612 C7 50 C2         [ 1]  895 	ld	0x50c2, a
                                    896 ; genLabel
      00C615                        897 00104$:
                                    898 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 821: }
                                    899 ; genEndFunction
      00C615 84               [ 1]  900 	pop	a
      00C616 85               [ 2]  901 	popw	x
      00C617 84               [ 1]  902 	pop	a
      00C618 FC               [ 2]  903 	jp	(x)
                                    904 ;	Total CLK_HaltConfig function size at codegen: 4 bytes.
                                    905 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 831: void CLK_MainRegulatorCmd(FunctionalState NewState)
                                    906 ; genLabel
                                    907 ;	-----------------------------------------
                                    908 ;	 function CLK_MainRegulatorCmd
                                    909 ;	-----------------------------------------
                                    910 ;	Register assignment is optimal.
                                    911 ;	Stack space usage: 1 bytes.
      00C619                        912 _CLK_MainRegulatorCmd:
      00C619 88               [ 1]  913 	push	a
                                    914 ; genReceive
      00C61A 6B 01            [ 1]  915 	ld	(0x01, sp), a
                                    916 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 839: CLK->REGCSR &= (uint8_t)(~CLK_REGCSR_REGOFF);
                                    917 ; genPointerGet
      00C61C C6 50 CF         [ 1]  918 	ld	a, 0x50cf
                                    919 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 836: if (NewState != DISABLE)
                                    920 ; genIfx
      00C61F 0D 01            [ 1]  921 	tnz	(0x01, sp)
                                    922 ; peephole j5 changed absolute to relative unconditional jump.
      00C621 27 07            [ 1]  923 	jreq	00102$
                                    924 ; peephole j10 removed jra by using inverse jump logic
                                    925 ; peephole j30 removed unused label 00113$.
                                    926 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 839: CLK->REGCSR &= (uint8_t)(~CLK_REGCSR_REGOFF);
                                    927 ; genAnd
      00C623 A4 FD            [ 1]  928 	and	a, #0xfd
                                    929 ; genPointerSet
      00C625 C7 50 CF         [ 1]  930 	ld	0x50cf, a
                                    931 ; genGoto
      00C628 20 05            [ 2]  932 	jra	00104$
                                    933 ; peephole j5 changed absolute to relative unconditional jump.
                                    934 ; genLabel
      00C62A                        935 00102$:
                                    936 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 844: CLK->REGCSR |= CLK_REGCSR_REGOFF;
                                    937 ; genOr
      00C62A AA 02            [ 1]  938 	or	a, #0x02
                                    939 ; genPointerSet
      00C62C C7 50 CF         [ 1]  940 	ld	0x50cf, a
                                    941 ; genLabel
      00C62F                        942 00104$:
                                    943 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 846: }
                                    944 ; genEndFunction
      00C62F 84               [ 1]  945 	pop	a
      00C630 81               [ 4]  946 	ret
                                    947 ;	Total CLK_MainRegulatorCmd function size at codegen: 2 bytes.
                                    948 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 875: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    949 ; genLabel
                                    950 ;	-----------------------------------------
                                    951 ;	 function CLK_ITConfig
                                    952 ;	-----------------------------------------
                                    953 ;	Register assignment is optimal.
                                    954 ;	Stack space usage: 1 bytes.
      00C631                        955 _CLK_ITConfig:
      00C631 88               [ 1]  956 	push	a
                                    957 ; genReceive
                                    958 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 884: if (CLK_IT == CLK_IT_SWIF)
                                    959 ; genCmpEQorNE
      00C632 A1 1C            [ 1]  960 	cp	a, #0x1c
      00C634 26 07            [ 1]  961 	jrne	00154$
      00C636 88               [ 1]  962 	push	a
      00C637 A6 01            [ 1]  963 	ld	a, #0x01
      00C639 6B 02            [ 1]  964 	ld	(0x02, sp), a
      00C63B 84               [ 1]  965 	pop	a
                                    966 ; peephole j5 changed absolute to relative unconditional jump.
      00C63C C5                     967 	.byte 0xc5
                                    968 ; peephole jrf7 used bcp opcode to jump over 2-byte instruction.
      00C63D                        969 00154$:
      00C63D 0F 01            [ 1]  970 	clr	(0x01, sp)
      00C63F                        971 00155$:
                                    972 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 889: else if (CLK_IT == CLK_IT_LSECSSF)
                                    973 ; genCmpEQorNE
      00C63F A0 2C            [ 1]  974 	sub	a, #0x2c
      00C641 26 02            [ 1]  975 	jrne	00157$
      00C643 4C               [ 1]  976 	inc	a
                                    977 ; peephole 51 used inc to get #1 into a.
                                    978 ; peephole j5 changed absolute to relative unconditional jump.
      00C644 21                     979 	.byte 0x21
                                    980 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00C645                        981 00157$:
      00C645 4F               [ 1]  982 	clr	a
      00C646                        983 00158$:
                                    984 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 882: if (NewState != DISABLE)
                                    985 ; genIfx
      00C646 0D 04            [ 1]  986 	tnz	(0x04, sp)
                                    987 ; peephole j5 changed absolute to relative unconditional jump.
      00C648 27 25            [ 1]  988 	jreq	00114$
                                    989 ; peephole j10 removed jra by using inverse jump logic
                                    990 ; peephole j30 removed unused label 00159$.
                                    991 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 884: if (CLK_IT == CLK_IT_SWIF)
                                    992 ; genIfx
      00C64A 0D 01            [ 1]  993 	tnz	(0x01, sp)
                                    994 ; peephole j5 changed absolute to relative unconditional jump.
      00C64C 27 0A            [ 1]  995 	jreq	00105$
                                    996 ; peephole j10 removed jra by using inverse jump logic
                                    997 ; peephole j30 removed unused label 00160$.
                                    998 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 887: CLK->SWCR |= CLK_SWCR_SWIEN;
                                    999 ; genPointerGet
      00C64E C6 50 C9         [ 1] 1000 	ld	a, 0x50c9
                                   1001 ; genOr
      00C651 AA 04            [ 1] 1002 	or	a, #0x04
                                   1003 ; genPointerSet
      00C653 C7 50 C9         [ 1] 1004 	ld	0x50c9, a
                                   1005 ; genGoto
      00C656 20 3A            [ 2] 1006 	jra	00116$
                                   1007 ; peephole j5 changed absolute to relative unconditional jump.
                                   1008 ; genLabel
      00C658                       1009 00105$:
                                   1010 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 889: else if (CLK_IT == CLK_IT_LSECSSF)
                                   1011 ; genIfx
      00C658 4D               [ 1] 1012 	tnz	a
                                   1013 ; peephole j5 changed absolute to relative unconditional jump.
      00C659 27 0A            [ 1] 1014 	jreq	00102$
                                   1015 ; peephole j10 removed jra by using inverse jump logic
                                   1016 ; peephole j30 removed unused label 00161$.
                                   1017 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 892: CSSLSE->CSR |= CSSLSE_CSR_CSSIE;
                                   1018 ; genPointerGet
      00C65B C6 51 90         [ 1] 1019 	ld	a, 0x5190
                                   1020 ; genOr
      00C65E AA 04            [ 1] 1021 	or	a, #0x04
                                   1022 ; genPointerSet
      00C660 C7 51 90         [ 1] 1023 	ld	0x5190, a
                                   1024 ; genGoto
      00C663 20 2D            [ 2] 1025 	jra	00116$
                                   1026 ; peephole j5 changed absolute to relative unconditional jump.
                                   1027 ; genLabel
      00C665                       1028 00102$:
                                   1029 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 897: CLK->CSSR |= CLK_CSSR_CSSDIE;
                                   1030 ; genPointerGet
      00C665 C6 50 CA         [ 1] 1031 	ld	a, 0x50ca
                                   1032 ; genOr
      00C668 AA 04            [ 1] 1033 	or	a, #0x04
                                   1034 ; genPointerSet
      00C66A C7 50 CA         [ 1] 1035 	ld	0x50ca, a
                                   1036 ; genGoto
      00C66D 20 23            [ 2] 1037 	jra	00116$
                                   1038 ; peephole j5 changed absolute to relative unconditional jump.
                                   1039 ; genLabel
      00C66F                       1040 00114$:
                                   1041 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 902: if (CLK_IT == CLK_IT_SWIF)
                                   1042 ; genIfx
      00C66F 0D 01            [ 1] 1043 	tnz	(0x01, sp)
                                   1044 ; peephole j5 changed absolute to relative unconditional jump.
      00C671 27 0A            [ 1] 1045 	jreq	00111$
                                   1046 ; peephole j10 removed jra by using inverse jump logic
                                   1047 ; peephole j30 removed unused label 00162$.
                                   1048 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 905: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
                                   1049 ; genPointerGet
      00C673 C6 50 C9         [ 1] 1050 	ld	a, 0x50c9
                                   1051 ; genAnd
      00C676 A4 FB            [ 1] 1052 	and	a, #0xfb
                                   1053 ; genPointerSet
      00C678 C7 50 C9         [ 1] 1054 	ld	0x50c9, a
                                   1055 ; genGoto
      00C67B 20 15            [ 2] 1056 	jra	00116$
                                   1057 ; peephole j5 changed absolute to relative unconditional jump.
                                   1058 ; genLabel
      00C67D                       1059 00111$:
                                   1060 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 907: else if (CLK_IT == CLK_IT_LSECSSF)
                                   1061 ; genIfx
      00C67D 4D               [ 1] 1062 	tnz	a
                                   1063 ; peephole j5 changed absolute to relative unconditional jump.
      00C67E 27 0A            [ 1] 1064 	jreq	00108$
                                   1065 ; peephole j10 removed jra by using inverse jump logic
                                   1066 ; peephole j30 removed unused label 00163$.
                                   1067 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 910: CSSLSE->CSR &= (uint8_t)(~CSSLSE_CSR_CSSIE);
                                   1068 ; genPointerGet
      00C680 C6 51 90         [ 1] 1069 	ld	a, 0x5190
                                   1070 ; genAnd
      00C683 A4 FB            [ 1] 1071 	and	a, #0xfb
                                   1072 ; genPointerSet
      00C685 C7 51 90         [ 1] 1073 	ld	0x5190, a
                                   1074 ; genGoto
      00C688 20 08            [ 2] 1075 	jra	00116$
                                   1076 ; peephole j5 changed absolute to relative unconditional jump.
                                   1077 ; genLabel
      00C68A                       1078 00108$:
                                   1079 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 915: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
                                   1080 ; genPointerGet
      00C68A C6 50 CA         [ 1] 1081 	ld	a, 0x50ca
                                   1082 ; genAnd
      00C68D A4 FB            [ 1] 1083 	and	a, #0xfb
                                   1084 ; genPointerSet
      00C68F C7 50 CA         [ 1] 1085 	ld	0x50ca, a
                                   1086 ; genLabel
      00C692                       1087 00116$:
                                   1088 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 918: }
                                   1089 ; genEndFunction
      00C692 84               [ 1] 1090 	pop	a
      00C693 85               [ 2] 1091 	popw	x
      00C694 84               [ 1] 1092 	pop	a
      00C695 FC               [ 2] 1093 	jp	(x)
                                   1094 ;	Total CLK_ITConfig function size at codegen: 4 bytes.
                                   1095 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 945: FlagStatus CLK_GetFlagStatus(CLK_FLAG_TypeDef CLK_FLAG)
                                   1096 ; genLabel
                                   1097 ;	-----------------------------------------
                                   1098 ;	 function CLK_GetFlagStatus
                                   1099 ;	-----------------------------------------
                                   1100 ;	Register assignment is optimal.
                                   1101 ;	Stack space usage: 1 bytes.
      00C696                       1102 _CLK_GetFlagStatus:
      00C696 88               [ 1] 1103 	push	a
                                   1104 ; genReceive
                                   1105 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 955: reg = (uint8_t)((uint8_t)CLK_FLAG & (uint8_t)0xF0);
                                   1106 ; genAnd
      00C697 97               [ 1] 1107 	ld	xl, a
                                   1108 ; peephole 4 removed redundant load from xl into a.
      00C698 A4 F0            [ 1] 1109 	and	a, #0xf0
                                   1110 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 958: pos = (uint8_t)((uint8_t)CLK_FLAG & (uint8_t)0x0F);
                                   1111 ; genAnd
      00C69A 88               [ 1] 1112 	push	a
      00C69B 9F               [ 1] 1113 	ld	a, xl
      00C69C A4 0F            [ 1] 1114 	and	a, #0x0f
      00C69E 97               [ 1] 1115 	ld	xl, a
      00C69F 84               [ 1] 1116 	pop	a
                                   1117 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 960: if (reg == 0x00) /* The flag to check is in CRTC Rregister */
                                   1118 ; genIfx
      00C6A0 4D               [ 1] 1119 	tnz	a
                                   1120 ; peephole j5 changed absolute to relative unconditional jump.
      00C6A1 26 05            [ 1] 1121 	jrne	00123$
                                   1122 ; peephole j7 removed jra by using inverse jump logic
                                   1123 ; peephole j30 removed unused label 00193$.
                                   1124 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 962: reg = CLK->CRTCR;
                                   1125 ; genPointerGet
      00C6A3 C6 50 C1         [ 1] 1126 	ld	a, 0x50c1
                                   1127 ; genGoto
      00C6A6 20 42            [ 2] 1128 	jra	00124$
                                   1129 ; peephole j5 changed absolute to relative unconditional jump.
                                   1130 ; genLabel
      00C6A8                       1131 00123$:
                                   1132 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 964: else if (reg == 0x10) /* The flag to check is in ICKCR register */
                                   1133 ; genCmpEQorNE
      00C6A8 A1 10            [ 1] 1134 	cp	a, #0x10
                                   1135 ; peephole j5 changed absolute to relative unconditional jump.
                                   1136 ; peephole j10 removed jra by using inverse jump logic
                                   1137 ; peephole j30 removed unused label 00195$.
                                   1138 ; peephole j5 changed absolute to relative unconditional jump.
      00C6AA 26 05            [ 1] 1139 	jrne	00120$
                                   1140 ; peephole j7 removed jra by using inverse jump logic
                                   1141 ; peephole j30 removed unused label 00196$.
                                   1142 ; skipping generated iCode
                                   1143 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 966: reg = CLK->ICKCR;
                                   1144 ; genPointerGet
      00C6AC C6 50 C2         [ 1] 1145 	ld	a, 0x50c2
                                   1146 ; genGoto
      00C6AF 20 39            [ 2] 1147 	jra	00124$
                                   1148 ; peephole j5 changed absolute to relative unconditional jump.
                                   1149 ; genLabel
      00C6B1                       1150 00120$:
                                   1151 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 968: else if (reg == 0x20) /* The flag to check is in CCOR register */
                                   1152 ; genCmpEQorNE
      00C6B1 A1 20            [ 1] 1153 	cp	a, #0x20
                                   1154 ; peephole j5 changed absolute to relative unconditional jump.
                                   1155 ; peephole j10 removed jra by using inverse jump logic
                                   1156 ; peephole j30 removed unused label 00198$.
                                   1157 ; peephole j5 changed absolute to relative unconditional jump.
      00C6B3 26 05            [ 1] 1158 	jrne	00117$
                                   1159 ; peephole j7 removed jra by using inverse jump logic
                                   1160 ; peephole j30 removed unused label 00199$.
                                   1161 ; skipping generated iCode
                                   1162 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 970: reg = CLK->CCOR;
                                   1163 ; genPointerGet
      00C6B5 C6 50 C5         [ 1] 1164 	ld	a, 0x50c5
                                   1165 ; genGoto
      00C6B8 20 30            [ 2] 1166 	jra	00124$
                                   1167 ; peephole j5 changed absolute to relative unconditional jump.
                                   1168 ; genLabel
      00C6BA                       1169 00117$:
                                   1170 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 972: else if (reg == 0x30) /* The flag to check is in ECKCR register */
                                   1171 ; genCmpEQorNE
      00C6BA A1 30            [ 1] 1172 	cp	a, #0x30
                                   1173 ; peephole j5 changed absolute to relative unconditional jump.
                                   1174 ; peephole j10 removed jra by using inverse jump logic
                                   1175 ; peephole j30 removed unused label 00201$.
                                   1176 ; peephole j5 changed absolute to relative unconditional jump.
      00C6BC 26 05            [ 1] 1177 	jrne	00114$
                                   1178 ; peephole j7 removed jra by using inverse jump logic
                                   1179 ; peephole j30 removed unused label 00202$.
                                   1180 ; skipping generated iCode
                                   1181 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 974: reg = CLK->ECKCR;
                                   1182 ; genPointerGet
      00C6BE C6 50 C6         [ 1] 1183 	ld	a, 0x50c6
                                   1184 ; genGoto
      00C6C1 20 27            [ 2] 1185 	jra	00124$
                                   1186 ; peephole j5 changed absolute to relative unconditional jump.
                                   1187 ; genLabel
      00C6C3                       1188 00114$:
                                   1189 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 976: else if (reg == 0x40) /* The flag to check is in SWCR register */
                                   1190 ; genCmpEQorNE
      00C6C3 A1 40            [ 1] 1191 	cp	a, #0x40
                                   1192 ; peephole j5 changed absolute to relative unconditional jump.
                                   1193 ; peephole j10 removed jra by using inverse jump logic
                                   1194 ; peephole j30 removed unused label 00204$.
                                   1195 ; peephole j5 changed absolute to relative unconditional jump.
      00C6C5 26 05            [ 1] 1196 	jrne	00111$
                                   1197 ; peephole j7 removed jra by using inverse jump logic
                                   1198 ; peephole j30 removed unused label 00205$.
                                   1199 ; skipping generated iCode
                                   1200 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 978: reg = CLK->SWCR;
                                   1201 ; genPointerGet
      00C6C7 C6 50 C9         [ 1] 1202 	ld	a, 0x50c9
                                   1203 ; genGoto
      00C6CA 20 1E            [ 2] 1204 	jra	00124$
                                   1205 ; peephole j5 changed absolute to relative unconditional jump.
                                   1206 ; genLabel
      00C6CC                       1207 00111$:
                                   1208 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 980: else if (reg == 0x50) /* The flag to check is in CSSR register */
                                   1209 ; genCmpEQorNE
      00C6CC A1 50            [ 1] 1210 	cp	a, #0x50
                                   1211 ; peephole j5 changed absolute to relative unconditional jump.
                                   1212 ; peephole j10 removed jra by using inverse jump logic
                                   1213 ; peephole j30 removed unused label 00207$.
                                   1214 ; peephole j5 changed absolute to relative unconditional jump.
      00C6CE 26 05            [ 1] 1215 	jrne	00108$
                                   1216 ; peephole j7 removed jra by using inverse jump logic
                                   1217 ; peephole j30 removed unused label 00208$.
                                   1218 ; skipping generated iCode
                                   1219 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 982: reg = CLK->CSSR;
                                   1220 ; genPointerGet
      00C6D0 C6 50 CA         [ 1] 1221 	ld	a, 0x50ca
                                   1222 ; genGoto
      00C6D3 20 15            [ 2] 1223 	jra	00124$
                                   1224 ; peephole j5 changed absolute to relative unconditional jump.
                                   1225 ; genLabel
      00C6D5                       1226 00108$:
                                   1227 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 984: else if (reg == 0x70) /* The flag to check is in REGCSR register */
                                   1228 ; genCmpEQorNE
      00C6D5 A1 70            [ 1] 1229 	cp	a, #0x70
                                   1230 ; peephole j5 changed absolute to relative unconditional jump.
                                   1231 ; peephole j10 removed jra by using inverse jump logic
                                   1232 ; peephole j30 removed unused label 00210$.
                                   1233 ; peephole j5 changed absolute to relative unconditional jump.
      00C6D7 26 05            [ 1] 1234 	jrne	00105$
                                   1235 ; peephole j7 removed jra by using inverse jump logic
                                   1236 ; peephole j30 removed unused label 00211$.
                                   1237 ; skipping generated iCode
                                   1238 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 986: reg = CLK->REGCSR;
                                   1239 ; genPointerGet
      00C6D9 C6 50 CF         [ 1] 1240 	ld	a, 0x50cf
                                   1241 ; genGoto
      00C6DC 20 0C            [ 2] 1242 	jra	00124$
                                   1243 ; peephole j5 changed absolute to relative unconditional jump.
                                   1244 ; genLabel
      00C6DE                       1245 00105$:
                                   1246 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 988: else if (reg == 0x80) /* The flag to check is in CSSLSE_CSRregister */
                                   1247 ; genCmpEQorNE
      00C6DE A1 80            [ 1] 1248 	cp	a, #0x80
                                   1249 ; peephole j5 changed absolute to relative unconditional jump.
                                   1250 ; peephole j10 removed jra by using inverse jump logic
                                   1251 ; peephole j30 removed unused label 00213$.
                                   1252 ; peephole j5 changed absolute to relative unconditional jump.
      00C6E0 26 05            [ 1] 1253 	jrne	00102$
                                   1254 ; peephole j7 removed jra by using inverse jump logic
                                   1255 ; peephole j30 removed unused label 00214$.
                                   1256 ; skipping generated iCode
                                   1257 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 990: reg = CSSLSE->CSR;
                                   1258 ; genPointerGet
      00C6E2 C6 51 90         [ 1] 1259 	ld	a, 0x5190
                                   1260 ; genGoto
      00C6E5 20 03            [ 2] 1261 	jra	00124$
                                   1262 ; peephole j5 changed absolute to relative unconditional jump.
                                   1263 ; genLabel
      00C6E7                       1264 00102$:
                                   1265 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 994: reg = CLK->CBEEPR;
                                   1266 ; genPointerGet
      00C6E7 C6 50 CB         [ 1] 1267 	ld	a, 0x50cb
                                   1268 ; genLabel
      00C6EA                       1269 00124$:
                                   1270 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 998: if ((reg & (uint8_t)((uint8_t)1 << (uint8_t)pos)) != (uint8_t)RESET)
                                   1271 ; genLeftShift
      00C6EA 88               [ 1] 1272 	push	a
      00C6EB A6 01            [ 1] 1273 	ld	a, #0x01
      00C6ED 6B 02            [ 1] 1274 	ld	(0x02, sp), a
      00C6EF 9F               [ 1] 1275 	ld	a, xl
      00C6F0 4D               [ 1] 1276 	tnz	a
      00C6F1 27 05            [ 1] 1277 	jreq	00216$
      00C6F3                       1278 00215$:
      00C6F3 08 02            [ 1] 1279 	sll	(0x02, sp)
      00C6F5 4A               [ 1] 1280 	dec	a
      00C6F6 26 FB            [ 1] 1281 	jrne	00215$
      00C6F8                       1282 00216$:
      00C6F8 84               [ 1] 1283 	pop	a
                                   1284 ; genAnd
                                   1285 ; genIfx
      00C6F9 14 01            [ 1] 1286 	and	a, (0x01, sp)
                                   1287 ; peephole 23 removed redundant tnz.
                                   1288 ; peephole j5 changed absolute to relative unconditional jump.
      00C6FB 27 03            [ 1] 1289 	jreq	00126$
                                   1290 ; peephole j10 removed jra by using inverse jump logic
                                   1291 ; peephole j30 removed unused label 00217$.
                                   1292 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1000: bitstatus = SET;
                                   1293 ; genAssign
      00C6FD A6 01            [ 1] 1294 	ld	a, #0x01
                                   1295 ; genGoto
                                   1296 ; peephole j5 changed absolute to relative unconditional jump.
                                   1297 ; genLabel
                                   1298 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1004: bitstatus = RESET;
                                   1299 ; genAssign
                                   1300 ; genLabel
      00C6FF 21                    1301 	.byte 0x21
                                   1302 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00C700                       1303 00126$:
      00C700 4F               [ 1] 1304 	clr	a
      00C701                       1305 00127$:
                                   1306 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1008: return((FlagStatus)bitstatus);
                                   1307 ; genReturn
                                   1308 ; genLabel
                                   1309 ; peephole j30 removed unused label 00128$.
                                   1310 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1009: }
                                   1311 ; genEndFunction
      00C701 5B 01            [ 2] 1312 	addw	sp, #1
      00C703 81               [ 4] 1313 	ret
                                   1314 ;	Total CLK_GetFlagStatus function size at codegen: 3 bytes.
                                   1315 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1016: void CLK_ClearFlag(void)
                                   1316 ; genLabel
                                   1317 ;	-----------------------------------------
                                   1318 ;	 function CLK_ClearFlag
                                   1319 ;	-----------------------------------------
                                   1320 ;	Register assignment is optimal.
                                   1321 ;	Stack space usage: 0 bytes.
      00C704                       1322 _CLK_ClearFlag:
                                   1323 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1020: CSSLSE->CSR &= (uint8_t)(~CSSLSE_CSR_CSSF);
                                   1324 ; genPointerGet
                                   1325 ; genAnd
                                   1326 ; genPointerSet
      00C704 72 17 51 90      [ 1] 1327 	bres	0x5190, #3
                                   1328 ; peephole 204x replaced 'and' by 'bres' ('0x5190').
                                   1329 ; genLabel
                                   1330 ; peephole j30 removed unused label 00101$.
                                   1331 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1021: }
                                   1332 ; genEndFunction
      00C708 81               [ 4] 1333 	ret
                                   1334 ;	Total CLK_ClearFlag function size at codegen: 1 bytes.
                                   1335 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1032: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                   1336 ; genLabel
                                   1337 ;	-----------------------------------------
                                   1338 ;	 function CLK_GetITStatus
                                   1339 ;	-----------------------------------------
                                   1340 ;	Register assignment is optimal.
                                   1341 ;	Stack space usage: 1 bytes.
      00C709                       1342 _CLK_GetITStatus:
      00C709 88               [ 1] 1343 	push	a
                                   1344 ; genReceive
                                   1345 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1040: if (CLK_IT == CLK_IT_SWIF)
                                   1346 ; genCmpEQorNE
      00C70A 6B 01            [ 1] 1347 	ld	(0x01, sp), a
                                   1348 ; peephole 4a removed redundant load from (0x01, sp) into a.
      00C70C A1 1C            [ 1] 1349 	cp	a, #0x1c
                                   1350 ; peephole j5 changed absolute to relative unconditional jump.
                                   1351 ; peephole j10 removed jra by using inverse jump logic
                                   1352 ; peephole j30 removed unused label 00154$.
                                   1353 ; peephole j5 changed absolute to relative unconditional jump.
      00C70E 26 0F            [ 1] 1354 	jrne	00114$
                                   1355 ; peephole j7 removed jra by using inverse jump logic
                                   1356 ; peephole j30 removed unused label 00155$.
                                   1357 ; skipping generated iCode
                                   1358 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1043: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
                                   1359 ; genPointerGet
      00C710 C6 50 C9         [ 1] 1360 	ld	a, 0x50c9
                                   1361 ; genAnd
      00C713 14 01            [ 1] 1362 	and	a, (0x01, sp)
                                   1363 ; genCmpEQorNE
                                   1364 ; peephole j5 changed absolute to relative unconditional jump.
                                   1365 ; peephole j10 removed jra by using inverse jump logic
                                   1366 ; peephole j30 removed unused label 00157$.
                                   1367 ; peephole j5 changed absolute to relative unconditional jump.
                                   1368 ; peephole j7 removed jra by using inverse jump logic
                                   1369 ; peephole j30 removed unused label 00158$.
                                   1370 ; skipping generated iCode
                                   1371 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1045: bitstatus = SET;
                                   1372 ; genAssign
      00C715 A0 0C            [ 1] 1373 	sub	a, #0x0c
      00C717 26 03            [ 1] 1374 	jrne	00102$
      00C719 4C               [ 1] 1375 	inc	a
                                   1376 ; peephole 51 used inc to get #1 into a.
                                   1377 ; genGoto
      00C71A 20 24            [ 2] 1378 	jra	00115$
                                   1379 ; peephole j5 changed absolute to relative unconditional jump.
                                   1380 ; genLabel
      00C71C                       1381 00102$:
                                   1382 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1049: bitstatus = RESET;
                                   1383 ; genAssign
      00C71C 4F               [ 1] 1384 	clr	a
                                   1385 ; genGoto
      00C71D 20 21            [ 2] 1386 	jra	00115$
                                   1387 ; peephole j5 changed absolute to relative unconditional jump.
                                   1388 ; genLabel
      00C71F                       1389 00114$:
                                   1390 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1052: else if (CLK_IT == CLK_IT_LSECSSF)
                                   1391 ; genCmpEQorNE
      00C71F 7B 01            [ 1] 1392 	ld	a, (0x01, sp)
      00C721 A1 2C            [ 1] 1393 	cp	a, #0x2c
                                   1394 ; peephole j5 changed absolute to relative unconditional jump.
                                   1395 ; peephole j10 removed jra by using inverse jump logic
                                   1396 ; peephole j30 removed unused label 00160$.
                                   1397 ; peephole j5 changed absolute to relative unconditional jump.
      00C723 26 0F            [ 1] 1398 	jrne	00111$
                                   1399 ; peephole j7 removed jra by using inverse jump logic
                                   1400 ; peephole j30 removed unused label 00161$.
                                   1401 ; skipping generated iCode
                                   1402 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1055: if ((CSSLSE->CSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
                                   1403 ; genPointerGet
      00C725 C6 51 90         [ 1] 1404 	ld	a, 0x5190
                                   1405 ; genAnd
      00C728 14 01            [ 1] 1406 	and	a, (0x01, sp)
                                   1407 ; genCmpEQorNE
                                   1408 ; peephole j5 changed absolute to relative unconditional jump.
                                   1409 ; peephole j10 removed jra by using inverse jump logic
                                   1410 ; peephole j30 removed unused label 00163$.
                                   1411 ; peephole j5 changed absolute to relative unconditional jump.
                                   1412 ; peephole j7 removed jra by using inverse jump logic
                                   1413 ; peephole j30 removed unused label 00164$.
                                   1414 ; skipping generated iCode
                                   1415 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1057: bitstatus = SET;
                                   1416 ; genAssign
      00C72A A0 0C            [ 1] 1417 	sub	a, #0x0c
      00C72C 26 03            [ 1] 1418 	jrne	00105$
      00C72E 4C               [ 1] 1419 	inc	a
                                   1420 ; peephole 51 used inc to get #1 into a.
                                   1421 ; genGoto
      00C72F 20 0F            [ 2] 1422 	jra	00115$
                                   1423 ; peephole j5 changed absolute to relative unconditional jump.
                                   1424 ; genLabel
      00C731                       1425 00105$:
                                   1426 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1061: bitstatus = RESET;
                                   1427 ; genAssign
      00C731 4F               [ 1] 1428 	clr	a
                                   1429 ; genGoto
      00C732 20 0C            [ 2] 1430 	jra	00115$
                                   1431 ; peephole j5 changed absolute to relative unconditional jump.
                                   1432 ; genLabel
      00C734                       1433 00111$:
                                   1434 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1067: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
                                   1435 ; genPointerGet
      00C734 C6 50 CA         [ 1] 1436 	ld	a, 0x50ca
                                   1437 ; genAnd
      00C737 14 01            [ 1] 1438 	and	a, (0x01, sp)
                                   1439 ; genCmpEQorNE
                                   1440 ; peephole j5 changed absolute to relative unconditional jump.
                                   1441 ; peephole j10 removed jra by using inverse jump logic
                                   1442 ; peephole j30 removed unused label 00166$.
                                   1443 ; peephole j5 changed absolute to relative unconditional jump.
                                   1444 ; peephole j7 removed jra by using inverse jump logic
                                   1445 ; peephole j30 removed unused label 00167$.
                                   1446 ; skipping generated iCode
                                   1447 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1069: bitstatus = SET;
                                   1448 ; genAssign
      00C739 A0 0C            [ 1] 1449 	sub	a, #0x0c
      00C73B 26 02            [ 1] 1450 	jrne	00108$
      00C73D 4C               [ 1] 1451 	inc	a
                                   1452 ; peephole 51 used inc to get #1 into a.
                                   1453 ; genGoto
                                   1454 ; peephole j5 changed absolute to relative unconditional jump.
                                   1455 ; genLabel
                                   1456 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1073: bitstatus = RESET;
                                   1457 ; genAssign
                                   1458 ; genLabel
      00C73E 21                    1459 	.byte 0x21
                                   1460 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00C73F                       1461 00108$:
      00C73F 4F               [ 1] 1462 	clr	a
      00C740                       1463 00115$:
                                   1464 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1078: return bitstatus;
                                   1465 ; genReturn
                                   1466 ; genLabel
                                   1467 ; peephole j30 removed unused label 00116$.
                                   1468 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1079: }
                                   1469 ; genEndFunction
      00C740 5B 01            [ 2] 1470 	addw	sp, #1
      00C742 81               [ 4] 1471 	ret
                                   1472 ;	Total CLK_GetITStatus function size at codegen: 3 bytes.
                                   1473 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1089: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   1474 ; genLabel
                                   1475 ;	-----------------------------------------
                                   1476 ;	 function CLK_ClearITPendingBit
                                   1477 ;	-----------------------------------------
                                   1478 ;	Register assignment is optimal.
                                   1479 ;	Stack space usage: 0 bytes.
      00C743                       1480 _CLK_ClearITPendingBit:
                                   1481 ; genReceive
                                   1482 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1095: if ((uint8_t)((uint8_t)CLK_IT & (uint8_t)0xF0) == (uint8_t)0x20)
                                   1483 ; genAnd
      00C743 A4 F0            [ 1] 1484 	and	a, #0xf0
                                   1485 ; genCmpEQorNE
      00C745 A1 20            [ 1] 1486 	cp	a, #0x20
                                   1487 ; peephole j5 changed absolute to relative unconditional jump.
                                   1488 ; peephole j10 removed jra by using inverse jump logic
                                   1489 ; peephole j30 removed unused label 00114$.
                                   1490 ; peephole j5 changed absolute to relative unconditional jump.
      00C747 26 05            [ 1] 1491 	jrne	00102$
                                   1492 ; peephole j7 removed jra by using inverse jump logic
                                   1493 ; peephole j30 removed unused label 00115$.
                                   1494 ; skipping generated iCode
                                   1495 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1098: CSSLSE->CSR &= (uint8_t)(~CSSLSE_CSR_CSSF);
                                   1496 ; genPointerGet
                                   1497 ; genAnd
                                   1498 ; genPointerSet
      00C749 72 17 51 90      [ 1] 1499 	bres	0x5190, #3
                                   1500 ; peephole 204x replaced 'and' by 'bres' ('0x5190').
                                   1501 ; genGoto
      00C74D 81               [ 4] 1502 	ret
                                   1503 ; peephole j2e replaced jump by return.
                                   1504 ; genLabel
      00C74E                       1505 00102$:
                                   1506 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1103: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
                                   1507 ; genPointerGet
                                   1508 ; genAnd
                                   1509 ; genPointerSet
      00C74E 72 17 50 C9      [ 1] 1510 	bres	0x50c9, #3
                                   1511 ; peephole 204x replaced 'and' by 'bres' ('0x50c9').
                                   1512 ; genLabel
                                   1513 ; peephole j30 removed unused label 00104$.
                                   1514 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_clk.c: 1105: }
                                   1515 ; genEndFunction
      00C752 81               [ 4] 1516 	ret
                                   1517 ;	Total CLK_ClearITPendingBit function size at codegen: 1 bytes.
                                   1518 	.area CODE
                                   1519 	.area CONST
                                   1520 	.area CONST
      00901A                       1521 _SYSDivFactor:
      00901A 01                    1522 	.db #0x01	; 1
      00901B 02                    1523 	.db #0x02	; 2
      00901C 04                    1524 	.db #0x04	; 4
      00901D 08                    1525 	.db #0x08	; 8
      00901E 10                    1526 	.db #0x10	; 16
                                   1527 	.area CODE
                                   1528 	.area INITIALIZER
                                   1529 	.area CABS (ABS)
