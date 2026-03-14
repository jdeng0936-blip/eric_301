                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module menu
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _MenuTab
                                     11 	.globl _memset
                                     12 	.globl _mini_sprintf
                                     13 	.globl _Record_LoadHistory
                                     14 	.globl _Record_SaveNew
                                     15 	.globl _Storage_SaveAllStats
                                     16 	.globl _Record_GetLRecd
                                     17 	.globl _Record_GetStat
                                     18 	.globl _System_GetMode
                                     19 	.globl _Storage_FactoryReset
                                     20 	.globl _Storage_ClearHistory
                                     21 	.globl _Storage_SaveSettings
                                     22 	.globl _rtc_get_datetime
                                     23 	.globl _rtc_set_datetime
                                     24 	.globl _Delay
                                     25 	.globl _lcd_init
                                     26 	.globl _show_hz_12x12
                                     27 	.globl _show_str_8x12
                                     28 	.globl _show_str_7x8
                                     29 	.globl _clear_screen
                                     30 	.globl _GPIO_ResetBits
                                     31 	.globl _GPIO_Init
                                     32 	.globl _ADC_DMACmd
                                     33 	.globl _ADC_SoftwareStartConv
                                     34 	.globl _ADC_Cmd
                                     35 	.globl _language
                                     36 	.globl _delay_halt
                                     37 	.globl _adjustdt
                                     38 	.globl _menu_index
                                     39 	.globl _tempstr
                                     40 	.globl _timestr
                                     41 	.globl _datestr
                                     42 	.globl _Menu_Proc
                                     43 	.globl _DspOne
                                     44 	.globl _DspOne_Plus
                                     45 	.globl _DspTwo
                                     46 	.globl _DspTwo_Plus
                                     47 	.globl _DspThree
                                     48 	.globl _Show_Phase_Rec
                                     49 	.globl _DspFour
                                     50 	.globl _Left_Four
                                     51 	.globl _Right_Four
                                     52 	.globl _show_datetime
                                     53 	.globl _DspFive
                                     54 	.globl _Up_Five
                                     55 	.globl _Down_Five
                                     56 	.globl _Left_Five
                                     57 	.globl _Right_Five
                                     58 	.globl _Menu_Five
                                     59 	.globl _DspSix
                                     60 	.globl _Menu_Four
                                     61 	.globl _Sys_Reset
                                     62 ;--------------------------------------------------------
                                     63 ; ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area DATA
      000461                         66 _datestr::
      000461                         67 	.ds 16
      000471                         68 _timestr::
      000471                         69 	.ds 16
      000481                         70 _tempstr::
      000481                         71 	.ds 16
      000491                         72 _Menu_Proc_i_10000_701:
      000491                         73 	.ds 1
      000492                         74 _Menu_Proc_last_menu_10000_701:
      000492                         75 	.ds 1
      000493                         76 _Menu_Proc_disp_tag_10000_701:
      000493                         77 	.ds 1
      000494                         78 _Menu_Proc_key_val_10000_701:
      000494                         79 	.ds 1
      000495                         80 _show_datetime_flag_10000_755:
      000495                         81 	.ds 1
                                     82 ;--------------------------------------------------------
                                     83 ; ram data
                                     84 ;--------------------------------------------------------
                                     85 	.area INITIALIZED
      00053D                         86 _menu_index::
      00053D                         87 	.ds 1
      00053E                         88 _adjustdt::
      00053E                         89 	.ds 37
      000563                         90 _delay_halt::
      000563                         91 	.ds 1
      000564                         92 _language::
      000564                         93 	.ds 1
                                     94 ;--------------------------------------------------------
                                     95 ; absolute external ram data
                                     96 ;--------------------------------------------------------
                                     97 	.area DABS (ABS)
                                     98 
                                     99 ; default segment ordering for linker
                                    100 	.area HOME
                                    101 	.area GSINIT
                                    102 	.area GSFINAL
                                    103 	.area CONST
                                    104 	.area INITIALIZER
                                    105 	.area CODE
                                    106 
                                    107 ;--------------------------------------------------------
                                    108 ; global & static initialisations
                                    109 ;--------------------------------------------------------
                                    110 	.area HOME
                                    111 	.area GSINIT
                                    112 	.area GSFINAL
                                    113 	.area GSINIT
                                    114 ;	User/menu.c: 60: static uint8_t i,last_menu=99;
                                    115 ; genAssign
      008186 35 63 04 92      [ 1]  116 	mov	_Menu_Proc_last_menu_10000_701+0, #0x63
                                    117 ;	User/menu.c: 61: static uint8_t disp_tag=0,key_val=0;
                                    118 ; genAssign
      00818A 72 5F 04 93      [ 1]  119 	clr	_Menu_Proc_disp_tag_10000_701+0
                                    120 ; genAssign
      00818E 72 5F 04 94      [ 1]  121 	clr	_Menu_Proc_key_val_10000_701+0
                                    122 ;	User/menu.c: 497: static uint8_t flag=1;
                                    123 ; genAssign
      008192 35 01 04 95      [ 1]  124 	mov	_show_datetime_flag_10000_755+0, #0x01
                                    125 ;--------------------------------------------------------
                                    126 ; Home
                                    127 ;--------------------------------------------------------
                                    128 	.area HOME
                                    129 	.area HOME
                                    130 ;--------------------------------------------------------
                                    131 ; code
                                    132 ;--------------------------------------------------------
                                    133 	.area CODE
                                    134 ;	User/menu.c: 58: void Menu_Proc(uint8_t Keyvalue,uint32_t phalen)
                                    135 ; genLabel
                                    136 ;	-----------------------------------------
                                    137 ;	 function Menu_Proc
                                    138 ;	-----------------------------------------
                                    139 ;	Register assignment might be sub-optimal.
                                    140 ;	Stack space usage: 2 bytes.
      00ABD0                        141 _Menu_Proc:
      00ABD0 89               [ 2]  142 	pushw	x
                                    143 ; genReceive
      00ABD1 6B 02            [ 1]  144 	ld	(0x02, sp), a
                                    145 ;	User/menu.c: 63: if(disp_tag)
                                    146 ; genIfx
      00ABD3 C6 04 93         [ 1]  147 	ld	a, _Menu_Proc_disp_tag_10000_701+0
                                    148 ; peephole 625a changed tnz by ld
                                    149 ; peephole j5 changed absolute to relative unconditional jump.
      00ABD6 27 60            [ 1]  150 	jreq	00105$
                                    151 ; peephole j10 removed jra by using inverse jump logic
                                    152 ; peephole j30 removed unused label 00400$.
                                    153 ;	User/menu.c: 65: disp_tag--;
                                    154 ; genMinus
                                    155 ;	User/menu.c: 66: if(disp_tag==0)
                                    156 ; genIfx
      00ABD8 72 5A 04 93      [ 1]  157 	dec	_Menu_Proc_disp_tag_10000_701+0
                                    158 ; peephole 24 removed redundant tnz.
                                    159 ; peephole j5 changed absolute to relative unconditional jump.
      00ABDC 26 5A            [ 1]  160 	jrne	00105$
                                    161 ; peephole j7 removed jra by using inverse jump logic
                                    162 ; peephole j30 removed unused label 00401$.
                                    163 ;	User/menu.c: 68: delay_halt=HALT_TIMEOUT;
                                    164 ; genAssign
      00ABDE 35 FF 05 63      [ 1]  165 	mov	_delay_halt+0, #0xff
                                    166 ;	User/menu.c: 69: GPIO_Init(GPIOB,GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|GPIO_Pin_5|GPIO_Pin_6|GPIO_Pin_7,GPIO_Mode_Out_PP_High_Fast);//LCD
                                    167 ; genIPush
      00ABE2 4B F0            [ 1]  168 	push	#0xf0
                                    169 ; genSend
      00ABE4 A6 FE            [ 1]  170 	ld	a, #0xfe
                                    171 ; genSend
      00ABE6 AE 50 05         [ 2]  172 	ldw	x, #0x5005
                                    173 ; genCall
      00ABE9 CD CD E4         [ 4]  174 	call	_GPIO_Init
                                    175 ;	User/menu.c: 70: LCD_BKLIGHT_0;//背光关
                                    176 ; genSend
      00ABEC A6 02            [ 1]  177 	ld	a, #0x02
                                    178 ; genSend
      00ABEE AE 50 05         [ 2]  179 	ldw	x, #0x5005
                                    180 ; genCall
      00ABF1 CD CE 9F         [ 4]  181 	call	_GPIO_ResetBits
                                    182 ;	User/menu.c: 71: lcd_init();
                                    183 ; genCall
      00ABF4 CD BD 32         [ 4]  184 	call	_lcd_init
                                    185 ;	User/menu.c: 72: last_menu=0;
                                    186 ; genAssign
      00ABF7 72 5F 04 92      [ 1]  187 	clr	_Menu_Proc_last_menu_10000_701+0
                                    188 ;	User/menu.c: 73: menu_index=0;
                                    189 ; genAssign
      00ABFB 72 5F 05 3D      [ 1]  190 	clr	_menu_index+0
                                    191 ;	User/menu.c: 75: for(i=0; i<10; i++)
                                    192 ; genAssign
      00ABFF 72 5F 04 91      [ 1]  193 	clr	_Menu_Proc_i_10000_701+0
                                    194 ; genLabel
      00AC03                        195 00158$:
                                    196 ;	User/menu.c: 76: Delay(0xffff);
                                    197 ; genSend
      00AC03 5F               [ 1]  198 	clrw	x
      00AC04 5A               [ 2]  199 	decw	x
                                    200 ; genCall
      00AC05 CD 91 EB         [ 4]  201 	call	_Delay
                                    202 ;	User/menu.c: 75: for(i=0; i<10; i++)
                                    203 ; genPlus
      00AC08 72 5C 04 91      [ 1]  204 	inc	_Menu_Proc_i_10000_701+0
                                    205 ; genCmp
                                    206 ; genCmpTnz
      00AC0C C6 04 91         [ 1]  207 	ld	a, _Menu_Proc_i_10000_701+0
      00AC0F A1 0A            [ 1]  208 	cp	a, #0x0a
                                    209 ; peephole j5 changed absolute to relative unconditional jump.
      00AC11 25 F0            [ 1]  210 	jrc	00158$
                                    211 ; peephole j9 removed jra by using inverse jump logic
                                    212 ; peephole j30 removed unused label 00402$.
                                    213 ; skipping generated iCode
                                    214 ;	User/menu.c: 78: clear_screen();
                                    215 ; genCall
      00AC13 CD BD ED         [ 4]  216 	call	_clear_screen
                                    217 ;	User/menu.c: 79: DspOne();
                                    218 ; genCall
      00AC16 CD AF 6E         [ 4]  219 	call	_DspOne
                                    220 ;	User/menu.c: 81: ADC_Cmd(ADC1, ENABLE);
                                    221 ; genSend
      00AC19 A6 01            [ 1]  222 	ld	a, #0x01
                                    223 ; genSend
      00AC1B AE 53 40         [ 2]  224 	ldw	x, #0x5340
                                    225 ; genCall
      00AC1E CD C2 7A         [ 4]  226 	call	_ADC_Cmd
                                    227 ;	User/menu.c: 82: ADC_DMACmd(ADC1, ENABLE);
                                    228 ; genSend
      00AC21 A6 01            [ 1]  229 	ld	a, #0x01
                                    230 ; genSend
      00AC23 AE 53 40         [ 2]  231 	ldw	x, #0x5340
                                    232 ; genCall
      00AC26 CD C3 B2         [ 4]  233 	call	_ADC_DMACmd
                                    234 ;	User/menu.c: 83: Delay(10000);
                                    235 ; genSend
      00AC29 AE 27 10         [ 2]  236 	ldw	x, #0x2710
                                    237 ; genCall
      00AC2C CD 91 EB         [ 4]  238 	call	_Delay
                                    239 ;	User/menu.c: 84: ADC_SoftwareStartConv(ADC1); //开启软件转换
                                    240 ; genSend
      00AC2F AE 53 40         [ 2]  241 	ldw	x, #0x5340
                                    242 ; genCall
      00AC32 CD C2 8C         [ 4]  243 	call	_ADC_SoftwareStartConv
                                    244 ;	User/menu.c: 86: return;
                                    245 ; genReturn
      00AC35 CC AE 7C         [ 2]  246 	jp	00160$
                                    247 ; genLabel
      00AC38                        248 00105$:
                                    249 ;	User/menu.c: 90: switch(Keyvalue)
                                    250 ; genCmpEQorNE
      00AC38 7B 02            [ 1]  251 	ld	a, (0x02, sp)
      00AC3A 4A               [ 1]  252 	dec	a
      00AC3B 26 05            [ 1]  253 	jrne	00404$
      00AC3D A6 01            [ 1]  254 	ld	a, #0x01
      00AC3F 6B 01            [ 1]  255 	ld	(0x01, sp), a
                                    256 ; peephole j5 changed absolute to relative unconditional jump.
      00AC41 C5                     257 	.byte 0xc5
                                    258 ; peephole jrf7 used bcp opcode to jump over 2-byte instruction.
      00AC42                        259 00404$:
      00AC42 0F 01            [ 1]  260 	clr	(0x01, sp)
      00AC44                        261 00405$:
                                    262 ; genIfx
      00AC44 0D 01            [ 1]  263 	tnz	(0x01, sp)
                                    264 ; peephole j5 changed absolute to relative unconditional jump.
      00AC46 26 39            [ 1]  265 	jrne	00107$
                                    266 ; peephole j7 removed jra by using inverse jump logic
                                    267 ; peephole j30 removed unused label 00406$.
                                    268 ; genCmpEQorNE
      00AC48 7B 02            [ 1]  269 	ld	a, (0x02, sp)
      00AC4A A1 02            [ 1]  270 	cp	a, #0x02
                                    271 ; peephole j5 changed absolute to relative unconditional jump.
      00AC4C 27 49            [ 1]  272 	jreq	00108$
                                    273 ; peephole j10 removed jra by using inverse jump logic
                                    274 ; peephole j30 removed unused label 00408$.
                                    275 ; skipping generated iCode
                                    276 ; genCmpEQorNE
      00AC4E 7B 02            [ 1]  277 	ld	a, (0x02, sp)
      00AC50 A1 04            [ 1]  278 	cp	a, #0x04
                                    279 ; peephole j5 changed absolute to relative unconditional jump.
      00AC52 27 59            [ 1]  280 	jreq	00109$
                                    281 ; peephole j10 removed jra by using inverse jump logic
                                    282 ; peephole j30 removed unused label 00411$.
                                    283 ; skipping generated iCode
                                    284 ; genCmpEQorNE
      00AC54 7B 02            [ 1]  285 	ld	a, (0x02, sp)
      00AC56 A1 07            [ 1]  286 	cp	a, #0x07
                                    287 ; peephole j5 changed absolute to relative unconditional jump.
      00AC58 27 69            [ 1]  288 	jreq	00110$
                                    289 ; peephole j10 removed jra by using inverse jump logic
                                    290 ; peephole j30 removed unused label 00414$.
                                    291 ; skipping generated iCode
                                    292 ; genCmpEQorNE
      00AC5A 7B 02            [ 1]  293 	ld	a, (0x02, sp)
      00AC5C A1 0C            [ 1]  294 	cp	a, #0x0c
                                    295 ; peephole j5 changed absolute to relative unconditional jump.
      00AC5E 27 79            [ 1]  296 	jreq	00111$
                                    297 ; peephole j10 removed jra by using inverse jump logic
                                    298 ; peephole j30 removed unused label 00417$.
                                    299 ; skipping generated iCode
                                    300 ; genCmpEQorNE
      00AC60 7B 02            [ 1]  301 	ld	a, (0x02, sp)
      00AC62 A1 62            [ 1]  302 	cp	a, #0x62
      00AC64 26 03            [ 1]  303 	jrne	00420$
      00AC66 CC AC EF         [ 2]  304 	jp	00115$
      00AC69                        305 00420$:
                                    306 ; skipping generated iCode
                                    307 ; genCmpEQorNE
      00AC69 7B 02            [ 1]  308 	ld	a, (0x02, sp)
      00AC6B A1 63            [ 1]  309 	cp	a, #0x63
      00AC6D 26 03            [ 1]  310 	jrne	00423$
      00AC6F CC AD 24         [ 2]  311 	jp	00118$
      00AC72                        312 00423$:
                                    313 ; skipping generated iCode
                                    314 ; genCmpEQorNE
      00AC72 7B 02            [ 1]  315 	ld	a, (0x02, sp)
      00AC74 A1 6A            [ 1]  316 	cp	a, #0x6a
                                    317 ; peephole j5 changed absolute to relative unconditional jump.
      00AC76 27 03            [ 1]  318 	jreq	00427$
                                    319 ; peephole j10 removed jra by using inverse jump logic
                                    320 ; peephole j30 removed unused label 00426$.
      00AC78 CC AD A2         [ 2]  321 	jp	00134$
      00AC7B                        322 00427$:
                                    323 ; skipping generated iCode
                                    324 ;	User/menu.c: 93: Sys_Reset();
                                    325 ; genCall
      00AC7B CD BC AC         [ 4]  326 	call	_Sys_Reset
                                    327 ;	User/menu.c: 94: return;
                                    328 ; genReturn
      00AC7E CC AE 7C         [ 2]  329 	jp	00160$
                                    330 ;	User/menu.c: 96: case KEY_UP:                         //上, 找出新的菜单状态编号
                                    331 ; genLabel
      00AC81                        332 00107$:
                                    333 ;	User/menu.c: 97: menu_index=MenuTab[menu_index].keyup;
                                    334 ; skipping iCode since result will be rematerialized
                                    335 ; genMult
      00AC81 C6 05 3D         [ 1]  336 	ld	a, _menu_index+0
      00AC84 97               [ 1]  337 	ld	xl, a
      00AC85 A6 12            [ 1]  338 	ld	a, #0x12
      00AC87 42               [ 4]  339 	mul	x, a
                                    340 ; genPlus
      00AC88 1C 82 59         [ 2]  341 	addw	x, #(_MenuTab+0)
                                    342 ; genPointerGet
      00AC8B E6 01            [ 1]  343 	ld	a, (0x1, x)
      00AC8D C7 05 3D         [ 1]  344 	ld	_menu_index+0, a
                                    345 ;	User/menu.c: 98: delay_halt=HALT_TIMEOUT;
                                    346 ; genAssign
      00AC90 35 FF 05 63      [ 1]  347 	mov	_delay_halt+0, #0xff
                                    348 ;	User/menu.c: 99: break;
                                    349 ; genGoto
      00AC94 CC AD AA         [ 2]  350 	jp	00135$
                                    351 ;	User/menu.c: 101: case KEY_DOWN:                       //下, 找出新的菜单状态编号
                                    352 ; genLabel
      00AC97                        353 00108$:
                                    354 ;	User/menu.c: 102: menu_index=MenuTab[menu_index].keydown;
                                    355 ; skipping iCode since result will be rematerialized
                                    356 ; genMult
      00AC97 C6 05 3D         [ 1]  357 	ld	a, _menu_index+0
      00AC9A 97               [ 1]  358 	ld	xl, a
      00AC9B A6 12            [ 1]  359 	ld	a, #0x12
      00AC9D 42               [ 4]  360 	mul	x, a
                                    361 ; genPlus
      00AC9E 1C 82 59         [ 2]  362 	addw	x, #(_MenuTab+0)
                                    363 ; genPointerGet
      00ACA1 E6 02            [ 1]  364 	ld	a, (0x2, x)
      00ACA3 C7 05 3D         [ 1]  365 	ld	_menu_index+0, a
                                    366 ;	User/menu.c: 103: delay_halt=HALT_TIMEOUT;
                                    367 ; genAssign
      00ACA6 35 FF 05 63      [ 1]  368 	mov	_delay_halt+0, #0xff
                                    369 ;	User/menu.c: 104: break;
                                    370 ; genGoto
      00ACAA CC AD AA         [ 2]  371 	jp	00135$
                                    372 ;	User/menu.c: 106: case KEY_LEFT:                       //左
                                    373 ; genLabel
      00ACAD                        374 00109$:
                                    375 ;	User/menu.c: 107: menu_index=MenuTab[menu_index].keyleft;
                                    376 ; skipping iCode since result will be rematerialized
                                    377 ; genMult
      00ACAD C6 05 3D         [ 1]  378 	ld	a, _menu_index+0
      00ACB0 97               [ 1]  379 	ld	xl, a
      00ACB1 A6 12            [ 1]  380 	ld	a, #0x12
      00ACB3 42               [ 4]  381 	mul	x, a
                                    382 ; genPlus
      00ACB4 1C 82 59         [ 2]  383 	addw	x, #(_MenuTab+0)
                                    384 ; genPointerGet
      00ACB7 E6 03            [ 1]  385 	ld	a, (0x3, x)
      00ACB9 C7 05 3D         [ 1]  386 	ld	_menu_index+0, a
                                    387 ;	User/menu.c: 108: delay_halt=HALT_TIMEOUT;
                                    388 ; genAssign
      00ACBC 35 FF 05 63      [ 1]  389 	mov	_delay_halt+0, #0xff
                                    390 ;	User/menu.c: 109: break;
                                    391 ; genGoto
      00ACC0 CC AD AA         [ 2]  392 	jp	00135$
                                    393 ;	User/menu.c: 111: case KEY_RIGHT:                      //右
                                    394 ; genLabel
      00ACC3                        395 00110$:
                                    396 ;	User/menu.c: 112: menu_index=MenuTab[menu_index].keyright;
                                    397 ; skipping iCode since result will be rematerialized
                                    398 ; genMult
      00ACC3 C6 05 3D         [ 1]  399 	ld	a, _menu_index+0
      00ACC6 97               [ 1]  400 	ld	xl, a
      00ACC7 A6 12            [ 1]  401 	ld	a, #0x12
      00ACC9 42               [ 4]  402 	mul	x, a
                                    403 ; genPlus
      00ACCA 1C 82 59         [ 2]  404 	addw	x, #(_MenuTab+0)
                                    405 ; genPointerGet
      00ACCD E6 04            [ 1]  406 	ld	a, (0x4, x)
      00ACCF C7 05 3D         [ 1]  407 	ld	_menu_index+0, a
                                    408 ;	User/menu.c: 113: delay_halt=HALT_TIMEOUT;
                                    409 ; genAssign
      00ACD2 35 FF 05 63      [ 1]  410 	mov	_delay_halt+0, #0xff
                                    411 ;	User/menu.c: 114: break;
                                    412 ; genGoto
      00ACD6 CC AD AA         [ 2]  413 	jp	00135$
                                    414 ;	User/menu.c: 116: case KEY_MENU:                       //回车键,找出新的菜单状态编号
                                    415 ; genLabel
      00ACD9                        416 00111$:
                                    417 ;	User/menu.c: 117: menu_index=MenuTab[menu_index].keymenu;
                                    418 ; skipping iCode since result will be rematerialized
                                    419 ; genMult
      00ACD9 C6 05 3D         [ 1]  420 	ld	a, _menu_index+0
      00ACDC 97               [ 1]  421 	ld	xl, a
      00ACDD A6 12            [ 1]  422 	ld	a, #0x12
      00ACDF 42               [ 4]  423 	mul	x, a
                                    424 ; genPlus
      00ACE0 1C 82 59         [ 2]  425 	addw	x, #(_MenuTab+0)
                                    426 ; genPointerGet
      00ACE3 E6 05            [ 1]  427 	ld	a, (0x5, x)
      00ACE5 C7 05 3D         [ 1]  428 	ld	_menu_index+0, a
                                    429 ;	User/menu.c: 118: delay_halt=HALT_TIMEOUT;
                                    430 ; genAssign
      00ACE8 35 FF 05 63      [ 1]  431 	mov	_delay_halt+0, #0xff
                                    432 ;	User/menu.c: 119: break;
                                    433 ; genGoto
      00ACEC CC AD AA         [ 2]  434 	jp	00135$
                                    435 ;	User/menu.c: 122: if((menu_index>=0) && (menu_index<=3))
                                    436 ; genLabel
      00ACEF                        437 00115$:
                                    438 ; genCmp
                                    439 ; genCmpTnz
      00ACEF C6 05 3D         [ 1]  440 	ld	a, _menu_index+0
      00ACF2 A1 03            [ 1]  441 	cp	a, #0x03
                                    442 ; peephole j5 changed absolute to relative unconditional jump.
      00ACF4 22 0D            [ 1]  443 	jrugt	00114$
                                    444 ; peephole j17 removed jp by using inverse jump logic
                                    445 ; peephole j30 removed unused label 00428$.
                                    446 ; skipping generated iCode
                                    447 ;	User/menu.c: 124: MenuTab[menu_index].OnShow();
                                    448 ; skipping iCode since result will be rematerialized
                                    449 ; genMult
      00ACF6 C6 05 3D         [ 1]  450 	ld	a, _menu_index+0
      00ACF9 97               [ 1]  451 	ld	xl, a
      00ACFA A6 12            [ 1]  452 	ld	a, #0x12
      00ACFC 42               [ 4]  453 	mul	x, a
                                    454 ; genPlus
      00ACFD 1C 82 59         [ 2]  455 	addw	x, #(_MenuTab+0)
                                    456 ; genPointerGet
      00AD00 EE 06            [ 2]  457 	ldw	x, (0x6, x)
                                    458 ; genCall
      00AD02 FD               [ 4]  459 	call	(x)
                                    460 ; genLabel
      00AD03                        461 00114$:
                                    462 ;	User/menu.c: 126: delay_halt=HALT_TIMEOUT;
                                    463 ; genAssign
      00AD03 35 FF 05 63      [ 1]  464 	mov	_delay_halt+0, #0xff
                                    465 ;	User/menu.c: 127: if(phalen)
                                    466 ; genIfx
      00AD07 1E 07            [ 2]  467 	ldw	x, (0x07, sp)
      00AD09 26 07            [ 1]  468 	jrne	00429$
      00AD0B 1E 05            [ 2]  469 	ldw	x, (0x05, sp)
      00AD0D 26 03            [ 1]  470 	jrne	00429$
      00AD0F CC AE 7C         [ 2]  471 	jp	00160$
                                    472 ; peephole j1 jumped to 00160$ directly instead of via 00117$.
      00AD12                        473 00429$:
                                    474 ;	User/menu.c: 129: rtc_get_datetime();
                                    475 ; genCall
      00AD12 CD 98 4D         [ 4]  476 	call	_rtc_get_datetime
                                    477 ;	User/menu.c: 130: Record_SaveNew((uint8_t *)adjustdt.dt, phalen);
                                    478 ; skipping iCode since result will be rematerialized
                                    479 ; skipping iCode since result will be rematerialized
                                    480 ; genIPush
      00AD15 1E 07            [ 2]  481 	ldw	x, (0x07, sp)
      00AD17 89               [ 2]  482 	pushw	x
      00AD18 1E 07            [ 2]  483 	ldw	x, (0x07, sp)
      00AD1A 89               [ 2]  484 	pushw	x
                                    485 ; genSend
      00AD1B AE 05 3F         [ 2]  486 	ldw	x, #(_adjustdt+1)
                                    487 ; genCall
      00AD1E CD 9C 74         [ 4]  488 	call	_Record_SaveNew
                                    489 ; genLabel
                                    490 ; peephole j30 removed unused label 00117$.
                                    491 ;	User/menu.c: 134: return;
                                    492 ; genReturn
      00AD21 CC AE 7C         [ 2]  493 	jp	00160$
                                    494 ;	User/menu.c: 136: case FRESH_TIME:					//时间刷新，需重新显示
                                    495 ; genLabel
      00AD24                        496 00118$:
                                    497 ;	User/menu.c: 137: if(menu_index==4||menu_index==6)
                                    498 ; genCmpEQorNE
      00AD24 C6 05 3D         [ 1]  499 	ld	a, _menu_index+0
      00AD27 A1 04            [ 1]  500 	cp	a, #0x04
                                    501 ; peephole j5 changed absolute to relative unconditional jump.
      00AD29 27 07            [ 1]  502 	jreq	00119$
                                    503 ; peephole j10 removed jra by using inverse jump logic
                                    504 ; peephole j30 removed unused label 00431$.
                                    505 ; skipping generated iCode
                                    506 ; genCmpEQorNE
      00AD2B C6 05 3D         [ 1]  507 	ld	a, _menu_index+0
      00AD2E A1 06            [ 1]  508 	cp	a, #0x06
                                    509 ; peephole j5 changed absolute to relative unconditional jump.
                                    510 ; peephole j10 removed jra by using inverse jump logic
                                    511 ; peephole j30 removed unused label 00434$.
                                    512 ; peephole j5 changed absolute to relative unconditional jump.
      00AD30 26 0D            [ 1]  513 	jrne	00120$
                                    514 ; peephole j7 removed jra by using inverse jump logic
                                    515 ; peephole j30 removed unused label 00435$.
                                    516 ; skipping generated iCode
                                    517 ; genLabel
      00AD32                        518 00119$:
                                    519 ;	User/menu.c: 138: MenuTab[menu_index].OnShow();
                                    520 ; skipping iCode since result will be rematerialized
                                    521 ; genMult
      00AD32 C6 05 3D         [ 1]  522 	ld	a, _menu_index+0
      00AD35 97               [ 1]  523 	ld	xl, a
      00AD36 A6 12            [ 1]  524 	ld	a, #0x12
      00AD38 42               [ 4]  525 	mul	x, a
                                    526 ; genPlus
      00AD39 1C 82 59         [ 2]  527 	addw	x, #(_MenuTab+0)
                                    528 ; genPointerGet
      00AD3C EE 06            [ 2]  529 	ldw	x, (0x6, x)
                                    530 ; genCall
      00AD3E FD               [ 4]  531 	call	(x)
                                    532 ; genLabel
      00AD3F                        533 00120$:
                                    534 ;	User/menu.c: 139: if(delay_halt--)//按键动作、雷击事件显示完成，延时HALT_TIMEOUT秒后进入省电状态
                                    535 ; genAssign
      00AD3F C6 05 63         [ 1]  536 	ld	a, _delay_halt+0
                                    537 ; genMinus
      00AD42 72 5A 05 63      [ 1]  538 	dec	_delay_halt+0
                                    539 ; genIfx
      00AD46 4D               [ 1]  540 	tnz	a
      00AD47 26 03            [ 1]  541 	jrne	00436$
      00AD49 CC AE 7C         [ 2]  542 	jp	00160$
                                    543 ; peephole j1 jumped to 00160$ directly instead of via 00133$.
      00AD4C                        544 00436$:
                                    545 ;	User/menu.c: 141: if(0==delay_halt)
                                    546 ; genIfx
      00AD4C 72 5D 05 63      [ 1]  547 	tnz	_delay_halt+0
      00AD50 27 03            [ 1]  548 	jreq	00437$
      00AD52 CC AE 7C         [ 2]  549 	jp	00160$
                                    550 ; peephole j1 jumped to 00160$ directly instead of via 00133$.
      00AD55                        551 00437$:
                                    552 ;	User/menu.c: 143: if((strokeA.tim_trg>0)&&(strokeB.tim_trg>0)&&(strokeC.tim_trg>0))//三相雷击停止设备进入休眠状态，等待外部中断唤醒
                                    553 ; skipping iCode since result will be rematerialized
                                    554 ; genPointerGet
                                    555 ; genIfx
      00AD55 C6 04 B8         [ 1]  556 	ld	a, _strokeA+0
                                    557 ; peephole 30 removed redundant tnz.
                                    558 ; peephole j5 changed absolute to relative unconditional jump.
      00AD58 27 41            [ 1]  559 	jreq	00126$
                                    560 ; peephole j10 removed jra by using inverse jump logic
                                    561 ; peephole j30 removed unused label 00438$.
                                    562 ; skipping iCode since result will be rematerialized
                                    563 ; genPointerGet
                                    564 ; genIfx
      00AD5A C6 04 C5         [ 1]  565 	ld	a, _strokeB+0
                                    566 ; peephole 30 removed redundant tnz.
                                    567 ; peephole j5 changed absolute to relative unconditional jump.
      00AD5D 27 3C            [ 1]  568 	jreq	00126$
                                    569 ; peephole j10 removed jra by using inverse jump logic
                                    570 ; peephole j30 removed unused label 00439$.
                                    571 ; skipping iCode since result will be rematerialized
                                    572 ; genPointerGet
                                    573 ; genIfx
      00AD5F C6 04 D2         [ 1]  574 	ld	a, _strokeC+0
                                    575 ; peephole 30 removed redundant tnz.
                                    576 ; peephole j5 changed absolute to relative unconditional jump.
      00AD62 27 37            [ 1]  577 	jreq	00126$
                                    578 ; peephole j10 removed jra by using inverse jump logic
                                    579 ; peephole j30 removed unused label 00440$.
                                    580 ;	User/menu.c: 146: Storage_SaveAllStats();//先保存统计数据
                                    581 ; genCall
      00AD64 CD 9C 6E         [ 4]  582 	call	_Storage_SaveAllStats
                                    583 ;	User/menu.c: 147: if(System_GetMode())//进入省电模式
                                    584 ; genCall
      00AD67 CD 9C 48         [ 4]  585 	call	_System_GetMode
                                    586 ; genIfx
      00AD6A 4D               [ 1]  587 	tnz	a
                                    588 ; peephole j5 changed absolute to relative unconditional jump.
      00AD6B 27 1D            [ 1]  589 	jreq	00123$
                                    590 ; peephole j10 removed jra by using inverse jump logic
                                    591 ; peephole j30 removed unused label 00441$.
                                    592 ;	User/menu.c: 149: LCD_BKLIGHT_0;
                                    593 ; genSend
      00AD6D A6 02            [ 1]  594 	ld	a, #0x02
                                    595 ; genSend
      00AD6F AE 50 05         [ 2]  596 	ldw	x, #0x5005
                                    597 ; genCall
      00AD72 CD CE 9F         [ 4]  598 	call	_GPIO_ResetBits
                                    599 ;	User/menu.c: 150: clear_screen();
                                    600 ; genCall
      00AD75 CD BD ED         [ 4]  601 	call	_clear_screen
                                    602 ;	User/menu.c: 151: GPIO_Init(GPIOB,GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|GPIO_Pin_5|GPIO_Pin_6|GPIO_Pin_7,GPIO_Mode_Out_OD_Low_Slow);//LCD 控制脚省电处理
                                    603 ; genIPush
      00AD78 4B 80            [ 1]  604 	push	#0x80
                                    605 ; genSend
      00AD7A A6 FE            [ 1]  606 	ld	a, #0xfe
                                    607 ; genSend
      00AD7C AE 50 05         [ 2]  608 	ldw	x, #0x5005
                                    609 ; genCall
      00AD7F CD CD E4         [ 4]  610 	call	_GPIO_Init
                                    611 ;	User/menu.c: 153: disp_tag=2;
                                    612 ; genAssign
      00AD82 35 02 04 93      [ 1]  613 	mov	_Menu_Proc_disp_tag_10000_701+0, #0x02
                                    614 ;	User/menu.c: 154: halt();
                                    615 ;	genInline
      00AD86 8E               [10]  616 	halt
                                    617 ; genGoto
      00AD87 CC AE 7C         [ 2]  618 	jp	00160$
                                    619 ; peephole j1 jumped to 00160$ directly instead of via 00133$.
                                    620 ; genLabel
      00AD8A                        621 00123$:
                                    622 ;	User/menu.c: 158: last_menu=0;
                                    623 ; genAssign
      00AD8A 72 5F 04 92      [ 1]  624 	clr	_Menu_Proc_last_menu_10000_701+0
                                    625 ;	User/menu.c: 159: menu_index=0;
                                    626 ; genAssign
      00AD8E 72 5F 05 3D      [ 1]  627 	clr	_menu_index+0
                                    628 ;	User/menu.c: 160: clear_screen();
                                    629 ; genCall
      00AD92 CD BD ED         [ 4]  630 	call	_clear_screen
                                    631 ;	User/menu.c: 161: DspOne();
                                    632 ; genCall
      00AD95 CD AF 6E         [ 4]  633 	call	_DspOne
                                    634 ; genGoto
      00AD98 CC AE 7C         [ 2]  635 	jp	00160$
                                    636 ; peephole j1 jumped to 00160$ directly instead of via 00133$.
                                    637 ; genLabel
      00AD9B                        638 00126$:
                                    639 ;	User/menu.c: 165: delay_halt=3;
                                    640 ; genAssign
      00AD9B 35 03 05 63      [ 1]  641 	mov	_delay_halt+0, #0x03
                                    642 ; genLabel
                                    643 ; peephole j30 removed unused label 00133$.
                                    644 ;	User/menu.c: 168: return;
                                    645 ; genReturn
      00AD9F CC AE 7C         [ 2]  646 	jp	00160$
                                    647 ;	User/menu.c: 169: default:   		                    //按键值错误的处理
                                    648 ; genLabel
      00ADA2                        649 00134$:
                                    650 ;	User/menu.c: 170: key_val=Keyvalue;
                                    651 ; genAssign
      00ADA2 7B 02            [ 1]  652 	ld	a, (0x02, sp)
      00ADA4 C7 04 94         [ 1]  653 	ld	_Menu_Proc_key_val_10000_701+0, a
                                    654 ;	User/menu.c: 172: return;
                                    655 ; genReturn
      00ADA7 CC AE 7C         [ 2]  656 	jp	00160$
                                    657 ;	User/menu.c: 174: }
                                    658 ; genLabel
      00ADAA                        659 00135$:
                                    660 ;	User/menu.c: 176: if(menu_index <= 6)
                                    661 ; genCmp
                                    662 ; genCmpTnz
      00ADAA C6 05 3D         [ 1]  663 	ld	a, _menu_index+0
      00ADAD A1 06            [ 1]  664 	cp	a, #0x06
      00ADAF 23 03            [ 2]  665 	jrule	00442$
      00ADB1 CC AE 77         [ 2]  666 	jp	00157$
      00ADB4                        667 00442$:
                                    668 ; skipping generated iCode
                                    669 ;	User/menu.c: 178: if(last_menu != menu_index)//菜单切换
                                    670 ; genCmpEQorNE
      00ADB4 C6 05 3D         [ 1]  671 	ld	a, _menu_index+0
      00ADB7 C1 04 92         [ 1]  672 	cp	a, _Menu_Proc_last_menu_10000_701+0
                                    673 ; peephole j5 changed absolute to relative unconditional jump.
      00ADBA 27 39            [ 1]  674 	jreq	00154$
                                    675 ; peephole j10 removed jra by using inverse jump logic
                                    676 ; peephole j30 removed unused label 00444$.
                                    677 ; skipping generated iCode
                                    678 ;	User/menu.c: 180: if ((Keyvalue==KEY_MENU)&&(MenuTab[last_menu].OnMenu !=0))//执行菜单跳转前的保存工作
                                    679 ; genCmpEQorNE
      00ADBC 7B 02            [ 1]  680 	ld	a, (0x02, sp)
      00ADBE A1 0C            [ 1]  681 	cp	a, #0x0c
                                    682 ; peephole j5 changed absolute to relative unconditional jump.
                                    683 ; peephole j10 removed jra by using inverse jump logic
                                    684 ; peephole j30 removed unused label 00447$.
                                    685 ; peephole j5 changed absolute to relative unconditional jump.
      00ADC0 26 0F            [ 1]  686 	jrne	00137$
                                    687 ; peephole j7 removed jra by using inverse jump logic
                                    688 ; peephole j30 removed unused label 00448$.
                                    689 ; skipping generated iCode
                                    690 ; skipping iCode since result will be rematerialized
                                    691 ; genMult
      00ADC2 C6 04 92         [ 1]  692 	ld	a, _Menu_Proc_last_menu_10000_701+0
      00ADC5 97               [ 1]  693 	ld	xl, a
      00ADC6 A6 12            [ 1]  694 	ld	a, #0x12
      00ADC8 42               [ 4]  695 	mul	x, a
                                    696 ; genPlus
      00ADC9 1C 82 59         [ 2]  697 	addw	x, #(_MenuTab+0)
                                    698 ; genPointerGet
                                    699 ; genIfx
      00ADCC EE 10            [ 2]  700 	ldw	x, (0x10, x)
                                    701 ; peephole 31w removed redundant tnzw.
                                    702 ; peephole j5 changed absolute to relative unconditional jump.
      00ADCE 27 01            [ 1]  703 	jreq	00137$
                                    704 ; peephole j10 removed jra by using inverse jump logic
                                    705 ; peephole j30 removed unused label 00449$.
                                    706 ;	User/menu.c: 181: MenuTab[last_menu].OnMenu();
                                    707 ; genAssign
                                    708 ; genCall
      00ADD0 FD               [ 4]  709 	call	(x)
                                    710 ; genLabel
      00ADD1                        711 00137$:
                                    712 ;	User/menu.c: 183: clear_screen();//切换屏前清屏
                                    713 ; genCall
      00ADD1 CD BD ED         [ 4]  714 	call	_clear_screen
                                    715 ;	User/menu.c: 185: if(MenuTab[menu_index].OnShow != 0)
                                    716 ; skipping iCode since result will be rematerialized
                                    717 ; genMult
      00ADD4 C6 05 3D         [ 1]  718 	ld	a, _menu_index+0
      00ADD7 97               [ 1]  719 	ld	xl, a
      00ADD8 A6 12            [ 1]  720 	ld	a, #0x12
      00ADDA 42               [ 4]  721 	mul	x, a
                                    722 ; genPlus
      00ADDB 1C 82 59         [ 2]  723 	addw	x, #(_MenuTab+0)
                                    724 ; genPointerGet
                                    725 ; genIfx
      00ADDE EE 06            [ 2]  726 	ldw	x, (0x6, x)
                                    727 ; peephole 31w removed redundant tnzw.
      00ADE0 26 03            [ 1]  728 	jrne	00450$
      00ADE2 CC AE 77         [ 2]  729 	jp	00157$
      00ADE5                        730 00450$:
                                    731 ;	User/menu.c: 186: MenuTab[menu_index].OnShow();
                                    732 ; genMult
      00ADE5 C6 05 3D         [ 1]  733 	ld	a, _menu_index+0
      00ADE8 97               [ 1]  734 	ld	xl, a
      00ADE9 A6 12            [ 1]  735 	ld	a, #0x12
      00ADEB 42               [ 4]  736 	mul	x, a
                                    737 ; genPlus
      00ADEC 1C 82 59         [ 2]  738 	addw	x, #(_MenuTab+0)
                                    739 ; genPointerGet
      00ADEF EE 06            [ 2]  740 	ldw	x, (0x6, x)
                                    741 ; genCall
      00ADF1 FD               [ 4]  742 	call	(x)
                                    743 ; genGoto
      00ADF2 CC AE 77         [ 2]  744 	jp	00157$
                                    745 ; genLabel
      00ADF5                        746 00154$:
                                    747 ;	User/menu.c: 191: if ((Keyvalue==KEY_UP)&&(MenuTab[menu_index].OnUp !=0))
                                    748 ; genIfx
      00ADF5 0D 01            [ 1]  749 	tnz	(0x01, sp)
                                    750 ; peephole j5 changed absolute to relative unconditional jump.
      00ADF7 27 1B            [ 1]  751 	jreq	00142$
                                    752 ; peephole j10 removed jra by using inverse jump logic
                                    753 ; peephole j30 removed unused label 00451$.
                                    754 ; skipping iCode since result will be rematerialized
                                    755 ; genMult
      00ADF9 C6 05 3D         [ 1]  756 	ld	a, _menu_index+0
      00ADFC 97               [ 1]  757 	ld	xl, a
      00ADFD A6 12            [ 1]  758 	ld	a, #0x12
      00ADFF 42               [ 4]  759 	mul	x, a
                                    760 ; genPlus
      00AE00 1C 82 59         [ 2]  761 	addw	x, #(_MenuTab+0)
                                    762 ; genPointerGet
                                    763 ; genIfx
      00AE03 EE 08            [ 2]  764 	ldw	x, (0x8, x)
                                    765 ; peephole 31w removed redundant tnzw.
                                    766 ; peephole j5 changed absolute to relative unconditional jump.
      00AE05 27 0D            [ 1]  767 	jreq	00142$
                                    768 ; peephole j10 removed jra by using inverse jump logic
                                    769 ; peephole j30 removed unused label 00452$.
                                    770 ;	User/menu.c: 192: MenuTab[menu_index].OnUp();
                                    771 ; genMult
      00AE07 C6 05 3D         [ 1]  772 	ld	a, _menu_index+0
      00AE0A 97               [ 1]  773 	ld	xl, a
      00AE0B A6 12            [ 1]  774 	ld	a, #0x12
      00AE0D 42               [ 4]  775 	mul	x, a
                                    776 ; genPlus
      00AE0E 1C 82 59         [ 2]  777 	addw	x, #(_MenuTab+0)
                                    778 ; genPointerGet
      00AE11 EE 08            [ 2]  779 	ldw	x, (0x8, x)
                                    780 ; genCall
      00AE13 FD               [ 4]  781 	call	(x)
                                    782 ; genLabel
      00AE14                        783 00142$:
                                    784 ;	User/menu.c: 193: if ((Keyvalue==KEY_DOWN)&&(MenuTab[menu_index].OnDown !=0))
                                    785 ; genCmpEQorNE
      00AE14 7B 02            [ 1]  786 	ld	a, (0x02, sp)
      00AE16 A1 02            [ 1]  787 	cp	a, #0x02
                                    788 ; peephole j5 changed absolute to relative unconditional jump.
                                    789 ; peephole j10 removed jra by using inverse jump logic
                                    790 ; peephole j30 removed unused label 00454$.
                                    791 ; peephole j5 changed absolute to relative unconditional jump.
      00AE18 26 1B            [ 1]  792 	jrne	00145$
                                    793 ; peephole j7 removed jra by using inverse jump logic
                                    794 ; peephole j30 removed unused label 00455$.
                                    795 ; skipping generated iCode
                                    796 ; skipping iCode since result will be rematerialized
                                    797 ; genMult
      00AE1A C6 05 3D         [ 1]  798 	ld	a, _menu_index+0
      00AE1D 97               [ 1]  799 	ld	xl, a
      00AE1E A6 12            [ 1]  800 	ld	a, #0x12
      00AE20 42               [ 4]  801 	mul	x, a
                                    802 ; genPlus
      00AE21 1C 82 59         [ 2]  803 	addw	x, #(_MenuTab+0)
                                    804 ; genPointerGet
                                    805 ; genIfx
      00AE24 EE 0A            [ 2]  806 	ldw	x, (0xa, x)
                                    807 ; peephole 31w removed redundant tnzw.
                                    808 ; peephole j5 changed absolute to relative unconditional jump.
      00AE26 27 0D            [ 1]  809 	jreq	00145$
                                    810 ; peephole j10 removed jra by using inverse jump logic
                                    811 ; peephole j30 removed unused label 00456$.
                                    812 ;	User/menu.c: 194: MenuTab[menu_index].OnDown();
                                    813 ; genMult
      00AE28 C6 05 3D         [ 1]  814 	ld	a, _menu_index+0
      00AE2B 97               [ 1]  815 	ld	xl, a
      00AE2C A6 12            [ 1]  816 	ld	a, #0x12
      00AE2E 42               [ 4]  817 	mul	x, a
                                    818 ; genPlus
      00AE2F 1C 82 59         [ 2]  819 	addw	x, #(_MenuTab+0)
                                    820 ; genPointerGet
      00AE32 EE 0A            [ 2]  821 	ldw	x, (0xa, x)
                                    822 ; genCall
      00AE34 FD               [ 4]  823 	call	(x)
                                    824 ; genLabel
      00AE35                        825 00145$:
                                    826 ;	User/menu.c: 195: if ((Keyvalue==KEY_LEFT)&&(MenuTab[menu_index].OnLeft !=0))
                                    827 ; genCmpEQorNE
      00AE35 7B 02            [ 1]  828 	ld	a, (0x02, sp)
      00AE37 A1 04            [ 1]  829 	cp	a, #0x04
                                    830 ; peephole j5 changed absolute to relative unconditional jump.
                                    831 ; peephole j10 removed jra by using inverse jump logic
                                    832 ; peephole j30 removed unused label 00458$.
                                    833 ; peephole j5 changed absolute to relative unconditional jump.
      00AE39 26 1B            [ 1]  834 	jrne	00148$
                                    835 ; peephole j7 removed jra by using inverse jump logic
                                    836 ; peephole j30 removed unused label 00459$.
                                    837 ; skipping generated iCode
                                    838 ; skipping iCode since result will be rematerialized
                                    839 ; genMult
      00AE3B C6 05 3D         [ 1]  840 	ld	a, _menu_index+0
      00AE3E 97               [ 1]  841 	ld	xl, a
      00AE3F A6 12            [ 1]  842 	ld	a, #0x12
      00AE41 42               [ 4]  843 	mul	x, a
                                    844 ; genPlus
      00AE42 1C 82 59         [ 2]  845 	addw	x, #(_MenuTab+0)
                                    846 ; genPointerGet
                                    847 ; genIfx
      00AE45 EE 0C            [ 2]  848 	ldw	x, (0xc, x)
                                    849 ; peephole 31w removed redundant tnzw.
                                    850 ; peephole j5 changed absolute to relative unconditional jump.
      00AE47 27 0D            [ 1]  851 	jreq	00148$
                                    852 ; peephole j10 removed jra by using inverse jump logic
                                    853 ; peephole j30 removed unused label 00460$.
                                    854 ;	User/menu.c: 196: MenuTab[menu_index].OnLeft();
                                    855 ; genMult
      00AE49 C6 05 3D         [ 1]  856 	ld	a, _menu_index+0
      00AE4C 97               [ 1]  857 	ld	xl, a
      00AE4D A6 12            [ 1]  858 	ld	a, #0x12
      00AE4F 42               [ 4]  859 	mul	x, a
                                    860 ; genPlus
      00AE50 1C 82 59         [ 2]  861 	addw	x, #(_MenuTab+0)
                                    862 ; genPointerGet
      00AE53 EE 0C            [ 2]  863 	ldw	x, (0xc, x)
                                    864 ; genCall
      00AE55 FD               [ 4]  865 	call	(x)
                                    866 ; genLabel
      00AE56                        867 00148$:
                                    868 ;	User/menu.c: 197: if ((Keyvalue==KEY_RIGHT)&&(MenuTab[menu_index].OnRight !=0))
                                    869 ; genCmpEQorNE
      00AE56 7B 02            [ 1]  870 	ld	a, (0x02, sp)
      00AE58 A1 07            [ 1]  871 	cp	a, #0x07
                                    872 ; peephole j5 changed absolute to relative unconditional jump.
                                    873 ; peephole j10 removed jra by using inverse jump logic
                                    874 ; peephole j30 removed unused label 00462$.
                                    875 ; peephole j5 changed absolute to relative unconditional jump.
      00AE5A 26 1B            [ 1]  876 	jrne	00157$
                                    877 ; peephole j7 removed jra by using inverse jump logic
                                    878 ; peephole j30 removed unused label 00463$.
                                    879 ; skipping generated iCode
                                    880 ; skipping iCode since result will be rematerialized
                                    881 ; genMult
      00AE5C C6 05 3D         [ 1]  882 	ld	a, _menu_index+0
      00AE5F 97               [ 1]  883 	ld	xl, a
      00AE60 A6 12            [ 1]  884 	ld	a, #0x12
      00AE62 42               [ 4]  885 	mul	x, a
                                    886 ; genPlus
      00AE63 1C 82 59         [ 2]  887 	addw	x, #(_MenuTab+0)
                                    888 ; genPointerGet
                                    889 ; genIfx
      00AE66 EE 0E            [ 2]  890 	ldw	x, (0xe, x)
                                    891 ; peephole 31w removed redundant tnzw.
                                    892 ; peephole j5 changed absolute to relative unconditional jump.
      00AE68 27 0D            [ 1]  893 	jreq	00157$
                                    894 ; peephole j10 removed jra by using inverse jump logic
                                    895 ; peephole j30 removed unused label 00464$.
                                    896 ;	User/menu.c: 198: MenuTab[menu_index].OnRight();
                                    897 ; genMult
      00AE6A C6 05 3D         [ 1]  898 	ld	a, _menu_index+0
      00AE6D 97               [ 1]  899 	ld	xl, a
      00AE6E A6 12            [ 1]  900 	ld	a, #0x12
      00AE70 42               [ 4]  901 	mul	x, a
                                    902 ; genPlus
      00AE71 1C 82 59         [ 2]  903 	addw	x, #(_MenuTab+0)
                                    904 ; genPointerGet
      00AE74 EE 0E            [ 2]  905 	ldw	x, (0xe, x)
                                    906 ; genCall
      00AE76 FD               [ 4]  907 	call	(x)
                                    908 ; genLabel
      00AE77                        909 00157$:
                                    910 ;	User/menu.c: 201: last_menu=menu_index;//保存上一次菜单值，用于识别菜单是否已跳转
                                    911 ; genAssign
      00AE77 55 05 3D 04 92   [ 1]  912 	mov	_Menu_Proc_last_menu_10000_701+0, _menu_index+0
                                    913 ; genLabel
      00AE7C                        914 00160$:
                                    915 ;	User/menu.c: 202: }
                                    916 ; genEndFunction
      00AE7C 1E 03            [ 2]  917 	ldw	x, (3, sp)
      00AE7E 5B 08            [ 2]  918 	addw	sp, #8
      00AE80 FC               [ 2]  919 	jp	(x)
                                    920 ;	Total Menu_Proc function size at codegen: 5 bytes.
                                    921 ;	User/menu.c: 205: static void Draw_Stat_Columns(uint8_t row, const char* label, uint32_t count, uint32_t val)
                                    922 ; genLabel
                                    923 ;	-----------------------------------------
                                    924 ;	 function Draw_Stat_Columns
                                    925 ;	-----------------------------------------
                                    926 ;	Register assignment might be sub-optimal.
                                    927 ;	Stack space usage: 14 bytes.
      00AE81                        928 _Draw_Stat_Columns:
      00AE81 52 0E            [ 2]  929 	sub	sp, #14
                                    930 ; genReceive
                                    931 ; genReceive
                                    932 ;	User/menu.c: 210: show_str_8x12(row, 2, (uint8_t *)label);
                                    933 ; genCast
                                    934 ; genAssign
      00AE83 6B 0E            [ 1]  935 	ld	(0x0e, sp), a
      00AE85 0F 0D            [ 1]  936 	clr	(0x0d, sp)
                                    937 ; genIPush
      00AE87 89               [ 2]  938 	pushw	x
                                    939 ; genIPush
      00AE88 4B 02            [ 1]  940 	push	#0x02
      00AE8A 4B 00            [ 1]  941 	push	#0x00
                                    942 ; genSend
      00AE8C 1E 11            [ 2]  943 	ldw	x, (0x11, sp)
                                    944 ; genCall
      00AE8E CD BE 0E         [ 4]  945 	call	_show_str_8x12
                                    946 ;	User/menu.c: 213: mini_sprintf(buf, "%5ld", count);
                                    947 ; skipping iCode since result will be rematerialized
                                    948 ; skipping iCode since result will be rematerialized
                                    949 ; skipping iCode since result will be rematerialized
                                    950 ; skipping iCode since result will be rematerialized
                                    951 ; genIPush
      00AE91 1E 13            [ 2]  952 	ldw	x, (0x13, sp)
      00AE93 89               [ 2]  953 	pushw	x
      00AE94 1E 13            [ 2]  954 	ldw	x, (0x13, sp)
      00AE96 89               [ 2]  955 	pushw	x
                                    956 ; genIPush
      00AE97 4B E9            [ 1]  957 	push	#<(___str_0+0)
      00AE99 4B 82            [ 1]  958 	push	#((___str_0+0) >> 8)
                                    959 ; genIPush
      00AE9B 96               [ 1]  960 	ldw	x, sp
      00AE9C 1C 00 07         [ 2]  961 	addw	x, #7
      00AE9F 89               [ 2]  962 	pushw	x
                                    963 ; genCall
      00AEA0 CD 9B 24         [ 4]  964 	call	_mini_sprintf
      00AEA3 5B 08            [ 2]  965 	addw	sp, #8
                                    966 ;	User/menu.c: 214: show_str_8x12(row, 48, (uint8_t *)buf);
                                    967 ; genIPush
      00AEA5 96               [ 1]  968 	ldw	x, sp
      00AEA6 5C               [ 1]  969 	incw	x
      00AEA7 89               [ 2]  970 	pushw	x
                                    971 ; genIPush
      00AEA8 4B 30            [ 1]  972 	push	#0x30
      00AEAA 4B 00            [ 1]  973 	push	#0x00
                                    974 ; genSend
      00AEAC 1E 11            [ 2]  975 	ldw	x, (0x11, sp)
                                    976 ; genCall
      00AEAE CD BE 0E         [ 4]  977 	call	_show_str_8x12
                                    978 ;	User/menu.c: 218: mini_sprintf(buf, "%6ld", val);
                                    979 ; skipping iCode since result will be rematerialized
                                    980 ; skipping iCode since result will be rematerialized
                                    981 ; genIPush
      00AEB1 1E 17            [ 2]  982 	ldw	x, (0x17, sp)
      00AEB3 89               [ 2]  983 	pushw	x
      00AEB4 1E 17            [ 2]  984 	ldw	x, (0x17, sp)
      00AEB6 89               [ 2]  985 	pushw	x
                                    986 ; genIPush
      00AEB7 4B EE            [ 1]  987 	push	#<(___str_1+0)
      00AEB9 4B 82            [ 1]  988 	push	#((___str_1+0) >> 8)
                                    989 ; genIPush
      00AEBB 96               [ 1]  990 	ldw	x, sp
      00AEBC 1C 00 07         [ 2]  991 	addw	x, #7
      00AEBF 89               [ 2]  992 	pushw	x
                                    993 ; genCall
      00AEC0 CD 9B 24         [ 4]  994 	call	_mini_sprintf
      00AEC3 5B 08            [ 2]  995 	addw	sp, #8
                                    996 ;	User/menu.c: 219: show_str_8x12(row, 80, (uint8_t *)buf); // 88->80以留足更长数字空间
                                    997 ; genIPush
      00AEC5 96               [ 1]  998 	ldw	x, sp
      00AEC6 5C               [ 1]  999 	incw	x
      00AEC7 89               [ 2] 1000 	pushw	x
                                   1001 ; genIPush
      00AEC8 4B 50            [ 1] 1002 	push	#0x50
      00AECA 4B 00            [ 1] 1003 	push	#0x00
                                   1004 ; genSend
      00AECC 1E 11            [ 2] 1005 	ldw	x, (0x11, sp)
                                   1006 ; genCall
      00AECE CD BE 0E         [ 4] 1007 	call	_show_str_8x12
                                   1008 ; genLabel
                                   1009 ; peephole j30 removed unused label 00101$.
                                   1010 ;	User/menu.c: 220: }
                                   1011 ; genEndFunction
      00AED1 1E 0F            [ 2] 1012 	ldw	x, (15, sp)
      00AED3 5B 18            [ 2] 1013 	addw	sp, #24
      00AED5 FC               [ 2] 1014 	jp	(x)
                                   1015 ;	Total Draw_Stat_Columns function size at codegen: 5 bytes.
                                   1016 ;	User/menu.c: 223: static void Draw_Table_Header(const char* title, uint8_t page_num)
                                   1017 ; genLabel
                                   1018 ;	-----------------------------------------
                                   1019 ;	 function Draw_Table_Header
                                   1020 ;	-----------------------------------------
                                   1021 ;	Register assignment might be sub-optimal.
                                   1022 ;	Stack space usage: 5 bytes.
      00AED6                       1023 _Draw_Table_Header:
      00AED6 52 05            [ 2] 1024 	sub	sp, #5
                                   1025 ; genReceive
                                   1026 ; genReceive
      00AED8 6B 05            [ 1] 1027 	ld	(0x05, sp), a
                                   1028 ;	User/menu.c: 226: show_str_7x8(1, 1, "<");             // 左翻页角标
                                   1029 ; skipping iCode since result will be rematerialized
                                   1030 ; skipping iCode since result will be rematerialized
                                   1031 ; genIPush
      00AEDA 89               [ 2] 1032 	pushw	x
      00AEDB 4B F3            [ 1] 1033 	push	#<(___str_2+0)
      00AEDD 4B 82            [ 1] 1034 	push	#((___str_2+0) >> 8)
                                   1035 ; genIPush
      00AEDF 4B 01            [ 1] 1036 	push	#0x01
      00AEE1 4B 00            [ 1] 1037 	push	#0x00
                                   1038 ; genSend
      00AEE3 5F               [ 1] 1039 	clrw	x
      00AEE4 5C               [ 1] 1040 	incw	x
                                   1041 ; genCall
      00AEE5 CD BE C6         [ 4] 1042 	call	_show_str_7x8
                                   1043 ;	User/menu.c: 227: show_str_7x8(1, 10, (uint8_t *)title); // 标题
                                   1044 ; genIPush
                                   1045 ; peephole 6a removed dead popw / pushw pair.
                                   1046 ; genIPush
      00AEE8 4B 0A            [ 1] 1047 	push	#0x0a
      00AEEA 4B 00            [ 1] 1048 	push	#0x00
                                   1049 ; genSend
      00AEEC 5F               [ 1] 1050 	clrw	x
      00AEED 5C               [ 1] 1051 	incw	x
                                   1052 ; genCall
      00AEEE CD BE C6         [ 4] 1053 	call	_show_str_7x8
                                   1054 ;	User/menu.c: 228: show_str_7x8(1, 120, ">");           // 右翻页角标
                                   1055 ; skipping iCode since result will be rematerialized
                                   1056 ; skipping iCode since result will be rematerialized
                                   1057 ; genIPush
      00AEF1 4B F5            [ 1] 1058 	push	#<(___str_3+0)
      00AEF3 4B 82            [ 1] 1059 	push	#((___str_3+0) >> 8)
                                   1060 ; genIPush
      00AEF5 4B 78            [ 1] 1061 	push	#0x78
      00AEF7 4B 00            [ 1] 1062 	push	#0x00
                                   1063 ; genSend
      00AEF9 5F               [ 1] 1064 	clrw	x
      00AEFA 5C               [ 1] 1065 	incw	x
                                   1066 ; genCall
      00AEFB CD BE C6         [ 4] 1067 	call	_show_str_7x8
                                   1068 ;	User/menu.c: 232: uint8_t buf[4] = {'0', '/', '8', 0};
                                   1069 ; genAddrOf
      00AEFE 96               [ 1] 1070 	ldw	x, sp
      00AEFF 5C               [ 1] 1071 	incw	x
                                   1072 ; genPointerSet
      00AF00 A6 30            [ 1] 1073 	ld	a, #0x30
      00AF02 F7               [ 1] 1074 	ld	(x), a
                                   1075 ; skipping iCode since result will be rematerialized
                                   1076 ; genPointerSet
      00AF03 A6 2F            [ 1] 1077 	ld	a, #0x2f
      00AF05 6B 02            [ 1] 1078 	ld	(0x02, sp), a
                                   1079 ; skipping iCode since result will be rematerialized
                                   1080 ; genPointerSet
      00AF07 A6 38            [ 1] 1081 	ld	a, #0x38
      00AF09 6B 03            [ 1] 1082 	ld	(0x03, sp), a
                                   1083 ; skipping iCode since result will be rematerialized
                                   1084 ; genPointerSet
      00AF0B 0F 04            [ 1] 1085 	clr	(0x04, sp)
                                   1086 ;	User/menu.c: 233: buf[0] = '0' + page_num;
                                   1087 ; genCast
                                   1088 ; genAssign
      00AF0D 7B 05            [ 1] 1089 	ld	a, (0x05, sp)
                                   1090 ; genPlus
      00AF0F AB 30            [ 1] 1091 	add	a, #0x30
                                   1092 ; genPointerSet
      00AF11 F7               [ 1] 1093 	ld	(x), a
                                   1094 ;	User/menu.c: 234: show_str_7x8(1, 95, buf);
                                   1095 ; genCast
                                   1096 ; genAssign
                                   1097 ; genIPush
      00AF12 89               [ 2] 1098 	pushw	x
                                   1099 ; genIPush
      00AF13 4B 5F            [ 1] 1100 	push	#0x5f
      00AF15 4B 00            [ 1] 1101 	push	#0x00
                                   1102 ; genSend
      00AF17 5F               [ 1] 1103 	clrw	x
      00AF18 5C               [ 1] 1104 	incw	x
                                   1105 ; genCall
      00AF19 CD BE C6         [ 4] 1106 	call	_show_str_7x8
                                   1107 ;	User/menu.c: 240: show_str_7x8(2, 2,  "PHASE");
                                   1108 ; skipping iCode since result will be rematerialized
                                   1109 ; skipping iCode since result will be rematerialized
                                   1110 ; genIPush
      00AF1C 4B F7            [ 1] 1111 	push	#<(___str_4+0)
      00AF1E 4B 82            [ 1] 1112 	push	#((___str_4+0) >> 8)
                                   1113 ; genIPush
      00AF20 4B 02            [ 1] 1114 	push	#0x02
      00AF22 4B 00            [ 1] 1115 	push	#0x00
                                   1116 ; genSend
      00AF24 AE 00 02         [ 2] 1117 	ldw	x, #0x0002
                                   1118 ; genCall
      00AF27 CD BE C6         [ 4] 1119 	call	_show_str_7x8
                                   1120 ;	User/menu.c: 241: show_str_7x8(2, 54, "TIMES");
                                   1121 ; skipping iCode since result will be rematerialized
                                   1122 ; skipping iCode since result will be rematerialized
                                   1123 ; genIPush
      00AF2A 4B FD            [ 1] 1124 	push	#<(___str_5+0)
      00AF2C 4B 82            [ 1] 1125 	push	#((___str_5+0) >> 8)
                                   1126 ; genIPush
      00AF2E 4B 36            [ 1] 1127 	push	#0x36
      00AF30 4B 00            [ 1] 1128 	push	#0x00
                                   1129 ; genSend
      00AF32 AE 00 02         [ 2] 1130 	ldw	x, #0x0002
                                   1131 ; genCall
      00AF35 CD BE C6         [ 4] 1132 	call	_show_str_7x8
                                   1133 ;	User/menu.c: 242: show_str_7x8(2, 94, "MAX_uS");
                                   1134 ; skipping iCode since result will be rematerialized
                                   1135 ; skipping iCode since result will be rematerialized
                                   1136 ; genIPush
      00AF38 4B 03            [ 1] 1137 	push	#<(___str_6+0)
      00AF3A 4B 83            [ 1] 1138 	push	#((___str_6+0) >> 8)
                                   1139 ; genIPush
      00AF3C 4B 5E            [ 1] 1140 	push	#0x5e
      00AF3E 4B 00            [ 1] 1141 	push	#0x00
                                   1142 ; genSend
      00AF40 AE 00 02         [ 2] 1143 	ldw	x, #0x0002
                                   1144 ; genCall
      00AF43 CD BE C6         [ 4] 1145 	call	_show_str_7x8
                                   1146 ; genLabel
                                   1147 ; peephole j30 removed unused label 00101$.
                                   1148 ;	User/menu.c: 243: }
                                   1149 ; genEndFunction
      00AF46 5B 05            [ 2] 1150 	addw	sp, #5
      00AF48 81               [ 4] 1151 	ret
                                   1152 ;	Total Draw_Table_Header function size at codegen: 3 bytes.
                                   1153 ;	User/menu.c: 248: static void Draw_Page_Num(uint8_t page)
                                   1154 ; genLabel
                                   1155 ;	-----------------------------------------
                                   1156 ;	 function Draw_Page_Num
                                   1157 ;	-----------------------------------------
                                   1158 ;	Register assignment might be sub-optimal.
                                   1159 ;	Stack space usage: 4 bytes.
      00AF49                       1160 _Draw_Page_Num:
      00AF49 52 04            [ 2] 1161 	sub	sp, #4
                                   1162 ; genReceive
      00AF4B 90 97            [ 1] 1163 	ld	yl, a
                                   1164 ;	User/menu.c: 250: uint8_t buf[4] = {'0', '/', '8', 0};
                                   1165 ; genAddrOf
      00AF4D 96               [ 1] 1166 	ldw	x, sp
      00AF4E 5C               [ 1] 1167 	incw	x
                                   1168 ; genPointerSet
      00AF4F A6 30            [ 1] 1169 	ld	a, #0x30
      00AF51 F7               [ 1] 1170 	ld	(x), a
                                   1171 ; skipping iCode since result will be rematerialized
                                   1172 ; genPointerSet
      00AF52 A6 2F            [ 1] 1173 	ld	a, #0x2f
      00AF54 6B 02            [ 1] 1174 	ld	(0x02, sp), a
                                   1175 ; skipping iCode since result will be rematerialized
                                   1176 ; genPointerSet
      00AF56 A6 38            [ 1] 1177 	ld	a, #0x38
      00AF58 6B 03            [ 1] 1178 	ld	(0x03, sp), a
                                   1179 ; skipping iCode since result will be rematerialized
                                   1180 ; genPointerSet
      00AF5A 0F 04            [ 1] 1181 	clr	(0x04, sp)
                                   1182 ;	User/menu.c: 251: buf[0] = '0' + page;
                                   1183 ; genCast
                                   1184 ; genAssign
      00AF5C 90 9F            [ 1] 1185 	ld	a, yl
                                   1186 ; genPlus
      00AF5E AB 30            [ 1] 1187 	add	a, #0x30
                                   1188 ; genPointerSet
      00AF60 F7               [ 1] 1189 	ld	(x), a
                                   1190 ;	User/menu.c: 252: show_str_7x8(1, 80, buf);
                                   1191 ; genCast
                                   1192 ; genAssign
                                   1193 ; genIPush
      00AF61 89               [ 2] 1194 	pushw	x
                                   1195 ; genIPush
      00AF62 4B 50            [ 1] 1196 	push	#0x50
      00AF64 4B 00            [ 1] 1197 	push	#0x00
                                   1198 ; genSend
      00AF66 5F               [ 1] 1199 	clrw	x
      00AF67 5C               [ 1] 1200 	incw	x
                                   1201 ; genCall
      00AF68 CD BE C6         [ 4] 1202 	call	_show_str_7x8
                                   1203 ; genLabel
                                   1204 ; peephole j30 removed unused label 00101$.
                                   1205 ;	User/menu.c: 253: }
                                   1206 ; genEndFunction
      00AF6B 5B 04            [ 2] 1207 	addw	sp, #4
      00AF6D 81               [ 4] 1208 	ret
                                   1209 ;	Total Draw_Page_Num function size at codegen: 3 bytes.
                                   1210 ;	User/menu.c: 256: void DspOne(void)
                                   1211 ; genLabel
                                   1212 ;	-----------------------------------------
                                   1213 ;	 function DspOne
                                   1214 ;	-----------------------------------------
                                   1215 ;	Register assignment might be sub-optimal.
                                   1216 ;	Stack space usage: 8 bytes.
      00AF6E                       1217 _DspOne:
      00AF6E 52 08            [ 2] 1218 	sub	sp, #8
                                   1219 ;	User/menu.c: 258: show_str_8x12(1,1,"<");
                                   1220 ; skipping iCode since result will be rematerialized
                                   1221 ; skipping iCode since result will be rematerialized
                                   1222 ; genIPush
      00AF70 4B F3            [ 1] 1223 	push	#<(___str_2+0)
      00AF72 4B 82            [ 1] 1224 	push	#((___str_2+0) >> 8)
                                   1225 ; genIPush
      00AF74 4B 01            [ 1] 1226 	push	#0x01
      00AF76 4B 00            [ 1] 1227 	push	#0x00
                                   1228 ; genSend
      00AF78 5F               [ 1] 1229 	clrw	x
      00AF79 5C               [ 1] 1230 	incw	x
                                   1231 ; genCall
      00AF7A CD BE 0E         [ 4] 1232 	call	_show_str_8x12
                                   1233 ;	User/menu.c: 259: if(adjustdt.dt[11])
                                   1234 ; skipping iCode since result will be rematerialized
                                   1235 ; genPointerGet
                                   1236 ; genIfx
      00AF7D C6 05 4A         [ 1] 1237 	ld	a, _adjustdt+12
                                   1238 ; peephole 30 removed redundant tnz.
                                   1239 ; peephole j5 changed absolute to relative unconditional jump.
      00AF80 27 1C            [ 1] 1240 	jreq	00102$
                                   1241 ; peephole j10 removed jra by using inverse jump logic
                                   1242 ; peephole j30 removed unused label 00113$.
                                   1243 ;	User/menu.c: 261: show_hz_12x12(1,14,"MO");
                                   1244 ; skipping iCode since result will be rematerialized
                                   1245 ; skipping iCode since result will be rematerialized
                                   1246 ; genIPush
      00AF82 4B 0A            [ 1] 1247 	push	#<(___str_7+0)
      00AF84 4B 83            [ 1] 1248 	push	#((___str_7+0) >> 8)
                                   1249 ; genIPush
      00AF86 4B 0E            [ 1] 1250 	push	#0x0e
      00AF88 4B 00            [ 1] 1251 	push	#0x00
                                   1252 ; genSend
      00AF8A 5F               [ 1] 1253 	clrw	x
      00AF8B 5C               [ 1] 1254 	incw	x
                                   1255 ; genCall
      00AF8C CD BF 49         [ 4] 1256 	call	_show_hz_12x12
                                   1257 ;	User/menu.c: 262: show_hz_12x12(1,44,"UW]_");
                                   1258 ; skipping iCode since result will be rematerialized
                                   1259 ; skipping iCode since result will be rematerialized
                                   1260 ; genIPush
      00AF8F 4B 0D            [ 1] 1261 	push	#<(___str_8+0)
      00AF91 4B 83            [ 1] 1262 	push	#((___str_8+0) >> 8)
                                   1263 ; genIPush
      00AF93 4B 2C            [ 1] 1264 	push	#0x2c
      00AF95 4B 00            [ 1] 1265 	push	#0x00
                                   1266 ; genSend
      00AF97 5F               [ 1] 1267 	clrw	x
      00AF98 5C               [ 1] 1268 	incw	x
                                   1269 ; genCall
      00AF99 CD BF 49         [ 4] 1270 	call	_show_hz_12x12
                                   1271 ; genGoto
      00AF9C 20 0D            [ 2] 1272 	jra	00103$
                                   1273 ; peephole j5 changed absolute to relative unconditional jump.
                                   1274 ; genLabel
      00AF9E                       1275 00102$:
                                   1276 ;	User/menu.c: 265: show_str_7x8(1,26,"_SINGLE_L");
                                   1277 ; skipping iCode since result will be rematerialized
                                   1278 ; skipping iCode since result will be rematerialized
                                   1279 ; genIPush
      00AF9E 4B 12            [ 1] 1280 	push	#<(___str_9+0)
      00AFA0 4B 83            [ 1] 1281 	push	#((___str_9+0) >> 8)
                                   1282 ; genIPush
      00AFA2 4B 1A            [ 1] 1283 	push	#0x1a
      00AFA4 4B 00            [ 1] 1284 	push	#0x00
                                   1285 ; genSend
      00AFA6 5F               [ 1] 1286 	clrw	x
      00AFA7 5C               [ 1] 1287 	incw	x
                                   1288 ; genCall
      00AFA8 CD BE C6         [ 4] 1289 	call	_show_str_7x8
                                   1290 ; genLabel
      00AFAB                       1291 00103$:
                                   1292 ;	User/menu.c: 266: show_str_8x12(1,120,">");
                                   1293 ; skipping iCode since result will be rematerialized
                                   1294 ; skipping iCode since result will be rematerialized
                                   1295 ; genIPush
      00AFAB 4B F5            [ 1] 1296 	push	#<(___str_3+0)
      00AFAD 4B 82            [ 1] 1297 	push	#((___str_3+0) >> 8)
                                   1298 ; genIPush
      00AFAF 4B 78            [ 1] 1299 	push	#0x78
      00AFB1 4B 00            [ 1] 1300 	push	#0x00
                                   1301 ; genSend
      00AFB3 5F               [ 1] 1302 	clrw	x
      00AFB4 5C               [ 1] 1303 	incw	x
                                   1304 ; genCall
      00AFB5 CD BE 0E         [ 4] 1305 	call	_show_str_8x12
                                   1306 ;	User/menu.c: 268: Draw_Stat_Columns(3, "A-D", Record_GetStat(A)->tscount, Record_GetStat(A)->tlmax);
                                   1307 ; genSend
      00AFB8 A6 01            [ 1] 1308 	ld	a, #0x01
                                   1309 ; genCall
      00AFBA CD 9C 58         [ 4] 1310 	call	_Record_GetStat
                                   1311 ; genAssign
                                   1312 ; genPointerGet
      00AFBD 90 93            [ 1] 1313 	ldw	y, x
      00AFBF 90 EE 04         [ 2] 1314 	ldw	y, (0x4, y)
      00AFC2 17 03            [ 2] 1315 	ldw	(0x03, sp), y
      00AFC4 EE 02            [ 2] 1316 	ldw	x, (0x2, x)
      00AFC6 1F 01            [ 2] 1317 	ldw	(0x01, sp), x
                                   1318 ; genSend
      00AFC8 A6 01            [ 1] 1319 	ld	a, #0x01
                                   1320 ; genCall
      00AFCA CD 9C 58         [ 4] 1321 	call	_Record_GetStat
                                   1322 ; genPointerGet
      00AFCD FE               [ 2] 1323 	ldw	x, (x)
                                   1324 ; genCast
                                   1325 ; genAssign
      00AFCE 1F 07            [ 2] 1326 	ldw	(0x07, sp), x
      00AFD0 90 5F            [ 1] 1327 	clrw	y
                                   1328 ; skipping iCode since result will be rematerialized
                                   1329 ; skipping iCode since result will be rematerialized
                                   1330 ; genIPush
      00AFD2 1E 03            [ 2] 1331 	ldw	x, (0x03, sp)
      00AFD4 89               [ 2] 1332 	pushw	x
      00AFD5 1E 03            [ 2] 1333 	ldw	x, (0x03, sp)
      00AFD7 89               [ 2] 1334 	pushw	x
                                   1335 ; genIPush
      00AFD8 1E 0B            [ 2] 1336 	ldw	x, (0x0b, sp)
      00AFDA 89               [ 2] 1337 	pushw	x
      00AFDB 90 89            [ 2] 1338 	pushw	y
                                   1339 ; genSend
      00AFDD AE 83 1C         [ 2] 1340 	ldw	x, #(___str_10+0)
                                   1341 ; genSend
      00AFE0 A6 03            [ 1] 1342 	ld	a, #0x03
                                   1343 ; genCall
      00AFE2 CD AE 81         [ 4] 1344 	call	_Draw_Stat_Columns
                                   1345 ;	User/menu.c: 269: Draw_Stat_Columns(5, "B-D", Record_GetStat(B)->tscount, Record_GetStat(B)->tlmax);
                                   1346 ; genSend
      00AFE5 A6 02            [ 1] 1347 	ld	a, #0x02
                                   1348 ; genCall
      00AFE7 CD 9C 58         [ 4] 1349 	call	_Record_GetStat
                                   1350 ; genAssign
                                   1351 ; genPointerGet
      00AFEA 90 93            [ 1] 1352 	ldw	y, x
      00AFEC 90 EE 04         [ 2] 1353 	ldw	y, (0x4, y)
      00AFEF 17 03            [ 2] 1354 	ldw	(0x03, sp), y
      00AFF1 EE 02            [ 2] 1355 	ldw	x, (0x2, x)
      00AFF3 1F 01            [ 2] 1356 	ldw	(0x01, sp), x
                                   1357 ; genSend
      00AFF5 A6 02            [ 1] 1358 	ld	a, #0x02
                                   1359 ; genCall
      00AFF7 CD 9C 58         [ 4] 1360 	call	_Record_GetStat
                                   1361 ; genPointerGet
      00AFFA FE               [ 2] 1362 	ldw	x, (x)
                                   1363 ; genCast
                                   1364 ; genAssign
      00AFFB 1F 07            [ 2] 1365 	ldw	(0x07, sp), x
      00AFFD 90 5F            [ 1] 1366 	clrw	y
                                   1367 ; skipping iCode since result will be rematerialized
                                   1368 ; skipping iCode since result will be rematerialized
                                   1369 ; genIPush
      00AFFF 1E 03            [ 2] 1370 	ldw	x, (0x03, sp)
      00B001 89               [ 2] 1371 	pushw	x
      00B002 1E 03            [ 2] 1372 	ldw	x, (0x03, sp)
      00B004 89               [ 2] 1373 	pushw	x
                                   1374 ; genIPush
      00B005 1E 0B            [ 2] 1375 	ldw	x, (0x0b, sp)
      00B007 89               [ 2] 1376 	pushw	x
      00B008 90 89            [ 2] 1377 	pushw	y
                                   1378 ; genSend
      00B00A AE 83 20         [ 2] 1379 	ldw	x, #(___str_11+0)
                                   1380 ; genSend
      00B00D A6 05            [ 1] 1381 	ld	a, #0x05
                                   1382 ; genCall
      00B00F CD AE 81         [ 4] 1383 	call	_Draw_Stat_Columns
                                   1384 ;	User/menu.c: 270: Draw_Stat_Columns(7, "C-D", Record_GetStat(C)->tscount, Record_GetStat(C)->tlmax);
                                   1385 ; genSend
      00B012 A6 04            [ 1] 1386 	ld	a, #0x04
                                   1387 ; genCall
      00B014 CD 9C 58         [ 4] 1388 	call	_Record_GetStat
                                   1389 ; genAssign
                                   1390 ; genPointerGet
      00B017 90 93            [ 1] 1391 	ldw	y, x
      00B019 90 EE 04         [ 2] 1392 	ldw	y, (0x4, y)
      00B01C 17 03            [ 2] 1393 	ldw	(0x03, sp), y
      00B01E EE 02            [ 2] 1394 	ldw	x, (0x2, x)
      00B020 1F 01            [ 2] 1395 	ldw	(0x01, sp), x
                                   1396 ; genSend
      00B022 A6 04            [ 1] 1397 	ld	a, #0x04
                                   1398 ; genCall
      00B024 CD 9C 58         [ 4] 1399 	call	_Record_GetStat
                                   1400 ; genPointerGet
      00B027 FE               [ 2] 1401 	ldw	x, (x)
                                   1402 ; genCast
                                   1403 ; genAssign
      00B028 1F 07            [ 2] 1404 	ldw	(0x07, sp), x
      00B02A 90 5F            [ 1] 1405 	clrw	y
                                   1406 ; skipping iCode since result will be rematerialized
                                   1407 ; skipping iCode since result will be rematerialized
                                   1408 ; genIPush
      00B02C 1E 03            [ 2] 1409 	ldw	x, (0x03, sp)
      00B02E 89               [ 2] 1410 	pushw	x
      00B02F 1E 03            [ 2] 1411 	ldw	x, (0x03, sp)
      00B031 89               [ 2] 1412 	pushw	x
                                   1413 ; genIPush
      00B032 1E 0B            [ 2] 1414 	ldw	x, (0x0b, sp)
      00B034 89               [ 2] 1415 	pushw	x
      00B035 90 89            [ 2] 1416 	pushw	y
                                   1417 ; genSend
      00B037 AE 83 24         [ 2] 1418 	ldw	x, #(___str_12+0)
                                   1419 ; genSend
      00B03A A6 07            [ 1] 1420 	ld	a, #0x07
                                   1421 ; genCall
      00B03C CD AE 81         [ 4] 1422 	call	_Draw_Stat_Columns
                                   1423 ; genLabel
                                   1424 ; peephole j30 removed unused label 00104$.
                                   1425 ;	User/menu.c: 271: }
                                   1426 ; genEndFunction
      00B03F 5B 08            [ 2] 1427 	addw	sp, #8
      00B041 81               [ 4] 1428 	ret
                                   1429 ;	Total DspOne function size at codegen: 3 bytes.
                                   1430 ;	User/menu.c: 274: void DspOne_Plus(void)
                                   1431 ; genLabel
                                   1432 ;	-----------------------------------------
                                   1433 ;	 function DspOne_Plus
                                   1434 ;	-----------------------------------------
                                   1435 ;	Register assignment might be sub-optimal.
                                   1436 ;	Stack space usage: 8 bytes.
      00B042                       1437 _DspOne_Plus:
      00B042 52 08            [ 2] 1438 	sub	sp, #8
                                   1439 ;	User/menu.c: 276: show_str_8x12(1,1,"<");
                                   1440 ; skipping iCode since result will be rematerialized
                                   1441 ; skipping iCode since result will be rematerialized
                                   1442 ; genIPush
      00B044 4B F3            [ 1] 1443 	push	#<(___str_2+0)
      00B046 4B 82            [ 1] 1444 	push	#((___str_2+0) >> 8)
                                   1445 ; genIPush
      00B048 4B 01            [ 1] 1446 	push	#0x01
      00B04A 4B 00            [ 1] 1447 	push	#0x00
                                   1448 ; genSend
      00B04C 5F               [ 1] 1449 	clrw	x
      00B04D 5C               [ 1] 1450 	incw	x
                                   1451 ; genCall
      00B04E CD BE 0E         [ 4] 1452 	call	_show_str_8x12
                                   1453 ;	User/menu.c: 277: if(adjustdt.dt[11])
                                   1454 ; skipping iCode since result will be rematerialized
                                   1455 ; genPointerGet
                                   1456 ; genIfx
      00B051 C6 05 4A         [ 1] 1457 	ld	a, _adjustdt+12
                                   1458 ; peephole 30 removed redundant tnz.
                                   1459 ; peephole j5 changed absolute to relative unconditional jump.
      00B054 27 1C            [ 1] 1460 	jreq	00102$
                                   1461 ; peephole j10 removed jra by using inverse jump logic
                                   1462 ; peephole j30 removed unused label 00113$.
                                   1463 ;	User/menu.c: 279: show_hz_12x12(1,14,"MO");
                                   1464 ; skipping iCode since result will be rematerialized
                                   1465 ; skipping iCode since result will be rematerialized
                                   1466 ; genIPush
      00B056 4B 0A            [ 1] 1467 	push	#<(___str_7+0)
      00B058 4B 83            [ 1] 1468 	push	#((___str_7+0) >> 8)
                                   1469 ; genIPush
      00B05A 4B 0E            [ 1] 1470 	push	#0x0e
      00B05C 4B 00            [ 1] 1471 	push	#0x00
                                   1472 ; genSend
      00B05E 5F               [ 1] 1473 	clrw	x
      00B05F 5C               [ 1] 1474 	incw	x
                                   1475 ; genCall
      00B060 CD BF 49         [ 4] 1476 	call	_show_hz_12x12
                                   1477 ;	User/menu.c: 280: show_hz_12x12(1,44,"UW]_");
                                   1478 ; skipping iCode since result will be rematerialized
                                   1479 ; skipping iCode since result will be rematerialized
                                   1480 ; genIPush
      00B063 4B 0D            [ 1] 1481 	push	#<(___str_8+0)
      00B065 4B 83            [ 1] 1482 	push	#((___str_8+0) >> 8)
                                   1483 ; genIPush
      00B067 4B 2C            [ 1] 1484 	push	#0x2c
      00B069 4B 00            [ 1] 1485 	push	#0x00
                                   1486 ; genSend
      00B06B 5F               [ 1] 1487 	clrw	x
      00B06C 5C               [ 1] 1488 	incw	x
                                   1489 ; genCall
      00B06D CD BF 49         [ 4] 1490 	call	_show_hz_12x12
                                   1491 ; genGoto
      00B070 20 0D            [ 2] 1492 	jra	00103$
                                   1493 ; peephole j5 changed absolute to relative unconditional jump.
                                   1494 ; genLabel
      00B072                       1495 00102$:
                                   1496 ;	User/menu.c: 283: show_str_7x8(1,26,"_SINGLE_L");
                                   1497 ; skipping iCode since result will be rematerialized
                                   1498 ; skipping iCode since result will be rematerialized
                                   1499 ; genIPush
      00B072 4B 12            [ 1] 1500 	push	#<(___str_9+0)
      00B074 4B 83            [ 1] 1501 	push	#((___str_9+0) >> 8)
                                   1502 ; genIPush
      00B076 4B 1A            [ 1] 1503 	push	#0x1a
      00B078 4B 00            [ 1] 1504 	push	#0x00
                                   1505 ; genSend
      00B07A 5F               [ 1] 1506 	clrw	x
      00B07B 5C               [ 1] 1507 	incw	x
                                   1508 ; genCall
      00B07C CD BE C6         [ 4] 1509 	call	_show_str_7x8
                                   1510 ; genLabel
      00B07F                       1511 00103$:
                                   1512 ;	User/menu.c: 284: show_str_8x12(1,120,">");
                                   1513 ; skipping iCode since result will be rematerialized
                                   1514 ; skipping iCode since result will be rematerialized
                                   1515 ; genIPush
      00B07F 4B F5            [ 1] 1516 	push	#<(___str_3+0)
      00B081 4B 82            [ 1] 1517 	push	#((___str_3+0) >> 8)
                                   1518 ; genIPush
      00B083 4B 78            [ 1] 1519 	push	#0x78
      00B085 4B 00            [ 1] 1520 	push	#0x00
                                   1521 ; genSend
      00B087 5F               [ 1] 1522 	clrw	x
      00B088 5C               [ 1] 1523 	incw	x
                                   1524 ; genCall
      00B089 CD BE 0E         [ 4] 1525 	call	_show_str_8x12
                                   1526 ;	User/menu.c: 286: Draw_Stat_Columns(3, "A-B", Record_GetStat(AB)->tscount, Record_GetStat(AB)->tlmax);
                                   1527 ; genSend
      00B08C A6 03            [ 1] 1528 	ld	a, #0x03
                                   1529 ; genCall
      00B08E CD 9C 58         [ 4] 1530 	call	_Record_GetStat
                                   1531 ; genAssign
                                   1532 ; genPointerGet
      00B091 90 93            [ 1] 1533 	ldw	y, x
      00B093 90 EE 04         [ 2] 1534 	ldw	y, (0x4, y)
      00B096 17 03            [ 2] 1535 	ldw	(0x03, sp), y
      00B098 EE 02            [ 2] 1536 	ldw	x, (0x2, x)
      00B09A 1F 01            [ 2] 1537 	ldw	(0x01, sp), x
                                   1538 ; genSend
      00B09C A6 03            [ 1] 1539 	ld	a, #0x03
                                   1540 ; genCall
      00B09E CD 9C 58         [ 4] 1541 	call	_Record_GetStat
                                   1542 ; genPointerGet
      00B0A1 FE               [ 2] 1543 	ldw	x, (x)
                                   1544 ; genCast
                                   1545 ; genAssign
      00B0A2 1F 07            [ 2] 1546 	ldw	(0x07, sp), x
      00B0A4 90 5F            [ 1] 1547 	clrw	y
                                   1548 ; skipping iCode since result will be rematerialized
                                   1549 ; skipping iCode since result will be rematerialized
                                   1550 ; genIPush
      00B0A6 1E 03            [ 2] 1551 	ldw	x, (0x03, sp)
      00B0A8 89               [ 2] 1552 	pushw	x
      00B0A9 1E 03            [ 2] 1553 	ldw	x, (0x03, sp)
      00B0AB 89               [ 2] 1554 	pushw	x
                                   1555 ; genIPush
      00B0AC 1E 0B            [ 2] 1556 	ldw	x, (0x0b, sp)
      00B0AE 89               [ 2] 1557 	pushw	x
      00B0AF 90 89            [ 2] 1558 	pushw	y
                                   1559 ; genSend
      00B0B1 AE 83 28         [ 2] 1560 	ldw	x, #(___str_13+0)
                                   1561 ; genSend
      00B0B4 A6 03            [ 1] 1562 	ld	a, #0x03
                                   1563 ; genCall
      00B0B6 CD AE 81         [ 4] 1564 	call	_Draw_Stat_Columns
                                   1565 ;	User/menu.c: 287: Draw_Stat_Columns(5, "A-C", Record_GetStat(AC)->tscount, Record_GetStat(AC)->tlmax);
                                   1566 ; genSend
      00B0B9 A6 05            [ 1] 1567 	ld	a, #0x05
                                   1568 ; genCall
      00B0BB CD 9C 58         [ 4] 1569 	call	_Record_GetStat
                                   1570 ; genAssign
                                   1571 ; genPointerGet
      00B0BE 90 93            [ 1] 1572 	ldw	y, x
      00B0C0 90 EE 04         [ 2] 1573 	ldw	y, (0x4, y)
      00B0C3 17 03            [ 2] 1574 	ldw	(0x03, sp), y
      00B0C5 EE 02            [ 2] 1575 	ldw	x, (0x2, x)
      00B0C7 1F 01            [ 2] 1576 	ldw	(0x01, sp), x
                                   1577 ; genSend
      00B0C9 A6 05            [ 1] 1578 	ld	a, #0x05
                                   1579 ; genCall
      00B0CB CD 9C 58         [ 4] 1580 	call	_Record_GetStat
                                   1581 ; genPointerGet
      00B0CE FE               [ 2] 1582 	ldw	x, (x)
                                   1583 ; genCast
                                   1584 ; genAssign
      00B0CF 1F 07            [ 2] 1585 	ldw	(0x07, sp), x
      00B0D1 90 5F            [ 1] 1586 	clrw	y
                                   1587 ; skipping iCode since result will be rematerialized
                                   1588 ; skipping iCode since result will be rematerialized
                                   1589 ; genIPush
      00B0D3 1E 03            [ 2] 1590 	ldw	x, (0x03, sp)
      00B0D5 89               [ 2] 1591 	pushw	x
      00B0D6 1E 03            [ 2] 1592 	ldw	x, (0x03, sp)
      00B0D8 89               [ 2] 1593 	pushw	x
                                   1594 ; genIPush
      00B0D9 1E 0B            [ 2] 1595 	ldw	x, (0x0b, sp)
      00B0DB 89               [ 2] 1596 	pushw	x
      00B0DC 90 89            [ 2] 1597 	pushw	y
                                   1598 ; genSend
      00B0DE AE 83 2C         [ 2] 1599 	ldw	x, #(___str_14+0)
                                   1600 ; genSend
      00B0E1 A6 05            [ 1] 1601 	ld	a, #0x05
                                   1602 ; genCall
      00B0E3 CD AE 81         [ 4] 1603 	call	_Draw_Stat_Columns
                                   1604 ;	User/menu.c: 288: Draw_Stat_Columns(7, "B-C", Record_GetStat(BC)->tscount, Record_GetStat(BC)->tlmax);
                                   1605 ; genSend
      00B0E6 A6 06            [ 1] 1606 	ld	a, #0x06
                                   1607 ; genCall
      00B0E8 CD 9C 58         [ 4] 1608 	call	_Record_GetStat
                                   1609 ; genAssign
                                   1610 ; genPointerGet
      00B0EB 90 93            [ 1] 1611 	ldw	y, x
      00B0ED 90 EE 04         [ 2] 1612 	ldw	y, (0x4, y)
      00B0F0 17 03            [ 2] 1613 	ldw	(0x03, sp), y
      00B0F2 EE 02            [ 2] 1614 	ldw	x, (0x2, x)
      00B0F4 1F 01            [ 2] 1615 	ldw	(0x01, sp), x
                                   1616 ; genSend
      00B0F6 A6 06            [ 1] 1617 	ld	a, #0x06
                                   1618 ; genCall
      00B0F8 CD 9C 58         [ 4] 1619 	call	_Record_GetStat
                                   1620 ; genPointerGet
      00B0FB FE               [ 2] 1621 	ldw	x, (x)
                                   1622 ; genCast
                                   1623 ; genAssign
      00B0FC 1F 07            [ 2] 1624 	ldw	(0x07, sp), x
      00B0FE 90 5F            [ 1] 1625 	clrw	y
                                   1626 ; skipping iCode since result will be rematerialized
                                   1627 ; skipping iCode since result will be rematerialized
                                   1628 ; genIPush
      00B100 1E 03            [ 2] 1629 	ldw	x, (0x03, sp)
      00B102 89               [ 2] 1630 	pushw	x
      00B103 1E 03            [ 2] 1631 	ldw	x, (0x03, sp)
      00B105 89               [ 2] 1632 	pushw	x
                                   1633 ; genIPush
      00B106 1E 0B            [ 2] 1634 	ldw	x, (0x0b, sp)
      00B108 89               [ 2] 1635 	pushw	x
      00B109 90 89            [ 2] 1636 	pushw	y
                                   1637 ; genSend
      00B10B AE 83 30         [ 2] 1638 	ldw	x, #(___str_15+0)
                                   1639 ; genSend
      00B10E A6 07            [ 1] 1640 	ld	a, #0x07
                                   1641 ; genCall
      00B110 CD AE 81         [ 4] 1642 	call	_Draw_Stat_Columns
                                   1643 ; genLabel
                                   1644 ; peephole j30 removed unused label 00104$.
                                   1645 ;	User/menu.c: 289: }
                                   1646 ; genEndFunction
      00B113 5B 08            [ 2] 1647 	addw	sp, #8
      00B115 81               [ 4] 1648 	ret
                                   1649 ;	Total DspOne_Plus function size at codegen: 3 bytes.
                                   1650 ;	User/menu.c: 293: void DspTwo(void)
                                   1651 ; genLabel
                                   1652 ;	-----------------------------------------
                                   1653 ;	 function DspTwo
                                   1654 ;	-----------------------------------------
                                   1655 ;	Register assignment might be sub-optimal.
                                   1656 ;	Stack space usage: 8 bytes.
      00B116                       1657 _DspTwo:
      00B116 52 08            [ 2] 1658 	sub	sp, #8
                                   1659 ;	User/menu.c: 295: show_str_8x12(1,1,"<");
                                   1660 ; skipping iCode since result will be rematerialized
                                   1661 ; skipping iCode since result will be rematerialized
                                   1662 ; genIPush
      00B118 4B F3            [ 1] 1663 	push	#<(___str_2+0)
      00B11A 4B 82            [ 1] 1664 	push	#((___str_2+0) >> 8)
                                   1665 ; genIPush
      00B11C 4B 01            [ 1] 1666 	push	#0x01
      00B11E 4B 00            [ 1] 1667 	push	#0x00
                                   1668 ; genSend
      00B120 5F               [ 1] 1669 	clrw	x
      00B121 5C               [ 1] 1670 	incw	x
                                   1671 ; genCall
      00B122 CD BE 0E         [ 4] 1672 	call	_show_str_8x12
                                   1673 ;	User/menu.c: 296: show_hz_12x12(1,14,"u");
                                   1674 ; skipping iCode since result will be rematerialized
                                   1675 ; skipping iCode since result will be rematerialized
                                   1676 ; genIPush
      00B125 4B 34            [ 1] 1677 	push	#<(___str_16+0)
      00B127 4B 83            [ 1] 1678 	push	#((___str_16+0) >> 8)
                                   1679 ; genIPush
      00B129 4B 0E            [ 1] 1680 	push	#0x0e
      00B12B 4B 00            [ 1] 1681 	push	#0x00
                                   1682 ; genSend
      00B12D 5F               [ 1] 1683 	clrw	x
      00B12E 5C               [ 1] 1684 	incw	x
                                   1685 ; genCall
      00B12F CD BF 49         [ 4] 1686 	call	_show_hz_12x12
                                   1687 ;	User/menu.c: 297: if(adjustdt.dt[11])
                                   1688 ; skipping iCode since result will be rematerialized
                                   1689 ; genPointerGet
                                   1690 ; genIfx
      00B132 C6 05 4A         [ 1] 1691 	ld	a, _adjustdt+12
                                   1692 ; peephole 30 removed redundant tnz.
                                   1693 ; peephole j5 changed absolute to relative unconditional jump.
      00B135 27 1C            [ 1] 1694 	jreq	00102$
                                   1695 ; peephole j10 removed jra by using inverse jump logic
                                   1696 ; peephole j30 removed unused label 00113$.
                                   1697 ;	User/menu.c: 299: show_hz_12x12(1,26,"]gM");
                                   1698 ; skipping iCode since result will be rematerialized
                                   1699 ; skipping iCode since result will be rematerialized
                                   1700 ; genIPush
      00B137 4B 36            [ 1] 1701 	push	#<(___str_17+0)
      00B139 4B 83            [ 1] 1702 	push	#((___str_17+0) >> 8)
                                   1703 ; genIPush
      00B13B 4B 1A            [ 1] 1704 	push	#0x1a
      00B13D 4B 00            [ 1] 1705 	push	#0x00
                                   1706 ; genSend
      00B13F 5F               [ 1] 1707 	clrw	x
      00B140 5C               [ 1] 1708 	incw	x
                                   1709 ; genCall
      00B141 CD BF 49         [ 4] 1710 	call	_show_hz_12x12
                                   1711 ;	User/menu.c: 300: show_hz_12x12(1,66,"eY[");
                                   1712 ; skipping iCode since result will be rematerialized
                                   1713 ; skipping iCode since result will be rematerialized
                                   1714 ; genIPush
      00B144 4B 3A            [ 1] 1715 	push	#<(___str_18+0)
      00B146 4B 83            [ 1] 1716 	push	#((___str_18+0) >> 8)
                                   1717 ; genIPush
      00B148 4B 42            [ 1] 1718 	push	#0x42
      00B14A 4B 00            [ 1] 1719 	push	#0x00
                                   1720 ; genSend
      00B14C 5F               [ 1] 1721 	clrw	x
      00B14D 5C               [ 1] 1722 	incw	x
                                   1723 ; genCall
      00B14E CD BF 49         [ 4] 1724 	call	_show_hz_12x12
                                   1725 ; genGoto
      00B151 20 0D            [ 2] 1726 	jra	00103$
                                   1727 ; peephole j5 changed absolute to relative unconditional jump.
                                   1728 ; genLabel
      00B153                       1729 00102$:
                                   1730 ;	User/menu.c: 303: show_str_7x8(1,26,"_TOTAL__L");
                                   1731 ; skipping iCode since result will be rematerialized
                                   1732 ; skipping iCode since result will be rematerialized
                                   1733 ; genIPush
      00B153 4B 3E            [ 1] 1734 	push	#<(___str_19+0)
      00B155 4B 83            [ 1] 1735 	push	#((___str_19+0) >> 8)
                                   1736 ; genIPush
      00B157 4B 1A            [ 1] 1737 	push	#0x1a
      00B159 4B 00            [ 1] 1738 	push	#0x00
                                   1739 ; genSend
      00B15B 5F               [ 1] 1740 	clrw	x
      00B15C 5C               [ 1] 1741 	incw	x
                                   1742 ; genCall
      00B15D CD BE C6         [ 4] 1743 	call	_show_str_7x8
                                   1744 ; genLabel
      00B160                       1745 00103$:
                                   1746 ;	User/menu.c: 304: show_str_8x12(1,102,"EG");
                                   1747 ; skipping iCode since result will be rematerialized
                                   1748 ; skipping iCode since result will be rematerialized
                                   1749 ; genIPush
      00B160 4B 48            [ 1] 1750 	push	#<(___str_20+0)
      00B162 4B 83            [ 1] 1751 	push	#((___str_20+0) >> 8)
                                   1752 ; genIPush
      00B164 4B 66            [ 1] 1753 	push	#0x66
      00B166 4B 00            [ 1] 1754 	push	#0x00
                                   1755 ; genSend
      00B168 5F               [ 1] 1756 	clrw	x
      00B169 5C               [ 1] 1757 	incw	x
                                   1758 ; genCall
      00B16A CD BE 0E         [ 4] 1759 	call	_show_str_8x12
                                   1760 ;	User/menu.c: 305: show_str_8x12(1,120,">");
                                   1761 ; skipping iCode since result will be rematerialized
                                   1762 ; skipping iCode since result will be rematerialized
                                   1763 ; genIPush
      00B16D 4B F5            [ 1] 1764 	push	#<(___str_3+0)
      00B16F 4B 82            [ 1] 1765 	push	#((___str_3+0) >> 8)
                                   1766 ; genIPush
      00B171 4B 78            [ 1] 1767 	push	#0x78
      00B173 4B 00            [ 1] 1768 	push	#0x00
                                   1769 ; genSend
      00B175 5F               [ 1] 1770 	clrw	x
      00B176 5C               [ 1] 1771 	incw	x
                                   1772 ; genCall
      00B177 CD BE 0E         [ 4] 1773 	call	_show_str_8x12
                                   1774 ;	User/menu.c: 307: Draw_Stat_Columns(3, "A-D", Record_GetStat(A)->tscount, Record_GetStat(A)->tltotal);
                                   1775 ; genSend
      00B17A A6 01            [ 1] 1776 	ld	a, #0x01
                                   1777 ; genCall
      00B17C CD 9C 58         [ 4] 1778 	call	_Record_GetStat
                                   1779 ; genAssign
                                   1780 ; genPointerGet
      00B17F 90 93            [ 1] 1781 	ldw	y, x
      00B181 90 EE 08         [ 2] 1782 	ldw	y, (0x8, y)
      00B184 17 03            [ 2] 1783 	ldw	(0x03, sp), y
      00B186 EE 06            [ 2] 1784 	ldw	x, (0x6, x)
      00B188 1F 01            [ 2] 1785 	ldw	(0x01, sp), x
                                   1786 ; genSend
      00B18A A6 01            [ 1] 1787 	ld	a, #0x01
                                   1788 ; genCall
      00B18C CD 9C 58         [ 4] 1789 	call	_Record_GetStat
                                   1790 ; genPointerGet
      00B18F FE               [ 2] 1791 	ldw	x, (x)
                                   1792 ; genCast
                                   1793 ; genAssign
      00B190 1F 07            [ 2] 1794 	ldw	(0x07, sp), x
      00B192 90 5F            [ 1] 1795 	clrw	y
                                   1796 ; skipping iCode since result will be rematerialized
                                   1797 ; skipping iCode since result will be rematerialized
                                   1798 ; genIPush
      00B194 1E 03            [ 2] 1799 	ldw	x, (0x03, sp)
      00B196 89               [ 2] 1800 	pushw	x
      00B197 1E 03            [ 2] 1801 	ldw	x, (0x03, sp)
      00B199 89               [ 2] 1802 	pushw	x
                                   1803 ; genIPush
      00B19A 1E 0B            [ 2] 1804 	ldw	x, (0x0b, sp)
      00B19C 89               [ 2] 1805 	pushw	x
      00B19D 90 89            [ 2] 1806 	pushw	y
                                   1807 ; genSend
      00B19F AE 83 1C         [ 2] 1808 	ldw	x, #(___str_10+0)
                                   1809 ; genSend
      00B1A2 A6 03            [ 1] 1810 	ld	a, #0x03
                                   1811 ; genCall
      00B1A4 CD AE 81         [ 4] 1812 	call	_Draw_Stat_Columns
                                   1813 ;	User/menu.c: 308: Draw_Stat_Columns(5, "B-D", Record_GetStat(B)->tscount, Record_GetStat(B)->tltotal);
                                   1814 ; genSend
      00B1A7 A6 02            [ 1] 1815 	ld	a, #0x02
                                   1816 ; genCall
      00B1A9 CD 9C 58         [ 4] 1817 	call	_Record_GetStat
                                   1818 ; genAssign
                                   1819 ; genPointerGet
      00B1AC 90 93            [ 1] 1820 	ldw	y, x
      00B1AE 90 EE 08         [ 2] 1821 	ldw	y, (0x8, y)
      00B1B1 17 03            [ 2] 1822 	ldw	(0x03, sp), y
      00B1B3 EE 06            [ 2] 1823 	ldw	x, (0x6, x)
      00B1B5 1F 01            [ 2] 1824 	ldw	(0x01, sp), x
                                   1825 ; genSend
      00B1B7 A6 02            [ 1] 1826 	ld	a, #0x02
                                   1827 ; genCall
      00B1B9 CD 9C 58         [ 4] 1828 	call	_Record_GetStat
                                   1829 ; genPointerGet
      00B1BC FE               [ 2] 1830 	ldw	x, (x)
                                   1831 ; genCast
                                   1832 ; genAssign
      00B1BD 1F 07            [ 2] 1833 	ldw	(0x07, sp), x
      00B1BF 90 5F            [ 1] 1834 	clrw	y
                                   1835 ; skipping iCode since result will be rematerialized
                                   1836 ; skipping iCode since result will be rematerialized
                                   1837 ; genIPush
      00B1C1 1E 03            [ 2] 1838 	ldw	x, (0x03, sp)
      00B1C3 89               [ 2] 1839 	pushw	x
      00B1C4 1E 03            [ 2] 1840 	ldw	x, (0x03, sp)
      00B1C6 89               [ 2] 1841 	pushw	x
                                   1842 ; genIPush
      00B1C7 1E 0B            [ 2] 1843 	ldw	x, (0x0b, sp)
      00B1C9 89               [ 2] 1844 	pushw	x
      00B1CA 90 89            [ 2] 1845 	pushw	y
                                   1846 ; genSend
      00B1CC AE 83 20         [ 2] 1847 	ldw	x, #(___str_11+0)
                                   1848 ; genSend
      00B1CF A6 05            [ 1] 1849 	ld	a, #0x05
                                   1850 ; genCall
      00B1D1 CD AE 81         [ 4] 1851 	call	_Draw_Stat_Columns
                                   1852 ;	User/menu.c: 309: Draw_Stat_Columns(7, "C-D", Record_GetStat(C)->tscount, Record_GetStat(C)->tltotal);
                                   1853 ; genSend
      00B1D4 A6 04            [ 1] 1854 	ld	a, #0x04
                                   1855 ; genCall
      00B1D6 CD 9C 58         [ 4] 1856 	call	_Record_GetStat
                                   1857 ; genAssign
                                   1858 ; genPointerGet
      00B1D9 90 93            [ 1] 1859 	ldw	y, x
      00B1DB 90 EE 08         [ 2] 1860 	ldw	y, (0x8, y)
      00B1DE 17 03            [ 2] 1861 	ldw	(0x03, sp), y
      00B1E0 EE 06            [ 2] 1862 	ldw	x, (0x6, x)
      00B1E2 1F 01            [ 2] 1863 	ldw	(0x01, sp), x
                                   1864 ; genSend
      00B1E4 A6 04            [ 1] 1865 	ld	a, #0x04
                                   1866 ; genCall
      00B1E6 CD 9C 58         [ 4] 1867 	call	_Record_GetStat
                                   1868 ; genPointerGet
      00B1E9 FE               [ 2] 1869 	ldw	x, (x)
                                   1870 ; genCast
                                   1871 ; genAssign
      00B1EA 1F 07            [ 2] 1872 	ldw	(0x07, sp), x
      00B1EC 90 5F            [ 1] 1873 	clrw	y
                                   1874 ; skipping iCode since result will be rematerialized
                                   1875 ; skipping iCode since result will be rematerialized
                                   1876 ; genIPush
      00B1EE 1E 03            [ 2] 1877 	ldw	x, (0x03, sp)
      00B1F0 89               [ 2] 1878 	pushw	x
      00B1F1 1E 03            [ 2] 1879 	ldw	x, (0x03, sp)
      00B1F3 89               [ 2] 1880 	pushw	x
                                   1881 ; genIPush
      00B1F4 1E 0B            [ 2] 1882 	ldw	x, (0x0b, sp)
      00B1F6 89               [ 2] 1883 	pushw	x
      00B1F7 90 89            [ 2] 1884 	pushw	y
                                   1885 ; genSend
      00B1F9 AE 83 24         [ 2] 1886 	ldw	x, #(___str_12+0)
                                   1887 ; genSend
      00B1FC A6 07            [ 1] 1888 	ld	a, #0x07
                                   1889 ; genCall
      00B1FE CD AE 81         [ 4] 1890 	call	_Draw_Stat_Columns
                                   1891 ; genLabel
                                   1892 ; peephole j30 removed unused label 00104$.
                                   1893 ;	User/menu.c: 310: }
                                   1894 ; genEndFunction
      00B201 5B 08            [ 2] 1895 	addw	sp, #8
      00B203 81               [ 4] 1896 	ret
                                   1897 ;	Total DspTwo function size at codegen: 3 bytes.
                                   1898 ;	User/menu.c: 312: void DspTwo_Plus(void)
                                   1899 ; genLabel
                                   1900 ;	-----------------------------------------
                                   1901 ;	 function DspTwo_Plus
                                   1902 ;	-----------------------------------------
                                   1903 ;	Register assignment might be sub-optimal.
                                   1904 ;	Stack space usage: 8 bytes.
      00B204                       1905 _DspTwo_Plus:
      00B204 52 08            [ 2] 1906 	sub	sp, #8
                                   1907 ;	User/menu.c: 314: show_str_8x12(1,1,"<");
                                   1908 ; skipping iCode since result will be rematerialized
                                   1909 ; skipping iCode since result will be rematerialized
                                   1910 ; genIPush
      00B206 4B F3            [ 1] 1911 	push	#<(___str_2+0)
      00B208 4B 82            [ 1] 1912 	push	#((___str_2+0) >> 8)
                                   1913 ; genIPush
      00B20A 4B 01            [ 1] 1914 	push	#0x01
      00B20C 4B 00            [ 1] 1915 	push	#0x00
                                   1916 ; genSend
      00B20E 5F               [ 1] 1917 	clrw	x
      00B20F 5C               [ 1] 1918 	incw	x
                                   1919 ; genCall
      00B210 CD BE 0E         [ 4] 1920 	call	_show_str_8x12
                                   1921 ;	User/menu.c: 315: show_hz_12x12(1,14,"w");
                                   1922 ; skipping iCode since result will be rematerialized
                                   1923 ; skipping iCode since result will be rematerialized
                                   1924 ; genIPush
      00B213 4B 4B            [ 1] 1925 	push	#<(___str_21+0)
      00B215 4B 83            [ 1] 1926 	push	#((___str_21+0) >> 8)
                                   1927 ; genIPush
      00B217 4B 0E            [ 1] 1928 	push	#0x0e
      00B219 4B 00            [ 1] 1929 	push	#0x00
                                   1930 ; genSend
      00B21B 5F               [ 1] 1931 	clrw	x
      00B21C 5C               [ 1] 1932 	incw	x
                                   1933 ; genCall
      00B21D CD BF 49         [ 4] 1934 	call	_show_hz_12x12
                                   1935 ;	User/menu.c: 316: if(adjustdt.dt[11])
                                   1936 ; skipping iCode since result will be rematerialized
                                   1937 ; genPointerGet
                                   1938 ; genIfx
      00B220 C6 05 4A         [ 1] 1939 	ld	a, _adjustdt+12
                                   1940 ; peephole 30 removed redundant tnz.
                                   1941 ; peephole j5 changed absolute to relative unconditional jump.
      00B223 27 1C            [ 1] 1942 	jreq	00102$
                                   1943 ; peephole j10 removed jra by using inverse jump logic
                                   1944 ; peephole j30 removed unused label 00113$.
                                   1945 ;	User/menu.c: 318: show_hz_12x12(1,26,"]gM");
                                   1946 ; skipping iCode since result will be rematerialized
                                   1947 ; skipping iCode since result will be rematerialized
                                   1948 ; genIPush
      00B225 4B 36            [ 1] 1949 	push	#<(___str_17+0)
      00B227 4B 83            [ 1] 1950 	push	#((___str_17+0) >> 8)
                                   1951 ; genIPush
      00B229 4B 1A            [ 1] 1952 	push	#0x1a
      00B22B 4B 00            [ 1] 1953 	push	#0x00
                                   1954 ; genSend
      00B22D 5F               [ 1] 1955 	clrw	x
      00B22E 5C               [ 1] 1956 	incw	x
                                   1957 ; genCall
      00B22F CD BF 49         [ 4] 1958 	call	_show_hz_12x12
                                   1959 ;	User/menu.c: 319: show_hz_12x12(1,66,"eY[");
                                   1960 ; skipping iCode since result will be rematerialized
                                   1961 ; skipping iCode since result will be rematerialized
                                   1962 ; genIPush
      00B232 4B 3A            [ 1] 1963 	push	#<(___str_18+0)
      00B234 4B 83            [ 1] 1964 	push	#((___str_18+0) >> 8)
                                   1965 ; genIPush
      00B236 4B 42            [ 1] 1966 	push	#0x42
      00B238 4B 00            [ 1] 1967 	push	#0x00
                                   1968 ; genSend
      00B23A 5F               [ 1] 1969 	clrw	x
      00B23B 5C               [ 1] 1970 	incw	x
                                   1971 ; genCall
      00B23C CD BF 49         [ 4] 1972 	call	_show_hz_12x12
                                   1973 ; genGoto
      00B23F 20 0D            [ 2] 1974 	jra	00103$
                                   1975 ; peephole j5 changed absolute to relative unconditional jump.
                                   1976 ; genLabel
      00B241                       1977 00102$:
                                   1978 ;	User/menu.c: 322: show_str_7x8(1,26,"_TOTAL__L");
                                   1979 ; skipping iCode since result will be rematerialized
                                   1980 ; skipping iCode since result will be rematerialized
                                   1981 ; genIPush
      00B241 4B 3E            [ 1] 1982 	push	#<(___str_19+0)
      00B243 4B 83            [ 1] 1983 	push	#((___str_19+0) >> 8)
                                   1984 ; genIPush
      00B245 4B 1A            [ 1] 1985 	push	#0x1a
      00B247 4B 00            [ 1] 1986 	push	#0x00
                                   1987 ; genSend
      00B249 5F               [ 1] 1988 	clrw	x
      00B24A 5C               [ 1] 1989 	incw	x
                                   1990 ; genCall
      00B24B CD BE C6         [ 4] 1991 	call	_show_str_7x8
                                   1992 ; genLabel
      00B24E                       1993 00103$:
                                   1994 ;	User/menu.c: 323: show_str_8x12(1,102,"EG");
                                   1995 ; skipping iCode since result will be rematerialized
                                   1996 ; skipping iCode since result will be rematerialized
                                   1997 ; genIPush
      00B24E 4B 48            [ 1] 1998 	push	#<(___str_20+0)
      00B250 4B 83            [ 1] 1999 	push	#((___str_20+0) >> 8)
                                   2000 ; genIPush
      00B252 4B 66            [ 1] 2001 	push	#0x66
      00B254 4B 00            [ 1] 2002 	push	#0x00
                                   2003 ; genSend
      00B256 5F               [ 1] 2004 	clrw	x
      00B257 5C               [ 1] 2005 	incw	x
                                   2006 ; genCall
      00B258 CD BE 0E         [ 4] 2007 	call	_show_str_8x12
                                   2008 ;	User/menu.c: 324: show_str_8x12(1,120,">");
                                   2009 ; skipping iCode since result will be rematerialized
                                   2010 ; skipping iCode since result will be rematerialized
                                   2011 ; genIPush
      00B25B 4B F5            [ 1] 2012 	push	#<(___str_3+0)
      00B25D 4B 82            [ 1] 2013 	push	#((___str_3+0) >> 8)
                                   2014 ; genIPush
      00B25F 4B 78            [ 1] 2015 	push	#0x78
      00B261 4B 00            [ 1] 2016 	push	#0x00
                                   2017 ; genSend
      00B263 5F               [ 1] 2018 	clrw	x
      00B264 5C               [ 1] 2019 	incw	x
                                   2020 ; genCall
      00B265 CD BE 0E         [ 4] 2021 	call	_show_str_8x12
                                   2022 ;	User/menu.c: 326: Draw_Stat_Columns(3, "A-B", Record_GetStat(AB)->tscount, Record_GetStat(AB)->tltotal);
                                   2023 ; genSend
      00B268 A6 03            [ 1] 2024 	ld	a, #0x03
                                   2025 ; genCall
      00B26A CD 9C 58         [ 4] 2026 	call	_Record_GetStat
                                   2027 ; genAssign
                                   2028 ; genPointerGet
      00B26D 90 93            [ 1] 2029 	ldw	y, x
      00B26F 90 EE 08         [ 2] 2030 	ldw	y, (0x8, y)
      00B272 17 03            [ 2] 2031 	ldw	(0x03, sp), y
      00B274 EE 06            [ 2] 2032 	ldw	x, (0x6, x)
      00B276 1F 01            [ 2] 2033 	ldw	(0x01, sp), x
                                   2034 ; genSend
      00B278 A6 03            [ 1] 2035 	ld	a, #0x03
                                   2036 ; genCall
      00B27A CD 9C 58         [ 4] 2037 	call	_Record_GetStat
                                   2038 ; genPointerGet
      00B27D FE               [ 2] 2039 	ldw	x, (x)
                                   2040 ; genCast
                                   2041 ; genAssign
      00B27E 1F 07            [ 2] 2042 	ldw	(0x07, sp), x
      00B280 90 5F            [ 1] 2043 	clrw	y
                                   2044 ; skipping iCode since result will be rematerialized
                                   2045 ; skipping iCode since result will be rematerialized
                                   2046 ; genIPush
      00B282 1E 03            [ 2] 2047 	ldw	x, (0x03, sp)
      00B284 89               [ 2] 2048 	pushw	x
      00B285 1E 03            [ 2] 2049 	ldw	x, (0x03, sp)
      00B287 89               [ 2] 2050 	pushw	x
                                   2051 ; genIPush
      00B288 1E 0B            [ 2] 2052 	ldw	x, (0x0b, sp)
      00B28A 89               [ 2] 2053 	pushw	x
      00B28B 90 89            [ 2] 2054 	pushw	y
                                   2055 ; genSend
      00B28D AE 83 28         [ 2] 2056 	ldw	x, #(___str_13+0)
                                   2057 ; genSend
      00B290 A6 03            [ 1] 2058 	ld	a, #0x03
                                   2059 ; genCall
      00B292 CD AE 81         [ 4] 2060 	call	_Draw_Stat_Columns
                                   2061 ;	User/menu.c: 327: Draw_Stat_Columns(5, "A-C", Record_GetStat(AC)->tscount, Record_GetStat(AC)->tltotal);
                                   2062 ; genSend
      00B295 A6 05            [ 1] 2063 	ld	a, #0x05
                                   2064 ; genCall
      00B297 CD 9C 58         [ 4] 2065 	call	_Record_GetStat
                                   2066 ; genAssign
                                   2067 ; genPointerGet
      00B29A 90 93            [ 1] 2068 	ldw	y, x
      00B29C 90 EE 08         [ 2] 2069 	ldw	y, (0x8, y)
      00B29F 17 03            [ 2] 2070 	ldw	(0x03, sp), y
      00B2A1 EE 06            [ 2] 2071 	ldw	x, (0x6, x)
      00B2A3 1F 01            [ 2] 2072 	ldw	(0x01, sp), x
                                   2073 ; genSend
      00B2A5 A6 05            [ 1] 2074 	ld	a, #0x05
                                   2075 ; genCall
      00B2A7 CD 9C 58         [ 4] 2076 	call	_Record_GetStat
                                   2077 ; genPointerGet
      00B2AA FE               [ 2] 2078 	ldw	x, (x)
                                   2079 ; genCast
                                   2080 ; genAssign
      00B2AB 1F 07            [ 2] 2081 	ldw	(0x07, sp), x
      00B2AD 90 5F            [ 1] 2082 	clrw	y
                                   2083 ; skipping iCode since result will be rematerialized
                                   2084 ; skipping iCode since result will be rematerialized
                                   2085 ; genIPush
      00B2AF 1E 03            [ 2] 2086 	ldw	x, (0x03, sp)
      00B2B1 89               [ 2] 2087 	pushw	x
      00B2B2 1E 03            [ 2] 2088 	ldw	x, (0x03, sp)
      00B2B4 89               [ 2] 2089 	pushw	x
                                   2090 ; genIPush
      00B2B5 1E 0B            [ 2] 2091 	ldw	x, (0x0b, sp)
      00B2B7 89               [ 2] 2092 	pushw	x
      00B2B8 90 89            [ 2] 2093 	pushw	y
                                   2094 ; genSend
      00B2BA AE 83 2C         [ 2] 2095 	ldw	x, #(___str_14+0)
                                   2096 ; genSend
      00B2BD A6 05            [ 1] 2097 	ld	a, #0x05
                                   2098 ; genCall
      00B2BF CD AE 81         [ 4] 2099 	call	_Draw_Stat_Columns
                                   2100 ;	User/menu.c: 328: Draw_Stat_Columns(7, "B-C", Record_GetStat(BC)->tscount, Record_GetStat(BC)->tltotal);
                                   2101 ; genSend
      00B2C2 A6 06            [ 1] 2102 	ld	a, #0x06
                                   2103 ; genCall
      00B2C4 CD 9C 58         [ 4] 2104 	call	_Record_GetStat
                                   2105 ; genAssign
                                   2106 ; genPointerGet
      00B2C7 90 93            [ 1] 2107 	ldw	y, x
      00B2C9 90 EE 08         [ 2] 2108 	ldw	y, (0x8, y)
      00B2CC 17 03            [ 2] 2109 	ldw	(0x03, sp), y
      00B2CE EE 06            [ 2] 2110 	ldw	x, (0x6, x)
      00B2D0 1F 01            [ 2] 2111 	ldw	(0x01, sp), x
                                   2112 ; genSend
      00B2D2 A6 06            [ 1] 2113 	ld	a, #0x06
                                   2114 ; genCall
      00B2D4 CD 9C 58         [ 4] 2115 	call	_Record_GetStat
                                   2116 ; genPointerGet
      00B2D7 FE               [ 2] 2117 	ldw	x, (x)
                                   2118 ; genCast
                                   2119 ; genAssign
      00B2D8 1F 07            [ 2] 2120 	ldw	(0x07, sp), x
      00B2DA 90 5F            [ 1] 2121 	clrw	y
                                   2122 ; skipping iCode since result will be rematerialized
                                   2123 ; skipping iCode since result will be rematerialized
                                   2124 ; genIPush
      00B2DC 1E 03            [ 2] 2125 	ldw	x, (0x03, sp)
      00B2DE 89               [ 2] 2126 	pushw	x
      00B2DF 1E 03            [ 2] 2127 	ldw	x, (0x03, sp)
      00B2E1 89               [ 2] 2128 	pushw	x
                                   2129 ; genIPush
      00B2E2 1E 0B            [ 2] 2130 	ldw	x, (0x0b, sp)
      00B2E4 89               [ 2] 2131 	pushw	x
      00B2E5 90 89            [ 2] 2132 	pushw	y
                                   2133 ; genSend
      00B2E7 AE 83 30         [ 2] 2134 	ldw	x, #(___str_15+0)
                                   2135 ; genSend
      00B2EA A6 07            [ 1] 2136 	ld	a, #0x07
                                   2137 ; genCall
      00B2EC CD AE 81         [ 4] 2138 	call	_Draw_Stat_Columns
                                   2139 ; genLabel
                                   2140 ; peephole j30 removed unused label 00104$.
                                   2141 ;	User/menu.c: 329: }
                                   2142 ; genEndFunction
      00B2EF 5B 08            [ 2] 2143 	addw	sp, #8
      00B2F1 81               [ 4] 2144 	ret
                                   2145 ;	Total DspTwo_Plus function size at codegen: 3 bytes.
                                   2146 ;	User/menu.c: 333: void DspThree(void)
                                   2147 ; genLabel
                                   2148 ;	-----------------------------------------
                                   2149 ;	 function DspThree
                                   2150 ;	-----------------------------------------
                                   2151 ;	Register assignment might be sub-optimal.
                                   2152 ;	Stack space usage: 26 bytes.
      00B2F2                       2153 _DspThree:
      00B2F2 52 1A            [ 2] 2154 	sub	sp, #26
                                   2155 ;	User/menu.c: 339: zhen=Verfin/1000;
                                   2156 ; genIPush
      00B2F4 4B E8            [ 1] 2157 	push	#0xe8
      00B2F6 4B 03            [ 1] 2158 	push	#0x03
      00B2F8 5F               [ 1] 2159 	clrw	x
      00B2F9 89               [ 2] 2160 	pushw	x
                                   2161 ; genIPush
      00B2FA CE 04 B6         [ 2] 2162 	ldw	x, _Verfin+2
      00B2FD 89               [ 2] 2163 	pushw	x
      00B2FE CE 04 B4         [ 2] 2164 	ldw	x, _Verfin+0
      00B301 89               [ 2] 2165 	pushw	x
                                   2166 ; genCall
      00B302 CD ED 50         [ 4] 2167 	call	__divulong
      00B305 5B 08            [ 2] 2168 	addw	sp, #8
                                   2169 ; genCast
                                   2170 ; genAssign
      00B307 1F 16            [ 2] 2171 	ldw	(0x16, sp), x
                                   2172 ;	User/menu.c: 340: xiao=Verfin%1000;
                                   2173 ; genIPush
      00B309 4B E8            [ 1] 2174 	push	#0xe8
      00B30B 4B 03            [ 1] 2175 	push	#0x03
      00B30D 5F               [ 1] 2176 	clrw	x
      00B30E 89               [ 2] 2177 	pushw	x
                                   2178 ; genIPush
      00B30F CE 04 B6         [ 2] 2179 	ldw	x, _Verfin+2
      00B312 89               [ 2] 2180 	pushw	x
      00B313 CE 04 B4         [ 2] 2181 	ldw	x, _Verfin+0
      00B316 89               [ 2] 2182 	pushw	x
                                   2183 ; genCall
      00B317 CD EC EA         [ 4] 2184 	call	__modulong
      00B31A 5B 08            [ 2] 2185 	addw	sp, #8
                                   2186 ; genCast
                                   2187 ; genAssign
                                   2188 ;	User/menu.c: 341: xiao=xiao/10;
                                   2189 ; genCast
                                   2190 ; genAssign
                                   2191 ; genDivMod
      00B31C 90 AE 00 0A      [ 2] 2192 	ldw	y, #0x000a
      00B320 65               [ 2] 2193 	divw	x, y
                                   2194 ; genCast
                                   2195 ; genAssign
      00B321 1F 18            [ 2] 2196 	ldw	(0x18, sp), x
                                   2197 ;	User/menu.c: 343: memset(buf,0,20);
                                   2198 ; skipping iCode since result will be rematerialized
                                   2199 ; skipping iCode since result will be rematerialized
                                   2200 ; genIPush
      00B323 4B 14            [ 1] 2201 	push	#0x14
      00B325 4B 00            [ 1] 2202 	push	#0x00
                                   2203 ; genIPush
      00B327 5F               [ 1] 2204 	clrw	x
      00B328 89               [ 2] 2205 	pushw	x
                                   2206 ; genSend
      00B329 96               [ 1] 2207 	ldw	x, sp
      00B32A 1C 00 05         [ 2] 2208 	addw	x, #5
                                   2209 ; genCall
      00B32D CD ED FE         [ 4] 2210 	call	_memset
                                   2211 ;	User/menu.c: 344: show_str_8x12(1,1,UI_ICON_ARROW_L);
                                   2212 ; skipping iCode since result will be rematerialized
                                   2213 ; skipping iCode since result will be rematerialized
                                   2214 ; genIPush
      00B330 4B F3            [ 1] 2215 	push	#<(___str_2+0)
      00B332 4B 82            [ 1] 2216 	push	#((___str_2+0) >> 8)
                                   2217 ; genIPush
      00B334 4B 01            [ 1] 2218 	push	#0x01
      00B336 4B 00            [ 1] 2219 	push	#0x00
                                   2220 ; genSend
      00B338 5F               [ 1] 2221 	clrw	x
      00B339 5C               [ 1] 2222 	incw	x
                                   2223 ; genCall
      00B33A CD BE 0E         [ 4] 2224 	call	_show_str_8x12
                                   2225 ;	User/menu.c: 346: show_hz_12x12(1,14,"y");
                                   2226 ; skipping iCode since result will be rematerialized
                                   2227 ; skipping iCode since result will be rematerialized
                                   2228 ; genIPush
      00B33D 4B 4D            [ 1] 2229 	push	#<(___str_22+0)
      00B33F 4B 83            [ 1] 2230 	push	#((___str_22+0) >> 8)
                                   2231 ; genIPush
      00B341 4B 0E            [ 1] 2232 	push	#0x0e
      00B343 4B 00            [ 1] 2233 	push	#0x00
                                   2234 ; genSend
      00B345 5F               [ 1] 2235 	clrw	x
      00B346 5C               [ 1] 2236 	incw	x
                                   2237 ; genCall
      00B347 CD BF 49         [ 4] 2238 	call	_show_hz_12x12
                                   2239 ;	User/menu.c: 347: if(adjustdt.dt[11])
                                   2240 ; skipping iCode since result will be rematerialized
                                   2241 ; skipping iCode since result will be rematerialized
                                   2242 ; genPointerGet
                                   2243 ; genIfx
      00B34A C6 05 4A         [ 1] 2244 	ld	a, _adjustdt+12
                                   2245 ; peephole 30 removed redundant tnz.
                                   2246 ; peephole j5 changed absolute to relative unconditional jump.
      00B34D 27 0F            [ 1] 2247 	jreq	00102$
                                   2248 ; peephole j10 removed jra by using inverse jump logic
                                   2249 ; peephole j30 removed unused label 00178$.
                                   2250 ;	User/menu.c: 349: show_hz_12x12(1,26,"]m]]o");
                                   2251 ; skipping iCode since result will be rematerialized
                                   2252 ; skipping iCode since result will be rematerialized
                                   2253 ; genIPush
      00B34F 4B 4F            [ 1] 2254 	push	#<(___str_23+0)
      00B351 4B 83            [ 1] 2255 	push	#((___str_23+0) >> 8)
                                   2256 ; genIPush
      00B353 4B 1A            [ 1] 2257 	push	#0x1a
      00B355 4B 00            [ 1] 2258 	push	#0x00
                                   2259 ; genSend
      00B357 5F               [ 1] 2260 	clrw	x
      00B358 5C               [ 1] 2261 	incw	x
                                   2262 ; genCall
      00B359 CD BF 49         [ 4] 2263 	call	_show_hz_12x12
                                   2264 ; genGoto
      00B35C 20 0D            [ 2] 2265 	jra	00103$
                                   2266 ; peephole j5 changed absolute to relative unconditional jump.
                                   2267 ; genLabel
      00B35E                       2268 00102$:
                                   2269 ;	User/menu.c: 352: show_str_7x8(1,26,UI_TITLE_CONFIG);
                                   2270 ; skipping iCode since result will be rematerialized
                                   2271 ; skipping iCode since result will be rematerialized
                                   2272 ; genIPush
      00B35E 4B 55            [ 1] 2273 	push	#<(___str_24+0)
      00B360 4B 83            [ 1] 2274 	push	#((___str_24+0) >> 8)
                                   2275 ; genIPush
      00B362 4B 1A            [ 1] 2276 	push	#0x1a
      00B364 4B 00            [ 1] 2277 	push	#0x00
                                   2278 ; genSend
      00B366 5F               [ 1] 2279 	clrw	x
      00B367 5C               [ 1] 2280 	incw	x
                                   2281 ; genCall
      00B368 CD BE C6         [ 4] 2282 	call	_show_str_7x8
                                   2283 ; genLabel
      00B36B                       2284 00103$:
                                   2285 ;	User/menu.c: 354: show_str_8x12(1,120,UI_ICON_ARROW_R);
                                   2286 ; skipping iCode since result will be rematerialized
                                   2287 ; skipping iCode since result will be rematerialized
                                   2288 ; genIPush
      00B36B 4B F5            [ 1] 2289 	push	#<(___str_3+0)
      00B36D 4B 82            [ 1] 2290 	push	#((___str_3+0) >> 8)
                                   2291 ; genIPush
      00B36F 4B 78            [ 1] 2292 	push	#0x78
      00B371 4B 00            [ 1] 2293 	push	#0x00
                                   2294 ; genSend
      00B373 5F               [ 1] 2295 	clrw	x
      00B374 5C               [ 1] 2296 	incw	x
                                   2297 ; genCall
      00B375 CD BE 0E         [ 4] 2298 	call	_show_str_8x12
                                   2299 ;	User/menu.c: 356: if(System_GetMode())
                                   2300 ; genCall
      00B378 CD 9C 48         [ 4] 2301 	call	_System_GetMode
                                   2302 ;	User/menu.c: 367: mini_sprintf(buf,"%d;%02dV",zhen,xiao);//显示电池电压
                                   2303 ; skipping iCode since result will be rematerialized
                                   2304 ;	User/menu.c: 356: if(System_GetMode())
                                   2305 ; genIfx
      00B37B 4D               [ 1] 2306 	tnz	a
      00B37C 26 03            [ 1] 2307 	jrne	00179$
      00B37E CC B4 29         [ 2] 2308 	jp	00118$
      00B381                       2309 00179$:
                                   2310 ;	User/menu.c: 358: if(Verfin>2800)//显示电量多少
                                   2311 ; genCmp
                                   2312 ; genCmpTnz
      00B381 AE 0A F0         [ 2] 2313 	ldw	x, #0x0af0
      00B384 C3 04 B6         [ 2] 2314 	cpw	x, _Verfin+2
      00B387 4F               [ 1] 2315 	clr	a
      00B388 C2 04 B5         [ 1] 2316 	sbc	a, _Verfin+1
      00B38B 4F               [ 1] 2317 	clr	a
      00B38C C2 04 B4         [ 1] 2318 	sbc	a, _Verfin+0
      00B38F 4F               [ 1] 2319 	clr	a
      00B390 49               [ 1] 2320 	rlc	a
                                   2321 ; genIfx
      00B391 6B 1A            [ 1] 2322 	ld	(0x1a, sp), a
                                   2323 ; peephole 31a removed redundant tnz.
                                   2324 ; peephole j5 changed absolute to relative unconditional jump.
      00B393 27 10            [ 1] 2325 	jreq	00115$
                                   2326 ; peephole j10 removed jra by using inverse jump logic
                                   2327 ; peephole j30 removed unused label 00180$.
                                   2328 ;	User/menu.c: 359: show_str_8x12(3,110,UI_ICON_BATT_FULL);
                                   2329 ; skipping iCode since result will be rematerialized
                                   2330 ; skipping iCode since result will be rematerialized
                                   2331 ; genIPush
      00B395 4B 5F            [ 1] 2332 	push	#<(___str_25+0)
      00B397 4B 83            [ 1] 2333 	push	#((___str_25+0) >> 8)
                                   2334 ; genIPush
      00B399 4B 6E            [ 1] 2335 	push	#0x6e
      00B39B 4B 00            [ 1] 2336 	push	#0x00
                                   2337 ; genSend
      00B39D AE 00 03         [ 2] 2338 	ldw	x, #0x0003
                                   2339 ; genCall
      00B3A0 CD BE 0E         [ 4] 2340 	call	_show_str_8x12
                                   2341 ; genGoto
      00B3A3 20 61            [ 2] 2342 	jra	00116$
                                   2343 ; peephole j5 changed absolute to relative unconditional jump.
                                   2344 ; genLabel
      00B3A5                       2345 00115$:
                                   2346 ;	User/menu.c: 360: else if(Verfin > 2600 && Verfin <=2800)
                                   2347 ; genCmp
                                   2348 ; genCmpTnz
      00B3A5 AE 0A 28         [ 2] 2349 	ldw	x, #0x0a28
      00B3A8 C3 04 B6         [ 2] 2350 	cpw	x, _Verfin+2
      00B3AB 4F               [ 1] 2351 	clr	a
      00B3AC C2 04 B5         [ 1] 2352 	sbc	a, _Verfin+1
      00B3AF 4F               [ 1] 2353 	clr	a
      00B3B0 C2 04 B4         [ 1] 2354 	sbc	a, _Verfin+0
      00B3B3 4F               [ 1] 2355 	clr	a
      00B3B4 49               [ 1] 2356 	rlc	a
                                   2357 ; genIfx
      00B3B5 90 97            [ 1] 2358 	ld	yl, a
                                   2359 ; peephole 4 removed redundant load from yl into a.
      00B3B7 4D               [ 1] 2360 	tnz	a
                                   2361 ; peephole j5 changed absolute to relative unconditional jump.
      00B3B8 27 14            [ 1] 2362 	jreq	00111$
                                   2363 ; peephole j10 removed jra by using inverse jump logic
                                   2364 ; peephole j30 removed unused label 00181$.
                                   2365 ; genAssign
                                   2366 ; genIfx
      00B3BA 7B 1A            [ 1] 2367 	ld	a, (0x1a, sp)
                                   2368 ; peephole 30 removed redundant tnz.
                                   2369 ; peephole j5 changed absolute to relative unconditional jump.
      00B3BC 26 10            [ 1] 2370 	jrne	00111$
                                   2371 ; peephole j7 removed jra by using inverse jump logic
                                   2372 ; peephole j30 removed unused label 00182$.
                                   2373 ;	User/menu.c: 361: show_str_8x12(3,110,UI_ICON_BATT_HIGH);
                                   2374 ; skipping iCode since result will be rematerialized
                                   2375 ; skipping iCode since result will be rematerialized
                                   2376 ; genIPush
      00B3BE 4B 63            [ 1] 2377 	push	#<(___str_26+0)
      00B3C0 4B 83            [ 1] 2378 	push	#((___str_26+0) >> 8)
                                   2379 ; genIPush
      00B3C2 4B 6E            [ 1] 2380 	push	#0x6e
      00B3C4 4B 00            [ 1] 2381 	push	#0x00
                                   2382 ; genSend
      00B3C6 AE 00 03         [ 2] 2383 	ldw	x, #0x0003
                                   2384 ; genCall
      00B3C9 CD BE 0E         [ 4] 2385 	call	_show_str_8x12
                                   2386 ; genGoto
      00B3CC 20 38            [ 2] 2387 	jra	00116$
                                   2388 ; peephole j5 changed absolute to relative unconditional jump.
                                   2389 ; genLabel
      00B3CE                       2390 00111$:
                                   2391 ;	User/menu.c: 362: else if(Verfin >2400 && Verfin <=2600)
                                   2392 ; genCmp
                                   2393 ; genCmpTnz
      00B3CE AE 09 60         [ 2] 2394 	ldw	x, #0x0960
      00B3D1 C3 04 B6         [ 2] 2395 	cpw	x, _Verfin+2
      00B3D4 4F               [ 1] 2396 	clr	a
      00B3D5 C2 04 B5         [ 1] 2397 	sbc	a, _Verfin+1
      00B3D8 4F               [ 1] 2398 	clr	a
      00B3D9 C2 04 B4         [ 1] 2399 	sbc	a, _Verfin+0
      00B3DC 4F               [ 1] 2400 	clr	a
                                   2401 ; genIfx
      00B3DD 49               [ 1] 2402 	rlc	a
                                   2403 ; peephole 24 removed redundant tnz.
                                   2404 ; peephole j5 changed absolute to relative unconditional jump.
      00B3DE 27 15            [ 1] 2405 	jreq	00107$
                                   2406 ; peephole j10 removed jra by using inverse jump logic
                                   2407 ; peephole j30 removed unused label 00183$.
                                   2408 ; genAssign
                                   2409 ; genIfx
      00B3E0 61               [ 1] 2410 	exg	a, yl
      00B3E1 4D               [ 1] 2411 	tnz	a
      00B3E2 61               [ 1] 2412 	exg	a, yl
                                   2413 ; peephole j5 changed absolute to relative unconditional jump.
      00B3E3 26 10            [ 1] 2414 	jrne	00107$
                                   2415 ; peephole j7 removed jra by using inverse jump logic
                                   2416 ; peephole j30 removed unused label 00184$.
                                   2417 ;	User/menu.c: 363: show_str_8x12(3,110,UI_ICON_BATT_MID);
                                   2418 ; skipping iCode since result will be rematerialized
                                   2419 ; genCast
                                   2420 ; genAssign
      00B3E5 AE 83 67         [ 2] 2421 	ldw	x, #(___str_27+0)
                                   2422 ; genIPush
      00B3E8 89               [ 2] 2423 	pushw	x
                                   2424 ; genIPush
      00B3E9 4B 6E            [ 1] 2425 	push	#0x6e
      00B3EB 4B 00            [ 1] 2426 	push	#0x00
                                   2427 ; genSend
      00B3ED AE 00 03         [ 2] 2428 	ldw	x, #0x0003
                                   2429 ; genCall
      00B3F0 CD BE 0E         [ 4] 2430 	call	_show_str_8x12
                                   2431 ; genGoto
      00B3F3 20 11            [ 2] 2432 	jra	00116$
                                   2433 ; peephole j5 changed absolute to relative unconditional jump.
                                   2434 ; genLabel
      00B3F5                       2435 00107$:
                                   2436 ;	User/menu.c: 364: else if(Verfin <=2400 )
                                   2437 ; genAssign
                                   2438 ; genIfx
      00B3F5 4D               [ 1] 2439 	tnz	a
                                   2440 ; peephole j5 changed absolute to relative unconditional jump.
      00B3F6 26 0E            [ 1] 2441 	jrne	00116$
                                   2442 ; peephole j7 removed jra by using inverse jump logic
                                   2443 ; peephole j30 removed unused label 00185$.
                                   2444 ;	User/menu.c: 365: show_str_8x12(3,110,UI_ICON_BATT_LOW);
                                   2445 ; skipping iCode since result will be rematerialized
                                   2446 ; skipping iCode since result will be rematerialized
                                   2447 ; genIPush
      00B3F8 4B 6B            [ 1] 2448 	push	#<(___str_28+0)
      00B3FA 4B 83            [ 1] 2449 	push	#((___str_28+0) >> 8)
                                   2450 ; genIPush
      00B3FC 4B 6E            [ 1] 2451 	push	#0x6e
      00B3FE 4B 00            [ 1] 2452 	push	#0x00
                                   2453 ; genSend
      00B400 AE 00 03         [ 2] 2454 	ldw	x, #0x0003
                                   2455 ; genCall
      00B403 CD BE 0E         [ 4] 2456 	call	_show_str_8x12
                                   2457 ; genLabel
      00B406                       2458 00116$:
                                   2459 ;	User/menu.c: 367: mini_sprintf(buf,"%d;%02dV",zhen,xiao);//显示电池电压
                                   2460 ; skipping iCode since result will be rematerialized
                                   2461 ; skipping iCode since result will be rematerialized
                                   2462 ; genIPush
      00B406 1E 18            [ 2] 2463 	ldw	x, (0x18, sp)
      00B408 89               [ 2] 2464 	pushw	x
                                   2465 ; genIPush
      00B409 1E 18            [ 2] 2466 	ldw	x, (0x18, sp)
      00B40B 89               [ 2] 2467 	pushw	x
                                   2468 ; genIPush
      00B40C 4B 6F            [ 1] 2469 	push	#<(___str_29+0)
      00B40E 4B 83            [ 1] 2470 	push	#((___str_29+0) >> 8)
                                   2471 ; genIPush
      00B410 96               [ 1] 2472 	ldw	x, sp
      00B411 1C 00 07         [ 2] 2473 	addw	x, #7
      00B414 89               [ 2] 2474 	pushw	x
                                   2475 ; genCall
      00B415 CD 9B 24         [ 4] 2476 	call	_mini_sprintf
      00B418 5B 08            [ 2] 2477 	addw	sp, #8
                                   2478 ;	User/menu.c: 368: show_str_8x12(5,96,(uint8_t *)buf);
                                   2479 ; genIPush
      00B41A 96               [ 1] 2480 	ldw	x, sp
      00B41B 5C               [ 1] 2481 	incw	x
      00B41C 89               [ 2] 2482 	pushw	x
                                   2483 ; genIPush
      00B41D 4B 60            [ 1] 2484 	push	#0x60
      00B41F 4B 00            [ 1] 2485 	push	#0x00
                                   2486 ; genSend
      00B421 AE 00 05         [ 2] 2487 	ldw	x, #0x0005
                                   2488 ; genCall
      00B424 CD BE 0E         [ 4] 2489 	call	_show_str_8x12
                                   2490 ; genGoto
      00B427 20 29            [ 2] 2491 	jra	00119$
                                   2492 ; peephole j5 changed absolute to relative unconditional jump.
                                   2493 ; genLabel
      00B429                       2494 00118$:
                                   2495 ;	User/menu.c: 372: show_str_8x12(3,98,UI_ICON_LANG_CN);
                                   2496 ; skipping iCode since result will be rematerialized
                                   2497 ; skipping iCode since result will be rematerialized
                                   2498 ; genIPush
      00B429 4B 78            [ 1] 2499 	push	#<(___str_30+0)
      00B42B 4B 83            [ 1] 2500 	push	#((___str_30+0) >> 8)
                                   2501 ; genIPush
      00B42D 4B 62            [ 1] 2502 	push	#0x62
      00B42F 4B 00            [ 1] 2503 	push	#0x00
                                   2504 ; genSend
      00B431 AE 00 03         [ 2] 2505 	ldw	x, #0x0003
                                   2506 ; genCall
      00B434 CD BE 0E         [ 4] 2507 	call	_show_str_8x12
                                   2508 ;	User/menu.c: 373: mini_sprintf(buf,"     ");
                                   2509 ; skipping iCode since result will be rematerialized
                                   2510 ; skipping iCode since result will be rematerialized
                                   2511 ; genIPush
      00B437 4B 7C            [ 1] 2512 	push	#<(___str_31+0)
      00B439 4B 83            [ 1] 2513 	push	#((___str_31+0) >> 8)
                                   2514 ; genIPush
      00B43B 96               [ 1] 2515 	ldw	x, sp
      00B43C 1C 00 03         [ 2] 2516 	addw	x, #3
      00B43F 89               [ 2] 2517 	pushw	x
                                   2518 ; genCall
      00B440 CD 9B 24         [ 4] 2519 	call	_mini_sprintf
      00B443 5B 04            [ 2] 2520 	addw	sp, #4
                                   2521 ;	User/menu.c: 374: show_str_8x12(5,88,(uint8_t *)buf);//3,70
                                   2522 ; genIPush
      00B445 96               [ 1] 2523 	ldw	x, sp
      00B446 5C               [ 1] 2524 	incw	x
      00B447 89               [ 2] 2525 	pushw	x
                                   2526 ; genIPush
      00B448 4B 58            [ 1] 2527 	push	#0x58
      00B44A 4B 00            [ 1] 2528 	push	#0x00
                                   2529 ; genSend
      00B44C AE 00 05         [ 2] 2530 	ldw	x, #0x0005
                                   2531 ; genCall
      00B44F CD BE 0E         [ 4] 2532 	call	_show_str_8x12
                                   2533 ; genLabel
      00B452                       2534 00119$:
                                   2535 ;	User/menu.c: 376: rtc_get_datetime();
                                   2536 ; genCall
      00B452 CD 98 4D         [ 4] 2537 	call	_rtc_get_datetime
                                   2538 ;	User/menu.c: 377: adjustdt.dt[10]=0;
                                   2539 ; skipping iCode since result will be rematerialized
                                   2540 ; genPointerSet
      00B455 35 00 05 49      [ 1] 2541 	mov	_adjustdt+11, #0x00
                                   2542 ;	User/menu.c: 378: mini_sprintf(datestr, "%04d-%02d-%02d",adjustdt.dt[0]+2000,adjustdt.dt[1],adjustdt.dt[2]);
                                   2543 ; skipping iCode since result will be rematerialized
                                   2544 ; genPointerGet
      00B459 C6 05 41         [ 1] 2545 	ld	a, _adjustdt+3
                                   2546 ; genCast
                                   2547 ; genAssign
      00B45C 5F               [ 1] 2548 	clrw	x
      00B45D 97               [ 1] 2549 	ld	xl, a
                                   2550 ; skipping iCode since result will be rematerialized
                                   2551 ; genPointerGet
      00B45E C6 05 40         [ 1] 2552 	ld	a, _adjustdt+2
                                   2553 ; genCast
                                   2554 ; genAssign
      00B461 6B 1A            [ 1] 2555 	ld	(0x1a, sp), a
      00B463 0F 19            [ 1] 2556 	clr	(0x19, sp)
                                   2557 ; skipping iCode since result will be rematerialized
                                   2558 ; genPointerGet
      00B465 C6 05 3F         [ 1] 2559 	ld	a, _adjustdt+1
                                   2560 ; genCast
                                   2561 ; genAssign
      00B468 90 5F            [ 1] 2562 	clrw	y
                                   2563 ; genPlus
      00B46A 90 97            [ 1] 2564 	ld	yl, a
      00B46C 72 A9 07 D0      [ 2] 2565 	addw	y, #0x07d0
                                   2566 ; skipping iCode since result will be rematerialized
                                   2567 ; skipping iCode since result will be rematerialized
                                   2568 ; skipping iCode since result will be rematerialized
                                   2569 ; skipping iCode since result will be rematerialized
                                   2570 ; genIPush
      00B470 89               [ 2] 2571 	pushw	x
                                   2572 ; genIPush
      00B471 1E 1B            [ 2] 2573 	ldw	x, (0x1b, sp)
      00B473 89               [ 2] 2574 	pushw	x
                                   2575 ; genIPush
      00B474 90 89            [ 2] 2576 	pushw	y
                                   2577 ; genIPush
      00B476 4B 82            [ 1] 2578 	push	#<(___str_32+0)
      00B478 4B 83            [ 1] 2579 	push	#((___str_32+0) >> 8)
                                   2580 ; genIPush
      00B47A 4B 61            [ 1] 2581 	push	#<(_datestr+0)
      00B47C 4B 04            [ 1] 2582 	push	#((_datestr+0) >> 8)
                                   2583 ; genCall
      00B47E CD 9B 24         [ 4] 2584 	call	_mini_sprintf
      00B481 5B 0A            [ 2] 2585 	addw	sp, #10
                                   2586 ;	User/menu.c: 379: mini_sprintf(timestr, "%02d:%02d:%02d",adjustdt.dt[3],adjustdt.dt[4],adjustdt.dt[5]);
                                   2587 ; skipping iCode since result will be rematerialized
                                   2588 ; genPointerGet
      00B483 C6 05 44         [ 1] 2589 	ld	a, _adjustdt+6
                                   2590 ; genCast
                                   2591 ; genAssign
      00B486 5F               [ 1] 2592 	clrw	x
      00B487 97               [ 1] 2593 	ld	xl, a
                                   2594 ; skipping iCode since result will be rematerialized
                                   2595 ; genPointerGet
      00B488 C6 05 43         [ 1] 2596 	ld	a, _adjustdt+5
                                   2597 ; genCast
                                   2598 ; genAssign
      00B48B 6B 18            [ 1] 2599 	ld	(0x18, sp), a
      00B48D 0F 17            [ 1] 2600 	clr	(0x17, sp)
                                   2601 ; skipping iCode since result will be rematerialized
                                   2602 ; genPointerGet
      00B48F C6 05 42         [ 1] 2603 	ld	a, _adjustdt+4
                                   2604 ; genCast
                                   2605 ; genAssign
      00B492 0F 19            [ 1] 2606 	clr	(0x19, sp)
                                   2607 ; skipping iCode since result will be rematerialized
                                   2608 ; skipping iCode since result will be rematerialized
                                   2609 ; skipping iCode since result will be rematerialized
                                   2610 ; skipping iCode since result will be rematerialized
                                   2611 ; genIPush
      00B494 89               [ 2] 2612 	pushw	x
                                   2613 ; genIPush
      00B495 1E 19            [ 2] 2614 	ldw	x, (0x19, sp)
      00B497 89               [ 2] 2615 	pushw	x
                                   2616 ; genIPush
      00B498 88               [ 1] 2617 	push	a
      00B499 4F               [ 1] 2618 	clr	a
      00B49A 88               [ 1] 2619 	push	a
                                   2620 ; genIPush
      00B49B 4B 91            [ 1] 2621 	push	#<(___str_33+0)
      00B49D 4B 83            [ 1] 2622 	push	#((___str_33+0) >> 8)
                                   2623 ; genIPush
      00B49F 4B 71            [ 1] 2624 	push	#<(_timestr+0)
      00B4A1 4B 04            [ 1] 2625 	push	#((_timestr+0) >> 8)
                                   2626 ; genCall
      00B4A3 CD 9B 24         [ 4] 2627 	call	_mini_sprintf
      00B4A6 5B 0A            [ 2] 2628 	addw	sp, #10
                                   2629 ;	User/menu.c: 380: show_str_8x12(3,8,(uint8_t *)datestr);//24
                                   2630 ; genIPush
      00B4A8 4B 61            [ 1] 2631 	push	#<(_datestr+0)
      00B4AA 4B 04            [ 1] 2632 	push	#((_datestr+0) >> 8)
                                   2633 ; genIPush
      00B4AC 4B 08            [ 1] 2634 	push	#0x08
      00B4AE 4B 00            [ 1] 2635 	push	#0x00
                                   2636 ; genSend
      00B4B0 AE 00 03         [ 2] 2637 	ldw	x, #0x0003
                                   2638 ; genCall
      00B4B3 CD BE 0E         [ 4] 2639 	call	_show_str_8x12
                                   2640 ;	User/menu.c: 381: show_str_8x12(5,14,(uint8_t *)timestr);//32
                                   2641 ; genIPush
      00B4B6 4B 71            [ 1] 2642 	push	#<(_timestr+0)
      00B4B8 4B 04            [ 1] 2643 	push	#((_timestr+0) >> 8)
                                   2644 ; genIPush
      00B4BA 4B 0E            [ 1] 2645 	push	#0x0e
      00B4BC 4B 00            [ 1] 2646 	push	#0x00
                                   2647 ; genSend
      00B4BE AE 00 05         [ 2] 2648 	ldw	x, #0x0005
                                   2649 ; genCall
      00B4C1 CD BE 0E         [ 4] 2650 	call	_show_str_8x12
                                   2651 ;	User/menu.c: 383: adjustdt.dt[6]= 0xff&(selfid/1000000);
                                   2652 ; skipping iCode since result will be rematerialized
                                   2653 ; genIPush
      00B4C4 4B 40            [ 1] 2654 	push	#0x40
      00B4C6 4B 42            [ 1] 2655 	push	#0x42
      00B4C8 4B 0F            [ 1] 2656 	push	#0x0f
      00B4CA 4B 00            [ 1] 2657 	push	#0x00
                                   2658 ; genIPush
      00B4CC CE 05 2B         [ 2] 2659 	ldw	x, _selfid+2
      00B4CF 89               [ 2] 2660 	pushw	x
      00B4D0 CE 05 29         [ 2] 2661 	ldw	x, _selfid+0
      00B4D3 89               [ 2] 2662 	pushw	x
                                   2663 ; genCall
      00B4D4 CD ED 50         [ 4] 2664 	call	__divulong
      00B4D7 5B 08            [ 2] 2665 	addw	sp, #8
      00B4D9 9F               [ 1] 2666 	ld	a, xl
                                   2667 ; genCast
                                   2668 ; genAssign
                                   2669 ; genPointerSet
      00B4DA C7 05 45         [ 1] 2670 	ld	_adjustdt+7, a
                                   2671 ;	User/menu.c: 384: adjustdt.dt[7]= (selfid/10000)%100;
                                   2672 ; skipping iCode since result will be rematerialized
                                   2673 ; genIPush
      00B4DD 4B 10            [ 1] 2674 	push	#0x10
      00B4DF 4B 27            [ 1] 2675 	push	#0x27
      00B4E1 5F               [ 1] 2676 	clrw	x
      00B4E2 89               [ 2] 2677 	pushw	x
                                   2678 ; genIPush
      00B4E3 CE 05 2B         [ 2] 2679 	ldw	x, _selfid+2
      00B4E6 89               [ 2] 2680 	pushw	x
      00B4E7 CE 05 29         [ 2] 2681 	ldw	x, _selfid+0
      00B4EA 89               [ 2] 2682 	pushw	x
                                   2683 ; genCall
      00B4EB CD ED 50         [ 4] 2684 	call	__divulong
      00B4EE 5B 08            [ 2] 2685 	addw	sp, #8
                                   2686 ; genIPush
      00B4F0 4B 64            [ 1] 2687 	push	#0x64
      00B4F2 4B 00            [ 1] 2688 	push	#0x00
      00B4F4 4B 00            [ 1] 2689 	push	#0x00
      00B4F6 4B 00            [ 1] 2690 	push	#0x00
                                   2691 ; genIPush
      00B4F8 89               [ 2] 2692 	pushw	x
      00B4F9 90 89            [ 2] 2693 	pushw	y
                                   2694 ; genCall
      00B4FB CD EC EA         [ 4] 2695 	call	__modulong
      00B4FE 5B 08            [ 2] 2696 	addw	sp, #8
      00B500 9F               [ 1] 2697 	ld	a, xl
                                   2698 ; genCast
                                   2699 ; genAssign
                                   2700 ; genPointerSet
      00B501 C7 05 46         [ 1] 2701 	ld	_adjustdt+8, a
                                   2702 ;	User/menu.c: 385: adjustdt.dt[8]= (selfid/100)%100;
                                   2703 ; skipping iCode since result will be rematerialized
                                   2704 ; genIPush
      00B504 4B 64            [ 1] 2705 	push	#0x64
      00B506 5F               [ 1] 2706 	clrw	x
      00B507 89               [ 2] 2707 	pushw	x
      00B508 4B 00            [ 1] 2708 	push	#0x00
                                   2709 ; genIPush
      00B50A CE 05 2B         [ 2] 2710 	ldw	x, _selfid+2
      00B50D 89               [ 2] 2711 	pushw	x
      00B50E CE 05 29         [ 2] 2712 	ldw	x, _selfid+0
      00B511 89               [ 2] 2713 	pushw	x
                                   2714 ; genCall
      00B512 CD ED 50         [ 4] 2715 	call	__divulong
      00B515 5B 08            [ 2] 2716 	addw	sp, #8
                                   2717 ; genIPush
      00B517 4B 64            [ 1] 2718 	push	#0x64
      00B519 4B 00            [ 1] 2719 	push	#0x00
      00B51B 4B 00            [ 1] 2720 	push	#0x00
      00B51D 4B 00            [ 1] 2721 	push	#0x00
                                   2722 ; genIPush
      00B51F 89               [ 2] 2723 	pushw	x
      00B520 90 89            [ 2] 2724 	pushw	y
                                   2725 ; genCall
      00B522 CD EC EA         [ 4] 2726 	call	__modulong
      00B525 5B 08            [ 2] 2727 	addw	sp, #8
      00B527 9F               [ 1] 2728 	ld	a, xl
                                   2729 ; genCast
                                   2730 ; genAssign
                                   2731 ; genPointerSet
      00B528 C7 05 47         [ 1] 2732 	ld	_adjustdt+9, a
                                   2733 ;	User/menu.c: 386: adjustdt.dt[9]= selfid%100;
                                   2734 ; skipping iCode since result will be rematerialized
                                   2735 ; genIPush
      00B52B 4B 64            [ 1] 2736 	push	#0x64
      00B52D 5F               [ 1] 2737 	clrw	x
      00B52E 89               [ 2] 2738 	pushw	x
      00B52F 4B 00            [ 1] 2739 	push	#0x00
                                   2740 ; genIPush
      00B531 CE 05 2B         [ 2] 2741 	ldw	x, _selfid+2
      00B534 89               [ 2] 2742 	pushw	x
      00B535 CE 05 29         [ 2] 2743 	ldw	x, _selfid+0
      00B538 89               [ 2] 2744 	pushw	x
                                   2745 ; genCall
      00B539 CD EC EA         [ 4] 2746 	call	__modulong
      00B53C 5B 08            [ 2] 2747 	addw	sp, #8
      00B53E 9F               [ 1] 2748 	ld	a, xl
                                   2749 ; genCast
                                   2750 ; genAssign
                                   2751 ; genPointerSet
      00B53F C7 05 48         [ 1] 2752 	ld	_adjustdt+10, a
                                   2753 ;	User/menu.c: 387: memset(tempstr,0,16);
                                   2754 ; skipping iCode since result will be rematerialized
                                   2755 ; skipping iCode since result will be rematerialized
                                   2756 ; genIPush
      00B542 4B 10            [ 1] 2757 	push	#0x10
      00B544 4B 00            [ 1] 2758 	push	#0x00
                                   2759 ; genIPush
      00B546 5F               [ 1] 2760 	clrw	x
      00B547 89               [ 2] 2761 	pushw	x
                                   2762 ; genSend
      00B548 AE 04 81         [ 2] 2763 	ldw	x, #(_tempstr+0)
                                   2764 ; genCall
      00B54B CD ED FE         [ 4] 2765 	call	_memset
                                   2766 ;	User/menu.c: 388: mini_sprintf(tempstr,"ID:%02d%02d%02d%02d",adjustdt.dt[6],adjustdt.dt[7],adjustdt.dt[8],adjustdt.dt[9]);
                                   2767 ; genPointerGet
      00B54E C6 05 48         [ 1] 2768 	ld	a, _adjustdt+10
                                   2769 ; genCast
                                   2770 ; genAssign
      00B551 5F               [ 1] 2771 	clrw	x
      00B552 97               [ 1] 2772 	ld	xl, a
                                   2773 ; genPointerGet
      00B553 C6 05 47         [ 1] 2774 	ld	a, _adjustdt+9
                                   2775 ; genCast
                                   2776 ; genAssign
      00B556 6B 16            [ 1] 2777 	ld	(0x16, sp), a
      00B558 0F 15            [ 1] 2778 	clr	(0x15, sp)
                                   2779 ; genPointerGet
      00B55A C6 05 46         [ 1] 2780 	ld	a, _adjustdt+8
                                   2781 ; genCast
                                   2782 ; genAssign
      00B55D 6B 18            [ 1] 2783 	ld	(0x18, sp), a
      00B55F 0F 17            [ 1] 2784 	clr	(0x17, sp)
                                   2785 ; genPointerGet
      00B561 C6 05 45         [ 1] 2786 	ld	a, _adjustdt+7
                                   2787 ; genCast
                                   2788 ; genAssign
      00B564 0F 19            [ 1] 2789 	clr	(0x19, sp)
                                   2790 ; skipping iCode since result will be rematerialized
                                   2791 ; skipping iCode since result will be rematerialized
                                   2792 ; skipping iCode since result will be rematerialized
                                   2793 ; genIPush
      00B566 89               [ 2] 2794 	pushw	x
                                   2795 ; genIPush
      00B567 1E 17            [ 2] 2796 	ldw	x, (0x17, sp)
      00B569 89               [ 2] 2797 	pushw	x
                                   2798 ; genIPush
      00B56A 1E 1B            [ 2] 2799 	ldw	x, (0x1b, sp)
      00B56C 89               [ 2] 2800 	pushw	x
                                   2801 ; genIPush
      00B56D 88               [ 1] 2802 	push	a
      00B56E 4F               [ 1] 2803 	clr	a
      00B56F 88               [ 1] 2804 	push	a
                                   2805 ; genIPush
      00B570 4B A0            [ 1] 2806 	push	#<(___str_34+0)
      00B572 4B 83            [ 1] 2807 	push	#((___str_34+0) >> 8)
                                   2808 ; genIPush
      00B574 4B 81            [ 1] 2809 	push	#<(_tempstr+0)
      00B576 4B 04            [ 1] 2810 	push	#((_tempstr+0) >> 8)
                                   2811 ; genCall
      00B578 CD 9B 24         [ 4] 2812 	call	_mini_sprintf
      00B57B 5B 0C            [ 2] 2813 	addw	sp, #12
                                   2814 ;	User/menu.c: 389: show_str_8x12(7,2,(uint8_t *)tempstr);
                                   2815 ; genIPush
      00B57D 4B 81            [ 1] 2816 	push	#<(_tempstr+0)
      00B57F 4B 04            [ 1] 2817 	push	#((_tempstr+0) >> 8)
                                   2818 ; genIPush
      00B581 4B 02            [ 1] 2819 	push	#0x02
      00B583 4B 00            [ 1] 2820 	push	#0x00
                                   2821 ; genSend
      00B585 AE 00 07         [ 2] 2822 	ldw	x, #0x0007
                                   2823 ; genCall
      00B588 CD BE 0E         [ 4] 2824 	call	_show_str_8x12
                                   2825 ;	User/menu.c: 391: show_str_7x8(8, 100, "V1.0"); // 添加固件版本
                                   2826 ; skipping iCode since result will be rematerialized
                                   2827 ; skipping iCode since result will be rematerialized
                                   2828 ; genIPush
      00B58B 4B B4            [ 1] 2829 	push	#<(___str_35+0)
      00B58D 4B 83            [ 1] 2830 	push	#((___str_35+0) >> 8)
                                   2831 ; genIPush
      00B58F 4B 64            [ 1] 2832 	push	#0x64
      00B591 4B 00            [ 1] 2833 	push	#0x00
                                   2834 ; genSend
      00B593 AE 00 08         [ 2] 2835 	ldw	x, #0x0008
                                   2836 ; genCall
      00B596 CD BE C6         [ 4] 2837 	call	_show_str_7x8
                                   2838 ; genLabel
                                   2839 ; peephole j30 removed unused label 00120$.
                                   2840 ;	User/menu.c: 392: }
                                   2841 ; genEndFunction
      00B599 5B 1A            [ 2] 2842 	addw	sp, #26
      00B59B 81               [ 4] 2843 	ret
                                   2844 ;	Total DspThree function size at codegen: 3 bytes.
                                   2845 ;	User/menu.c: 395: void Show_Phase_Rec(void)
                                   2846 ; genLabel
                                   2847 ;	-----------------------------------------
                                   2848 ;	 function Show_Phase_Rec
                                   2849 ;	-----------------------------------------
                                   2850 ;	Register assignment might be sub-optimal.
                                   2851 ;	Stack space usage: 30 bytes.
      00B59C                       2852 _Show_Phase_Rec:
      00B59C 52 1E            [ 2] 2853 	sub	sp, #30
                                   2854 ;	User/menu.c: 401: show_str_8x12(1,1,UI_ICON_ARROW_L);
                                   2855 ; skipping iCode since result will be rematerialized
                                   2856 ; skipping iCode since result will be rematerialized
                                   2857 ; genIPush
      00B59E 4B F3            [ 1] 2858 	push	#<(___str_2+0)
      00B5A0 4B 82            [ 1] 2859 	push	#((___str_2+0) >> 8)
                                   2860 ; genIPush
      00B5A2 4B 01            [ 1] 2861 	push	#0x01
      00B5A4 4B 00            [ 1] 2862 	push	#0x00
                                   2863 ; genSend
      00B5A6 5F               [ 1] 2864 	clrw	x
      00B5A7 5C               [ 1] 2865 	incw	x
                                   2866 ; genCall
      00B5A8 CD BE 0E         [ 4] 2867 	call	_show_str_8x12
                                   2868 ;	User/menu.c: 402: show_str_8x12(1,120,UI_ICON_ARROW_R);
                                   2869 ; skipping iCode since result will be rematerialized
                                   2870 ; skipping iCode since result will be rematerialized
                                   2871 ; genIPush
      00B5AB 4B F5            [ 1] 2872 	push	#<(___str_3+0)
      00B5AD 4B 82            [ 1] 2873 	push	#((___str_3+0) >> 8)
                                   2874 ; genIPush
      00B5AF 4B 78            [ 1] 2875 	push	#0x78
      00B5B1 4B 00            [ 1] 2876 	push	#0x00
                                   2877 ; genSend
      00B5B3 5F               [ 1] 2878 	clrw	x
      00B5B4 5C               [ 1] 2879 	incw	x
                                   2880 ; genCall
      00B5B5 CD BE 0E         [ 4] 2881 	call	_show_str_8x12
                                   2882 ;	User/menu.c: 404: if(adjustdt.dt[11])
                                   2883 ; skipping iCode since result will be rematerialized
                                   2884 ; genPointerGet
                                   2885 ; genIfx
      00B5B8 C6 05 4A         [ 1] 2886 	ld	a, _adjustdt+12
                                   2887 ; peephole 30 removed redundant tnz.
                                   2888 ; peephole j5 changed absolute to relative unconditional jump.
      00B5BB 27 0F            [ 1] 2889 	jreq	00102$
                                   2890 ; peephole j10 removed jra by using inverse jump logic
                                   2891 ; peephole j30 removed unused label 00138$.
                                   2892 ;	User/menu.c: 405: show_hz_12x12(1,24,"ACEG");//事件记录
                                   2893 ; skipping iCode since result will be rematerialized
                                   2894 ; skipping iCode since result will be rematerialized
                                   2895 ; genIPush
      00B5BD 4B B9            [ 1] 2896 	push	#<(___str_36+0)
      00B5BF 4B 83            [ 1] 2897 	push	#((___str_36+0) >> 8)
                                   2898 ; genIPush
      00B5C1 4B 18            [ 1] 2899 	push	#0x18
      00B5C3 4B 00            [ 1] 2900 	push	#0x00
                                   2901 ; genSend
      00B5C5 5F               [ 1] 2902 	clrw	x
      00B5C6 5C               [ 1] 2903 	incw	x
                                   2904 ; genCall
      00B5C7 CD BF 49         [ 4] 2905 	call	_show_hz_12x12
                                   2906 ; genGoto
      00B5CA 20 0D            [ 2] 2907 	jra	00103$
                                   2908 ; peephole j5 changed absolute to relative unconditional jump.
                                   2909 ; genLabel
      00B5CC                       2910 00102$:
                                   2911 ;	User/menu.c: 407: show_str_7x8(1,24,UI_TITLE_RECORD);
                                   2912 ; skipping iCode since result will be rematerialized
                                   2913 ; skipping iCode since result will be rematerialized
                                   2914 ; genIPush
      00B5CC 4B BE            [ 1] 2915 	push	#<(___str_37+0)
      00B5CE 4B 83            [ 1] 2916 	push	#((___str_37+0) >> 8)
                                   2917 ; genIPush
      00B5D0 4B 18            [ 1] 2918 	push	#0x18
      00B5D2 4B 00            [ 1] 2919 	push	#0x00
                                   2920 ; genSend
      00B5D4 5F               [ 1] 2921 	clrw	x
      00B5D5 5C               [ 1] 2922 	incw	x
                                   2923 ; genCall
      00B5D6 CD BE C6         [ 4] 2924 	call	_show_str_7x8
                                   2925 ; genLabel
      00B5D9                       2926 00103$:
                                   2927 ;	User/menu.c: 409: memset(buf,0,20);
                                   2928 ; skipping iCode since result will be rematerialized
                                   2929 ; skipping iCode since result will be rematerialized
                                   2930 ; genIPush
      00B5D9 4B 14            [ 1] 2931 	push	#0x14
      00B5DB 4B 00            [ 1] 2932 	push	#0x00
                                   2933 ; genIPush
      00B5DD 5F               [ 1] 2934 	clrw	x
      00B5DE 89               [ 2] 2935 	pushw	x
                                   2936 ; genSend
      00B5DF 96               [ 1] 2937 	ldw	x, sp
      00B5E0 1C 00 09         [ 2] 2938 	addw	x, #9
                                   2939 ; genCall
      00B5E3 CD ED FE         [ 4] 2940 	call	_memset
                                   2941 ;	User/menu.c: 410: mini_sprintf(buf,"%03d",data_index.r+1);
                                   2942 ; skipping iCode since result will be rematerialized
                                   2943 ; genPointerGet
      00B5E6 C6 04 9D         [ 1] 2944 	ld	a, _data_index+0
                                   2945 ; genCast
                                   2946 ; genAssign
      00B5E9 5F               [ 1] 2947 	clrw	x
                                   2948 ; genPlus
      00B5EA 97               [ 1] 2949 	ld	xl, a
      00B5EB 5C               [ 1] 2950 	incw	x
                                   2951 ; skipping iCode since result will be rematerialized
                                   2952 ; skipping iCode since result will be rematerialized
                                   2953 ; skipping iCode since result will be rematerialized
                                   2954 ; genIPush
      00B5EC 89               [ 2] 2955 	pushw	x
                                   2956 ; genIPush
      00B5ED 4B C5            [ 1] 2957 	push	#<(___str_38+0)
      00B5EF 4B 83            [ 1] 2958 	push	#((___str_38+0) >> 8)
                                   2959 ; genIPush
      00B5F1 96               [ 1] 2960 	ldw	x, sp
      00B5F2 1C 00 09         [ 2] 2961 	addw	x, #9
      00B5F5 89               [ 2] 2962 	pushw	x
                                   2963 ; genCall
      00B5F6 CD 9B 24         [ 4] 2964 	call	_mini_sprintf
      00B5F9 5B 06            [ 2] 2965 	addw	sp, #6
                                   2966 ;	User/menu.c: 411: show_str_8x12(1,88,(uint8_t *)buf);
                                   2967 ; genIPush
      00B5FB 96               [ 1] 2968 	ldw	x, sp
      00B5FC 1C 00 05         [ 2] 2969 	addw	x, #5
      00B5FF 89               [ 2] 2970 	pushw	x
                                   2971 ; genIPush
      00B600 4B 58            [ 1] 2972 	push	#0x58
      00B602 4B 00            [ 1] 2973 	push	#0x00
                                   2974 ; genSend
      00B604 5F               [ 1] 2975 	clrw	x
      00B605 5C               [ 1] 2976 	incw	x
                                   2977 ; genCall
      00B606 CD BE 0E         [ 4] 2978 	call	_show_str_8x12
                                   2979 ;	User/menu.c: 413: memset(buf,0,20);
                                   2980 ; genIPush
      00B609 4B 14            [ 1] 2981 	push	#0x14
      00B60B 4B 00            [ 1] 2982 	push	#0x00
                                   2983 ; genIPush
      00B60D 5F               [ 1] 2984 	clrw	x
      00B60E 89               [ 2] 2985 	pushw	x
                                   2986 ; genSend
      00B60F 96               [ 1] 2987 	ldw	x, sp
      00B610 1C 00 09         [ 2] 2988 	addw	x, #9
                                   2989 ; genCall
      00B613 CD ED FE         [ 4] 2990 	call	_memset
                                   2991 ;	User/menu.c: 414: mini_sprintf(buf, "%04d-%02d-%02d",Record_GetLRecd()->year+2000,Record_GetLRecd()->mon,Record_GetLRecd()->day);
                                   2992 ; genCall
      00B616 CD 9C 6A         [ 4] 2993 	call	_Record_GetLRecd
                                   2994 ; genAssign
                                   2995 ; genPointerGet
      00B619 E6 02            [ 1] 2996 	ld	a, (0x2, x)
                                   2997 ; genCast
                                   2998 ; genAssign
      00B61B 6B 1C            [ 1] 2999 	ld	(0x1c, sp), a
      00B61D 0F 1B            [ 1] 3000 	clr	(0x1b, sp)
                                   3001 ; genCall
      00B61F CD 9C 6A         [ 4] 3002 	call	_Record_GetLRecd
                                   3003 ; genAssign
                                   3004 ; genPointerGet
      00B622 E6 01            [ 1] 3005 	ld	a, (0x1, x)
                                   3006 ; genCast
                                   3007 ; genAssign
      00B624 6B 1E            [ 1] 3008 	ld	(0x1e, sp), a
      00B626 0F 1D            [ 1] 3009 	clr	(0x1d, sp)
                                   3010 ; genCall
      00B628 CD 9C 6A         [ 4] 3011 	call	_Record_GetLRecd
                                   3012 ; genPointerGet
      00B62B F6               [ 1] 3013 	ld	a, (x)
                                   3014 ; genCast
                                   3015 ; genAssign
      00B62C 5F               [ 1] 3016 	clrw	x
                                   3017 ; genPlus
      00B62D 97               [ 1] 3018 	ld	xl, a
      00B62E 1C 07 D0         [ 2] 3019 	addw	x, #0x07d0
                                   3020 ; skipping iCode since result will be rematerialized
                                   3021 ; skipping iCode since result will be rematerialized
                                   3022 ; genIPush
      00B631 16 1B            [ 2] 3023 	ldw	y, (0x1b, sp)
      00B633 90 89            [ 2] 3024 	pushw	y
                                   3025 ; genIPush
      00B635 16 1F            [ 2] 3026 	ldw	y, (0x1f, sp)
      00B637 90 89            [ 2] 3027 	pushw	y
                                   3028 ; genIPush
      00B639 89               [ 2] 3029 	pushw	x
                                   3030 ; genIPush
      00B63A 4B 82            [ 1] 3031 	push	#<(___str_32+0)
      00B63C 4B 83            [ 1] 3032 	push	#((___str_32+0) >> 8)
                                   3033 ; genIPush
      00B63E 96               [ 1] 3034 	ldw	x, sp
      00B63F 1C 00 0D         [ 2] 3035 	addw	x, #13
      00B642 89               [ 2] 3036 	pushw	x
                                   3037 ; genCall
      00B643 CD 9B 24         [ 4] 3038 	call	_mini_sprintf
      00B646 5B 0A            [ 2] 3039 	addw	sp, #10
                                   3040 ;	User/menu.c: 415: show_str_8x12(3,8,(uint8_t *)buf);
                                   3041 ; genIPush
      00B648 96               [ 1] 3042 	ldw	x, sp
      00B649 1C 00 05         [ 2] 3043 	addw	x, #5
      00B64C 89               [ 2] 3044 	pushw	x
                                   3045 ; genIPush
      00B64D 4B 08            [ 1] 3046 	push	#0x08
      00B64F 4B 00            [ 1] 3047 	push	#0x00
                                   3048 ; genSend
      00B651 AE 00 03         [ 2] 3049 	ldw	x, #0x0003
                                   3050 ; genCall
      00B654 CD BE 0E         [ 4] 3051 	call	_show_str_8x12
                                   3052 ;	User/menu.c: 417: memset(buf,0,20);
                                   3053 ; genIPush
      00B657 4B 14            [ 1] 3054 	push	#0x14
      00B659 4B 00            [ 1] 3055 	push	#0x00
                                   3056 ; genIPush
      00B65B 5F               [ 1] 3057 	clrw	x
      00B65C 89               [ 2] 3058 	pushw	x
                                   3059 ; genSend
      00B65D 96               [ 1] 3060 	ldw	x, sp
      00B65E 1C 00 09         [ 2] 3061 	addw	x, #9
                                   3062 ; genCall
      00B661 CD ED FE         [ 4] 3063 	call	_memset
                                   3064 ;	User/menu.c: 418: mini_sprintf(buf, "%02d:%02d:%02d",Record_GetLRecd()->hour,Record_GetLRecd()->min,Record_GetLRecd()->sec);
                                   3065 ; genCall
      00B664 CD 9C 6A         [ 4] 3066 	call	_Record_GetLRecd
                                   3067 ; genAssign
                                   3068 ; genPointerGet
      00B667 E6 05            [ 1] 3069 	ld	a, (0x5, x)
                                   3070 ; genCast
                                   3071 ; genAssign
      00B669 6B 1A            [ 1] 3072 	ld	(0x1a, sp), a
      00B66B 0F 19            [ 1] 3073 	clr	(0x19, sp)
                                   3074 ; genCall
      00B66D CD 9C 6A         [ 4] 3075 	call	_Record_GetLRecd
                                   3076 ; genAssign
                                   3077 ; genPointerGet
      00B670 E6 04            [ 1] 3078 	ld	a, (0x4, x)
                                   3079 ; genCast
                                   3080 ; genAssign
      00B672 6B 1C            [ 1] 3081 	ld	(0x1c, sp), a
      00B674 0F 1B            [ 1] 3082 	clr	(0x1b, sp)
                                   3083 ; genCall
      00B676 CD 9C 6A         [ 4] 3084 	call	_Record_GetLRecd
                                   3085 ; genAssign
                                   3086 ; genPointerGet
      00B679 E6 03            [ 1] 3087 	ld	a, (0x3, x)
                                   3088 ; genCast
                                   3089 ; genAssign
      00B67B 0F 1D            [ 1] 3090 	clr	(0x1d, sp)
                                   3091 ; skipping iCode since result will be rematerialized
                                   3092 ; skipping iCode since result will be rematerialized
                                   3093 ; genIPush
      00B67D 1E 19            [ 2] 3094 	ldw	x, (0x19, sp)
      00B67F 89               [ 2] 3095 	pushw	x
                                   3096 ; genIPush
      00B680 1E 1D            [ 2] 3097 	ldw	x, (0x1d, sp)
      00B682 89               [ 2] 3098 	pushw	x
                                   3099 ; genIPush
      00B683 88               [ 1] 3100 	push	a
      00B684 4F               [ 1] 3101 	clr	a
      00B685 88               [ 1] 3102 	push	a
                                   3103 ; genIPush
      00B686 4B 91            [ 1] 3104 	push	#<(___str_33+0)
      00B688 4B 83            [ 1] 3105 	push	#((___str_33+0) >> 8)
                                   3106 ; genIPush
      00B68A 96               [ 1] 3107 	ldw	x, sp
      00B68B 1C 00 0D         [ 2] 3108 	addw	x, #13
      00B68E 89               [ 2] 3109 	pushw	x
                                   3110 ; genCall
      00B68F CD 9B 24         [ 4] 3111 	call	_mini_sprintf
      00B692 5B 0A            [ 2] 3112 	addw	sp, #10
                                   3113 ;	User/menu.c: 419: show_str_8x12(5,14,(uint8_t *)buf);
                                   3114 ; genIPush
      00B694 96               [ 1] 3115 	ldw	x, sp
      00B695 1C 00 05         [ 2] 3116 	addw	x, #5
      00B698 89               [ 2] 3117 	pushw	x
                                   3118 ; genIPush
      00B699 4B 0E            [ 1] 3119 	push	#0x0e
      00B69B 4B 00            [ 1] 3120 	push	#0x00
                                   3121 ; genSend
      00B69D AE 00 05         [ 2] 3122 	ldw	x, #0x0005
                                   3123 ; genCall
      00B6A0 CD BE 0E         [ 4] 3124 	call	_show_str_8x12
                                   3125 ;	User/menu.c: 421: tlen=(Record_GetLRecd()->pl & 0x00ffffff);
                                   3126 ; genCall
      00B6A3 CD 9C 6A         [ 4] 3127 	call	_Record_GetLRecd
                                   3128 ; genAssign
                                   3129 ; genPointerGet
      00B6A6 90 93            [ 1] 3130 	ldw	y, x
      00B6A8 90 EE 08         [ 2] 3131 	ldw	y, (0x8, y)
      00B6AB EE 06            [ 2] 3132 	ldw	x, (0x6, x)
                                   3133 ; genAnd
      00B6AD 17 03            [ 2] 3134 	ldw	(0x03, sp), y
      00B6AF 41               [ 1] 3135 	exg	a, xl
      00B6B0 6B 02            [ 1] 3136 	ld	(0x02, sp), a
      00B6B2 41               [ 1] 3137 	exg	a, xl
      00B6B3 0F 01            [ 1] 3138 	clr	(0x01, sp)
                                   3139 ;	User/menu.c: 422: phase=(Record_GetLRecd()->pl & 0xff000000)>>24;
                                   3140 ; genCall
      00B6B5 CD 9C 6A         [ 4] 3141 	call	_Record_GetLRecd
                                   3142 ; genAssign
                                   3143 ; genPointerGet
                                   3144 ; peephole 0w removed dead load into y from x.
                                   3145 ; peephole 0w removed dead load into y from (0x8, y).
      00B6B8 EE 06            [ 2] 3146 	ldw	x, (0x6, x)
                                   3147 ; genAnd
                                   3148 ; peephole 3 removed dead clrw of y.
      00B6BA 0F 1C            [ 1] 3149 	clr	(0x1c, sp)
      00B6BC 9E               [ 1] 3150 	ld	a, xh
                                   3151 ; genGetByte
                                   3152 ;	User/menu.c: 424: memset(buf,0,20);
                                   3153 ; genIPush
      00B6BD 88               [ 1] 3154 	push	a
      00B6BE 4B 14            [ 1] 3155 	push	#0x14
      00B6C0 4B 00            [ 1] 3156 	push	#0x00
                                   3157 ; genIPush
      00B6C2 5F               [ 1] 3158 	clrw	x
      00B6C3 89               [ 2] 3159 	pushw	x
                                   3160 ; genSend
      00B6C4 96               [ 1] 3161 	ldw	x, sp
      00B6C5 1C 00 0A         [ 2] 3162 	addw	x, #10
                                   3163 ; genCall
      00B6C8 CD ED FE         [ 4] 3164 	call	_memset
      00B6CB 84               [ 1] 3165 	pop	a
                                   3166 ;	User/menu.c: 425: switch(phase)
                                   3167 ; genCmp
                                   3168 ; genCmpTnz
      00B6CC A1 06            [ 1] 3169 	cp	a, #0x06
                                   3170 ; peephole j5 changed absolute to relative unconditional jump.
      00B6CE 22 74            [ 1] 3171 	jrugt	00110$
                                   3172 ; peephole j17 removed jp by using inverse jump logic
                                   3173 ; peephole j30 removed unused label 00139$.
                                   3174 ; skipping generated iCode
                                   3175 ; genJumpTab
      00B6D0 5F               [ 1] 3176 	clrw	x
      00B6D1 97               [ 1] 3177 	ld	xl, a
      00B6D2 58               [ 2] 3178 	sllw	x
      00B6D3 DE B6 D7         [ 2] 3179 	ldw	x, (#00140$, x)
      00B6D6 FC               [ 2] 3180 	jp	(x)
      00B6D7                       3181 00140$:
      00B6D7 B7 44                 3182 	.dw	#00110$
      00B6D9 B6 E5                 3183 	.dw	#00104$
      00B6DB B6 F5                 3184 	.dw	#00105$
      00B6DD B7 05                 3185 	.dw	#00106$
      00B6DF B7 15                 3186 	.dw	#00107$
      00B6E1 B7 25                 3187 	.dw	#00108$
      00B6E3 B7 35                 3188 	.dw	#00109$
                                   3189 ;	User/menu.c: 427: case 1: mini_sprintf(buf,"A-D"); break;
                                   3190 ; genLabel
      00B6E5                       3191 00104$:
                                   3192 ; skipping iCode since result will be rematerialized
                                   3193 ; genCast
                                   3194 ; genAssign
      00B6E5 AE 83 1C         [ 2] 3195 	ldw	x, #(___str_10+0)
                                   3196 ; genIPush
      00B6E8 89               [ 2] 3197 	pushw	x
                                   3198 ; genIPush
      00B6E9 96               [ 1] 3199 	ldw	x, sp
      00B6EA 1C 00 07         [ 2] 3200 	addw	x, #7
      00B6ED 89               [ 2] 3201 	pushw	x
                                   3202 ; genCall
      00B6EE CD 9B 24         [ 4] 3203 	call	_mini_sprintf
      00B6F1 5B 04            [ 2] 3204 	addw	sp, #4
                                   3205 ; genGoto
      00B6F3 20 51            [ 2] 3206 	jra	00111$
                                   3207 ; peephole j5 changed absolute to relative unconditional jump.
                                   3208 ;	User/menu.c: 428: case 2: mini_sprintf(buf,"B-D"); break;
                                   3209 ; genLabel
      00B6F5                       3210 00105$:
                                   3211 ; skipping iCode since result will be rematerialized
                                   3212 ; genCast
                                   3213 ; genAssign
      00B6F5 AE 83 20         [ 2] 3214 	ldw	x, #(___str_11+0)
                                   3215 ; genIPush
      00B6F8 89               [ 2] 3216 	pushw	x
                                   3217 ; genIPush
      00B6F9 96               [ 1] 3218 	ldw	x, sp
      00B6FA 1C 00 07         [ 2] 3219 	addw	x, #7
      00B6FD 89               [ 2] 3220 	pushw	x
                                   3221 ; genCall
      00B6FE CD 9B 24         [ 4] 3222 	call	_mini_sprintf
      00B701 5B 04            [ 2] 3223 	addw	sp, #4
                                   3224 ; genGoto
      00B703 20 41            [ 2] 3225 	jra	00111$
                                   3226 ; peephole j5 changed absolute to relative unconditional jump.
                                   3227 ;	User/menu.c: 429: case 3: mini_sprintf(buf,"A-B"); break;
                                   3228 ; genLabel
      00B705                       3229 00106$:
                                   3230 ; skipping iCode since result will be rematerialized
                                   3231 ; genCast
                                   3232 ; genAssign
      00B705 AE 83 28         [ 2] 3233 	ldw	x, #(___str_13+0)
                                   3234 ; genIPush
      00B708 89               [ 2] 3235 	pushw	x
                                   3236 ; genIPush
      00B709 96               [ 1] 3237 	ldw	x, sp
      00B70A 1C 00 07         [ 2] 3238 	addw	x, #7
      00B70D 89               [ 2] 3239 	pushw	x
                                   3240 ; genCall
      00B70E CD 9B 24         [ 4] 3241 	call	_mini_sprintf
      00B711 5B 04            [ 2] 3242 	addw	sp, #4
                                   3243 ; genGoto
      00B713 20 31            [ 2] 3244 	jra	00111$
                                   3245 ; peephole j5 changed absolute to relative unconditional jump.
                                   3246 ;	User/menu.c: 430: case 4: mini_sprintf(buf,"C-D"); break;
                                   3247 ; genLabel
      00B715                       3248 00107$:
                                   3249 ; skipping iCode since result will be rematerialized
                                   3250 ; genCast
                                   3251 ; genAssign
      00B715 AE 83 24         [ 2] 3252 	ldw	x, #(___str_12+0)
                                   3253 ; genIPush
      00B718 89               [ 2] 3254 	pushw	x
                                   3255 ; genIPush
      00B719 96               [ 1] 3256 	ldw	x, sp
      00B71A 1C 00 07         [ 2] 3257 	addw	x, #7
      00B71D 89               [ 2] 3258 	pushw	x
                                   3259 ; genCall
      00B71E CD 9B 24         [ 4] 3260 	call	_mini_sprintf
      00B721 5B 04            [ 2] 3261 	addw	sp, #4
                                   3262 ; genGoto
      00B723 20 21            [ 2] 3263 	jra	00111$
                                   3264 ; peephole j5 changed absolute to relative unconditional jump.
                                   3265 ;	User/menu.c: 431: case 5: mini_sprintf(buf,"A-C"); break;
                                   3266 ; genLabel
      00B725                       3267 00108$:
                                   3268 ; skipping iCode since result will be rematerialized
                                   3269 ; genCast
                                   3270 ; genAssign
      00B725 AE 83 2C         [ 2] 3271 	ldw	x, #(___str_14+0)
                                   3272 ; genIPush
      00B728 89               [ 2] 3273 	pushw	x
                                   3274 ; genIPush
      00B729 96               [ 1] 3275 	ldw	x, sp
      00B72A 1C 00 07         [ 2] 3276 	addw	x, #7
      00B72D 89               [ 2] 3277 	pushw	x
                                   3278 ; genCall
      00B72E CD 9B 24         [ 4] 3279 	call	_mini_sprintf
      00B731 5B 04            [ 2] 3280 	addw	sp, #4
                                   3281 ; genGoto
      00B733 20 11            [ 2] 3282 	jra	00111$
                                   3283 ; peephole j5 changed absolute to relative unconditional jump.
                                   3284 ;	User/menu.c: 432: case 6: mini_sprintf(buf,"B-C"); break;
                                   3285 ; genLabel
      00B735                       3286 00109$:
                                   3287 ; skipping iCode since result will be rematerialized
                                   3288 ; genCast
                                   3289 ; genAssign
      00B735 AE 83 30         [ 2] 3290 	ldw	x, #(___str_15+0)
                                   3291 ; genIPush
      00B738 89               [ 2] 3292 	pushw	x
                                   3293 ; genIPush
      00B739 96               [ 1] 3294 	ldw	x, sp
      00B73A 1C 00 07         [ 2] 3295 	addw	x, #7
      00B73D 89               [ 2] 3296 	pushw	x
                                   3297 ; genCall
      00B73E CD 9B 24         [ 4] 3298 	call	_mini_sprintf
      00B741 5B 04            [ 2] 3299 	addw	sp, #4
                                   3300 ; genGoto
                                   3301 ; peephole j5 changed absolute to relative unconditional jump.
                                   3302 ;	User/menu.c: 433: default: buf[0] = 0; break;
                                   3303 ; genLabel
                                   3304 ; genPointerSet
                                   3305 ;	User/menu.c: 434: }
                                   3306 ; genLabel
      00B743 C5                    3307 	.byte 0xc5
                                   3308 ; peephole jrf7 used bcp opcode to jump over 2-byte instruction.
      00B744                       3309 00110$:
      00B744 0F 05            [ 1] 3310 	clr	(0x05, sp)
      00B746                       3311 00111$:
                                   3312 ;	User/menu.c: 435: show_str_8x12(7, 2, (uint8_t *)buf);
                                   3313 ; genIPush
      00B746 96               [ 1] 3314 	ldw	x, sp
      00B747 1C 00 05         [ 2] 3315 	addw	x, #5
      00B74A 89               [ 2] 3316 	pushw	x
                                   3317 ; genIPush
      00B74B 4B 02            [ 1] 3318 	push	#0x02
      00B74D 4B 00            [ 1] 3319 	push	#0x00
                                   3320 ; genSend
      00B74F AE 00 07         [ 2] 3321 	ldw	x, #0x0007
                                   3322 ; genCall
      00B752 CD BE 0E         [ 4] 3323 	call	_show_str_8x12
                                   3324 ;	User/menu.c: 438: memset(buf,0,20);
                                   3325 ; genIPush
      00B755 4B 14            [ 1] 3326 	push	#0x14
      00B757 4B 00            [ 1] 3327 	push	#0x00
                                   3328 ; genIPush
      00B759 5F               [ 1] 3329 	clrw	x
      00B75A 89               [ 2] 3330 	pushw	x
                                   3331 ; genSend
      00B75B 96               [ 1] 3332 	ldw	x, sp
      00B75C 1C 00 09         [ 2] 3333 	addw	x, #9
                                   3334 ; genCall
      00B75F CD ED FE         [ 4] 3335 	call	_memset
                                   3336 ;	User/menu.c: 439: mini_sprintf(buf,"%7ld",tlen);
                                   3337 ; skipping iCode since result will be rematerialized
                                   3338 ; skipping iCode since result will be rematerialized
                                   3339 ; genIPush
      00B762 1E 03            [ 2] 3340 	ldw	x, (0x03, sp)
      00B764 89               [ 2] 3341 	pushw	x
      00B765 1E 03            [ 2] 3342 	ldw	x, (0x03, sp)
      00B767 89               [ 2] 3343 	pushw	x
                                   3344 ; genIPush
      00B768 4B CA            [ 1] 3345 	push	#<(___str_39+0)
      00B76A 4B 83            [ 1] 3346 	push	#((___str_39+0) >> 8)
                                   3347 ; genIPush
      00B76C 96               [ 1] 3348 	ldw	x, sp
      00B76D 1C 00 0B         [ 2] 3349 	addw	x, #11
      00B770 89               [ 2] 3350 	pushw	x
                                   3351 ; genCall
      00B771 CD 9B 24         [ 4] 3352 	call	_mini_sprintf
      00B774 5B 08            [ 2] 3353 	addw	sp, #8
                                   3354 ;	User/menu.c: 440: show_str_8x12(7, 40, (uint8_t *)buf);
                                   3355 ; genIPush
      00B776 96               [ 1] 3356 	ldw	x, sp
      00B777 1C 00 05         [ 2] 3357 	addw	x, #5
      00B77A 89               [ 2] 3358 	pushw	x
                                   3359 ; genIPush
      00B77B 4B 28            [ 1] 3360 	push	#0x28
      00B77D 4B 00            [ 1] 3361 	push	#0x00
                                   3362 ; genSend
      00B77F AE 00 07         [ 2] 3363 	ldw	x, #0x0007
                                   3364 ; genCall
      00B782 CD BE 0E         [ 4] 3365 	call	_show_str_8x12
                                   3366 ;	User/menu.c: 443: if(adjustdt.dt[11])
                                   3367 ; genPointerGet
                                   3368 ; genIfx
      00B785 C6 05 4A         [ 1] 3369 	ld	a, _adjustdt+12
                                   3370 ; peephole 30 removed redundant tnz.
                                   3371 ; peephole j5 changed absolute to relative unconditional jump.
      00B788 27 10            [ 1] 3372 	jreq	00113$
                                   3373 ; peephole j10 removed jra by using inverse jump logic
                                   3374 ; peephole j30 removed unused label 00141$.
                                   3375 ;	User/menu.c: 444: show_hz_12x12(7,100,"QS");
                                   3376 ; skipping iCode since result will be rematerialized
                                   3377 ; skipping iCode since result will be rematerialized
                                   3378 ; genIPush
      00B78A 4B CF            [ 1] 3379 	push	#<(___str_40+0)
      00B78C 4B 83            [ 1] 3380 	push	#((___str_40+0) >> 8)
                                   3381 ; genIPush
      00B78E 4B 64            [ 1] 3382 	push	#0x64
      00B790 4B 00            [ 1] 3383 	push	#0x00
                                   3384 ; genSend
      00B792 AE 00 07         [ 2] 3385 	ldw	x, #0x0007
                                   3386 ; genCall
      00B795 CD BF 49         [ 4] 3387 	call	_show_hz_12x12
                                   3388 ; genGoto
      00B798 20 0E            [ 2] 3389 	jra	00114$
                                   3390 ; peephole j5 changed absolute to relative unconditional jump.
                                   3391 ; genLabel
      00B79A                       3392 00113$:
                                   3393 ;	User/menu.c: 446: show_str_7x8(7,100,UI_TITLE_COND);
                                   3394 ; skipping iCode since result will be rematerialized
                                   3395 ; skipping iCode since result will be rematerialized
                                   3396 ; genIPush
      00B79A 4B D2            [ 1] 3397 	push	#<(___str_41+0)
      00B79C 4B 83            [ 1] 3398 	push	#((___str_41+0) >> 8)
                                   3399 ; genIPush
      00B79E 4B 64            [ 1] 3400 	push	#0x64
      00B7A0 4B 00            [ 1] 3401 	push	#0x00
                                   3402 ; genSend
      00B7A2 AE 00 07         [ 2] 3403 	ldw	x, #0x0007
                                   3404 ; genCall
      00B7A5 CD BE C6         [ 4] 3405 	call	_show_str_7x8
                                   3406 ; genLabel
      00B7A8                       3407 00114$:
                                   3408 ;	User/menu.c: 448: Draw_Page_Num(6);
                                   3409 ; genSend
      00B7A8 A6 06            [ 1] 3410 	ld	a, #0x06
                                   3411 ; genCall
      00B7AA CD AF 49         [ 4] 3412 	call	_Draw_Page_Num
                                   3413 ; genLabel
                                   3414 ; peephole j30 removed unused label 00115$.
                                   3415 ;	User/menu.c: 449: }
                                   3416 ; genEndFunction
      00B7AD 5B 1E            [ 2] 3417 	addw	sp, #30
      00B7AF 81               [ 4] 3418 	ret
                                   3419 ;	Total Show_Phase_Rec function size at codegen: 3 bytes.
                                   3420 ;	User/menu.c: 451: void DspFour(void)
                                   3421 ; genLabel
                                   3422 ;	-----------------------------------------
                                   3423 ;	 function DspFour
                                   3424 ;	-----------------------------------------
                                   3425 ;	Register assignment might be sub-optimal.
                                   3426 ;	Stack space usage: 0 bytes.
      00B7B0                       3427 _DspFour:
                                   3428 ;	User/menu.c: 453: if(adjustdt.dt[11])
                                   3429 ; skipping iCode since result will be rematerialized
                                   3430 ; genPointerGet
                                   3431 ; genIfx
      00B7B0 C6 05 4A         [ 1] 3432 	ld	a, _adjustdt+12
                                   3433 ; peephole 30 removed redundant tnz.
                                   3434 ; peephole j5 changed absolute to relative unconditional jump.
      00B7B3 27 0F            [ 1] 3435 	jreq	00102$
                                   3436 ; peephole j10 removed jra by using inverse jump logic
                                   3437 ; peephole j30 removed unused label 00142$.
                                   3438 ;	User/menu.c: 454: show_hz_12x12(1,24,"ACEG");//事件记录
                                   3439 ; skipping iCode since result will be rematerialized
                                   3440 ; skipping iCode since result will be rematerialized
                                   3441 ; genIPush
      00B7B5 4B B9            [ 1] 3442 	push	#<(___str_36+0)
      00B7B7 4B 83            [ 1] 3443 	push	#((___str_36+0) >> 8)
                                   3444 ; genIPush
      00B7B9 4B 18            [ 1] 3445 	push	#0x18
      00B7BB 4B 00            [ 1] 3446 	push	#0x00
                                   3447 ; genSend
      00B7BD 5F               [ 1] 3448 	clrw	x
      00B7BE 5C               [ 1] 3449 	incw	x
                                   3450 ; genCall
      00B7BF CD BF 49         [ 4] 3451 	call	_show_hz_12x12
                                   3452 ; genGoto
      00B7C2 20 0D            [ 2] 3453 	jra	00103$
                                   3454 ; peephole j5 changed absolute to relative unconditional jump.
                                   3455 ; genLabel
      00B7C4                       3456 00102$:
                                   3457 ;	User/menu.c: 456: show_str_7x8(1,24,UI_TITLE_RECORD);
                                   3458 ; skipping iCode since result will be rematerialized
                                   3459 ; skipping iCode since result will be rematerialized
                                   3460 ; genIPush
      00B7C4 4B BE            [ 1] 3461 	push	#<(___str_37+0)
      00B7C6 4B 83            [ 1] 3462 	push	#((___str_37+0) >> 8)
                                   3463 ; genIPush
      00B7C8 4B 18            [ 1] 3464 	push	#0x18
      00B7CA 4B 00            [ 1] 3465 	push	#0x00
                                   3466 ; genSend
      00B7CC 5F               [ 1] 3467 	clrw	x
      00B7CD 5C               [ 1] 3468 	incw	x
                                   3469 ; genCall
      00B7CE CD BE C6         [ 4] 3470 	call	_show_str_7x8
                                   3471 ; genLabel
      00B7D1                       3472 00103$:
                                   3473 ;	User/menu.c: 459: if(data_index.used)//有效数据
                                   3474 ; skipping iCode since result will be rematerialized
                                   3475 ; skipping iCode since result will be rematerialized
                                   3476 ; genPointerGet
      00B7D1 C6 04 9F         [ 1] 3477 	ld	a, _data_index+2
                                   3478 ;	User/menu.c: 462: data_index.r=data_index.w-1;
                                   3479 ; genCast
                                   3480 ; genAssign
      00B7D4 AE 04 9D         [ 2] 3481 	ldw	x, #(_data_index+0)
                                   3482 ;	User/menu.c: 459: if(data_index.used)//有效数据
                                   3483 ; genIfx
      00B7D7 4D               [ 1] 3484 	tnz	a
                                   3485 ; peephole j5 changed absolute to relative unconditional jump.
      00B7D8 27 0E            [ 1] 3486 	jreq	00108$
                                   3487 ; peephole j10 removed jra by using inverse jump logic
                                   3488 ; peephole j30 removed unused label 00143$.
                                   3489 ;	User/menu.c: 461: if(data_index.w>0)
                                   3490 ; skipping iCode since result will be rematerialized
                                   3491 ; genPointerGet
                                   3492 ; genIfx
      00B7DA C6 04 9E         [ 1] 3493 	ld	a, _data_index+1
                                   3494 ; peephole 30 removed redundant tnz.
                                   3495 ; peephole j5 changed absolute to relative unconditional jump.
      00B7DD 27 04            [ 1] 3496 	jreq	00105$
                                   3497 ; peephole j10 removed jra by using inverse jump logic
                                   3498 ; peephole j30 removed unused label 00144$.
                                   3499 ;	User/menu.c: 462: data_index.r=data_index.w-1;
                                   3500 ; genCast
                                   3501 ; genAssign
                                   3502 ; genMinus
      00B7DF 4A               [ 1] 3503 	dec	a
                                   3504 ; genPointerSet
      00B7E0 F7               [ 1] 3505 	ld	(x), a
                                   3506 ; genGoto
      00B7E1 20 06            [ 2] 3507 	jra	00109$
                                   3508 ; peephole j5 changed absolute to relative unconditional jump.
                                   3509 ; genLabel
      00B7E3                       3510 00105$:
                                   3511 ;	User/menu.c: 464: data_index.r=89;
                                   3512 ; genPointerSet
      00B7E3 A6 59            [ 1] 3513 	ld	a, #0x59
      00B7E5 F7               [ 1] 3514 	ld	(x), a
                                   3515 ; genGoto
      00B7E6 20 01            [ 2] 3516 	jra	00109$
                                   3517 ; peephole j5 changed absolute to relative unconditional jump.
                                   3518 ; genLabel
      00B7E8                       3519 00108$:
                                   3520 ;	User/menu.c: 467: data_index.r=0;
                                   3521 ; genPointerSet
      00B7E8 7F               [ 1] 3522 	clr	(x)
                                   3523 ; genLabel
      00B7E9                       3524 00109$:
                                   3525 ;	User/menu.c: 469: if(Record_LoadHistory(2))
                                   3526 ; genSend
      00B7E9 A6 02            [ 1] 3527 	ld	a, #0x02
                                   3528 ; genCall
      00B7EB CD 9C 94         [ 4] 3529 	call	_Record_LoadHistory
                                   3530 ; genIfx
      00B7EE 4D               [ 1] 3531 	tnz	a
      00B7EF 26 01            [ 1] 3532 	jrne	00145$
      00B7F1 81               [ 4] 3533 	ret
                                   3534 ; peephole j2e replaced jump by return.
      00B7F2                       3535 00145$:
                                   3536 ;	User/menu.c: 471: Show_Phase_Rec();
                                   3537 ; genCall
                                   3538 ; genLabel
                                   3539 ; peephole j30 removed unused label 00112$.
                                   3540 ;	User/menu.c: 473: }
                                   3541 ; genEndFunction
      00B7F2 CC B5 9C         [ 2] 3542 	jp	_Show_Phase_Rec
                                   3543 ; peephole 52 removed unreachable ret.
                                   3544 ;	Total DspFour function size at codegen: 1 bytes.
                                   3545 ;	User/menu.c: 475: void Left_Four(void)
                                   3546 ; genLabel
                                   3547 ;	-----------------------------------------
                                   3548 ;	 function Left_Four
                                   3549 ;	-----------------------------------------
                                   3550 ;	Register assignment is optimal.
                                   3551 ;	Stack space usage: 0 bytes.
      00B7F5                       3552 _Left_Four:
                                   3553 ;	User/menu.c: 477: clear_screen();
                                   3554 ; genCall
      00B7F5 CD BD ED         [ 4] 3555 	call	_clear_screen
                                   3556 ;	User/menu.c: 478: if(Record_LoadHistory(0))
                                   3557 ; genSend
      00B7F8 4F               [ 1] 3558 	clr	a
                                   3559 ; genCall
      00B7F9 CD 9C 94         [ 4] 3560 	call	_Record_LoadHistory
                                   3561 ; genIfx
      00B7FC 4D               [ 1] 3562 	tnz	a
      00B7FD 26 01            [ 1] 3563 	jrne	00112$
      00B7FF 81               [ 4] 3564 	ret
                                   3565 ; peephole j2e replaced jump by return.
      00B800                       3566 00112$:
                                   3567 ;	User/menu.c: 480: Show_Phase_Rec();
                                   3568 ; genCall
                                   3569 ; genLabel
                                   3570 ; peephole j30 removed unused label 00103$.
                                   3571 ;	User/menu.c: 482: }
                                   3572 ; genEndFunction
      00B800 CC B5 9C         [ 2] 3573 	jp	_Show_Phase_Rec
                                   3574 ; peephole 52 removed unreachable ret.
                                   3575 ;	Total Left_Four function size at codegen: 1 bytes.
                                   3576 ;	User/menu.c: 484: void Right_Four(void)
                                   3577 ; genLabel
                                   3578 ;	-----------------------------------------
                                   3579 ;	 function Right_Four
                                   3580 ;	-----------------------------------------
                                   3581 ;	Register assignment is optimal.
                                   3582 ;	Stack space usage: 0 bytes.
      00B803                       3583 _Right_Four:
                                   3584 ;	User/menu.c: 486: clear_screen();
                                   3585 ; genCall
      00B803 CD BD ED         [ 4] 3586 	call	_clear_screen
                                   3587 ;	User/menu.c: 487: if(Record_LoadHistory(1))
                                   3588 ; genSend
      00B806 A6 01            [ 1] 3589 	ld	a, #0x01
                                   3590 ; genCall
      00B808 CD 9C 94         [ 4] 3591 	call	_Record_LoadHistory
                                   3592 ; genIfx
      00B80B 4D               [ 1] 3593 	tnz	a
      00B80C 26 01            [ 1] 3594 	jrne	00112$
      00B80E 81               [ 4] 3595 	ret
                                   3596 ; peephole j2e replaced jump by return.
      00B80F                       3597 00112$:
                                   3598 ;	User/menu.c: 489: Show_Phase_Rec();
                                   3599 ; genCall
                                   3600 ; genLabel
                                   3601 ; peephole j30 removed unused label 00103$.
                                   3602 ;	User/menu.c: 492: }
                                   3603 ; genEndFunction
      00B80F CC B5 9C         [ 2] 3604 	jp	_Show_Phase_Rec
                                   3605 ; peephole 52 removed unreachable ret.
                                   3606 ;	Total Right_Four function size at codegen: 1 bytes.
                                   3607 ;	User/menu.c: 495: void show_datetime(void)
                                   3608 ; genLabel
                                   3609 ;	-----------------------------------------
                                   3610 ;	 function show_datetime
                                   3611 ;	-----------------------------------------
                                   3612 ;	Register assignment might be sub-optimal.
                                   3613 ;	Stack space usage: 6 bytes.
      00B812                       3614 _show_datetime:
      00B812 52 06            [ 2] 3615 	sub	sp, #6
                                   3616 ;	User/menu.c: 499: show_str_8x12(1,1,UI_ICON_ARROW_L);
                                   3617 ; skipping iCode since result will be rematerialized
                                   3618 ; skipping iCode since result will be rematerialized
                                   3619 ; genIPush
      00B814 4B F3            [ 1] 3620 	push	#<(___str_2+0)
      00B816 4B 82            [ 1] 3621 	push	#((___str_2+0) >> 8)
                                   3622 ; genIPush
      00B818 4B 01            [ 1] 3623 	push	#0x01
      00B81A 4B 00            [ 1] 3624 	push	#0x00
                                   3625 ; genSend
      00B81C 5F               [ 1] 3626 	clrw	x
      00B81D 5C               [ 1] 3627 	incw	x
                                   3628 ; genCall
      00B81E CD BE 0E         [ 4] 3629 	call	_show_str_8x12
                                   3630 ;	User/menu.c: 500: show_str_8x12(1,120,UI_ICON_ARROW_R);
                                   3631 ; skipping iCode since result will be rematerialized
                                   3632 ; skipping iCode since result will be rematerialized
                                   3633 ; genIPush
      00B821 4B F5            [ 1] 3634 	push	#<(___str_3+0)
      00B823 4B 82            [ 1] 3635 	push	#((___str_3+0) >> 8)
                                   3636 ; genIPush
      00B825 4B 78            [ 1] 3637 	push	#0x78
      00B827 4B 00            [ 1] 3638 	push	#0x00
                                   3639 ; genSend
      00B829 5F               [ 1] 3640 	clrw	x
      00B82A 5C               [ 1] 3641 	incw	x
                                   3642 ; genCall
      00B82B CD BE 0E         [ 4] 3643 	call	_show_str_8x12
                                   3644 ;	User/menu.c: 501: show_str_8x12(3,1,"R");
                                   3645 ; skipping iCode since result will be rematerialized
                                   3646 ; skipping iCode since result will be rematerialized
                                   3647 ; genIPush
      00B82E 4B D7            [ 1] 3648 	push	#<(___str_42+0)
      00B830 4B 83            [ 1] 3649 	push	#((___str_42+0) >> 8)
                                   3650 ; genIPush
      00B832 4B 01            [ 1] 3651 	push	#0x01
      00B834 4B 00            [ 1] 3652 	push	#0x00
                                   3653 ; genSend
      00B836 AE 00 03         [ 2] 3654 	ldw	x, #0x0003
                                   3655 ; genCall
      00B839 CD BE 0E         [ 4] 3656 	call	_show_str_8x12
                                   3657 ;	User/menu.c: 502: show_str_8x12(7,1,"S");
                                   3658 ; skipping iCode since result will be rematerialized
                                   3659 ; skipping iCode since result will be rematerialized
                                   3660 ; genIPush
      00B83C 4B D9            [ 1] 3661 	push	#<(___str_43+0)
      00B83E 4B 83            [ 1] 3662 	push	#((___str_43+0) >> 8)
                                   3663 ; genIPush
      00B840 4B 01            [ 1] 3664 	push	#0x01
      00B842 4B 00            [ 1] 3665 	push	#0x00
                                   3666 ; genSend
      00B844 AE 00 07         [ 2] 3667 	ldw	x, #0x0007
                                   3668 ; genCall
      00B847 CD BE 0E         [ 4] 3669 	call	_show_str_8x12
                                   3670 ;	User/menu.c: 504: Draw_Page_Num(7);
                                   3671 ; genSend
      00B84A A6 07            [ 1] 3672 	ld	a, #0x07
                                   3673 ; genCall
      00B84C CD AF 49         [ 4] 3674 	call	_Draw_Page_Num
                                   3675 ;	User/menu.c: 506: mini_sprintf(datestr, "%04d-%02d-%02d",adjustdt.dt[0]+2000,adjustdt.dt[1],adjustdt.dt[2]);
                                   3676 ; skipping iCode since result will be rematerialized
                                   3677 ; skipping iCode since result will be rematerialized
                                   3678 ; genPointerGet
      00B84F C6 05 41         [ 1] 3679 	ld	a, _adjustdt+3
                                   3680 ; genCast
                                   3681 ; genAssign
      00B852 5F               [ 1] 3682 	clrw	x
      00B853 97               [ 1] 3683 	ld	xl, a
                                   3684 ; skipping iCode since result will be rematerialized
                                   3685 ; genPointerGet
      00B854 C6 05 40         [ 1] 3686 	ld	a, _adjustdt+2
                                   3687 ; genCast
                                   3688 ; genAssign
      00B857 6B 06            [ 1] 3689 	ld	(0x06, sp), a
      00B859 0F 05            [ 1] 3690 	clr	(0x05, sp)
                                   3691 ; skipping iCode since result will be rematerialized
                                   3692 ; genPointerGet
      00B85B C6 05 3F         [ 1] 3693 	ld	a, _adjustdt+1
                                   3694 ; genCast
                                   3695 ; genAssign
      00B85E 90 5F            [ 1] 3696 	clrw	y
                                   3697 ; genPlus
      00B860 90 97            [ 1] 3698 	ld	yl, a
      00B862 72 A9 07 D0      [ 2] 3699 	addw	y, #0x07d0
                                   3700 ; skipping iCode since result will be rematerialized
                                   3701 ; skipping iCode since result will be rematerialized
                                   3702 ; skipping iCode since result will be rematerialized
                                   3703 ; skipping iCode since result will be rematerialized
                                   3704 ; genIPush
      00B866 89               [ 2] 3705 	pushw	x
                                   3706 ; genIPush
      00B867 1E 07            [ 2] 3707 	ldw	x, (0x07, sp)
      00B869 89               [ 2] 3708 	pushw	x
                                   3709 ; genIPush
      00B86A 90 89            [ 2] 3710 	pushw	y
                                   3711 ; genIPush
      00B86C 4B 82            [ 1] 3712 	push	#<(___str_32+0)
      00B86E 4B 83            [ 1] 3713 	push	#((___str_32+0) >> 8)
                                   3714 ; genIPush
      00B870 4B 61            [ 1] 3715 	push	#<(_datestr+0)
      00B872 4B 04            [ 1] 3716 	push	#((_datestr+0) >> 8)
                                   3717 ; genCall
      00B874 CD 9B 24         [ 4] 3718 	call	_mini_sprintf
      00B877 5B 0A            [ 2] 3719 	addw	sp, #10
                                   3720 ;	User/menu.c: 507: mini_sprintf(timestr, "%02d:%02d:%02d",adjustdt.dt[3],adjustdt.dt[4],adjustdt.dt[5]);
                                   3721 ; skipping iCode since result will be rematerialized
                                   3722 ; genPointerGet
      00B879 C6 05 44         [ 1] 3723 	ld	a, _adjustdt+6
                                   3724 ; genCast
                                   3725 ; genAssign
      00B87C 5F               [ 1] 3726 	clrw	x
      00B87D 97               [ 1] 3727 	ld	xl, a
                                   3728 ; skipping iCode since result will be rematerialized
                                   3729 ; genPointerGet
      00B87E C6 05 43         [ 1] 3730 	ld	a, _adjustdt+5
                                   3731 ; genCast
                                   3732 ; genAssign
      00B881 6B 04            [ 1] 3733 	ld	(0x04, sp), a
      00B883 0F 03            [ 1] 3734 	clr	(0x03, sp)
                                   3735 ; skipping iCode since result will be rematerialized
                                   3736 ; genPointerGet
      00B885 C6 05 42         [ 1] 3737 	ld	a, _adjustdt+4
                                   3738 ; genCast
                                   3739 ; genAssign
      00B888 0F 05            [ 1] 3740 	clr	(0x05, sp)
                                   3741 ; skipping iCode since result will be rematerialized
                                   3742 ; skipping iCode since result will be rematerialized
                                   3743 ; skipping iCode since result will be rematerialized
                                   3744 ; skipping iCode since result will be rematerialized
                                   3745 ; genIPush
      00B88A 89               [ 2] 3746 	pushw	x
                                   3747 ; genIPush
      00B88B 1E 05            [ 2] 3748 	ldw	x, (0x05, sp)
      00B88D 89               [ 2] 3749 	pushw	x
                                   3750 ; genIPush
      00B88E 88               [ 1] 3751 	push	a
      00B88F 4F               [ 1] 3752 	clr	a
      00B890 88               [ 1] 3753 	push	a
                                   3754 ; genIPush
      00B891 4B 91            [ 1] 3755 	push	#<(___str_33+0)
      00B893 4B 83            [ 1] 3756 	push	#((___str_33+0) >> 8)
                                   3757 ; genIPush
      00B895 4B 71            [ 1] 3758 	push	#<(_timestr+0)
      00B897 4B 04            [ 1] 3759 	push	#((_timestr+0) >> 8)
                                   3760 ; genCall
      00B899 CD 9B 24         [ 4] 3761 	call	_mini_sprintf
      00B89C 5B 0A            [ 2] 3762 	addw	sp, #10
                                   3763 ;	User/menu.c: 508: show_str_8x12(1,25,(uint8_t *)datestr);//3
                                   3764 ; genIPush
      00B89E 4B 61            [ 1] 3765 	push	#<(_datestr+0)
      00B8A0 4B 04            [ 1] 3766 	push	#((_datestr+0) >> 8)
                                   3767 ; genIPush
      00B8A2 4B 19            [ 1] 3768 	push	#0x19
      00B8A4 4B 00            [ 1] 3769 	push	#0x00
                                   3770 ; genSend
      00B8A6 5F               [ 1] 3771 	clrw	x
      00B8A7 5C               [ 1] 3772 	incw	x
                                   3773 ; genCall
      00B8A8 CD BE 0E         [ 4] 3774 	call	_show_str_8x12
                                   3775 ;	User/menu.c: 509: show_str_8x12(3,25,(uint8_t *)timestr);//6
                                   3776 ; genIPush
      00B8AB 4B 71            [ 1] 3777 	push	#<(_timestr+0)
      00B8AD 4B 04            [ 1] 3778 	push	#((_timestr+0) >> 8)
                                   3779 ; genIPush
      00B8AF 4B 19            [ 1] 3780 	push	#0x19
      00B8B1 4B 00            [ 1] 3781 	push	#0x00
                                   3782 ; genSend
      00B8B3 AE 00 03         [ 2] 3783 	ldw	x, #0x0003
                                   3784 ; genCall
      00B8B6 CD BE 0E         [ 4] 3785 	call	_show_str_8x12
                                   3786 ;	User/menu.c: 511: memset(tempstr,0,16);
                                   3787 ; skipping iCode since result will be rematerialized
                                   3788 ; skipping iCode since result will be rematerialized
                                   3789 ; genIPush
      00B8B9 4B 10            [ 1] 3790 	push	#0x10
      00B8BB 4B 00            [ 1] 3791 	push	#0x00
                                   3792 ; genIPush
      00B8BD 5F               [ 1] 3793 	clrw	x
      00B8BE 89               [ 2] 3794 	pushw	x
                                   3795 ; genSend
      00B8BF AE 04 81         [ 2] 3796 	ldw	x, #(_tempstr+0)
                                   3797 ; genCall
      00B8C2 CD ED FE         [ 4] 3798 	call	_memset
                                   3799 ;	User/menu.c: 512: mini_sprintf(tempstr,"ID: %02d%02d%02d%02d",adjustdt.dt[6],adjustdt.dt[7],adjustdt.dt[8],adjustdt.dt[9]);
                                   3800 ; skipping iCode since result will be rematerialized
                                   3801 ; genPointerGet
      00B8C5 C6 05 48         [ 1] 3802 	ld	a, _adjustdt+10
                                   3803 ; genCast
                                   3804 ; genAssign
      00B8C8 5F               [ 1] 3805 	clrw	x
      00B8C9 97               [ 1] 3806 	ld	xl, a
                                   3807 ; skipping iCode since result will be rematerialized
                                   3808 ; genPointerGet
      00B8CA C6 05 47         [ 1] 3809 	ld	a, _adjustdt+9
                                   3810 ; genCast
                                   3811 ; genAssign
      00B8CD 6B 02            [ 1] 3812 	ld	(0x02, sp), a
      00B8CF 0F 01            [ 1] 3813 	clr	(0x01, sp)
                                   3814 ; skipping iCode since result will be rematerialized
                                   3815 ; genPointerGet
      00B8D1 C6 05 46         [ 1] 3816 	ld	a, _adjustdt+8
                                   3817 ; genCast
                                   3818 ; genAssign
      00B8D4 6B 04            [ 1] 3819 	ld	(0x04, sp), a
      00B8D6 0F 03            [ 1] 3820 	clr	(0x03, sp)
                                   3821 ; skipping iCode since result will be rematerialized
                                   3822 ; genPointerGet
      00B8D8 C6 05 45         [ 1] 3823 	ld	a, _adjustdt+7
                                   3824 ; genCast
                                   3825 ; genAssign
      00B8DB 0F 05            [ 1] 3826 	clr	(0x05, sp)
                                   3827 ; skipping iCode since result will be rematerialized
                                   3828 ; skipping iCode since result will be rematerialized
                                   3829 ; skipping iCode since result will be rematerialized
                                   3830 ; genIPush
      00B8DD 89               [ 2] 3831 	pushw	x
                                   3832 ; genIPush
      00B8DE 1E 03            [ 2] 3833 	ldw	x, (0x03, sp)
      00B8E0 89               [ 2] 3834 	pushw	x
                                   3835 ; genIPush
      00B8E1 1E 07            [ 2] 3836 	ldw	x, (0x07, sp)
      00B8E3 89               [ 2] 3837 	pushw	x
                                   3838 ; genIPush
      00B8E4 88               [ 1] 3839 	push	a
      00B8E5 4F               [ 1] 3840 	clr	a
      00B8E6 88               [ 1] 3841 	push	a
                                   3842 ; genIPush
      00B8E7 4B DB            [ 1] 3843 	push	#<(___str_44+0)
      00B8E9 4B 83            [ 1] 3844 	push	#((___str_44+0) >> 8)
                                   3845 ; genIPush
      00B8EB 4B 81            [ 1] 3846 	push	#<(_tempstr+0)
      00B8ED 4B 04            [ 1] 3847 	push	#((_tempstr+0) >> 8)
                                   3848 ; genCall
      00B8EF CD 9B 24         [ 4] 3849 	call	_mini_sprintf
      00B8F2 5B 0C            [ 2] 3850 	addw	sp, #12
                                   3851 ;	User/menu.c: 513: show_str_8x12(5,25,(uint8_t *)tempstr);
                                   3852 ; genIPush
      00B8F4 4B 81            [ 1] 3853 	push	#<(_tempstr+0)
      00B8F6 4B 04            [ 1] 3854 	push	#((_tempstr+0) >> 8)
                                   3855 ; genIPush
      00B8F8 4B 19            [ 1] 3856 	push	#0x19
      00B8FA 4B 00            [ 1] 3857 	push	#0x00
                                   3858 ; genSend
      00B8FC AE 00 05         [ 2] 3859 	ldw	x, #0x0005
                                   3860 ; genCall
      00B8FF CD BE 0E         [ 4] 3861 	call	_show_str_8x12
                                   3862 ;	User/menu.c: 516: if(adjustdt.dt[10])//出厂设置
                                   3863 ; skipping iCode since result will be rematerialized
                                   3864 ; genPointerGet
      00B902 C6 05 49         [ 1] 3865 	ld	a, _adjustdt+11
      00B905 6B 02            [ 1] 3866 	ld	(0x02, sp), a
                                   3867 ;	User/menu.c: 517: show_str_8x12(adjustdt.pos[10].y,adjustdt.pos[10].x,"J");
                                   3868 ; skipping iCode since result will be rematerialized
                                   3869 ; skipping iCode since result will be rematerialized
                                   3870 ; genPointerGet
      00B907 C6 05 60         [ 1] 3871 	ld	a, _adjustdt+34
      00B90A 97               [ 1] 3872 	ld	xl, a
                                   3873 ; genPointerGet
      00B90B C6 05 5F         [ 1] 3874 	ld	a, _adjustdt+33
                                   3875 ; genCast
                                   3876 ; genAssign
      00B90E 41               [ 1] 3877 	exg	a, xl
      00B90F 6B 04            [ 1] 3878 	ld	(0x04, sp), a
      00B911 41               [ 1] 3879 	exg	a, xl
      00B912 0F 03            [ 1] 3880 	clr	(0x03, sp)
                                   3881 ; genCast
                                   3882 ; genAssign
      00B914 6B 06            [ 1] 3883 	ld	(0x06, sp), a
      00B916 0F 05            [ 1] 3884 	clr	(0x05, sp)
                                   3885 ;	User/menu.c: 516: if(adjustdt.dt[10])//出厂设置
                                   3886 ; genIfx
      00B918 0D 02            [ 1] 3887 	tnz	(0x02, sp)
                                   3888 ; peephole j5 changed absolute to relative unconditional jump.
      00B91A 27 0E            [ 1] 3889 	jreq	00102$
                                   3890 ; peephole j10 removed jra by using inverse jump logic
                                   3891 ; peephole j30 removed unused label 00133$.
                                   3892 ;	User/menu.c: 517: show_str_8x12(adjustdt.pos[10].y,adjustdt.pos[10].x,"J");
                                   3893 ; skipping iCode since result will be rematerialized
                                   3894 ; skipping iCode since result will be rematerialized
                                   3895 ; genIPush
      00B91C 4B F0            [ 1] 3896 	push	#<(___str_45+0)
      00B91E 4B 83            [ 1] 3897 	push	#((___str_45+0) >> 8)
                                   3898 ; genIPush
      00B920 1E 05            [ 2] 3899 	ldw	x, (0x05, sp)
      00B922 89               [ 2] 3900 	pushw	x
                                   3901 ; genSend
      00B923 1E 09            [ 2] 3902 	ldw	x, (0x09, sp)
                                   3903 ; genCall
      00B925 CD BE 0E         [ 4] 3904 	call	_show_str_8x12
                                   3905 ; genGoto
      00B928 20 0C            [ 2] 3906 	jra	00103$
                                   3907 ; peephole j5 changed absolute to relative unconditional jump.
                                   3908 ; genLabel
      00B92A                       3909 00102$:
                                   3910 ;	User/menu.c: 519: show_str_8x12(adjustdt.pos[10].y,adjustdt.pos[10].x,"K");
                                   3911 ; skipping iCode since result will be rematerialized
                                   3912 ; skipping iCode since result will be rematerialized
                                   3913 ; genIPush
      00B92A 4B F2            [ 1] 3914 	push	#<(___str_46+0)
      00B92C 4B 83            [ 1] 3915 	push	#((___str_46+0) >> 8)
                                   3916 ; genIPush
      00B92E 1E 05            [ 2] 3917 	ldw	x, (0x05, sp)
      00B930 89               [ 2] 3918 	pushw	x
                                   3919 ; genSend
      00B931 1E 09            [ 2] 3920 	ldw	x, (0x09, sp)
                                   3921 ; genCall
      00B933 CD BE 0E         [ 4] 3922 	call	_show_str_8x12
                                   3923 ; genLabel
      00B936                       3924 00103$:
                                   3925 ;	User/menu.c: 521: if(adjustdt.dt[11])//中文界面下显示 “EN”
                                   3926 ; skipping iCode since result will be rematerialized
                                   3927 ; genPointerGet
                                   3928 ;	User/menu.c: 524: show_str_8x12(adjustdt.pos[11].y,adjustdt.pos[11].x,"WK");
                                   3929 ; skipping iCode since result will be rematerialized
                                   3930 ; skipping iCode since result will be rematerialized
                                   3931 ;	User/menu.c: 521: if(adjustdt.dt[11])//中文界面下显示 “EN”
                                   3932 ; genIfx
      00B936 C6 05 4A         [ 1] 3933 	ld	a, _adjustdt+12
                                   3934 ; peephole 30 removed redundant tnz.
                                   3935 ; peephole j5 changed absolute to relative unconditional jump.
      00B939 27 25            [ 1] 3936 	jreq	00105$
                                   3937 ; peephole j10 removed jra by using inverse jump logic
                                   3938 ; peephole j30 removed unused label 00134$.
                                   3939 ;	User/menu.c: 523: show_hz_12x12(7,25,"ikmo]");//"出厂设置"
                                   3940 ; skipping iCode since result will be rematerialized
                                   3941 ; skipping iCode since result will be rematerialized
                                   3942 ; genIPush
      00B93B 4B F4            [ 1] 3943 	push	#<(___str_47+0)
      00B93D 4B 83            [ 1] 3944 	push	#((___str_47+0) >> 8)
                                   3945 ; genIPush
      00B93F 4B 19            [ 1] 3946 	push	#0x19
      00B941 4B 00            [ 1] 3947 	push	#0x00
                                   3948 ; genSend
      00B943 AE 00 07         [ 2] 3949 	ldw	x, #0x0007
                                   3950 ; genCall
      00B946 CD BF 49         [ 4] 3951 	call	_show_hz_12x12
                                   3952 ;	User/menu.c: 524: show_str_8x12(adjustdt.pos[11].y,adjustdt.pos[11].x,"WK");
                                   3953 ; skipping iCode since result will be rematerialized
                                   3954 ; skipping iCode since result will be rematerialized
                                   3955 ; genPointerGet
      00B949 C6 05 62         [ 1] 3956 	ld	a, _adjustdt+36
                                   3957 ; genCast
                                   3958 ; genAssign
      00B94C 90 5F            [ 1] 3959 	clrw	y
      00B94E 90 97            [ 1] 3960 	ld	yl, a
                                   3961 ; genPointerGet
      00B950 C6 05 61         [ 1] 3962 	ld	a, _adjustdt+35
                                   3963 ; genCast
                                   3964 ; genAssign
      00B953 5F               [ 1] 3965 	clrw	x
                                   3966 ; genIPush
      00B954 4B FA            [ 1] 3967 	push	#<(___str_48+0)
      00B956 4B 83            [ 1] 3968 	push	#((___str_48+0) >> 8)
                                   3969 ; genIPush
      00B958 90 89            [ 2] 3970 	pushw	y
                                   3971 ; genSend
      00B95A 97               [ 1] 3972 	ld	xl, a
                                   3973 ; genCall
      00B95B CD BE 0E         [ 4] 3974 	call	_show_str_8x12
                                   3975 ; genGoto
      00B95E 20 31            [ 2] 3976 	jra	00106$
                                   3977 ; peephole j5 changed absolute to relative unconditional jump.
                                   3978 ; genLabel
      00B960                       3979 00105$:
                                   3980 ;	User/menu.c: 528: show_hz_12x12(7,25,"]]]]]");
                                   3981 ; skipping iCode since result will be rematerialized
                                   3982 ; skipping iCode since result will be rematerialized
                                   3983 ; genIPush
      00B960 4B FD            [ 1] 3984 	push	#<(___str_49+0)
      00B962 4B 83            [ 1] 3985 	push	#((___str_49+0) >> 8)
                                   3986 ; genIPush
      00B964 4B 19            [ 1] 3987 	push	#0x19
      00B966 4B 00            [ 1] 3988 	push	#0x00
                                   3989 ; genSend
      00B968 AE 00 07         [ 2] 3990 	ldw	x, #0x0007
                                   3991 ; genCall
      00B96B CD BF 49         [ 4] 3992 	call	_show_hz_12x12
                                   3993 ;	User/menu.c: 529: show_str_7x8(7,25,"DEFAULT");
                                   3994 ; skipping iCode since result will be rematerialized
                                   3995 ; skipping iCode since result will be rematerialized
                                   3996 ; genIPush
      00B96E 4B 03            [ 1] 3997 	push	#<(___str_50+0)
      00B970 4B 84            [ 1] 3998 	push	#((___str_50+0) >> 8)
                                   3999 ; genIPush
      00B972 4B 19            [ 1] 4000 	push	#0x19
      00B974 4B 00            [ 1] 4001 	push	#0x00
                                   4002 ; genSend
      00B976 AE 00 07         [ 2] 4003 	ldw	x, #0x0007
                                   4004 ; genCall
      00B979 CD BE C6         [ 4] 4005 	call	_show_str_7x8
                                   4006 ;	User/menu.c: 530: show_hz_12x12(adjustdt.pos[11].y,adjustdt.pos[11].x,"a");
                                   4007 ; skipping iCode since result will be rematerialized
                                   4008 ; skipping iCode since result will be rematerialized
                                   4009 ; genPointerGet
      00B97C C6 05 62         [ 1] 4010 	ld	a, _adjustdt+36
                                   4011 ; genCast
                                   4012 ; genAssign
      00B97F 90 5F            [ 1] 4013 	clrw	y
      00B981 90 97            [ 1] 4014 	ld	yl, a
                                   4015 ; genPointerGet
      00B983 C6 05 61         [ 1] 4016 	ld	a, _adjustdt+35
                                   4017 ; genCast
                                   4018 ; genAssign
      00B986 5F               [ 1] 4019 	clrw	x
                                   4020 ; genIPush
      00B987 4B 0B            [ 1] 4021 	push	#<(___str_51+0)
      00B989 4B 84            [ 1] 4022 	push	#((___str_51+0) >> 8)
                                   4023 ; genIPush
      00B98B 90 89            [ 2] 4024 	pushw	y
                                   4025 ; genSend
      00B98D 97               [ 1] 4026 	ld	xl, a
                                   4027 ; genCall
      00B98E CD BF 49         [ 4] 4028 	call	_show_hz_12x12
                                   4029 ; genLabel
      00B991                       4030 00106$:
                                   4031 ;	User/menu.c: 535: memset(tempstr,0,16);
                                   4032 ; genIPush
      00B991 4B 10            [ 1] 4033 	push	#0x10
      00B993 4B 00            [ 1] 4034 	push	#0x00
                                   4035 ; genIPush
      00B995 5F               [ 1] 4036 	clrw	x
      00B996 89               [ 2] 4037 	pushw	x
                                   4038 ; genSend
      00B997 AE 04 81         [ 2] 4039 	ldw	x, #(_tempstr+0)
                                   4040 ; genCall
      00B99A CD ED FE         [ 4] 4041 	call	_memset
                                   4042 ;	User/menu.c: 536: if(flag)
                                   4043 ; genIfx
      00B99D C6 04 95         [ 1] 4044 	ld	a, _show_datetime_flag_10000_755+0
                                   4045 ; peephole 625a changed tnz by ld
                                   4046 ; peephole j5 changed absolute to relative unconditional jump.
      00B9A0 27 06            [ 1] 4047 	jreq	00108$
                                   4048 ; peephole j10 removed jra by using inverse jump logic
                                   4049 ; peephole j30 removed unused label 00135$.
                                   4050 ;	User/menu.c: 538: flag=0;
                                   4051 ; genAssign
      00B9A2 72 5F 04 95      [ 1] 4052 	clr	_show_datetime_flag_10000_755+0
                                   4053 ; genGoto
      00B9A6 20 0C            [ 2] 4054 	jra	00109$
                                   4055 ; peephole j5 changed absolute to relative unconditional jump.
                                   4056 ; genLabel
      00B9A8                       4057 00108$:
                                   4058 ;	User/menu.c: 542: flag=1;
                                   4059 ; genAssign
      00B9A8 35 01 04 95      [ 1] 4060 	mov	_show_datetime_flag_10000_755+0, #0x01
                                   4061 ;	User/menu.c: 543: tempstr[0]=0x20;
                                   4062 ; genPointerSet
      00B9AC 35 20 04 81      [ 1] 4063 	mov	_tempstr+0, #0x20
                                   4064 ;	User/menu.c: 544: tempstr[1]=0x20;
                                   4065 ; skipping iCode since result will be rematerialized
                                   4066 ; genPointerSet
      00B9B0 35 20 04 82      [ 1] 4067 	mov	_tempstr+1, #0x20
                                   4068 ; genLabel
      00B9B4                       4069 00109$:
                                   4070 ;	User/menu.c: 546: show_str_8x12(adjustdt.pos[adjustdt.index].y,adjustdt.pos[adjustdt.index].x,(uint8_t *)tempstr);
                                   4071 ; skipping iCode since result will be rematerialized
                                   4072 ; genPointerGet
      00B9B4 C6 05 3E         [ 1] 4073 	ld	a, _adjustdt+0
                                   4074 ; genLeftShiftLiteral
      00B9B7 48               [ 1] 4075 	sll	a
                                   4076 ; genPlus
      00B9B8 5F               [ 1] 4077 	clrw	x
      00B9B9 97               [ 1] 4078 	ld	xl, a
      00B9BA 1C 05 4B         [ 2] 4079 	addw	x, #(_adjustdt+13)
                                   4080 ; genPointerGet
      00B9BD 88               [ 1] 4081 	push	a
      00B9BE E6 01            [ 1] 4082 	ld	a, (0x1, x)
      00B9C0 97               [ 1] 4083 	ld	xl, a
      00B9C1 84               [ 1] 4084 	pop	a
                                   4085 ; genCast
                                   4086 ; genAssign
      00B9C2 90 5F            [ 1] 4087 	clrw	y
      00B9C4 61               [ 1] 4088 	exg	a, yl
      00B9C5 9F               [ 1] 4089 	ld	a, xl
      00B9C6 61               [ 1] 4090 	exg	a, yl
                                   4091 ; genPlus
      00B9C7 5F               [ 1] 4092 	clrw	x
      00B9C8 97               [ 1] 4093 	ld	xl, a
                                   4094 ; genPointerGet
                                   4095 ; peephole 10b moved addition of offset into storage instruction
      00B9C9 D6 05 4B         [ 1] 4096 	ld	a, (_adjustdt+13, x)
                                   4097 ; genCast
                                   4098 ; genAssign
      00B9CC 5F               [ 1] 4099 	clrw	x
                                   4100 ; genIPush
      00B9CD 4B 81            [ 1] 4101 	push	#<(_tempstr+0)
      00B9CF 4B 04            [ 1] 4102 	push	#((_tempstr+0) >> 8)
                                   4103 ; genIPush
      00B9D1 90 89            [ 2] 4104 	pushw	y
                                   4105 ; genSend
      00B9D3 97               [ 1] 4106 	ld	xl, a
                                   4107 ; genCall
      00B9D4 CD BE 0E         [ 4] 4108 	call	_show_str_8x12
                                   4109 ; genLabel
                                   4110 ; peephole j30 removed unused label 00110$.
                                   4111 ;	User/menu.c: 547: }
                                   4112 ; genEndFunction
      00B9D7 5B 06            [ 2] 4113 	addw	sp, #6
      00B9D9 81               [ 4] 4114 	ret
                                   4115 ;	Total show_datetime function size at codegen: 3 bytes.
                                   4116 ;	User/menu.c: 550: void DspFive(void)
                                   4117 ; genLabel
                                   4118 ;	-----------------------------------------
                                   4119 ;	 function DspFive
                                   4120 ;	-----------------------------------------
                                   4121 ;	Register assignment is optimal.
                                   4122 ;	Stack space usage: 0 bytes.
      00B9DA                       4123 _DspFive:
                                   4124 ;	User/menu.c: 552: show_datetime();
                                   4125 ; genCall
                                   4126 ; genLabel
                                   4127 ; peephole j30 removed unused label 00101$.
                                   4128 ;	User/menu.c: 554: }
                                   4129 ; genEndFunction
      00B9DA CC B8 12         [ 2] 4130 	jp	_show_datetime
                                   4131 ; peephole 52 removed unreachable ret.
                                   4132 ;	Total DspFive function size at codegen: 1 bytes.
                                   4133 ;	User/menu.c: 556: void Up_Five(void)
                                   4134 ; genLabel
                                   4135 ;	-----------------------------------------
                                   4136 ;	 function Up_Five
                                   4137 ;	-----------------------------------------
                                   4138 ;	Register assignment might be sub-optimal.
                                   4139 ;	Stack space usage: 2 bytes.
      00B9DD                       4140 _Up_Five:
      00B9DD 89               [ 2] 4141 	pushw	x
                                   4142 ;	User/menu.c: 558: if(adjustdt.index==10)//Y/N 恢复出厂设置
                                   4143 ; skipping iCode since result will be rematerialized
                                   4144 ; genCast
                                   4145 ; genAssign
      00B9DE 90 AE 05 3E      [ 2] 4146 	ldw	y, #(_adjustdt+0)
                                   4147 ; genPointerGet
      00B9E2 90 F6            [ 1] 4148 	ld	a, (y)
                                   4149 ;	User/menu.c: 560: if(adjustdt.dt[adjustdt.index])
                                   4150 ; skipping iCode since result will be rematerialized
                                   4151 ; genPlus
      00B9E4 88               [ 1] 4152 	push	a
      00B9E5 7B 01            [ 1] 4153 	ld	a, (1, sp)
      00B9E7 AB 3F            [ 1] 4154 	add	a, #<(_adjustdt+1)
      00B9E9 6B 03            [ 1] 4155 	ld	(0x03, sp), a
      00B9EB 4F               [ 1] 4156 	clr	a
      00B9EC A9 05            [ 1] 4157 	adc	a, #((_adjustdt+1) >> 8)
      00B9EE 6B 02            [ 1] 4158 	ld	(0x02, sp), a
      00B9F0 84               [ 1] 4159 	pop	a
                                   4160 ; genPointerGet
      00B9F1 1E 01            [ 2] 4161 	ldw	x, (0x01, sp)
      00B9F3 88               [ 1] 4162 	push	a
      00B9F4 F6               [ 1] 4163 	ld	a, (x)
      00B9F5 97               [ 1] 4164 	ld	xl, a
      00B9F6 84               [ 1] 4165 	pop	a
                                   4166 ;	User/menu.c: 558: if(adjustdt.index==10)//Y/N 恢复出厂设置
                                   4167 ; genCmpEQorNE
      00B9F7 A1 0A            [ 1] 4168 	cp	a, #0x0a
                                   4169 ; peephole j5 changed absolute to relative unconditional jump.
                                   4170 ; peephole j10 removed jra by using inverse jump logic
                                   4171 ; peephole j30 removed unused label 00265$.
                                   4172 ; peephole j5 changed absolute to relative unconditional jump.
      00B9F9 26 10            [ 1] 4173 	jrne	00141$
                                   4174 ; peephole j7 removed jra by using inverse jump logic
                                   4175 ; peephole j30 removed unused label 00266$.
                                   4176 ; skipping generated iCode
                                   4177 ;	User/menu.c: 560: if(adjustdt.dt[adjustdt.index])
                                   4178 ; genIfx
      00B9FB 9F               [ 1] 4179 	ld	a, xl
      00B9FC 4D               [ 1] 4180 	tnz	a
                                   4181 ; peephole j5 changed absolute to relative unconditional jump.
      00B9FD 27 05            [ 1] 4182 	jreq	00102$
                                   4183 ; peephole j10 removed jra by using inverse jump logic
                                   4184 ; peephole j30 removed unused label 00267$.
                                   4185 ;	User/menu.c: 561: adjustdt.dt[adjustdt.index]=0;
                                   4186 ; genPointerSet
      00B9FF 1E 01            [ 2] 4187 	ldw	x, (0x01, sp)
      00BA01 7F               [ 1] 4188 	clr	(x)
                                   4189 ; genGoto
      00BA02 20 75            [ 2] 4190 	jra	00142$
                                   4191 ; peephole j5 changed absolute to relative unconditional jump.
                                   4192 ; genLabel
      00BA04                       4193 00102$:
                                   4194 ;	User/menu.c: 563: adjustdt.dt[adjustdt.index]=1;
                                   4195 ; genPointerSet
      00BA04 1E 01            [ 2] 4196 	ldw	x, (0x01, sp)
      00BA06 A6 01            [ 1] 4197 	ld	a, #0x01
      00BA08 F7               [ 1] 4198 	ld	(x), a
                                   4199 ; genGoto
      00BA09 20 6E            [ 2] 4200 	jra	00142$
                                   4201 ; peephole j5 changed absolute to relative unconditional jump.
                                   4202 ; genLabel
      00BA0B                       4203 00141$:
                                   4204 ;	User/menu.c: 565: else if(adjustdt.index==11)//中/英 
                                   4205 ; genCmpEQorNE
      00BA0B A1 0B            [ 1] 4206 	cp	a, #0x0b
                                   4207 ; peephole j5 changed absolute to relative unconditional jump.
                                   4208 ; peephole j10 removed jra by using inverse jump logic
                                   4209 ; peephole j30 removed unused label 00269$.
                                   4210 ; peephole j5 changed absolute to relative unconditional jump.
      00BA0D 26 10            [ 1] 4211 	jrne	00138$
                                   4212 ; peephole j7 removed jra by using inverse jump logic
                                   4213 ; peephole j30 removed unused label 00270$.
                                   4214 ; skipping generated iCode
                                   4215 ;	User/menu.c: 567: if(adjustdt.dt[adjustdt.index])
                                   4216 ; genIfx
      00BA0F 9F               [ 1] 4217 	ld	a, xl
      00BA10 4D               [ 1] 4218 	tnz	a
                                   4219 ; peephole j5 changed absolute to relative unconditional jump.
      00BA11 27 05            [ 1] 4220 	jreq	00105$
                                   4221 ; peephole j10 removed jra by using inverse jump logic
                                   4222 ; peephole j30 removed unused label 00271$.
                                   4223 ;	User/menu.c: 568: adjustdt.dt[adjustdt.index]=0;
                                   4224 ; genPointerSet
      00BA13 1E 01            [ 2] 4225 	ldw	x, (0x01, sp)
      00BA15 7F               [ 1] 4226 	clr	(x)
                                   4227 ; genGoto
      00BA16 20 61            [ 2] 4228 	jra	00142$
                                   4229 ; peephole j5 changed absolute to relative unconditional jump.
                                   4230 ; genLabel
      00BA18                       4231 00105$:
                                   4232 ;	User/menu.c: 570: adjustdt.dt[adjustdt.index]=1;
                                   4233 ; genPointerSet
      00BA18 1E 01            [ 2] 4234 	ldw	x, (0x01, sp)
      00BA1A A6 01            [ 1] 4235 	ld	a, #0x01
      00BA1C F7               [ 1] 4236 	ld	(x), a
                                   4237 ; genGoto
      00BA1D 20 5A            [ 2] 4238 	jra	00142$
                                   4239 ; peephole j5 changed absolute to relative unconditional jump.
                                   4240 ; genLabel
      00BA1F                       4241 00138$:
                                   4242 ;	User/menu.c: 574: adjustdt.dt[adjustdt.index]++;
                                   4243 ; genPlus
      00BA1F 9F               [ 1] 4244 	ld	a, xl
      00BA20 4C               [ 1] 4245 	inc	a
                                   4246 ; genPointerSet
      00BA21 1E 01            [ 2] 4247 	ldw	x, (0x01, sp)
      00BA23 F7               [ 1] 4248 	ld	(x), a
                                   4249 ;	User/menu.c: 575: if(adjustdt.index==1)//月份
                                   4250 ; genPointerGet
      00BA24 90 F6            [ 1] 4251 	ld	a, (y)
                                   4252 ;	User/menu.c: 577: if(adjustdt.dt[adjustdt.index]>12)
                                   4253 ; genPlus
      00BA26 5F               [ 1] 4254 	clrw	x
      00BA27 97               [ 1] 4255 	ld	xl, a
      00BA28 1C 05 3F         [ 2] 4256 	addw	x, #(_adjustdt+1)
                                   4257 ;	User/menu.c: 575: if(adjustdt.index==1)//月份
                                   4258 ; genCmpEQorNE
      00BA2B A1 01            [ 1] 4259 	cp	a, #0x01
                                   4260 ; peephole j5 changed absolute to relative unconditional jump.
                                   4261 ; peephole j10 removed jra by using inverse jump logic
                                   4262 ; peephole j30 removed unused label 00273$.
                                   4263 ; peephole j5 changed absolute to relative unconditional jump.
      00BA2D 26 0A            [ 1] 4264 	jrne	00135$
                                   4265 ; peephole j7 removed jra by using inverse jump logic
                                   4266 ; peephole j30 removed unused label 00274$.
                                   4267 ; skipping generated iCode
                                   4268 ;	User/menu.c: 577: if(adjustdt.dt[adjustdt.index]>12)
                                   4269 ; genPointerGet
      00BA2F F6               [ 1] 4270 	ld	a, (x)
                                   4271 ; genCmp
                                   4272 ; genCmpTnz
      00BA30 A1 0C            [ 1] 4273 	cp	a, #0x0c
                                   4274 ; peephole j5 changed absolute to relative unconditional jump.
      00BA32 23 45            [ 2] 4275 	jrule	00142$
                                   4276 ; peephole j16 removed jra by using inverse jump logic
                                   4277 ; peephole j30 removed unused label 00275$.
                                   4278 ; skipping generated iCode
                                   4279 ;	User/menu.c: 578: adjustdt.dt[adjustdt.index]=1;
                                   4280 ; genPointerSet
      00BA34 A6 01            [ 1] 4281 	ld	a, #0x01
      00BA36 F7               [ 1] 4282 	ld	(x), a
                                   4283 ; genGoto
      00BA37 20 40            [ 2] 4284 	jra	00142$
                                   4285 ; peephole j5 changed absolute to relative unconditional jump.
                                   4286 ; genLabel
      00BA39                       4287 00135$:
                                   4288 ;	User/menu.c: 580: else if(adjustdt.index==2)//日
                                   4289 ; genCmpEQorNE
      00BA39 A1 02            [ 1] 4290 	cp	a, #0x02
                                   4291 ; peephole j5 changed absolute to relative unconditional jump.
                                   4292 ; peephole j10 removed jra by using inverse jump logic
                                   4293 ; peephole j30 removed unused label 00277$.
                                   4294 ; peephole j5 changed absolute to relative unconditional jump.
      00BA3B 26 0A            [ 1] 4295 	jrne	00132$
                                   4296 ; peephole j7 removed jra by using inverse jump logic
                                   4297 ; peephole j30 removed unused label 00278$.
                                   4298 ; skipping generated iCode
                                   4299 ;	User/menu.c: 582: if(adjustdt.dt[adjustdt.index]>31)
                                   4300 ; genPointerGet
      00BA3D F6               [ 1] 4301 	ld	a, (x)
                                   4302 ; genCmp
                                   4303 ; genCmpTnz
      00BA3E A1 1F            [ 1] 4304 	cp	a, #0x1f
                                   4305 ; peephole j5 changed absolute to relative unconditional jump.
      00BA40 23 37            [ 2] 4306 	jrule	00142$
                                   4307 ; peephole j16 removed jra by using inverse jump logic
                                   4308 ; peephole j30 removed unused label 00279$.
                                   4309 ; skipping generated iCode
                                   4310 ;	User/menu.c: 583: adjustdt.dt[adjustdt.index]=1;
                                   4311 ; genPointerSet
      00BA42 A6 01            [ 1] 4312 	ld	a, #0x01
      00BA44 F7               [ 1] 4313 	ld	(x), a
                                   4314 ; genGoto
      00BA45 20 32            [ 2] 4315 	jra	00142$
                                   4316 ; peephole j5 changed absolute to relative unconditional jump.
                                   4317 ; genLabel
      00BA47                       4318 00132$:
                                   4319 ;	User/menu.c: 585: else if(adjustdt.index==3)//24小时制
                                   4320 ; genCmpEQorNE
      00BA47 A1 03            [ 1] 4321 	cp	a, #0x03
                                   4322 ; peephole j5 changed absolute to relative unconditional jump.
                                   4323 ; peephole j10 removed jra by using inverse jump logic
                                   4324 ; peephole j30 removed unused label 00281$.
                                   4325 ; peephole j5 changed absolute to relative unconditional jump.
      00BA49 26 08            [ 1] 4326 	jrne	00129$
                                   4327 ; peephole j7 removed jra by using inverse jump logic
                                   4328 ; peephole j30 removed unused label 00282$.
                                   4329 ; skipping generated iCode
                                   4330 ;	User/menu.c: 587: if(adjustdt.dt[adjustdt.index]>23)
                                   4331 ; genPointerGet
      00BA4B F6               [ 1] 4332 	ld	a, (x)
                                   4333 ; genCmp
                                   4334 ; genCmpTnz
      00BA4C A1 17            [ 1] 4335 	cp	a, #0x17
                                   4336 ; peephole j5 changed absolute to relative unconditional jump.
      00BA4E 23 29            [ 2] 4337 	jrule	00142$
                                   4338 ; peephole j16 removed jra by using inverse jump logic
                                   4339 ; peephole j30 removed unused label 00283$.
                                   4340 ; skipping generated iCode
                                   4341 ;	User/menu.c: 588: adjustdt.dt[adjustdt.index]=0;
                                   4342 ; genPointerSet
      00BA50 7F               [ 1] 4343 	clr	(x)
                                   4344 ; genGoto
      00BA51 20 26            [ 2] 4345 	jra	00142$
                                   4346 ; peephole j5 changed absolute to relative unconditional jump.
                                   4347 ; genLabel
      00BA53                       4348 00129$:
                                   4349 ;	User/menu.c: 590: else if(adjustdt.index==4)//分
                                   4350 ; genCmpEQorNE
      00BA53 A1 04            [ 1] 4351 	cp	a, #0x04
                                   4352 ; peephole j5 changed absolute to relative unconditional jump.
                                   4353 ; peephole j10 removed jra by using inverse jump logic
                                   4354 ; peephole j30 removed unused label 00285$.
                                   4355 ; peephole j5 changed absolute to relative unconditional jump.
      00BA55 26 08            [ 1] 4356 	jrne	00126$
                                   4357 ; peephole j7 removed jra by using inverse jump logic
                                   4358 ; peephole j30 removed unused label 00286$.
                                   4359 ; skipping generated iCode
                                   4360 ;	User/menu.c: 592: if(adjustdt.dt[adjustdt.index]>59)
                                   4361 ; genPointerGet
      00BA57 F6               [ 1] 4362 	ld	a, (x)
                                   4363 ; genCmp
                                   4364 ; genCmpTnz
      00BA58 A1 3B            [ 1] 4365 	cp	a, #0x3b
                                   4366 ; peephole j5 changed absolute to relative unconditional jump.
      00BA5A 23 1D            [ 2] 4367 	jrule	00142$
                                   4368 ; peephole j16 removed jra by using inverse jump logic
                                   4369 ; peephole j30 removed unused label 00287$.
                                   4370 ; skipping generated iCode
                                   4371 ;	User/menu.c: 593: adjustdt.dt[adjustdt.index]=0;
                                   4372 ; genPointerSet
      00BA5C 7F               [ 1] 4373 	clr	(x)
                                   4374 ; genGoto
      00BA5D 20 1A            [ 2] 4375 	jra	00142$
                                   4376 ; peephole j5 changed absolute to relative unconditional jump.
                                   4377 ; genLabel
      00BA5F                       4378 00126$:
                                   4379 ;	User/menu.c: 595: else if(adjustdt.index==5)//秒
                                   4380 ; genCmpEQorNE
      00BA5F A1 05            [ 1] 4381 	cp	a, #0x05
                                   4382 ; peephole j5 changed absolute to relative unconditional jump.
                                   4383 ; peephole j10 removed jra by using inverse jump logic
                                   4384 ; peephole j30 removed unused label 00289$.
                                   4385 ; peephole j5 changed absolute to relative unconditional jump.
      00BA61 26 08            [ 1] 4386 	jrne	00123$
                                   4387 ; peephole j7 removed jra by using inverse jump logic
                                   4388 ; peephole j30 removed unused label 00290$.
                                   4389 ; skipping generated iCode
                                   4390 ;	User/menu.c: 597: if(adjustdt.dt[adjustdt.index]>59)
                                   4391 ; genPointerGet
      00BA63 F6               [ 1] 4392 	ld	a, (x)
                                   4393 ; genCmp
                                   4394 ; genCmpTnz
      00BA64 A1 3B            [ 1] 4395 	cp	a, #0x3b
                                   4396 ; peephole j5 changed absolute to relative unconditional jump.
      00BA66 23 11            [ 2] 4397 	jrule	00142$
                                   4398 ; peephole j16 removed jra by using inverse jump logic
                                   4399 ; peephole j30 removed unused label 00291$.
                                   4400 ; skipping generated iCode
                                   4401 ;	User/menu.c: 598: adjustdt.dt[adjustdt.index]=0;
                                   4402 ; genPointerSet
      00BA68 7F               [ 1] 4403 	clr	(x)
                                   4404 ; genGoto
      00BA69 20 0E            [ 2] 4405 	jra	00142$
                                   4406 ; peephole j5 changed absolute to relative unconditional jump.
                                   4407 ; genLabel
      00BA6B                       4408 00123$:
                                   4409 ;	User/menu.c: 600: else if(adjustdt.index>5 && adjustdt.index<10 )//ID 6 ~ 9
                                   4410 ; genCmp
                                   4411 ; genCmpTnz
      00BA6B A1 05            [ 1] 4412 	cp	a, #0x05
                                   4413 ; peephole j5 changed absolute to relative unconditional jump.
      00BA6D 23 0A            [ 2] 4414 	jrule	00142$
                                   4415 ; peephole j16 removed jra by using inverse jump logic
                                   4416 ; peephole j30 removed unused label 00292$.
                                   4417 ; skipping generated iCode
                                   4418 ; genCmp
                                   4419 ; genCmpTnz
      00BA6F A1 0A            [ 1] 4420 	cp	a, #0x0a
                                   4421 ; peephole j5 changed absolute to relative unconditional jump.
      00BA71 24 06            [ 1] 4422 	jrnc	00142$
                                   4423 ; peephole j6 removed jra by using inverse jump logic
                                   4424 ; peephole j30 removed unused label 00293$.
                                   4425 ; skipping generated iCode
                                   4426 ;	User/menu.c: 602: if(adjustdt.dt[adjustdt.index]>99)
                                   4427 ; genPointerGet
      00BA73 F6               [ 1] 4428 	ld	a, (x)
                                   4429 ; genCmp
                                   4430 ; genCmpTnz
      00BA74 A1 63            [ 1] 4431 	cp	a, #0x63
                                   4432 ; peephole j5 changed absolute to relative unconditional jump.
      00BA76 23 01            [ 2] 4433 	jrule	00142$
                                   4434 ; peephole j16 removed jra by using inverse jump logic
                                   4435 ; peephole j30 removed unused label 00294$.
                                   4436 ; skipping generated iCode
                                   4437 ;	User/menu.c: 603: adjustdt.dt[adjustdt.index]=0;
                                   4438 ; genPointerSet
      00BA78 7F               [ 1] 4439 	clr	(x)
                                   4440 ; genLabel
      00BA79                       4441 00142$:
                                   4442 ;	User/menu.c: 607: show_datetime();
                                   4443 ; genCall
      00BA79 85               [ 2] 4444 	popw	x
                                   4445 ; genLabel
                                   4446 ; peephole j30 removed unused label 00143$.
                                   4447 ;	User/menu.c: 608: }
                                   4448 ; genEndFunction
                                   4449 ; peephole 53b removed unreachable popw.
      00BA7A CC B8 12         [ 2] 4450 	jp	_show_datetime
                                   4451 ; peephole 52 removed unreachable ret.
                                   4452 ;	Total Up_Five function size at codegen: 2 bytes.
                                   4453 ;	User/menu.c: 610: void Down_Five(void)
                                   4454 ; genLabel
                                   4455 ;	-----------------------------------------
                                   4456 ;	 function Down_Five
                                   4457 ;	-----------------------------------------
                                   4458 ;	Register assignment might be sub-optimal.
                                   4459 ;	Stack space usage: 2 bytes.
      00BA7D                       4460 _Down_Five:
      00BA7D 89               [ 2] 4461 	pushw	x
                                   4462 ;	User/menu.c: 612: if(adjustdt.index==0)//年
                                   4463 ; skipping iCode since result will be rematerialized
                                   4464 ; genCast
                                   4465 ; genAssign
      00BA7E AE 05 3E         [ 2] 4466 	ldw	x, #(_adjustdt+0)
                                   4467 ; genPointerGet
      00BA81 1F 01            [ 2] 4468 	ldw	(0x01, sp), x
                                   4469 ; peephole 4w removed redundant load from (0x01, sp) into x.
      00BA83 F6               [ 1] 4470 	ld	a, (x)
                                   4471 ;	User/menu.c: 614: if(adjustdt.dt[adjustdt.index]>0)
                                   4472 ; skipping iCode since result will be rematerialized
                                   4473 ; genPlus
      00BA84 5F               [ 1] 4474 	clrw	x
      00BA85 97               [ 1] 4475 	ld	xl, a
      00BA86 1C 05 3F         [ 2] 4476 	addw	x, #(_adjustdt+1)
                                   4477 ;	User/menu.c: 612: if(adjustdt.index==0)//年
                                   4478 ; genIfx
      00BA89 4D               [ 1] 4479 	tnz	a
                                   4480 ; peephole j5 changed absolute to relative unconditional jump.
      00BA8A 26 0B            [ 1] 4481 	jrne	00162$
                                   4482 ; peephole j7 removed jra by using inverse jump logic
                                   4483 ; peephole j30 removed unused label 00341$.
                                   4484 ;	User/menu.c: 614: if(adjustdt.dt[adjustdt.index]>0)
                                   4485 ; genPointerGet
                                   4486 ; genIfx
      00BA8C F6               [ 1] 4487 	ld	a, (x)
                                   4488 ; peephole 30 removed redundant tnz.
      00BA8D 26 03            [ 1] 4489 	jrne	00342$
      00BA8F CC BB 3D         [ 2] 4490 	jp	00163$
      00BA92                       4491 00342$:
                                   4492 ;	User/menu.c: 615: adjustdt.dt[adjustdt.index]--;
                                   4493 ; genMinus
      00BA92 4A               [ 1] 4494 	dec	a
                                   4495 ; genPointerSet
      00BA93 F7               [ 1] 4496 	ld	(x), a
                                   4497 ; genGoto
      00BA94 CC BB 3D         [ 2] 4498 	jp	00163$
                                   4499 ; genLabel
      00BA97                       4500 00162$:
                                   4501 ;	User/menu.c: 617: else if(adjustdt.index==1)//月份
                                   4502 ; genCmpEQorNE
      00BA97 A1 01            [ 1] 4503 	cp	a, #0x01
                                   4504 ; peephole j5 changed absolute to relative unconditional jump.
                                   4505 ; peephole j10 removed jra by using inverse jump logic
                                   4506 ; peephole j30 removed unused label 00344$.
                                   4507 ; peephole j5 changed absolute to relative unconditional jump.
      00BA99 26 1B            [ 1] 4508 	jrne	00159$
                                   4509 ; peephole j7 removed jra by using inverse jump logic
                                   4510 ; peephole j30 removed unused label 00345$.
                                   4511 ; skipping generated iCode
                                   4512 ;	User/menu.c: 619: if(adjustdt.dt[adjustdt.index]>=1)
                                   4513 ; genPointerGet
      00BA9B F6               [ 1] 4514 	ld	a, (x)
                                   4515 ; genCmp
                                   4516 ; genCmpTnz
      00BA9C A1 01            [ 1] 4517 	cp	a, #0x01
                                   4518 ; peephole j5 changed absolute to relative unconditional jump.
      00BA9E 25 02            [ 1] 4519 	jrc	00104$
                                   4520 ; peephole j9 removed jra by using inverse jump logic
                                   4521 ; peephole j30 removed unused label 00346$.
                                   4522 ; skipping generated iCode
                                   4523 ;	User/menu.c: 620: adjustdt.dt[adjustdt.index]--;
                                   4524 ; genMinus
      00BAA0 4A               [ 1] 4525 	dec	a
                                   4526 ; genPointerSet
      00BAA1 F7               [ 1] 4527 	ld	(x), a
                                   4528 ; genLabel
      00BAA2                       4529 00104$:
                                   4530 ;	User/menu.c: 621: if(adjustdt.dt[adjustdt.index]==0)
                                   4531 ; genPointerGet
      00BAA2 1E 01            [ 2] 4532 	ldw	x, (0x01, sp)
      00BAA4 F6               [ 1] 4533 	ld	a, (x)
                                   4534 ; genPlus
      00BAA5 5F               [ 1] 4535 	clrw	x
      00BAA6 97               [ 1] 4536 	ld	xl, a
      00BAA7 1C 05 3F         [ 2] 4537 	addw	x, #(_adjustdt+1)
                                   4538 ; genPointerGet
                                   4539 ; genIfx
      00BAAA F6               [ 1] 4540 	ld	a, (x)
                                   4541 ; peephole 30 removed redundant tnz.
      00BAAB 27 03            [ 1] 4542 	jreq	00347$
      00BAAD CC BB 3D         [ 2] 4543 	jp	00163$
      00BAB0                       4544 00347$:
                                   4545 ;	User/menu.c: 622: adjustdt.dt[adjustdt.index]=12;
                                   4546 ; genPointerSet
      00BAB0 A6 0C            [ 1] 4547 	ld	a, #0x0c
      00BAB2 F7               [ 1] 4548 	ld	(x), a
                                   4549 ; genGoto
      00BAB3 CC BB 3D         [ 2] 4550 	jp	00163$
                                   4551 ; genLabel
      00BAB6                       4552 00159$:
                                   4553 ;	User/menu.c: 624: else if(adjustdt.index==2)//日
                                   4554 ; genCmpEQorNE
      00BAB6 A1 02            [ 1] 4555 	cp	a, #0x02
                                   4556 ; peephole j5 changed absolute to relative unconditional jump.
                                   4557 ; peephole j10 removed jra by using inverse jump logic
                                   4558 ; peephole j30 removed unused label 00349$.
                                   4559 ; peephole j5 changed absolute to relative unconditional jump.
      00BAB8 26 17            [ 1] 4560 	jrne	00156$
                                   4561 ; peephole j7 removed jra by using inverse jump logic
                                   4562 ; peephole j30 removed unused label 00350$.
                                   4563 ; skipping generated iCode
                                   4564 ;	User/menu.c: 627: if(adjustdt.dt[adjustdt.index]>=1)
                                   4565 ; genPointerGet
      00BABA F6               [ 1] 4566 	ld	a, (x)
                                   4567 ; genCmp
                                   4568 ; genCmpTnz
      00BABB A1 01            [ 1] 4569 	cp	a, #0x01
                                   4570 ; peephole j5 changed absolute to relative unconditional jump.
      00BABD 25 02            [ 1] 4571 	jrc	00108$
                                   4572 ; peephole j9 removed jra by using inverse jump logic
                                   4573 ; peephole j30 removed unused label 00351$.
                                   4574 ; skipping generated iCode
                                   4575 ;	User/menu.c: 628: adjustdt.dt[adjustdt.index]--;
                                   4576 ; genMinus
      00BABF 4A               [ 1] 4577 	dec	a
                                   4578 ; genPointerSet
      00BAC0 F7               [ 1] 4579 	ld	(x), a
                                   4580 ; genLabel
      00BAC1                       4581 00108$:
                                   4582 ;	User/menu.c: 629: if(adjustdt.dt[adjustdt.index]==0)
                                   4583 ; genPointerGet
      00BAC1 1E 01            [ 2] 4584 	ldw	x, (0x01, sp)
      00BAC3 F6               [ 1] 4585 	ld	a, (x)
                                   4586 ; genPlus
      00BAC4 5F               [ 1] 4587 	clrw	x
      00BAC5 97               [ 1] 4588 	ld	xl, a
      00BAC6 1C 05 3F         [ 2] 4589 	addw	x, #(_adjustdt+1)
                                   4590 ; genPointerGet
                                   4591 ; genIfx
      00BAC9 F6               [ 1] 4592 	ld	a, (x)
                                   4593 ; peephole 30 removed redundant tnz.
                                   4594 ; peephole j5 changed absolute to relative unconditional jump.
      00BACA 26 71            [ 1] 4595 	jrne	00163$
                                   4596 ; peephole j7 removed jra by using inverse jump logic
                                   4597 ; peephole j30 removed unused label 00352$.
                                   4598 ;	User/menu.c: 630: adjustdt.dt[adjustdt.index]=31;
                                   4599 ; genPointerSet
      00BACC A6 1F            [ 1] 4600 	ld	a, #0x1f
      00BACE F7               [ 1] 4601 	ld	(x), a
                                   4602 ; genGoto
      00BACF 20 6C            [ 2] 4603 	jra	00163$
                                   4604 ; peephole j5 changed absolute to relative unconditional jump.
                                   4605 ; genLabel
      00BAD1                       4606 00156$:
                                   4607 ;	User/menu.c: 632: else if(adjustdt.index==3)//24小时制
                                   4608 ; genCmpEQorNE
      00BAD1 A1 03            [ 1] 4609 	cp	a, #0x03
                                   4610 ; peephole j5 changed absolute to relative unconditional jump.
                                   4611 ; peephole j10 removed jra by using inverse jump logic
                                   4612 ; peephole j30 removed unused label 00354$.
                                   4613 ; peephole j5 changed absolute to relative unconditional jump.
      00BAD3 26 0F            [ 1] 4614 	jrne	00153$
                                   4615 ; peephole j7 removed jra by using inverse jump logic
                                   4616 ; peephole j30 removed unused label 00355$.
                                   4617 ; skipping generated iCode
                                   4618 ;	User/menu.c: 634: if(adjustdt.dt[adjustdt.index]>0)
                                   4619 ; genPointerGet
                                   4620 ; genIfx
      00BAD5 F6               [ 1] 4621 	ld	a, (x)
                                   4622 ; peephole 30 removed redundant tnz.
                                   4623 ; peephole j5 changed absolute to relative unconditional jump.
      00BAD6 27 04            [ 1] 4624 	jreq	00114$
                                   4625 ; peephole j10 removed jra by using inverse jump logic
                                   4626 ; peephole j30 removed unused label 00356$.
                                   4627 ;	User/menu.c: 635: adjustdt.dt[adjustdt.index]--;
                                   4628 ; genMinus
      00BAD8 4A               [ 1] 4629 	dec	a
                                   4630 ; genPointerSet
      00BAD9 F7               [ 1] 4631 	ld	(x), a
                                   4632 ; genGoto
      00BADA 20 61            [ 2] 4633 	jra	00163$
                                   4634 ; peephole j5 changed absolute to relative unconditional jump.
                                   4635 ; genLabel
      00BADC                       4636 00114$:
                                   4637 ;	User/menu.c: 636: else if(adjustdt.dt[adjustdt.index]==0)
                                   4638 ; genIfx
      00BADC 4D               [ 1] 4639 	tnz	a
                                   4640 ; peephole j5 changed absolute to relative unconditional jump.
      00BADD 26 5E            [ 1] 4641 	jrne	00163$
                                   4642 ; peephole j7 removed jra by using inverse jump logic
                                   4643 ; peephole j30 removed unused label 00357$.
                                   4644 ;	User/menu.c: 637: adjustdt.dt[adjustdt.index]=23;
                                   4645 ; genPointerSet
      00BADF A6 17            [ 1] 4646 	ld	a, #0x17
      00BAE1 F7               [ 1] 4647 	ld	(x), a
                                   4648 ; genGoto
      00BAE2 20 59            [ 2] 4649 	jra	00163$
                                   4650 ; peephole j5 changed absolute to relative unconditional jump.
                                   4651 ; genLabel
      00BAE4                       4652 00153$:
                                   4653 ;	User/menu.c: 639: else if(adjustdt.index==4)//分
                                   4654 ; genCmpEQorNE
      00BAE4 A1 04            [ 1] 4655 	cp	a, #0x04
                                   4656 ; peephole j5 changed absolute to relative unconditional jump.
                                   4657 ; peephole j10 removed jra by using inverse jump logic
                                   4658 ; peephole j30 removed unused label 00359$.
                                   4659 ; peephole j5 changed absolute to relative unconditional jump.
      00BAE6 26 0F            [ 1] 4660 	jrne	00150$
                                   4661 ; peephole j7 removed jra by using inverse jump logic
                                   4662 ; peephole j30 removed unused label 00360$.
                                   4663 ; skipping generated iCode
                                   4664 ;	User/menu.c: 641: if(adjustdt.dt[adjustdt.index]>0)
                                   4665 ; genPointerGet
                                   4666 ; genIfx
      00BAE8 F6               [ 1] 4667 	ld	a, (x)
                                   4668 ; peephole 30 removed redundant tnz.
                                   4669 ; peephole j5 changed absolute to relative unconditional jump.
      00BAE9 27 04            [ 1] 4670 	jreq	00119$
                                   4671 ; peephole j10 removed jra by using inverse jump logic
                                   4672 ; peephole j30 removed unused label 00361$.
                                   4673 ;	User/menu.c: 642: adjustdt.dt[adjustdt.index]--;
                                   4674 ; genMinus
      00BAEB 4A               [ 1] 4675 	dec	a
                                   4676 ; genPointerSet
      00BAEC F7               [ 1] 4677 	ld	(x), a
                                   4678 ; genGoto
      00BAED 20 4E            [ 2] 4679 	jra	00163$
                                   4680 ; peephole j5 changed absolute to relative unconditional jump.
                                   4681 ; genLabel
      00BAEF                       4682 00119$:
                                   4683 ;	User/menu.c: 643: else if(adjustdt.dt[adjustdt.index]==0)
                                   4684 ; genIfx
      00BAEF 4D               [ 1] 4685 	tnz	a
                                   4686 ; peephole j5 changed absolute to relative unconditional jump.
      00BAF0 26 4B            [ 1] 4687 	jrne	00163$
                                   4688 ; peephole j7 removed jra by using inverse jump logic
                                   4689 ; peephole j30 removed unused label 00362$.
                                   4690 ;	User/menu.c: 644: adjustdt.dt[adjustdt.index]=59;
                                   4691 ; genPointerSet
      00BAF2 A6 3B            [ 1] 4692 	ld	a, #0x3b
      00BAF4 F7               [ 1] 4693 	ld	(x), a
                                   4694 ; genGoto
      00BAF5 20 46            [ 2] 4695 	jra	00163$
                                   4696 ; peephole j5 changed absolute to relative unconditional jump.
                                   4697 ; genLabel
      00BAF7                       4698 00150$:
                                   4699 ;	User/menu.c: 646: else if(adjustdt.index==5)//秒
                                   4700 ; genCmpEQorNE
      00BAF7 A1 05            [ 1] 4701 	cp	a, #0x05
                                   4702 ; peephole j5 changed absolute to relative unconditional jump.
                                   4703 ; peephole j10 removed jra by using inverse jump logic
                                   4704 ; peephole j30 removed unused label 00364$.
                                   4705 ; peephole j5 changed absolute to relative unconditional jump.
      00BAF9 26 0F            [ 1] 4706 	jrne	00147$
                                   4707 ; peephole j7 removed jra by using inverse jump logic
                                   4708 ; peephole j30 removed unused label 00365$.
                                   4709 ; skipping generated iCode
                                   4710 ;	User/menu.c: 648: if(adjustdt.dt[adjustdt.index]>0)
                                   4711 ; genPointerGet
                                   4712 ; genIfx
      00BAFB F6               [ 1] 4713 	ld	a, (x)
                                   4714 ; peephole 30 removed redundant tnz.
                                   4715 ; peephole j5 changed absolute to relative unconditional jump.
      00BAFC 27 04            [ 1] 4716 	jreq	00124$
                                   4717 ; peephole j10 removed jra by using inverse jump logic
                                   4718 ; peephole j30 removed unused label 00366$.
                                   4719 ;	User/menu.c: 649: adjustdt.dt[adjustdt.index]--;
                                   4720 ; genMinus
      00BAFE 4A               [ 1] 4721 	dec	a
                                   4722 ; genPointerSet
      00BAFF F7               [ 1] 4723 	ld	(x), a
                                   4724 ; genGoto
      00BB00 20 3B            [ 2] 4725 	jra	00163$
                                   4726 ; peephole j5 changed absolute to relative unconditional jump.
                                   4727 ; genLabel
      00BB02                       4728 00124$:
                                   4729 ;	User/menu.c: 650: else if(adjustdt.dt[adjustdt.index]==0)
                                   4730 ; genIfx
      00BB02 4D               [ 1] 4731 	tnz	a
                                   4732 ; peephole j5 changed absolute to relative unconditional jump.
      00BB03 26 38            [ 1] 4733 	jrne	00163$
                                   4734 ; peephole j7 removed jra by using inverse jump logic
                                   4735 ; peephole j30 removed unused label 00367$.
                                   4736 ;	User/menu.c: 651: adjustdt.dt[adjustdt.index]=59;
                                   4737 ; genPointerSet
      00BB05 A6 3B            [ 1] 4738 	ld	a, #0x3b
      00BB07 F7               [ 1] 4739 	ld	(x), a
                                   4740 ; genGoto
      00BB08 20 33            [ 2] 4741 	jra	00163$
                                   4742 ; peephole j5 changed absolute to relative unconditional jump.
                                   4743 ; genLabel
      00BB0A                       4744 00147$:
                                   4745 ;	User/menu.c: 653: else if(adjustdt.index>5 && adjustdt.index<10 )//ID
                                   4746 ; genCmp
                                   4747 ; genCmpTnz
      00BB0A A1 05            [ 1] 4748 	cp	a, #0x05
                                   4749 ; peephole j5 changed absolute to relative unconditional jump.
      00BB0C 23 13            [ 2] 4750 	jrule	00143$
                                   4751 ; peephole j16 removed jra by using inverse jump logic
                                   4752 ; peephole j30 removed unused label 00368$.
                                   4753 ; skipping generated iCode
                                   4754 ; genCmp
                                   4755 ; genCmpTnz
      00BB0E A1 0A            [ 1] 4756 	cp	a, #0x0a
                                   4757 ; peephole j5 changed absolute to relative unconditional jump.
      00BB10 24 0F            [ 1] 4758 	jrnc	00143$
                                   4759 ; peephole j6 removed jra by using inverse jump logic
                                   4760 ; peephole j30 removed unused label 00369$.
                                   4761 ; skipping generated iCode
                                   4762 ;	User/menu.c: 655: if(adjustdt.dt[adjustdt.index]>0)
                                   4763 ; genPointerGet
                                   4764 ; genIfx
      00BB12 F6               [ 1] 4765 	ld	a, (x)
                                   4766 ; peephole 30 removed redundant tnz.
                                   4767 ; peephole j5 changed absolute to relative unconditional jump.
      00BB13 27 04            [ 1] 4768 	jreq	00129$
                                   4769 ; peephole j10 removed jra by using inverse jump logic
                                   4770 ; peephole j30 removed unused label 00370$.
                                   4771 ;	User/menu.c: 656: adjustdt.dt[adjustdt.index]--;
                                   4772 ; genMinus
      00BB15 4A               [ 1] 4773 	dec	a
                                   4774 ; genPointerSet
      00BB16 F7               [ 1] 4775 	ld	(x), a
                                   4776 ; genGoto
      00BB17 20 24            [ 2] 4777 	jra	00163$
                                   4778 ; peephole j5 changed absolute to relative unconditional jump.
                                   4779 ; genLabel
      00BB19                       4780 00129$:
                                   4781 ;	User/menu.c: 657: else if(adjustdt.dt[adjustdt.index]==0)
                                   4782 ; genIfx
      00BB19 4D               [ 1] 4783 	tnz	a
                                   4784 ; peephole j5 changed absolute to relative unconditional jump.
      00BB1A 26 21            [ 1] 4785 	jrne	00163$
                                   4786 ; peephole j7 removed jra by using inverse jump logic
                                   4787 ; peephole j30 removed unused label 00371$.
                                   4788 ;	User/menu.c: 658: adjustdt.dt[adjustdt.index]=99;
                                   4789 ; genPointerSet
      00BB1C A6 63            [ 1] 4790 	ld	a, #0x63
      00BB1E F7               [ 1] 4791 	ld	(x), a
                                   4792 ; genGoto
      00BB1F 20 1C            [ 2] 4793 	jra	00163$
                                   4794 ; peephole j5 changed absolute to relative unconditional jump.
                                   4795 ; genLabel
      00BB21                       4796 00143$:
                                   4797 ;	User/menu.c: 660: else if(adjustdt.index==10)//Y/N
                                   4798 ; genCmpEQorNE
      00BB21 A1 0A            [ 1] 4799 	cp	a, #0x0a
                                   4800 ; peephole j5 changed absolute to relative unconditional jump.
                                   4801 ; peephole j10 removed jra by using inverse jump logic
                                   4802 ; peephole j30 removed unused label 00373$.
                                   4803 ; peephole j5 changed absolute to relative unconditional jump.
      00BB23 26 0B            [ 1] 4804 	jrne	00140$
                                   4805 ; peephole j7 removed jra by using inverse jump logic
                                   4806 ; peephole j30 removed unused label 00374$.
                                   4807 ; skipping generated iCode
                                   4808 ;	User/menu.c: 662: if(adjustdt.dt[adjustdt.index])
                                   4809 ; genPointerGet
                                   4810 ; genIfx
      00BB25 F6               [ 1] 4811 	ld	a, (x)
                                   4812 ; peephole 30 removed redundant tnz.
                                   4813 ; peephole j5 changed absolute to relative unconditional jump.
      00BB26 27 03            [ 1] 4814 	jreq	00132$
                                   4815 ; peephole j10 removed jra by using inverse jump logic
                                   4816 ; peephole j30 removed unused label 00375$.
                                   4817 ;	User/menu.c: 663: adjustdt.dt[adjustdt.index]=0;
                                   4818 ; genPointerSet
      00BB28 7F               [ 1] 4819 	clr	(x)
                                   4820 ; genGoto
      00BB29 20 12            [ 2] 4821 	jra	00163$
                                   4822 ; peephole j5 changed absolute to relative unconditional jump.
                                   4823 ; genLabel
      00BB2B                       4824 00132$:
                                   4825 ;	User/menu.c: 665: adjustdt.dt[adjustdt.index]=1;
                                   4826 ; genPointerSet
      00BB2B A6 01            [ 1] 4827 	ld	a, #0x01
      00BB2D F7               [ 1] 4828 	ld	(x), a
                                   4829 ; genGoto
      00BB2E 20 0D            [ 2] 4830 	jra	00163$
                                   4831 ; peephole j5 changed absolute to relative unconditional jump.
                                   4832 ; genLabel
      00BB30                       4833 00140$:
                                   4834 ;	User/menu.c: 667: else if(adjustdt.index==11)//中/英
                                   4835 ; genCmpEQorNE
      00BB30 A1 0B            [ 1] 4836 	cp	a, #0x0b
                                   4837 ; peephole j5 changed absolute to relative unconditional jump.
                                   4838 ; peephole j10 removed jra by using inverse jump logic
                                   4839 ; peephole j30 removed unused label 00377$.
                                   4840 ; peephole j5 changed absolute to relative unconditional jump.
      00BB32 26 09            [ 1] 4841 	jrne	00163$
                                   4842 ; peephole j7 removed jra by using inverse jump logic
                                   4843 ; peephole j30 removed unused label 00378$.
                                   4844 ; skipping generated iCode
                                   4845 ;	User/menu.c: 669: if(adjustdt.dt[adjustdt.index])
                                   4846 ; genPointerGet
                                   4847 ; genIfx
      00BB34 F6               [ 1] 4848 	ld	a, (x)
                                   4849 ; peephole 30 removed redundant tnz.
                                   4850 ; peephole j5 changed absolute to relative unconditional jump.
      00BB35 27 03            [ 1] 4851 	jreq	00135$
                                   4852 ; peephole j10 removed jra by using inverse jump logic
                                   4853 ; peephole j30 removed unused label 00379$.
                                   4854 ;	User/menu.c: 670: adjustdt.dt[adjustdt.index]=0;
                                   4855 ; genPointerSet
      00BB37 7F               [ 1] 4856 	clr	(x)
                                   4857 ; genGoto
      00BB38 20 03            [ 2] 4858 	jra	00163$
                                   4859 ; peephole j5 changed absolute to relative unconditional jump.
                                   4860 ; genLabel
      00BB3A                       4861 00135$:
                                   4862 ;	User/menu.c: 672: adjustdt.dt[adjustdt.index]=1;
                                   4863 ; genPointerSet
      00BB3A A6 01            [ 1] 4864 	ld	a, #0x01
      00BB3C F7               [ 1] 4865 	ld	(x), a
                                   4866 ; genLabel
      00BB3D                       4867 00163$:
                                   4868 ;	User/menu.c: 674: show_datetime();
                                   4869 ; genCall
      00BB3D 85               [ 2] 4870 	popw	x
                                   4871 ; genLabel
                                   4872 ; peephole j30 removed unused label 00164$.
                                   4873 ;	User/menu.c: 676: }
                                   4874 ; genEndFunction
                                   4875 ; peephole 53b removed unreachable popw.
      00BB3E CC B8 12         [ 2] 4876 	jp	_show_datetime
                                   4877 ; peephole 52 removed unreachable ret.
                                   4878 ;	Total Down_Five function size at codegen: 2 bytes.
                                   4879 ;	User/menu.c: 678: void Left_Five(void)
                                   4880 ; genLabel
                                   4881 ;	-----------------------------------------
                                   4882 ;	 function Left_Five
                                   4883 ;	-----------------------------------------
                                   4884 ;	Register assignment might be sub-optimal.
                                   4885 ;	Stack space usage: 0 bytes.
      00BB41                       4886 _Left_Five:
                                   4887 ;	User/menu.c: 681: if(adjustdt.index)
                                   4888 ; genAddrOf
      00BB41 AE 05 3E         [ 2] 4889 	ldw	x, #_adjustdt+0
                                   4890 ; genCast
                                   4891 ; genAssign
                                   4892 ; genPointerGet
                                   4893 ; genIfx
      00BB44 F6               [ 1] 4894 	ld	a, (x)
                                   4895 ; peephole 30 removed redundant tnz.
                                   4896 ; peephole j5 changed absolute to relative unconditional jump.
      00BB45 27 03            [ 1] 4897 	jreq	00102$
                                   4898 ; peephole j10 removed jra by using inverse jump logic
                                   4899 ; peephole j30 removed unused label 00113$.
                                   4900 ;	User/menu.c: 682: adjustdt.index--;
                                   4901 ; genMinus
      00BB47 4A               [ 1] 4902 	dec	a
                                   4903 ; genPointerSet
      00BB48 F7               [ 1] 4904 	ld	(x), a
                                   4905 ; genGoto
      00BB49 81               [ 4] 4906 	ret
                                   4907 ; peephole j2e replaced jump by return.
                                   4908 ; genLabel
      00BB4A                       4909 00102$:
                                   4910 ;	User/menu.c: 684: adjustdt.index=11;
                                   4911 ; genPointerSet
      00BB4A A6 0B            [ 1] 4912 	ld	a, #0x0b
      00BB4C F7               [ 1] 4913 	ld	(x), a
                                   4914 ; genLabel
                                   4915 ; peephole j30 removed unused label 00104$.
                                   4916 ;	User/menu.c: 687: }
                                   4917 ; genEndFunction
      00BB4D 81               [ 4] 4918 	ret
                                   4919 ;	Total Left_Five function size at codegen: 1 bytes.
                                   4920 ;	User/menu.c: 689: void Right_Five(void)
                                   4921 ; genLabel
                                   4922 ;	-----------------------------------------
                                   4923 ;	 function Right_Five
                                   4924 ;	-----------------------------------------
                                   4925 ;	Register assignment might be sub-optimal.
                                   4926 ;	Stack space usage: 2 bytes.
      00BB4E                       4927 _Right_Five:
      00BB4E 89               [ 2] 4928 	pushw	x
                                   4929 ;	User/menu.c: 692: adjustdt.index=(adjustdt.index+1)%12;
                                   4930 ; skipping iCode since result will be rematerialized
                                   4931 ; genCast
                                   4932 ; genAssign
      00BB4F AE 05 3E         [ 2] 4933 	ldw	x, #(_adjustdt+0)
                                   4934 ; genPointerGet
      00BB52 1F 01            [ 2] 4935 	ldw	(0x01, sp), x
                                   4936 ; peephole 4w removed redundant load from (0x01, sp) into x.
      00BB54 F6               [ 1] 4937 	ld	a, (x)
                                   4938 ; genCast
                                   4939 ; genAssign
      00BB55 5F               [ 1] 4940 	clrw	x
                                   4941 ; genPlus
      00BB56 97               [ 1] 4942 	ld	xl, a
      00BB57 5C               [ 1] 4943 	incw	x
                                   4944 ; genIPush
      00BB58 4B 0C            [ 1] 4945 	push	#0x0c
      00BB5A 4B 00            [ 1] 4946 	push	#0x00
                                   4947 ; genSend
                                   4948 ; genCall
      00BB5C CD EE 9C         [ 4] 4949 	call	__modsint
      00BB5F 9F               [ 1] 4950 	ld	a, xl
                                   4951 ; genCast
                                   4952 ; genAssign
                                   4953 ; genPointerSet
      00BB60 1E 01            [ 2] 4954 	ldw	x, (0x01, sp)
      00BB62 F7               [ 1] 4955 	ld	(x), a
                                   4956 ; genLabel
                                   4957 ; peephole j30 removed unused label 00101$.
                                   4958 ;	User/menu.c: 694: }
                                   4959 ; genEndFunction
      00BB63 85               [ 2] 4960 	popw	x
      00BB64 81               [ 4] 4961 	ret
                                   4962 ;	Total Right_Five function size at codegen: 2 bytes.
                                   4963 ;	User/menu.c: 696: void Menu_Five(void)
                                   4964 ; genLabel
                                   4965 ;	-----------------------------------------
                                   4966 ;	 function Menu_Five
                                   4967 ;	-----------------------------------------
                                   4968 ;	Register assignment might be sub-optimal.
                                   4969 ;	Stack space usage: 12 bytes.
      00BB65                       4970 _Menu_Five:
      00BB65 52 0C            [ 2] 4971 	sub	sp, #12
                                   4972 ;	User/menu.c: 700: rtc_set_datetime();
                                   4973 ; genCall
      00BB67 CD 97 B4         [ 4] 4974 	call	_rtc_set_datetime
                                   4975 ;	User/menu.c: 702: id=(adjustdt.dt[6]*1000000) + (adjustdt.dt[7]*10000) + (adjustdt.dt[8]*100) + adjustdt.dt[9];
                                   4976 ; skipping iCode since result will be rematerialized
                                   4977 ; skipping iCode since result will be rematerialized
                                   4978 ; genPointerGet
      00BB6A C6 05 45         [ 1] 4979 	ld	a, _adjustdt+7
                                   4980 ; genCast
                                   4981 ; genAssign
      00BB6D 5F               [ 1] 4982 	clrw	x
      00BB6E 0F 09            [ 1] 4983 	clr	(0x09, sp)
                                   4984 ; genIPush
      00BB70 88               [ 1] 4985 	push	a
      00BB71 89               [ 2] 4986 	pushw	x
      00BB72 4F               [ 1] 4987 	clr	a
      00BB73 88               [ 1] 4988 	push	a
                                   4989 ; genIPush
      00BB74 4B 40            [ 1] 4990 	push	#0x40
      00BB76 4B 42            [ 1] 4991 	push	#0x42
      00BB78 4B 0F            [ 1] 4992 	push	#0x0f
      00BB7A 4B 00            [ 1] 4993 	push	#0x00
                                   4994 ; genCall
      00BB7C CD EE 20         [ 4] 4995 	call	__mullong
      00BB7F 5B 08            [ 2] 4996 	addw	sp, #8
      00BB81 1F 07            [ 2] 4997 	ldw	(0x07, sp), x
      00BB83 17 05            [ 2] 4998 	ldw	(0x05, sp), y
                                   4999 ; skipping iCode since result will be rematerialized
                                   5000 ; genPointerGet
      00BB85 C6 05 46         [ 1] 5001 	ld	a, _adjustdt+8
                                   5002 ; genCast
                                   5003 ; genAssign
      00BB88 5F               [ 1] 5004 	clrw	x
      00BB89 97               [ 1] 5005 	ld	xl, a
                                   5006 ; genIPush
      00BB8A 89               [ 2] 5007 	pushw	x
                                   5008 ; genSend
      00BB8B AE 27 10         [ 2] 5009 	ldw	x, #0x2710
                                   5010 ; genCall
      00BB8E CD EC CD         [ 4] 5011 	call	__mulint
                                   5012 ; genCast
      00BB91 1F 0B            [ 2] 5013 	ldw	(0x0b, sp), x
      00BB93 7B 0B            [ 1] 5014 	ld	a, (0x0b, sp)
      00BB95 49               [ 1] 5015 	rlc	a
      00BB96 4F               [ 1] 5016 	clr	a
      00BB97 A2 00            [ 1] 5017 	sbc	a, #0x00
      00BB99 6B 0A            [ 1] 5018 	ld	(0x0a, sp), a
                                   5019 ; genPlus
      00BB9B 1E 0B            [ 2] 5020 	ldw	x, (0x0b, sp)
      00BB9D 72 FB 07         [ 2] 5021 	addw	x, (0x07, sp)
      00BBA0 1F 03            [ 2] 5022 	ldw	(0x03, sp), x
      00BBA2 88               [ 1] 5023 	push	a
      00BBA3 7B 0B            [ 1] 5024 	ld	a, (0x0b, sp)
      00BBA5 19 07            [ 1] 5025 	adc	a, (0x07, sp)
      00BBA7 6B 03            [ 1] 5026 	ld	(0x03, sp), a
      00BBA9 84               [ 1] 5027 	pop	a
      00BBAA 19 05            [ 1] 5028 	adc	a, (0x05, sp)
      00BBAC 6B 01            [ 1] 5029 	ld	(0x01, sp), a
                                   5030 ; skipping iCode since result will be rematerialized
                                   5031 ; genPointerGet
      00BBAE C6 05 47         [ 1] 5032 	ld	a, _adjustdt+9
                                   5033 ; genCast
                                   5034 ; genAssign
      00BBB1 5F               [ 1] 5035 	clrw	x
      00BBB2 97               [ 1] 5036 	ld	xl, a
                                   5037 ; genIPush
      00BBB3 89               [ 2] 5038 	pushw	x
                                   5039 ; genSend
      00BBB4 AE 00 64         [ 2] 5040 	ldw	x, #0x0064
                                   5041 ; genCall
      00BBB7 CD EC CD         [ 4] 5042 	call	__mulint
                                   5043 ; genCast
      00BBBA 1F 07            [ 2] 5044 	ldw	(0x07, sp), x
      00BBBC 7B 07            [ 1] 5045 	ld	a, (0x07, sp)
      00BBBE 49               [ 1] 5046 	rlc	a
      00BBBF 4F               [ 1] 5047 	clr	a
      00BBC0 A2 00            [ 1] 5048 	sbc	a, #0x00
      00BBC2 6B 06            [ 1] 5049 	ld	(0x06, sp), a
                                   5050 ; genPlus
      00BBC4 1E 07            [ 2] 5051 	ldw	x, (0x07, sp)
      00BBC6 72 FB 03         [ 2] 5052 	addw	x, (0x03, sp)
      00BBC9 1F 0B            [ 2] 5053 	ldw	(0x0b, sp), x
      00BBCB 88               [ 1] 5054 	push	a
      00BBCC 7B 07            [ 1] 5055 	ld	a, (0x07, sp)
      00BBCE 19 03            [ 1] 5056 	adc	a, (0x03, sp)
      00BBD0 6B 0B            [ 1] 5057 	ld	(0x0b, sp), a
      00BBD2 84               [ 1] 5058 	pop	a
      00BBD3 19 01            [ 1] 5059 	adc	a, (0x01, sp)
      00BBD5 6B 09            [ 1] 5060 	ld	(0x09, sp), a
                                   5061 ; skipping iCode since result will be rematerialized
                                   5062 ; genPointerGet
      00BBD7 C6 05 48         [ 1] 5063 	ld	a, _adjustdt+10
                                   5064 ; genCast
                                   5065 ; genAssign
                                   5066 ; genCast
                                   5067 ; genAssign
      00BBDA 5F               [ 1] 5068 	clrw	x
      00BBDB 1F 05            [ 2] 5069 	ldw	(0x05, sp), x
                                   5070 ; genPlus
      00BBDD 97               [ 1] 5071 	ld	xl, a
      00BBDE 72 FB 0B         [ 2] 5072 	addw	x, (0x0b, sp)
      00BBE1 16 05            [ 2] 5073 	ldw	y, (0x05, sp)
      00BBE3 24 02            [ 1] 5074 	jrnc	00121$
      00BBE5 90 5C            [ 1] 5075 	incw	y
      00BBE7                       5076 00121$:
      00BBE7 72 F9 09         [ 2] 5077 	addw	y, (0x09, sp)
                                   5078 ;	User/menu.c: 703: if(id!=selfid)
                                   5079 ; genCmpEQorNE
      00BBEA C3 05 2B         [ 2] 5080 	cpw	x, _selfid+2
      00BBED 26 06            [ 1] 5081 	jrne	00123$
      00BBEF 90 C3 05 29      [ 2] 5082 	cpw	y, _selfid+0
                                   5083 ; peephole j5 changed absolute to relative unconditional jump.
      00BBF3 27 0C            [ 1] 5084 	jreq	00102$
                                   5085 ; peephole j10 removed jra by using inverse jump logic
      00BBF5                       5086 00123$:
                                   5087 ; skipping generated iCode
                                   5088 ;	User/menu.c: 705: selfid=id;
                                   5089 ; genAssign
      00BBF5 CF 05 2B         [ 2] 5090 	ldw	_selfid+2, x
      00BBF8 90 CF 05 29      [ 2] 5091 	ldw	_selfid+0, y
                                   5092 ;	User/menu.c: 706: r485id=(selfid&0xff);
                                   5093 ; genCast
                                   5094 ; genAssign
      00BBFC 55 05 2C 05 2D   [ 1] 5095 	mov	_r485id+0, _selfid+3
                                   5096 ; genLabel
      00BC01                       5097 00102$:
                                   5098 ;	User/menu.c: 710: Storage_SaveSettings(adjustdt.dt[11], adjustdt.dt[6], adjustdt.dt[7], adjustdt.dt[8], adjustdt.dt[9]);
                                   5099 ; genPointerGet
      00BC01 C6 05 48         [ 1] 5100 	ld	a, _adjustdt+10
      00BC04 6B 08            [ 1] 5101 	ld	(0x08, sp), a
                                   5102 ; genPointerGet
      00BC06 C6 05 47         [ 1] 5103 	ld	a, _adjustdt+9
      00BC09 6B 09            [ 1] 5104 	ld	(0x09, sp), a
                                   5105 ; genPointerGet
      00BC0B C6 05 46         [ 1] 5106 	ld	a, _adjustdt+8
      00BC0E 6B 0A            [ 1] 5107 	ld	(0x0a, sp), a
                                   5108 ; genPointerGet
      00BC10 C6 05 45         [ 1] 5109 	ld	a, _adjustdt+7
      00BC13 6B 0B            [ 1] 5110 	ld	(0x0b, sp), a
                                   5111 ; skipping iCode since result will be rematerialized
                                   5112 ; genPointerGet
      00BC15 C6 05 4A         [ 1] 5113 	ld	a, _adjustdt+12
      00BC18 6B 0C            [ 1] 5114 	ld	(0x0c, sp), a
                                   5115 ; genIPush
      00BC1A 7B 08            [ 1] 5116 	ld	a, (0x08, sp)
      00BC1C 88               [ 1] 5117 	push	a
                                   5118 ; genIPush
      00BC1D 7B 0A            [ 1] 5119 	ld	a, (0x0a, sp)
      00BC1F 88               [ 1] 5120 	push	a
                                   5121 ; genIPush
      00BC20 7B 0C            [ 1] 5122 	ld	a, (0x0c, sp)
      00BC22 88               [ 1] 5123 	push	a
                                   5124 ; genIPush
      00BC23 7B 0E            [ 1] 5125 	ld	a, (0x0e, sp)
      00BC25 88               [ 1] 5126 	push	a
                                   5127 ; genSend
      00BC26 7B 10            [ 1] 5128 	ld	a, (0x10, sp)
                                   5129 ; genCall
      00BC28 CD A5 E4         [ 4] 5130 	call	_Storage_SaveSettings
                                   5131 ;	User/menu.c: 712: if(adjustdt.dt[10])//恢复出厂设置
                                   5132 ; skipping iCode since result will be rematerialized
                                   5133 ; genPointerGet
                                   5134 ; genIfx
      00BC2B C6 05 49         [ 1] 5135 	ld	a, _adjustdt+11
                                   5136 ; peephole 30 removed redundant tnz.
                                   5137 ; peephole j5 changed absolute to relative unconditional jump.
      00BC2E 27 05            [ 1] 5138 	jreq	00105$
                                   5139 ; peephole j10 removed jra by using inverse jump logic
                                   5140 ; peephole j30 removed unused label 00125$.
                                   5141 ;	User/menu.c: 714: Sys_Reset();
                                   5142 ; genCall
      00BC30 5B 0C            [ 2] 5143 	addw	sp, #12
      00BC32 CC BC AC         [ 2] 5144 	jp	_Sys_Reset
                                   5145 ; genLabel
      00BC35                       5146 00105$:
                                   5147 ;	User/menu.c: 716: }
                                   5148 ; genEndFunction
      00BC35 5B 0C            [ 2] 5149 	addw	sp, #12
      00BC37 81               [ 4] 5150 	ret
                                   5151 ;	Total Menu_Five function size at codegen: 3 bytes.
                                   5152 ;	User/menu.c: 719: void DspSix(void)
                                   5153 ; genLabel
                                   5154 ;	-----------------------------------------
                                   5155 ;	 function DspSix
                                   5156 ;	-----------------------------------------
                                   5157 ;	Register assignment might be sub-optimal.
                                   5158 ;	Stack space usage: 4 bytes.
      00BC38                       5159 _DspSix:
      00BC38 52 04            [ 2] 5160 	sub	sp, #4
                                   5161 ;	User/menu.c: 722: if(adjustdt.dt[11])
                                   5162 ; skipping iCode since result will be rematerialized
                                   5163 ; genPointerGet
                                   5164 ; genIfx
      00BC3A C6 05 4A         [ 1] 5165 	ld	a, _adjustdt+12
                                   5166 ; peephole 30 removed redundant tnz.
                                   5167 ; peephole j5 changed absolute to relative unconditional jump.
      00BC3D 27 0F            [ 1] 5168 	jreq	00102$
                                   5169 ; peephole j10 removed jra by using inverse jump logic
                                   5170 ; peephole j30 removed unused label 00113$.
                                   5171 ;	User/menu.c: 723: show_hz_12x12(1,24,"RS485 ]g");// RS485 通信
                                   5172 ; skipping iCode since result will be rematerialized
                                   5173 ; skipping iCode since result will be rematerialized
                                   5174 ; genIPush
      00BC3F 4B 0D            [ 1] 5175 	push	#<(___str_52+0)
      00BC41 4B 84            [ 1] 5176 	push	#((___str_52+0) >> 8)
                                   5177 ; genIPush
      00BC43 4B 18            [ 1] 5178 	push	#0x18
      00BC45 4B 00            [ 1] 5179 	push	#0x00
                                   5180 ; genSend
      00BC47 5F               [ 1] 5181 	clrw	x
      00BC48 5C               [ 1] 5182 	incw	x
                                   5183 ; genCall
      00BC49 CD BF 49         [ 4] 5184 	call	_show_hz_12x12
                                   5185 ; genGoto
      00BC4C 20 0D            [ 2] 5186 	jra	00103$
                                   5187 ; peephole j5 changed absolute to relative unconditional jump.
                                   5188 ; genLabel
      00BC4E                       5189 00102$:
                                   5190 ;	User/menu.c: 725: show_str_7x8(1,24,"RS485_COM");
                                   5191 ; skipping iCode since result will be rematerialized
                                   5192 ; skipping iCode since result will be rematerialized
                                   5193 ; genIPush
      00BC4E 4B 16            [ 1] 5194 	push	#<(___str_53+0)
      00BC50 4B 84            [ 1] 5195 	push	#((___str_53+0) >> 8)
                                   5196 ; genIPush
      00BC52 4B 18            [ 1] 5197 	push	#0x18
      00BC54 4B 00            [ 1] 5198 	push	#0x00
                                   5199 ; genSend
      00BC56 5F               [ 1] 5200 	clrw	x
      00BC57 5C               [ 1] 5201 	incw	x
                                   5202 ; genCall
      00BC58 CD BE C6         [ 4] 5203 	call	_show_str_7x8
                                   5204 ; genLabel
      00BC5B                       5205 00103$:
                                   5206 ;	User/menu.c: 727: show_str_8x12(1,104,UI_ICON_TIMES); // battery mask
                                   5207 ; skipping iCode since result will be rematerialized
                                   5208 ; skipping iCode since result will be rematerialized
                                   5209 ; genIPush
      00BC5B 4B 48            [ 1] 5210 	push	#<(___str_20+0)
      00BC5D 4B 83            [ 1] 5211 	push	#((___str_20+0) >> 8)
                                   5212 ; genIPush
      00BC5F 4B 68            [ 1] 5213 	push	#0x68
      00BC61 4B 00            [ 1] 5214 	push	#0x00
                                   5215 ; genSend
      00BC63 5F               [ 1] 5216 	clrw	x
      00BC64 5C               [ 1] 5217 	incw	x
                                   5218 ; genCall
      00BC65 CD BE 0E         [ 4] 5219 	call	_show_str_8x12
                                   5220 ;	User/menu.c: 730: Draw_Stat_Columns(3, "ADR", r485id, 9600); // reuse format string
                                   5221 ; genCast
                                   5222 ; genAssign
      00BC68 C6 05 2D         [ 1] 5223 	ld	a, _r485id+0
      00BC6B 5F               [ 1] 5224 	clrw	x
      00BC6C 0F 01            [ 1] 5225 	clr	(0x01, sp)
                                   5226 ; skipping iCode since result will be rematerialized
                                   5227 ; skipping iCode since result will be rematerialized
                                   5228 ; genIPush
      00BC6E 4B 80            [ 1] 5229 	push	#0x80
      00BC70 4B 25            [ 1] 5230 	push	#0x25
      00BC72 4B 00            [ 1] 5231 	push	#0x00
      00BC74 4B 00            [ 1] 5232 	push	#0x00
                                   5233 ; genIPush
      00BC76 88               [ 1] 5234 	push	a
      00BC77 89               [ 2] 5235 	pushw	x
      00BC78 4F               [ 1] 5236 	clr	a
      00BC79 88               [ 1] 5237 	push	a
                                   5238 ; genSend
      00BC7A AE 84 20         [ 2] 5239 	ldw	x, #(___str_54+0)
                                   5240 ; genSend
      00BC7D A6 03            [ 1] 5241 	ld	a, #0x03
                                   5242 ; genCall
      00BC7F CD AE 81         [ 4] 5243 	call	_Draw_Stat_Columns
                                   5244 ;	User/menu.c: 733: Draw_Stat_Columns(5, "TX", 0, 0); 
                                   5245 ; skipping iCode since result will be rematerialized
                                   5246 ; skipping iCode since result will be rematerialized
                                   5247 ; genIPush
      00BC82 5F               [ 1] 5248 	clrw	x
      00BC83 89               [ 2] 5249 	pushw	x
      00BC84 5F               [ 1] 5250 	clrw	x
      00BC85 89               [ 2] 5251 	pushw	x
                                   5252 ; genIPush
      00BC86 5F               [ 1] 5253 	clrw	x
      00BC87 89               [ 2] 5254 	pushw	x
      00BC88 5F               [ 1] 5255 	clrw	x
      00BC89 89               [ 2] 5256 	pushw	x
                                   5257 ; genSend
      00BC8A AE 84 24         [ 2] 5258 	ldw	x, #(___str_55+0)
                                   5259 ; genSend
      00BC8D A6 05            [ 1] 5260 	ld	a, #0x05
                                   5261 ; genCall
      00BC8F CD AE 81         [ 4] 5262 	call	_Draw_Stat_Columns
                                   5263 ;	User/menu.c: 736: Draw_Stat_Columns(7, "RX", 0, 0);
                                   5264 ; skipping iCode since result will be rematerialized
                                   5265 ; skipping iCode since result will be rematerialized
                                   5266 ; genIPush
      00BC92 5F               [ 1] 5267 	clrw	x
      00BC93 89               [ 2] 5268 	pushw	x
      00BC94 5F               [ 1] 5269 	clrw	x
      00BC95 89               [ 2] 5270 	pushw	x
                                   5271 ; genIPush
      00BC96 5F               [ 1] 5272 	clrw	x
      00BC97 89               [ 2] 5273 	pushw	x
      00BC98 5F               [ 1] 5274 	clrw	x
      00BC99 89               [ 2] 5275 	pushw	x
                                   5276 ; genSend
      00BC9A AE 84 27         [ 2] 5277 	ldw	x, #(___str_56+0)
                                   5278 ; genSend
      00BC9D A6 07            [ 1] 5279 	ld	a, #0x07
                                   5280 ; genCall
      00BC9F CD AE 81         [ 4] 5281 	call	_Draw_Stat_Columns
                                   5282 ;	User/menu.c: 738: Draw_Page_Num(8);
                                   5283 ; genSend
      00BCA2 A6 08            [ 1] 5284 	ld	a, #0x08
                                   5285 ; genCall
      00BCA4 5B 04            [ 2] 5286 	addw	sp, #4
                                   5287 ; genLabel
                                   5288 ; peephole j30 removed unused label 00104$.
                                   5289 ;	User/menu.c: 739: }
                                   5290 ; genEndFunction
                                   5291 ; peephole 53 removed unreachable addw.
      00BCA6 CC AF 49         [ 2] 5292 	jp	_Draw_Page_Num
                                   5293 ; peephole 52 removed unreachable ret.
                                   5294 ;	Total DspSix function size at codegen: 3 bytes.
                                   5295 ;	User/menu.c: 742: void Menu_Four(void)
                                   5296 ; genLabel
                                   5297 ;	-----------------------------------------
                                   5298 ;	 function Menu_Four
                                   5299 ;	-----------------------------------------
                                   5300 ;	Register assignment is optimal.
                                   5301 ;	Stack space usage: 0 bytes.
      00BCA9                       5302 _Menu_Four:
                                   5303 ;	User/menu.c: 744: Storage_ClearHistory();
                                   5304 ; genCall
                                   5305 ; genLabel
                                   5306 ; peephole j30 removed unused label 00101$.
                                   5307 ;	User/menu.c: 745: }
                                   5308 ; genEndFunction
      00BCA9 CC A6 3C         [ 2] 5309 	jp	_Storage_ClearHistory
                                   5310 ; peephole 52 removed unreachable ret.
                                   5311 ;	Total Menu_Four function size at codegen: 1 bytes.
                                   5312 ;	User/menu.c: 748: void Sys_Reset(void)
                                   5313 ; genLabel
                                   5314 ;	-----------------------------------------
                                   5315 ;	 function Sys_Reset
                                   5316 ;	-----------------------------------------
                                   5317 ;	Register assignment is optimal.
                                   5318 ;	Stack space usage: 0 bytes.
      00BCAC                       5319 _Sys_Reset:
                                   5320 ;	User/menu.c: 750: Storage_FactoryReset();
                                   5321 ; genCall
                                   5322 ; genLabel
                                   5323 ; peephole j30 removed unused label 00101$.
                                   5324 ;	User/menu.c: 751: }
                                   5325 ; genEndFunction
      00BCAC CC A6 5E         [ 2] 5326 	jp	_Storage_FactoryReset
                                   5327 ; peephole 52 removed unreachable ret.
                                   5328 ;	Total Sys_Reset function size at codegen: 1 bytes.
                                   5329 	.area CODE
                                   5330 	.area CONST
                                   5331 	.area CONST
      008259                       5332 _MenuTab:
      008259 00                    5333 	.db #0x00	; 0
      00825A 00                    5334 	.db #0x00	; 0
      00825B 00                    5335 	.db #0x00	; 0
      00825C 07                    5336 	.db #0x07	; 7
      00825D 01                    5337 	.db #0x01	; 1
      00825E 05                    5338 	.db #0x05	; 5
      00825F AF 6E                 5339 	.dw _DspOne
      008261 00 00                 5340 	.dw #0x0000
      008263 00 00                 5341 	.dw #0x0000
      008265 00 00                 5342 	.dw #0x0000
      008267 00 00                 5343 	.dw #0x0000
      008269 00 00                 5344 	.dw #0x0000
      00826B 01                    5345 	.db #0x01	; 1
      00826C 01                    5346 	.db #0x01	; 1
      00826D 01                    5347 	.db #0x01	; 1
      00826E 00                    5348 	.db #0x00	; 0
      00826F 02                    5349 	.db #0x02	; 2
      008270 05                    5350 	.db #0x05	; 5
      008271 B0 42                 5351 	.dw _DspOne_Plus
      008273 00 00                 5352 	.dw #0x0000
      008275 00 00                 5353 	.dw #0x0000
      008277 00 00                 5354 	.dw #0x0000
      008279 00 00                 5355 	.dw #0x0000
      00827B 00 00                 5356 	.dw #0x0000
      00827D 02                    5357 	.db #0x02	; 2
      00827E 02                    5358 	.db #0x02	; 2
      00827F 02                    5359 	.db #0x02	; 2
      008280 01                    5360 	.db #0x01	; 1
      008281 03                    5361 	.db #0x03	; 3
      008282 05                    5362 	.db #0x05	; 5
      008283 B1 16                 5363 	.dw _DspTwo
      008285 00 00                 5364 	.dw #0x0000
      008287 00 00                 5365 	.dw #0x0000
      008289 00 00                 5366 	.dw #0x0000
      00828B 00 00                 5367 	.dw #0x0000
      00828D 00 00                 5368 	.dw #0x0000
      00828F 03                    5369 	.db #0x03	; 3
      008290 03                    5370 	.db #0x03	; 3
      008291 03                    5371 	.db #0x03	; 3
      008292 02                    5372 	.db #0x02	; 2
      008293 04                    5373 	.db #0x04	; 4
      008294 05                    5374 	.db #0x05	; 5
      008295 B2 04                 5375 	.dw _DspTwo_Plus
      008297 00 00                 5376 	.dw #0x0000
      008299 00 00                 5377 	.dw #0x0000
      00829B 00 00                 5378 	.dw #0x0000
      00829D 00 00                 5379 	.dw #0x0000
      00829F 00 00                 5380 	.dw #0x0000
      0082A1 04                    5381 	.db #0x04	; 4
      0082A2 04                    5382 	.db #0x04	; 4
      0082A3 04                    5383 	.db #0x04	; 4
      0082A4 03                    5384 	.db #0x03	; 3
      0082A5 07                    5385 	.db #0x07	; 7
      0082A6 06                    5386 	.db #0x06	; 6
      0082A7 B2 F2                 5387 	.dw _DspThree
      0082A9 00 00                 5388 	.dw #0x0000
      0082AB 00 00                 5389 	.dw #0x0000
      0082AD 00 00                 5390 	.dw #0x0000
      0082AF 00 00                 5391 	.dw #0x0000
      0082B1 00 00                 5392 	.dw #0x0000
      0082B3 05                    5393 	.db #0x05	; 5
      0082B4 05                    5394 	.db #0x05	; 5
      0082B5 05                    5395 	.db #0x05	; 5
      0082B6 05                    5396 	.db #0x05	; 5
      0082B7 05                    5397 	.db #0x05	; 5
      0082B8 00                    5398 	.db #0x00	; 0
      0082B9 B7 B0                 5399 	.dw _DspFour
      0082BB 00 00                 5400 	.dw #0x0000
      0082BD 00 00                 5401 	.dw #0x0000
      0082BF B7 F5                 5402 	.dw _Left_Four
      0082C1 B8 03                 5403 	.dw _Right_Four
      0082C3 BC A9                 5404 	.dw _Menu_Four
      0082C5 06                    5405 	.db #0x06	; 6
      0082C6 06                    5406 	.db #0x06	; 6
      0082C7 06                    5407 	.db #0x06	; 6
      0082C8 06                    5408 	.db #0x06	; 6
      0082C9 06                    5409 	.db #0x06	; 6
      0082CA 04                    5410 	.db #0x04	; 4
      0082CB B9 DA                 5411 	.dw _DspFive
      0082CD B9 DD                 5412 	.dw _Up_Five
      0082CF BA 7D                 5413 	.dw _Down_Five
      0082D1 BB 41                 5414 	.dw _Left_Five
      0082D3 BB 4E                 5415 	.dw _Right_Five
      0082D5 BB 65                 5416 	.dw _Menu_Five
      0082D7 07                    5417 	.db #0x07	; 7
      0082D8 07                    5418 	.db #0x07	; 7
      0082D9 07                    5419 	.db #0x07	; 7
      0082DA 04                    5420 	.db #0x04	; 4
      0082DB 00                    5421 	.db #0x00	; 0
      0082DC 07                    5422 	.db #0x07	; 7
      0082DD BC 38                 5423 	.dw _DspSix
      0082DF 00 00                 5424 	.dw #0x0000
      0082E1 00 00                 5425 	.dw #0x0000
      0082E3 00 00                 5426 	.dw #0x0000
      0082E5 00 00                 5427 	.dw #0x0000
      0082E7 00 00                 5428 	.dw #0x0000
                                   5429 	.area CODE
                                   5430 	.area CONST
      0082E9                       5431 ___str_0:
      0082E9 25 35 6C 64           5432 	.ascii "%5ld"
      0082ED 00                    5433 	.db 0x00
                                   5434 	.area CODE
                                   5435 	.area CONST
      0082EE                       5436 ___str_1:
      0082EE 25 36 6C 64           5437 	.ascii "%6ld"
      0082F2 00                    5438 	.db 0x00
                                   5439 	.area CODE
                                   5440 	.area CONST
      0082F3                       5441 ___str_2:
      0082F3 3C                    5442 	.ascii "<"
      0082F4 00                    5443 	.db 0x00
                                   5444 	.area CODE
                                   5445 	.area CONST
      0082F5                       5446 ___str_3:
      0082F5 3E                    5447 	.ascii ">"
      0082F6 00                    5448 	.db 0x00
                                   5449 	.area CODE
                                   5450 	.area CONST
      0082F7                       5451 ___str_4:
      0082F7 50 48 41 53 45        5452 	.ascii "PHASE"
      0082FC 00                    5453 	.db 0x00
                                   5454 	.area CODE
                                   5455 	.area CONST
      0082FD                       5456 ___str_5:
      0082FD 54 49 4D 45 53        5457 	.ascii "TIMES"
      008302 00                    5458 	.db 0x00
                                   5459 	.area CODE
                                   5460 	.area CONST
      008303                       5461 ___str_6:
      008303 4D 41 58 5F 75 53     5462 	.ascii "MAX_uS"
      008309 00                    5463 	.db 0x00
                                   5464 	.area CODE
                                   5465 	.area CONST
      00830A                       5466 ___str_7:
      00830A 4D 4F                 5467 	.ascii "MO"
      00830C 00                    5468 	.db 0x00
                                   5469 	.area CODE
                                   5470 	.area CONST
      00830D                       5471 ___str_8:
      00830D 55 57 5D 5F           5472 	.ascii "UW]_"
      008311 00                    5473 	.db 0x00
                                   5474 	.area CODE
                                   5475 	.area CONST
      008312                       5476 ___str_9:
      008312 5F 53 49 4E 47 4C 45  5477 	.ascii "_SINGLE_L"
             5F 4C
      00831B 00                    5478 	.db 0x00
                                   5479 	.area CODE
                                   5480 	.area CONST
      00831C                       5481 ___str_10:
      00831C 41 2D 44              5482 	.ascii "A-D"
      00831F 00                    5483 	.db 0x00
                                   5484 	.area CODE
                                   5485 	.area CONST
      008320                       5486 ___str_11:
      008320 42 2D 44              5487 	.ascii "B-D"
      008323 00                    5488 	.db 0x00
                                   5489 	.area CODE
                                   5490 	.area CONST
      008324                       5491 ___str_12:
      008324 43 2D 44              5492 	.ascii "C-D"
      008327 00                    5493 	.db 0x00
                                   5494 	.area CODE
                                   5495 	.area CONST
      008328                       5496 ___str_13:
      008328 41 2D 42              5497 	.ascii "A-B"
      00832B 00                    5498 	.db 0x00
                                   5499 	.area CODE
                                   5500 	.area CONST
      00832C                       5501 ___str_14:
      00832C 41 2D 43              5502 	.ascii "A-C"
      00832F 00                    5503 	.db 0x00
                                   5504 	.area CODE
                                   5505 	.area CONST
      008330                       5506 ___str_15:
      008330 42 2D 43              5507 	.ascii "B-C"
      008333 00                    5508 	.db 0x00
                                   5509 	.area CODE
                                   5510 	.area CONST
      008334                       5511 ___str_16:
      008334 75                    5512 	.ascii "u"
      008335 00                    5513 	.db 0x00
                                   5514 	.area CODE
                                   5515 	.area CONST
      008336                       5516 ___str_17:
      008336 5D 67 4D              5517 	.ascii "]gM"
      008339 00                    5518 	.db 0x00
                                   5519 	.area CODE
                                   5520 	.area CONST
      00833A                       5521 ___str_18:
      00833A 65 59 5B              5522 	.ascii "eY["
      00833D 00                    5523 	.db 0x00
                                   5524 	.area CODE
                                   5525 	.area CONST
      00833E                       5526 ___str_19:
      00833E 5F 54 4F 54 41 4C 5F  5527 	.ascii "_TOTAL__L"
             5F 4C
      008347 00                    5528 	.db 0x00
                                   5529 	.area CODE
                                   5530 	.area CONST
      008348                       5531 ___str_20:
      008348 45 47                 5532 	.ascii "EG"
      00834A 00                    5533 	.db 0x00
                                   5534 	.area CODE
                                   5535 	.area CONST
      00834B                       5536 ___str_21:
      00834B 77                    5537 	.ascii "w"
      00834C 00                    5538 	.db 0x00
                                   5539 	.area CODE
                                   5540 	.area CONST
      00834D                       5541 ___str_22:
      00834D 79                    5542 	.ascii "y"
      00834E 00                    5543 	.db 0x00
                                   5544 	.area CODE
                                   5545 	.area CONST
      00834F                       5546 ___str_23:
      00834F 5D 6D 5D 5D 6F        5547 	.ascii "]m]]o"
      008354 00                    5548 	.db 0x00
                                   5549 	.area CODE
                                   5550 	.area CONST
      008355                       5551 ___str_24:
      008355 5F 5F 5F 43 4F 4E 46  5552 	.ascii "___CONFIG"
             49 47
      00835E 00                    5553 	.db 0x00
                                   5554 	.area CODE
                                   5555 	.area CONST
      00835F                       5556 ___str_25:
      00835F 4C 4D 4E              5557 	.ascii "LMN"
      008362 00                    5558 	.db 0x00
                                   5559 	.area CODE
                                   5560 	.area CONST
      008363                       5561 ___str_26:
      008363 4F 4D 4E              5562 	.ascii "OMN"
      008366 00                    5563 	.db 0x00
                                   5564 	.area CODE
                                   5565 	.area CONST
      008367                       5566 ___str_27:
      008367 4F 50 4E              5567 	.ascii "OPN"
      00836A 00                    5568 	.db 0x00
                                   5569 	.area CODE
                                   5570 	.area CONST
      00836B                       5571 ___str_28:
      00836B 4F 50 51              5572 	.ascii "OPQ"
      00836E 00                    5573 	.db 0x00
                                   5574 	.area CODE
                                   5575 	.area CONST
      00836F                       5576 ___str_29:
      00836F 25 64 3B 25 30 32 64  5577 	.ascii "%d;%02dV"
             56
      008377 00                    5578 	.db 0x00
                                   5579 	.area CODE
                                   5580 	.area CONST
      008378                       5581 ___str_30:
      008378 54 55 56              5582 	.ascii "TUV"
      00837B 00                    5583 	.db 0x00
                                   5584 	.area CODE
                                   5585 	.area CONST
      00837C                       5586 ___str_31:
      00837C 20 20 20 20 20        5587 	.ascii "     "
      008381 00                    5588 	.db 0x00
                                   5589 	.area CODE
                                   5590 	.area CONST
      008382                       5591 ___str_32:
      008382 25 30 34 64 2D 25 30  5592 	.ascii "%04d-%02d-%02d"
             32 64 2D 25 30 32 64
      008390 00                    5593 	.db 0x00
                                   5594 	.area CODE
                                   5595 	.area CONST
      008391                       5596 ___str_33:
      008391 25 30 32 64 3A 25 30  5597 	.ascii "%02d:%02d:%02d"
             32 64 3A 25 30 32 64
      00839F 00                    5598 	.db 0x00
                                   5599 	.area CODE
                                   5600 	.area CONST
      0083A0                       5601 ___str_34:
      0083A0 49 44 3A 25 30 32 64  5602 	.ascii "ID:%02d%02d%02d%02d"
             25 30 32 64 25 30 32
             64 25 30 32 64
      0083B3 00                    5603 	.db 0x00
                                   5604 	.area CODE
                                   5605 	.area CONST
      0083B4                       5606 ___str_35:
      0083B4 56 31 2E 30           5607 	.ascii "V1.0"
      0083B8 00                    5608 	.db 0x00
                                   5609 	.area CODE
                                   5610 	.area CONST
      0083B9                       5611 ___str_36:
      0083B9 41 43 45 47           5612 	.ascii "ACEG"
      0083BD 00                    5613 	.db 0x00
                                   5614 	.area CODE
                                   5615 	.area CONST
      0083BE                       5616 ___str_37:
      0083BE 52 45 43 4F 52 44     5617 	.ascii "RECORD"
      0083C4 00                    5618 	.db 0x00
                                   5619 	.area CODE
                                   5620 	.area CONST
      0083C5                       5621 ___str_38:
      0083C5 25 30 33 64           5622 	.ascii "%03d"
      0083C9 00                    5623 	.db 0x00
                                   5624 	.area CODE
                                   5625 	.area CONST
      0083CA                       5626 ___str_39:
      0083CA 25 37 6C 64           5627 	.ascii "%7ld"
      0083CE 00                    5628 	.db 0x00
                                   5629 	.area CODE
                                   5630 	.area CONST
      0083CF                       5631 ___str_40:
      0083CF 51 53                 5632 	.ascii "QS"
      0083D1 00                    5633 	.db 0x00
                                   5634 	.area CODE
                                   5635 	.area CONST
      0083D2                       5636 ___str_41:
      0083D2 43 4F 4E 44           5637 	.ascii "COND"
      0083D6 00                    5638 	.db 0x00
                                   5639 	.area CODE
                                   5640 	.area CONST
      0083D7                       5641 ___str_42:
      0083D7 52                    5642 	.ascii "R"
      0083D8 00                    5643 	.db 0x00
                                   5644 	.area CODE
                                   5645 	.area CONST
      0083D9                       5646 ___str_43:
      0083D9 53                    5647 	.ascii "S"
      0083DA 00                    5648 	.db 0x00
                                   5649 	.area CODE
                                   5650 	.area CONST
      0083DB                       5651 ___str_44:
      0083DB 49 44 3A 20 25 30 32  5652 	.ascii "ID: %02d%02d%02d%02d"
             64 25 30 32 64 25 30
             32 64 25 30 32 64
      0083EF 00                    5653 	.db 0x00
                                   5654 	.area CODE
                                   5655 	.area CONST
      0083F0                       5656 ___str_45:
      0083F0 4A                    5657 	.ascii "J"
      0083F1 00                    5658 	.db 0x00
                                   5659 	.area CODE
                                   5660 	.area CONST
      0083F2                       5661 ___str_46:
      0083F2 4B                    5662 	.ascii "K"
      0083F3 00                    5663 	.db 0x00
                                   5664 	.area CODE
                                   5665 	.area CONST
      0083F4                       5666 ___str_47:
      0083F4 69 6B 6D 6F 5D        5667 	.ascii "ikmo]"
      0083F9 00                    5668 	.db 0x00
                                   5669 	.area CODE
                                   5670 	.area CONST
      0083FA                       5671 ___str_48:
      0083FA 57 4B                 5672 	.ascii "WK"
      0083FC 00                    5673 	.db 0x00
                                   5674 	.area CODE
                                   5675 	.area CONST
      0083FD                       5676 ___str_49:
      0083FD 5D 5D 5D 5D 5D        5677 	.ascii "]]]]]"
      008402 00                    5678 	.db 0x00
                                   5679 	.area CODE
                                   5680 	.area CONST
      008403                       5681 ___str_50:
      008403 44 45 46 41 55 4C 54  5682 	.ascii "DEFAULT"
      00840A 00                    5683 	.db 0x00
                                   5684 	.area CODE
                                   5685 	.area CONST
      00840B                       5686 ___str_51:
      00840B 61                    5687 	.ascii "a"
      00840C 00                    5688 	.db 0x00
                                   5689 	.area CODE
                                   5690 	.area CONST
      00840D                       5691 ___str_52:
      00840D 52 53 34 38 35 20 5D  5692 	.ascii "RS485 ]g"
             67
      008415 00                    5693 	.db 0x00
                                   5694 	.area CODE
                                   5695 	.area CONST
      008416                       5696 ___str_53:
      008416 52 53 34 38 35 5F 43  5697 	.ascii "RS485_COM"
             4F 4D
      00841F 00                    5698 	.db 0x00
                                   5699 	.area CODE
                                   5700 	.area CONST
      008420                       5701 ___str_54:
      008420 41 44 52              5702 	.ascii "ADR"
      008423 00                    5703 	.db 0x00
                                   5704 	.area CODE
                                   5705 	.area CONST
      008424                       5706 ___str_55:
      008424 54 58                 5707 	.ascii "TX"
      008426 00                    5708 	.db 0x00
                                   5709 	.area CODE
                                   5710 	.area CONST
      008427                       5711 ___str_56:
      008427 52 58                 5712 	.ascii "RX"
      008429 00                    5713 	.db 0x00
                                   5714 	.area CODE
                                   5715 	.area INITIALIZER
      0090C3                       5716 __xinit__menu_index:
      0090C3 04                    5717 	.db #0x04	; 4
      0090C4                       5718 __xinit__adjustdt:
      0090C4 00                    5719 	.db #0x00	; 0
      0090C5 18                    5720 	.db #0x18	; 24
      0090C6 01                    5721 	.db #0x01	; 1
      0090C7 01                    5722 	.db #0x01	; 1
      0090C8 00                    5723 	.db #0x00	; 0
      0090C9 00                    5724 	.db #0x00	; 0
      0090CA 00                    5725 	.db #0x00	; 0
      0090CB 00                    5726 	.db #0x00	; 0
      0090CC 00                    5727 	.db #0x00	; 0
      0090CD 00                    5728 	.db #0x00	; 0
      0090CE 01                    5729 	.db #0x01	; 1
      0090CF 00                    5730 	.db #0x00	; 0
      0090D0 00                    5731 	.db #0x00	; 0
      0090D1 01                    5732 	.db #0x01	; 1
      0090D2 29                    5733 	.db #0x29	; 41
      0090D3 01                    5734 	.db #0x01	; 1
      0090D4 41                    5735 	.db #0x41	; 65	'A'
      0090D5 01                    5736 	.db #0x01	; 1
      0090D6 59                    5737 	.db #0x59	; 89	'Y'
      0090D7 03                    5738 	.db #0x03	; 3
      0090D8 19                    5739 	.db #0x19	; 25
      0090D9 03                    5740 	.db #0x03	; 3
      0090DA 31                    5741 	.db #0x31	; 49	'1'
      0090DB 03                    5742 	.db #0x03	; 3
      0090DC 49                    5743 	.db #0x49	; 73	'I'
      0090DD 05                    5744 	.db #0x05	; 5
      0090DE 39                    5745 	.db #0x39	; 57	'9'
      0090DF 05                    5746 	.db #0x05	; 5
      0090E0 49                    5747 	.db #0x49	; 73	'I'
      0090E1 05                    5748 	.db #0x05	; 5
      0090E2 59                    5749 	.db #0x59	; 89	'Y'
      0090E3 05                    5750 	.db #0x05	; 5
      0090E4 69                    5751 	.db #0x69	; 105	'i'
      0090E5 07                    5752 	.db #0x07	; 7
      0090E6 5E                    5753 	.db #0x5e	; 94
      0090E7 03                    5754 	.db #0x03	; 3
      0090E8 69                    5755 	.db #0x69	; 105	'i'
      0090E9                       5756 __xinit__delay_halt:
      0090E9 FF                    5757 	.db #0xff	; 255
      0090EA                       5758 __xinit__language:
      0090EA 00                    5759 	.db #0x00	; 0
                                   5760 	.area CABS (ABS)
