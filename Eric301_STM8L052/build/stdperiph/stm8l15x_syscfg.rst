                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8l15x_syscfg
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _SYSCFG_RIDeInit
                                     11 	.globl _SYSCFG_RITIMInputCaptureConfig
                                     12 	.globl _SYSCFG_RIAnalogSwitchConfig
                                     13 	.globl _SYSCFG_RIIOSwitchConfig
                                     14 	.globl _SYSCFG_RIResistorConfig
                                     15 	.globl _SYSCFG_REMAPDeInit
                                     16 	.globl _SYSCFG_REMAPPinConfig
                                     17 	.globl _SYSCFG_REMAPDMAChannelConfig
                                     18 ;--------------------------------------------------------
                                     19 ; ram data
                                     20 ;--------------------------------------------------------
                                     21 	.area DATA
                                     22 ;--------------------------------------------------------
                                     23 ; ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area INITIALIZED
                                     26 ;--------------------------------------------------------
                                     27 ; absolute external ram data
                                     28 ;--------------------------------------------------------
                                     29 	.area DABS (ABS)
                                     30 
                                     31 ; default segment ordering for linker
                                     32 	.area HOME
                                     33 	.area GSINIT
                                     34 	.area GSFINAL
                                     35 	.area CONST
                                     36 	.area INITIALIZER
                                     37 	.area CODE
                                     38 
                                     39 ;--------------------------------------------------------
                                     40 ; global & static initialisations
                                     41 ;--------------------------------------------------------
                                     42 	.area HOME
                                     43 	.area GSINIT
                                     44 	.area GSFINAL
                                     45 	.area GSINIT
                                     46 ;--------------------------------------------------------
                                     47 ; Home
                                     48 ;--------------------------------------------------------
                                     49 	.area HOME
                                     50 	.area HOME
                                     51 ;--------------------------------------------------------
                                     52 ; code
                                     53 ;--------------------------------------------------------
                                     54 	.area CODE
                                     55 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 119: void SYSCFG_RIDeInit(void)
                                     56 ; genLabel
                                     57 ;	-----------------------------------------
                                     58 ;	 function SYSCFG_RIDeInit
                                     59 ;	-----------------------------------------
                                     60 ;	Register assignment is optimal.
                                     61 ;	Stack space usage: 0 bytes.
      00DF16                         62 _SYSCFG_RIDeInit:
                                     63 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 121: RI->ICR1   = RI_ICR1_RESET_VALUE;     /*!< Set RI->ICR1 to reset value */
                                     64 ; genPointerSet
      00DF16 35 00 54 31      [ 1]   65 	mov	0x5431+0, #0x00
                                     66 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 122: RI->ICR2   = RI_ICR2_RESET_VALUE;     /*!< Set RI->ICR2 to reset value */
                                     67 ; genPointerSet
      00DF1A 35 00 54 32      [ 1]   68 	mov	0x5432+0, #0x00
                                     69 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 123: RI->IOSR1  = RI_IOSR1_RESET_VALUE;    /*!< Set RI->IOSR1 to reset value */
                                     70 ; genPointerSet
      00DF1E 35 00 54 39      [ 1]   71 	mov	0x5439+0, #0x00
                                     72 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 124: RI->IOSR2  = RI_IOSR2_RESET_VALUE;    /*!< Set RI->IOSR2 to reset value */
                                     73 ; genPointerSet
      00DF22 35 00 54 3A      [ 1]   74 	mov	0x543a+0, #0x00
                                     75 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 125: RI->IOSR3  = RI_IOSR3_RESET_VALUE;    /*!< Set RI->IOSR3 to reset value */
                                     76 ; genPointerSet
      00DF26 35 00 54 3B      [ 1]   77 	mov	0x543b+0, #0x00
                                     78 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 126: RI->IOSR4  = RI_IOSR4_RESET_VALUE;    /*!< Set RI->IOSR3 to reset value */
                                     79 ; genPointerSet
      00DF2A 35 00 54 57      [ 1]   80 	mov	0x5457+0, #0x00
                                     81 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 127: RI->ASCR1  = RI_ASCR1_RESET_VALUE;    /*!< Set RI->ASCR1 to reset value */
                                     82 ; genPointerSet
      00DF2E 35 00 54 3D      [ 1]   83 	mov	0x543d+0, #0x00
                                     84 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 128: RI->ASCR2  = RI_ASCR2_RESET_VALUE;    /*!< Set RI->ASCR2 to reset value */
                                     85 ; genPointerSet
      00DF32 35 00 54 3E      [ 1]   86 	mov	0x543e+0, #0x00
                                     87 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 129: RI->RCR    = RI_RCR_RESET_VALUE;      /*!< Set RI->RCR to reset value */
                                     88 ; genPointerSet
      00DF36 35 00 54 3F      [ 1]   89 	mov	0x543f+0, #0x00
                                     90 ; genLabel
                                     91 ; peephole j30 removed unused label 00101$.
                                     92 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 130: }
                                     93 ; genEndFunction
      00DF3A 81               [ 4]   94 	ret
                                     95 ;	Total SYSCFG_RIDeInit function size at codegen: 1 bytes.
                                     96 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 142: void SYSCFG_RITIMInputCaptureConfig(RI_InputCapture_TypeDef RI_InputCapture,
                                     97 ; genLabel
                                     98 ;	-----------------------------------------
                                     99 ;	 function SYSCFG_RITIMInputCaptureConfig
                                    100 ;	-----------------------------------------
                                    101 ;	Register assignment is optimal.
                                    102 ;	Stack space usage: 0 bytes.
      00DF3B                        103 _SYSCFG_RITIMInputCaptureConfig:
                                    104 ; genReceive
                                    105 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 150: if (RI_InputCapture == RI_InputCapture_IC2)
                                    106 ; genCmpEQorNE
      00DF3B A1 02            [ 1]  107 	cp	a, #0x02
                                    108 ; peephole j5 changed absolute to relative unconditional jump.
                                    109 ; peephole j10 removed jra by using inverse jump logic
                                    110 ; peephole j30 removed unused label 00114$.
                                    111 ; peephole j5 changed absolute to relative unconditional jump.
      00DF3D 26 08            [ 1]  112 	jrne	00102$
                                    113 ; peephole j7 removed jra by using inverse jump logic
                                    114 ; peephole j30 removed unused label 00115$.
                                    115 ; skipping generated iCode
                                    116 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 153: RI->ICR1 = (uint8_t) RI_InputCaptureRouting;
                                    117 ; genPointerSet
      00DF3F AE 54 31         [ 2]  118 	ldw	x, #0x5431
      00DF42 7B 03            [ 1]  119 	ld	a, (0x03, sp)
      00DF44 F7               [ 1]  120 	ld	(x), a
                                    121 ; genGoto
      00DF45 20 06            [ 2]  122 	jra	00104$
                                    123 ; peephole j5 changed absolute to relative unconditional jump.
                                    124 ; genLabel
      00DF47                        125 00102$:
                                    126 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 159: RI->ICR2 = (uint8_t) RI_InputCaptureRouting;
                                    127 ; genPointerSet
      00DF47 AE 54 32         [ 2]  128 	ldw	x, #0x5432
      00DF4A 7B 03            [ 1]  129 	ld	a, (0x03, sp)
      00DF4C F7               [ 1]  130 	ld	(x), a
                                    131 ; genLabel
      00DF4D                        132 00104$:
                                    133 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 161: }
                                    134 ; genEndFunction
      00DF4D 85               [ 2]  135 	popw	x
      00DF4E 84               [ 1]  136 	pop	a
      00DF4F FC               [ 2]  137 	jp	(x)
                                    138 ;	Total SYSCFG_RITIMInputCaptureConfig function size at codegen: 3 bytes.
                                    139 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 184: void SYSCFG_RIAnalogSwitchConfig(RI_AnalogSwitch_TypeDef RI_AnalogSwitch,
                                    140 ; genLabel
                                    141 ;	-----------------------------------------
                                    142 ;	 function SYSCFG_RIAnalogSwitchConfig
                                    143 ;	-----------------------------------------
                                    144 ;	Register assignment might be sub-optimal.
                                    145 ;	Stack space usage: 1 bytes.
      00DF50                        146 _SYSCFG_RIAnalogSwitchConfig:
      00DF50 88               [ 1]  147 	push	a
                                    148 ; genReceive
                                    149 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 194: AnalogSwitchRegister = (uint8_t) (RI_AnalogSwitch & (uint8_t) 0xF0);
                                    150 ; genAnd
      00DF51 88               [ 1]  151 	push	a
      00DF52 A4 F0            [ 1]  152 	and	a, #0xf0
      00DF54 95               [ 1]  153 	ld	xh, a
      00DF55 84               [ 1]  154 	pop	a
                                    155 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 197: AnalogSwitchIndex = (uint8_t) (RI_AnalogSwitch & (uint8_t) 0x0F);
                                    156 ; genAnd
      00DF56 A4 0F            [ 1]  157 	and	a, #0x0f
      00DF58 97               [ 1]  158 	ld	xl, a
                                    159 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 201: if (AnalogSwitchRegister == (uint8_t) 0x10)
                                    160 ; genCmpEQorNE
      00DF59 9E               [ 1]  161 	ld	a, xh
      00DF5A A0 10            [ 1]  162 	sub	a, #0x10
      00DF5C 26 02            [ 1]  163 	jrne	00134$
      00DF5E 4C               [ 1]  164 	inc	a
                                    165 ; peephole 51 used inc to get #1 into a.
                                    166 ; peephole j5 changed absolute to relative unconditional jump.
      00DF5F 21                     167 	.byte 0x21
                                    168 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00DF60                        169 00134$:
      00DF60 4F               [ 1]  170 	clr	a
      00DF61                        171 00135$:
                                    172 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 204: RI->ASCR1 |= (uint8_t) ((uint8_t)1 << (uint8_t) AnalogSwitchIndex);
                                    173 ; genLeftShift
      00DF61 88               [ 1]  174 	push	a
      00DF62 A6 01            [ 1]  175 	ld	a, #0x01
      00DF64 6B 02            [ 1]  176 	ld	(0x02, sp), a
      00DF66 9F               [ 1]  177 	ld	a, xl
      00DF67 4D               [ 1]  178 	tnz	a
      00DF68 27 05            [ 1]  179 	jreq	00137$
      00DF6A                        180 00136$:
      00DF6A 08 02            [ 1]  181 	sll	(0x02, sp)
      00DF6C 4A               [ 1]  182 	dec	a
      00DF6D 26 FB            [ 1]  183 	jrne	00136$
      00DF6F                        184 00137$:
      00DF6F 84               [ 1]  185 	pop	a
                                    186 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 199: if (NewState != DISABLE)
                                    187 ; genIfx
      00DF70 0D 04            [ 1]  188 	tnz	(0x04, sp)
                                    189 ; peephole j5 changed absolute to relative unconditional jump.
      00DF72 27 17            [ 1]  190 	jreq	00108$
                                    191 ; peephole j10 removed jra by using inverse jump logic
                                    192 ; peephole j30 removed unused label 00138$.
                                    193 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 201: if (AnalogSwitchRegister == (uint8_t) 0x10)
                                    194 ; genIfx
      00DF74 4D               [ 1]  195 	tnz	a
                                    196 ; peephole j5 changed absolute to relative unconditional jump.
      00DF75 27 0A            [ 1]  197 	jreq	00102$
                                    198 ; peephole j10 removed jra by using inverse jump logic
                                    199 ; peephole j30 removed unused label 00139$.
                                    200 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 204: RI->ASCR1 |= (uint8_t) ((uint8_t)1 << (uint8_t) AnalogSwitchIndex);
                                    201 ; genPointerGet
      00DF77 C6 54 3D         [ 1]  202 	ld	a, 0x543d
                                    203 ; genOr
      00DF7A 1A 01            [ 1]  204 	or	a, (0x01, sp)
                                    205 ; genPointerSet
      00DF7C C7 54 3D         [ 1]  206 	ld	0x543d, a
                                    207 ; genGoto
      00DF7F 20 23            [ 2]  208 	jra	00110$
                                    209 ; peephole j5 changed absolute to relative unconditional jump.
                                    210 ; genLabel
      00DF81                        211 00102$:
                                    212 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 209: RI->ASCR2 |= (uint8_t) ((uint8_t)1 << (uint8_t) AnalogSwitchIndex);
                                    213 ; genPointerGet
      00DF81 C6 54 3E         [ 1]  214 	ld	a, 0x543e
                                    215 ; genOr
      00DF84 1A 01            [ 1]  216 	or	a, (0x01, sp)
                                    217 ; genPointerSet
      00DF86 C7 54 3E         [ 1]  218 	ld	0x543e, a
                                    219 ; genGoto
      00DF89 20 19            [ 2]  220 	jra	00110$
                                    221 ; peephole j5 changed absolute to relative unconditional jump.
                                    222 ; genLabel
      00DF8B                        223 00108$:
                                    224 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 217: RI->ASCR1 &= (uint8_t) (~(uint8_t)((uint8_t)1 <<  AnalogSwitchIndex));
                                    225 ; genCpl
      00DF8B 88               [ 1]  226 	push	a
      00DF8C 03 02            [ 1]  227 	cpl	(0x02, sp)
      00DF8E 84               [ 1]  228 	pop	a
                                    229 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 214: if (AnalogSwitchRegister == (uint8_t) 0x10)
                                    230 ; genIfx
      00DF8F 4D               [ 1]  231 	tnz	a
                                    232 ; peephole j5 changed absolute to relative unconditional jump.
      00DF90 27 0A            [ 1]  233 	jreq	00105$
                                    234 ; peephole j10 removed jra by using inverse jump logic
                                    235 ; peephole j30 removed unused label 00140$.
                                    236 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 217: RI->ASCR1 &= (uint8_t) (~(uint8_t)((uint8_t)1 <<  AnalogSwitchIndex));
                                    237 ; genPointerGet
      00DF92 C6 54 3D         [ 1]  238 	ld	a, 0x543d
                                    239 ; genAnd
      00DF95 14 01            [ 1]  240 	and	a, (0x01, sp)
                                    241 ; genPointerSet
      00DF97 C7 54 3D         [ 1]  242 	ld	0x543d, a
                                    243 ; genGoto
      00DF9A 20 08            [ 2]  244 	jra	00110$
                                    245 ; peephole j5 changed absolute to relative unconditional jump.
                                    246 ; genLabel
      00DF9C                        247 00105$:
                                    248 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 222: RI->ASCR2 &= (uint8_t) (~ (uint8_t)((uint8_t)1 << AnalogSwitchIndex));
                                    249 ; genPointerGet
      00DF9C C6 54 3E         [ 1]  250 	ld	a, 0x543e
                                    251 ; genAnd
      00DF9F 14 01            [ 1]  252 	and	a, (0x01, sp)
                                    253 ; genPointerSet
      00DFA1 C7 54 3E         [ 1]  254 	ld	0x543e, a
                                    255 ; genLabel
      00DFA4                        256 00110$:
                                    257 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 225: }
                                    258 ; genEndFunction
      00DFA4 84               [ 1]  259 	pop	a
      00DFA5 85               [ 2]  260 	popw	x
      00DFA6 84               [ 1]  261 	pop	a
      00DFA7 FC               [ 2]  262 	jp	(x)
                                    263 ;	Total SYSCFG_RIAnalogSwitchConfig function size at codegen: 4 bytes.
                                    264 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 234: void SYSCFG_RIIOSwitchConfig(RI_IOSwitch_TypeDef RI_IOSwitch,
                                    265 ; genLabel
                                    266 ;	-----------------------------------------
                                    267 ;	 function SYSCFG_RIIOSwitchConfig
                                    268 ;	-----------------------------------------
                                    269 ;	Register assignment might be sub-optimal.
                                    270 ;	Stack space usage: 2 bytes.
      00DFA8                        271 _SYSCFG_RIIOSwitchConfig:
      00DFA8 89               [ 2]  272 	pushw	x
                                    273 ; genReceive
                                    274 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 244: IOSwitchIndex = (uint8_t) (RI_IOSwitch & (uint8_t) 0x0F);
                                    275 ; genAnd
      00DFA9 88               [ 1]  276 	push	a
      00DFAA A4 0F            [ 1]  277 	and	a, #0x0f
      00DFAC 95               [ 1]  278 	ld	xh, a
      00DFAD 84               [ 1]  279 	pop	a
                                    280 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 247: IOSwitchRegister = (uint8_t) (RI_IOSwitch & (uint8_t) 0xF0);
                                    281 ; genAnd
      00DFAE A4 F0            [ 1]  282 	and	a, #0xf0
      00DFB0 97               [ 1]  283 	ld	xl, a
                                    284 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 255: RI->IOSR1 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
                                    285 ; genLeftShift
      00DFB1 A6 01            [ 1]  286 	ld	a, #0x01
      00DFB3 6B 01            [ 1]  287 	ld	(0x01, sp), a
      00DFB5 9E               [ 1]  288 	ld	a, xh
      00DFB6 4D               [ 1]  289 	tnz	a
      00DFB7 27 05            [ 1]  290 	jreq	00174$
      00DFB9                        291 00173$:
      00DFB9 08 01            [ 1]  292 	sll	(0x01, sp)
      00DFBB 4A               [ 1]  293 	dec	a
      00DFBC 26 FB            [ 1]  294 	jrne	00173$
      00DFBE                        295 00174$:
                                    296 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 260: RI->IOSR1 &= (uint8_t) (~ (uint8_t)((uint8_t)1 << IOSwitchIndex));
                                    297 ; genCpl
      00DFBE 7B 01            [ 1]  298 	ld	a, (0x01, sp)
      00DFC0 43               [ 1]  299 	cpl	a
      00DFC1 6B 02            [ 1]  300 	ld	(0x02, sp), a
                                    301 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 250: if (IOSwitchRegister == (uint8_t) 0x10)
                                    302 ; genCmpEQorNE
      00DFC3 9F               [ 1]  303 	ld	a, xl
      00DFC4 A1 10            [ 1]  304 	cp	a, #0x10
                                    305 ; peephole j5 changed absolute to relative unconditional jump.
                                    306 ; peephole j10 removed jra by using inverse jump logic
                                    307 ; peephole j30 removed unused label 00176$.
                                    308 ; peephole j5 changed absolute to relative unconditional jump.
      00DFC6 26 15            [ 1]  309 	jrne	00120$
                                    310 ; peephole j7 removed jra by using inverse jump logic
                                    311 ; peephole j30 removed unused label 00177$.
                                    312 ; skipping generated iCode
                                    313 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 255: RI->IOSR1 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
                                    314 ; genPointerGet
      00DFC8 C6 54 39         [ 1]  315 	ld	a, 0x5439
                                    316 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 252: if (NewState != DISABLE)
                                    317 ; genIfx
      00DFCB 0D 05            [ 1]  318 	tnz	(0x05, sp)
                                    319 ; peephole j5 changed absolute to relative unconditional jump.
      00DFCD 27 07            [ 1]  320 	jreq	00102$
                                    321 ; peephole j10 removed jra by using inverse jump logic
                                    322 ; peephole j30 removed unused label 00178$.
                                    323 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 255: RI->IOSR1 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
                                    324 ; genOr
      00DFCF 1A 01            [ 1]  325 	or	a, (0x01, sp)
                                    326 ; genPointerSet
      00DFD1 C7 54 39         [ 1]  327 	ld	0x5439, a
                                    328 ; genGoto
      00DFD4 20 4E            [ 2]  329 	jra	00122$
                                    330 ; peephole j5 changed absolute to relative unconditional jump.
                                    331 ; genLabel
      00DFD6                        332 00102$:
                                    333 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 260: RI->IOSR1 &= (uint8_t) (~ (uint8_t)((uint8_t)1 << IOSwitchIndex));
                                    334 ; genAnd
      00DFD6 14 02            [ 1]  335 	and	a, (0x02, sp)
                                    336 ; genPointerSet
      00DFD8 C7 54 39         [ 1]  337 	ld	0x5439, a
                                    338 ; genGoto
      00DFDB 20 47            [ 2]  339 	jra	00122$
                                    340 ; peephole j5 changed absolute to relative unconditional jump.
                                    341 ; genLabel
      00DFDD                        342 00120$:
                                    343 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 265: else if (IOSwitchRegister == (uint8_t) 0x20)
                                    344 ; genCmpEQorNE
      00DFDD 9F               [ 1]  345 	ld	a, xl
      00DFDE A1 20            [ 1]  346 	cp	a, #0x20
                                    347 ; peephole j5 changed absolute to relative unconditional jump.
                                    348 ; peephole j10 removed jra by using inverse jump logic
                                    349 ; peephole j30 removed unused label 00180$.
                                    350 ; peephole j5 changed absolute to relative unconditional jump.
      00DFE0 26 15            [ 1]  351 	jrne	00117$
                                    352 ; peephole j7 removed jra by using inverse jump logic
                                    353 ; peephole j30 removed unused label 00181$.
                                    354 ; skipping generated iCode
                                    355 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 270: RI->IOSR2 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
                                    356 ; genPointerGet
      00DFE2 C6 54 3A         [ 1]  357 	ld	a, 0x543a
                                    358 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 267: if (NewState != DISABLE)
                                    359 ; genIfx
      00DFE5 0D 05            [ 1]  360 	tnz	(0x05, sp)
                                    361 ; peephole j5 changed absolute to relative unconditional jump.
      00DFE7 27 07            [ 1]  362 	jreq	00105$
                                    363 ; peephole j10 removed jra by using inverse jump logic
                                    364 ; peephole j30 removed unused label 00182$.
                                    365 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 270: RI->IOSR2 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
                                    366 ; genOr
      00DFE9 1A 01            [ 1]  367 	or	a, (0x01, sp)
                                    368 ; genPointerSet
      00DFEB C7 54 3A         [ 1]  369 	ld	0x543a, a
                                    370 ; genGoto
      00DFEE 20 34            [ 2]  371 	jra	00122$
                                    372 ; peephole j5 changed absolute to relative unconditional jump.
                                    373 ; genLabel
      00DFF0                        374 00105$:
                                    375 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 275: RI->IOSR2 &= (uint8_t) (~(uint8_t)((uint8_t)1 <<  IOSwitchIndex));
                                    376 ; genAnd
      00DFF0 14 02            [ 1]  377 	and	a, (0x02, sp)
                                    378 ; genPointerSet
      00DFF2 C7 54 3A         [ 1]  379 	ld	0x543a, a
                                    380 ; genGoto
      00DFF5 20 2D            [ 2]  381 	jra	00122$
                                    382 ; peephole j5 changed absolute to relative unconditional jump.
                                    383 ; genLabel
      00DFF7                        384 00117$:
                                    385 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 280: else if (IOSwitchRegister == (uint8_t) 0x30)
                                    386 ; genCmpEQorNE
      00DFF7 9F               [ 1]  387 	ld	a, xl
      00DFF8 A1 30            [ 1]  388 	cp	a, #0x30
                                    389 ; peephole j5 changed absolute to relative unconditional jump.
                                    390 ; peephole j10 removed jra by using inverse jump logic
                                    391 ; peephole j30 removed unused label 00184$.
                                    392 ; peephole j5 changed absolute to relative unconditional jump.
      00DFFA 26 15            [ 1]  393 	jrne	00114$
                                    394 ; peephole j7 removed jra by using inverse jump logic
                                    395 ; peephole j30 removed unused label 00185$.
                                    396 ; skipping generated iCode
                                    397 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 285: RI->IOSR3 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
                                    398 ; genPointerGet
      00DFFC C6 54 3B         [ 1]  399 	ld	a, 0x543b
                                    400 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 282: if (NewState != DISABLE)
                                    401 ; genIfx
      00DFFF 0D 05            [ 1]  402 	tnz	(0x05, sp)
                                    403 ; peephole j5 changed absolute to relative unconditional jump.
      00E001 27 07            [ 1]  404 	jreq	00108$
                                    405 ; peephole j10 removed jra by using inverse jump logic
                                    406 ; peephole j30 removed unused label 00186$.
                                    407 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 285: RI->IOSR3 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
                                    408 ; genOr
      00E003 1A 01            [ 1]  409 	or	a, (0x01, sp)
                                    410 ; genPointerSet
      00E005 C7 54 3B         [ 1]  411 	ld	0x543b, a
                                    412 ; genGoto
      00E008 20 1A            [ 2]  413 	jra	00122$
                                    414 ; peephole j5 changed absolute to relative unconditional jump.
                                    415 ; genLabel
      00E00A                        416 00108$:
                                    417 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 290: RI->IOSR3 &= (uint8_t) (~ (uint8_t) ((uint8_t) 1 << IOSwitchIndex));
                                    418 ; genAnd
      00E00A 14 02            [ 1]  419 	and	a, (0x02, sp)
                                    420 ; genPointerSet
      00E00C C7 54 3B         [ 1]  421 	ld	0x543b, a
                                    422 ; genGoto
      00E00F 20 13            [ 2]  423 	jra	00122$
                                    424 ; peephole j5 changed absolute to relative unconditional jump.
                                    425 ; genLabel
      00E011                        426 00114$:
                                    427 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 300: RI->IOSR4 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
                                    428 ; genPointerGet
      00E011 C6 54 57         [ 1]  429 	ld	a, 0x5457
                                    430 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 297: if (NewState != DISABLE)
                                    431 ; genIfx
      00E014 0D 05            [ 1]  432 	tnz	(0x05, sp)
                                    433 ; peephole j5 changed absolute to relative unconditional jump.
      00E016 27 07            [ 1]  434 	jreq	00111$
                                    435 ; peephole j10 removed jra by using inverse jump logic
                                    436 ; peephole j30 removed unused label 00187$.
                                    437 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 300: RI->IOSR4 |= (uint8_t) ((uint8_t)1 << IOSwitchIndex);
                                    438 ; genOr
      00E018 1A 01            [ 1]  439 	or	a, (0x01, sp)
                                    440 ; genPointerSet
      00E01A C7 54 57         [ 1]  441 	ld	0x5457, a
                                    442 ; genGoto
      00E01D 20 05            [ 2]  443 	jra	00122$
                                    444 ; peephole j5 changed absolute to relative unconditional jump.
                                    445 ; genLabel
      00E01F                        446 00111$:
                                    447 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 305: RI->IOSR4 &= (uint8_t) (~ (uint8_t) ((uint8_t) 1 << IOSwitchIndex));
                                    448 ; genAnd
      00E01F 14 02            [ 1]  449 	and	a, (0x02, sp)
                                    450 ; genPointerSet
      00E021 C7 54 57         [ 1]  451 	ld	0x5457, a
                                    452 ; genLabel
      00E024                        453 00122$:
                                    454 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 308: }
                                    455 ; genEndFunction
      00E024 85               [ 2]  456 	popw	x
      00E025 85               [ 2]  457 	popw	x
      00E026 84               [ 1]  458 	pop	a
      00E027 FC               [ 2]  459 	jp	(x)
                                    460 ;	Total SYSCFG_RIIOSwitchConfig function size at codegen: 4 bytes.
                                    461 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 320: void SYSCFG_RIResistorConfig(RI_Resistor_TypeDef RI_Resistor, FunctionalState NewState)
                                    462 ; genLabel
                                    463 ;	-----------------------------------------
                                    464 ;	 function SYSCFG_RIResistorConfig
                                    465 ;	-----------------------------------------
                                    466 ;	Register assignment is optimal.
                                    467 ;	Stack space usage: 1 bytes.
      00E028                        468 _SYSCFG_RIResistorConfig:
      00E028 88               [ 1]  469 	push	a
                                    470 ; genReceive
                                    471 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 329: RI->RCR |= (uint8_t) RI_Resistor;
                                    472 ; genPointerGet
      00E029 AE 54 3F         [ 2]  473 	ldw	x, #0x543f
      00E02C 88               [ 1]  474 	push	a
      00E02D F6               [ 1]  475 	ld	a, (x)
      00E02E 6B 02            [ 1]  476 	ld	(0x02, sp), a
      00E030 84               [ 1]  477 	pop	a
                                    478 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 326: if (NewState != DISABLE)
                                    479 ; genIfx
      00E031 0D 04            [ 1]  480 	tnz	(0x04, sp)
                                    481 ; peephole j5 changed absolute to relative unconditional jump.
      00E033 27 07            [ 1]  482 	jreq	00102$
                                    483 ; peephole j10 removed jra by using inverse jump logic
                                    484 ; peephole j30 removed unused label 00113$.
                                    485 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 329: RI->RCR |= (uint8_t) RI_Resistor;
                                    486 ; genOr
      00E035 1A 01            [ 1]  487 	or	a, (0x01, sp)
                                    488 ; genPointerSet
      00E037 C7 54 3F         [ 1]  489 	ld	0x543f, a
                                    490 ; genGoto
      00E03A 20 06            [ 2]  491 	jra	00104$
                                    492 ; peephole j5 changed absolute to relative unconditional jump.
                                    493 ; genLabel
      00E03C                        494 00102$:
                                    495 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 334: RI->RCR &= (uint8_t) (~RI_Resistor);
                                    496 ; genCpl
      00E03C 43               [ 1]  497 	cpl	a
                                    498 ; genAnd
      00E03D 14 01            [ 1]  499 	and	a, (0x01, sp)
                                    500 ; genPointerSet
      00E03F C7 54 3F         [ 1]  501 	ld	0x543f, a
                                    502 ; genLabel
      00E042                        503 00104$:
                                    504 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 336: }
                                    505 ; genEndFunction
      00E042 84               [ 1]  506 	pop	a
      00E043 85               [ 2]  507 	popw	x
      00E044 84               [ 1]  508 	pop	a
      00E045 FC               [ 2]  509 	jp	(x)
                                    510 ;	Total SYSCFG_RIResistorConfig function size at codegen: 4 bytes.
                                    511 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 368: void SYSCFG_REMAPDeInit(void)
                                    512 ; genLabel
                                    513 ;	-----------------------------------------
                                    514 ;	 function SYSCFG_REMAPDeInit
                                    515 ;	-----------------------------------------
                                    516 ;	Register assignment is optimal.
                                    517 ;	Stack space usage: 0 bytes.
      00E046                        518 _SYSCFG_REMAPDeInit:
                                    519 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 371: SYSCFG->RMPCR1 = SYSCFG_RMPCR1_RESET_VALUE;
                                    520 ; genPointerSet
      00E046 35 0C 50 9E      [ 1]  521 	mov	0x509e+0, #0x0c
                                    522 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 374: SYSCFG->RMPCR2 = SYSCFG_RMPCR2_RESET_VALUE;
                                    523 ; genPointerSet
      00E04A 35 00 50 9F      [ 1]  524 	mov	0x509f+0, #0x00
                                    525 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 377: SYSCFG->RMPCR3 = SYSCFG_RMPCR3_RESET_VALUE;
                                    526 ; genPointerSet
      00E04E 35 00 50 9D      [ 1]  527 	mov	0x509d+0, #0x00
                                    528 ; genLabel
                                    529 ; peephole j30 removed unused label 00101$.
                                    530 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 378: }
                                    531 ; genEndFunction
      00E052 81               [ 4]  532 	ret
                                    533 ;	Total SYSCFG_REMAPDeInit function size at codegen: 1 bytes.
                                    534 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 411: void SYSCFG_REMAPPinConfig(REMAP_Pin_TypeDef REMAP_Pin, FunctionalState NewState)
                                    535 ; genLabel
                                    536 ;	-----------------------------------------
                                    537 ;	 function SYSCFG_REMAPPinConfig
                                    538 ;	-----------------------------------------
                                    539 ;	Register assignment might be sub-optimal.
                                    540 ;	Stack space usage: 7 bytes.
      00E053                        541 _SYSCFG_REMAPPinConfig:
      00E053 52 07            [ 2]  542 	sub	sp, #7
                                    543 ; genReceive
      00E055 1F 06            [ 2]  544 	ldw	(0x06, sp), x
                                    545 ; genReceive
      00E057 6B 05            [ 1]  546 	ld	(0x05, sp), a
                                    547 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 419: regindex = (uint8_t) ((uint16_t) REMAP_Pin >> 8);
                                    548 ; genCast
                                    549 ; genAssign
      00E059 16 06            [ 2]  550 	ldw	y, (0x06, sp)
      00E05B 17 01            [ 2]  551 	ldw	(0x01, sp), y
                                    552 ; genGetByte
      00E05D 7B 01            [ 1]  553 	ld	a, (0x01, sp)
      00E05F 6B 03            [ 1]  554 	ld	(0x03, sp), a
                                    555 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 424: SYSCFG->RMPCR1 &= (uint8_t)((uint8_t)((uint8_t)REMAP_Pin << 4) | (uint8_t)0x0F);
                                    556 ; genCast
                                    557 ; genAssign
      00E061 7B 07            [ 1]  558 	ld	a, (0x07, sp)
      00E063 6B 04            [ 1]  559 	ld	(0x04, sp), a
                                    560 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 422: if (regindex == 0x01)
                                    561 ; genCmpEQorNE
      00E065 7B 03            [ 1]  562 	ld	a, (0x03, sp)
      00E067 4A               [ 1]  563 	dec	a
                                    564 ; peephole j5 changed absolute to relative unconditional jump.
                                    565 ; peephole j10 removed jra by using inverse jump logic
                                    566 ; peephole j30 removed unused label 00153$.
                                    567 ; peephole j5 changed absolute to relative unconditional jump.
      00E068 26 25            [ 1]  568 	jrne	00113$
                                    569 ; peephole j7 removed jra by using inverse jump logic
                                    570 ; peephole j30 removed unused label 00154$.
                                    571 ; skipping generated iCode
                                    572 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 424: SYSCFG->RMPCR1 &= (uint8_t)((uint8_t)((uint8_t)REMAP_Pin << 4) | (uint8_t)0x0F);
                                    573 ; genPointerGet
      00E06A C6 50 9E         [ 1]  574 	ld	a, 0x509e
      00E06D 6B 03            [ 1]  575 	ld	(0x03, sp), a
                                    576 ; genLeftShiftLiteral
      00E06F 7B 04            [ 1]  577 	ld	a, (0x04, sp)
      00E071 4E               [ 1]  578 	swap	a
      00E072 A4 F0            [ 1]  579 	and	a, #0xf0
                                    580 ; genOr
      00E074 AA 0F            [ 1]  581 	or	a, #0x0f
                                    582 ; genAnd
      00E076 14 03            [ 1]  583 	and	a, (0x03, sp)
                                    584 ; genPointerSet
      00E078 C7 50 9E         [ 1]  585 	ld	0x509e, a
                                    586 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 425: if (NewState != DISABLE)
                                    587 ; genIfx
      00E07B 0D 05            [ 1]  588 	tnz	(0x05, sp)
                                    589 ; peephole j5 changed absolute to relative unconditional jump.
      00E07D 27 45            [ 1]  590 	jreq	00115$
                                    591 ; peephole j10 removed jra by using inverse jump logic
                                    592 ; peephole j30 removed unused label 00155$.
                                    593 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 427: SYSCFG->RMPCR1 |= (uint8_t)((uint16_t)REMAP_Pin & (uint16_t)0x00F0);
                                    594 ; genPointerGet
      00E07F C6 50 9E         [ 1]  595 	ld	a, 0x509e
      00E082 6B 04            [ 1]  596 	ld	(0x04, sp), a
                                    597 ; genCast
                                    598 ; genAssign
      00E084 7B 07            [ 1]  599 	ld	a, (0x07, sp)
                                    600 ; genAnd
      00E086 A4 F0            [ 1]  601 	and	a, #0xf0
                                    602 ; genOr
      00E088 1A 04            [ 1]  603 	or	a, (0x04, sp)
                                    604 ; genPointerSet
      00E08A C7 50 9E         [ 1]  605 	ld	0x509e, a
                                    606 ; genGoto
      00E08D 20 35            [ 2]  607 	jra	00115$
                                    608 ; peephole j5 changed absolute to relative unconditional jump.
                                    609 ; genLabel
      00E08F                        610 00113$:
                                    611 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 439: SYSCFG->RMPCR2 &= (uint8_t)((uint16_t)(~(uint16_t)REMAP_Pin));
                                    612 ; genCpl
      00E08F 1E 01            [ 2]  613 	ldw	x, (0x01, sp)
      00E091 53               [ 2]  614 	cplw	x
                                    615 ; genCast
                                    616 ; genAssign
                                    617 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 431: else if (regindex == 0x02)
                                    618 ; genCmpEQorNE
      00E092 7B 03            [ 1]  619 	ld	a, (0x03, sp)
      00E094 A1 02            [ 1]  620 	cp	a, #0x02
                                    621 ; peephole j5 changed absolute to relative unconditional jump.
                                    622 ; peephole j10 removed jra by using inverse jump logic
                                    623 ; peephole j30 removed unused label 00157$.
                                    624 ; peephole j5 changed absolute to relative unconditional jump.
      00E096 26 17            [ 1]  625 	jrne	00110$
                                    626 ; peephole j7 removed jra by using inverse jump logic
                                    627 ; peephole j30 removed unused label 00158$.
                                    628 ; skipping generated iCode
                                    629 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 435: SYSCFG->RMPCR2 |= (uint8_t) REMAP_Pin;
                                    630 ; genPointerGet
      00E098 C6 50 9F         [ 1]  631 	ld	a, 0x509f
                                    632 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 433: if (NewState != DISABLE)
                                    633 ; genIfx
      00E09B 0D 05            [ 1]  634 	tnz	(0x05, sp)
                                    635 ; peephole j5 changed absolute to relative unconditional jump.
      00E09D 27 07            [ 1]  636 	jreq	00104$
                                    637 ; peephole j10 removed jra by using inverse jump logic
                                    638 ; peephole j30 removed unused label 00159$.
                                    639 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 435: SYSCFG->RMPCR2 |= (uint8_t) REMAP_Pin;
                                    640 ; genOr
      00E09F 1A 04            [ 1]  641 	or	a, (0x04, sp)
                                    642 ; genPointerSet
      00E0A1 C7 50 9F         [ 1]  643 	ld	0x509f, a
                                    644 ; genGoto
      00E0A4 20 1E            [ 2]  645 	jra	00115$
                                    646 ; peephole j5 changed absolute to relative unconditional jump.
                                    647 ; genLabel
      00E0A6                        648 00104$:
                                    649 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 439: SYSCFG->RMPCR2 &= (uint8_t)((uint16_t)(~(uint16_t)REMAP_Pin));
                                    650 ; genAnd
      00E0A6 89               [ 2]  651 	pushw	x
      00E0A7 14 02            [ 1]  652 	and	a, (2, sp)
      00E0A9 85               [ 2]  653 	popw	x
                                    654 ; genPointerSet
      00E0AA C7 50 9F         [ 1]  655 	ld	0x509f, a
                                    656 ; genGoto
      00E0AD 20 15            [ 2]  657 	jra	00115$
                                    658 ; peephole j5 changed absolute to relative unconditional jump.
                                    659 ; genLabel
      00E0AF                        660 00110$:
                                    661 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 447: SYSCFG->RMPCR3 |= (uint8_t) REMAP_Pin;
                                    662 ; genPointerGet
      00E0AF C6 50 9D         [ 1]  663 	ld	a, 0x509d
                                    664 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 445: if (NewState != DISABLE)
                                    665 ; genIfx
      00E0B2 0D 05            [ 1]  666 	tnz	(0x05, sp)
                                    667 ; peephole j5 changed absolute to relative unconditional jump.
      00E0B4 27 07            [ 1]  668 	jreq	00107$
                                    669 ; peephole j10 removed jra by using inverse jump logic
                                    670 ; peephole j30 removed unused label 00160$.
                                    671 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 447: SYSCFG->RMPCR3 |= (uint8_t) REMAP_Pin;
                                    672 ; genOr
      00E0B6 1A 04            [ 1]  673 	or	a, (0x04, sp)
                                    674 ; genPointerSet
      00E0B8 C7 50 9D         [ 1]  675 	ld	0x509d, a
                                    676 ; genGoto
      00E0BB 20 07            [ 2]  677 	jra	00115$
                                    678 ; peephole j5 changed absolute to relative unconditional jump.
                                    679 ; genLabel
      00E0BD                        680 00107$:
                                    681 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 451: SYSCFG->RMPCR3 &= (uint8_t)((uint16_t)(~(uint16_t)REMAP_Pin));
                                    682 ; genAnd
      00E0BD 89               [ 2]  683 	pushw	x
      00E0BE 14 02            [ 1]  684 	and	a, (2, sp)
      00E0C0 85               [ 2]  685 	popw	x
                                    686 ; genPointerSet
      00E0C1 C7 50 9D         [ 1]  687 	ld	0x509d, a
                                    688 ; genLabel
      00E0C4                        689 00115$:
                                    690 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 454: }
                                    691 ; genEndFunction
      00E0C4 5B 07            [ 2]  692 	addw	sp, #7
      00E0C6 81               [ 4]  693 	ret
                                    694 ;	Total SYSCFG_REMAPPinConfig function size at codegen: 3 bytes.
                                    695 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 470: void SYSCFG_REMAPDMAChannelConfig(REMAP_DMAChannel_TypeDef REMAP_DMAChannel)
                                    696 ; genLabel
                                    697 ;	-----------------------------------------
                                    698 ;	 function SYSCFG_REMAPDMAChannelConfig
                                    699 ;	-----------------------------------------
                                    700 ;	Register assignment is optimal.
                                    701 ;	Stack space usage: 1 bytes.
      00E0C7                        702 _SYSCFG_REMAPDMAChannelConfig:
      00E0C7 88               [ 1]  703 	push	a
                                    704 ; genReceive
      00E0C8 97               [ 1]  705 	ld	xl, a
                                    706 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 479: SYSCFG->RMPCR1 &= (uint8_t) (~SYSCFG_RMPCR1_TIM4DMA_REMAP);
                                    707 ; genPointerGet
      00E0C9 C6 50 9E         [ 1]  708 	ld	a, 0x509e
                                    709 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 476: if ((REMAP_DMAChannel & 0xF0) != RESET)
                                    710 ; genAnd
      00E0CC 88               [ 1]  711 	push	a
      00E0CD 9F               [ 1]  712 	ld	a, xl
      00E0CE A5 F0            [ 1]  713 	bcp	a, #0xf0
      00E0D0 84               [ 1]  714 	pop	a
                                    715 ; peephole j5 changed absolute to relative unconditional jump.
      00E0D1 27 07            [ 1]  716 	jreq	00102$
                                    717 ; peephole j10 removed jra by using inverse jump logic
                                    718 ; peephole j30 removed unused label 00113$.
                                    719 ; skipping generated iCode
                                    720 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 479: SYSCFG->RMPCR1 &= (uint8_t) (~SYSCFG_RMPCR1_TIM4DMA_REMAP);
                                    721 ; genAnd
      00E0D3 A4 F3            [ 1]  722 	and	a, #0xf3
                                    723 ; genPointerSet
      00E0D5 C7 50 9E         [ 1]  724 	ld	0x509e, a
                                    725 ; genGoto
      00E0D8 20 05            [ 2]  726 	jra	00103$
                                    727 ; peephole j5 changed absolute to relative unconditional jump.
                                    728 ; genLabel
      00E0DA                        729 00102$:
                                    730 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 485: SYSCFG->RMPCR1 &= (uint8_t) (~SYSCFG_RMPCR1_ADC1DMA_REMAP);
                                    731 ; genAnd
      00E0DA A4 FC            [ 1]  732 	and	a, #0xfc
                                    733 ; genPointerSet
      00E0DC C7 50 9E         [ 1]  734 	ld	0x509e, a
                                    735 ; genLabel
      00E0DF                        736 00103$:
                                    737 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 488: SYSCFG->RMPCR1 |= (uint8_t) ((uint8_t)0x0F & REMAP_DMAChannel);
                                    738 ; genPointerGet
      00E0DF C6 50 9E         [ 1]  739 	ld	a, 0x509e
      00E0E2 6B 01            [ 1]  740 	ld	(0x01, sp), a
                                    741 ; genAnd
      00E0E4 9F               [ 1]  742 	ld	a, xl
      00E0E5 A4 0F            [ 1]  743 	and	a, #0x0f
                                    744 ; genOr
      00E0E7 1A 01            [ 1]  745 	or	a, (0x01, sp)
                                    746 ; genPointerSet
      00E0E9 C7 50 9E         [ 1]  747 	ld	0x509e, a
                                    748 ; genLabel
                                    749 ; peephole j30 removed unused label 00104$.
                                    750 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_syscfg.c: 489: }
                                    751 ; genEndFunction
      00E0EC 84               [ 1]  752 	pop	a
      00E0ED 81               [ 4]  753 	ret
                                    754 ;	Total SYSCFG_REMAPDMAChannelConfig function size at codegen: 2 bytes.
                                    755 	.area CODE
                                    756 	.area CONST
                                    757 	.area INITIALIZER
                                    758 	.area CABS (ABS)
