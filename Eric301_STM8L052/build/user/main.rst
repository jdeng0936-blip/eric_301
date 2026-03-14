                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _main
                                     11 	.globl _DMA_Config
                                     12 	.globl _ADC_Config
                                     13 	.globl _init_rtc
                                     14 	.globl _IIC_Init
                                     15 	.globl _Uart1_Send
                                     16 	.globl _Uart1_Init
                                     17 	.globl _TIM4_Init
                                     18 	.globl _TIM2_Init
                                     19 	.globl _CLK_Config
                                     20 	.globl _Delay
                                     21 	.globl _Menu_Proc
                                     22 	.globl _lcd_init
                                     23 	.globl _Storage_SaveAllStats
                                     24 	.globl _Record_GetStat
                                     25 	.globl _System_InitMode
                                     26 	.globl _System_GetMode
                                     27 	.globl _Storage_Init
                                     28 	.globl _C_Fxn
                                     29 	.globl _B_Fxn
                                     30 	.globl _A_Fxn
                                     31 	.globl _Chk_State
                                     32 	.globl _Rs485_Proc
                                     33 	.globl _RevMsg
                                     34 	.globl _SendMsg
                                     35 	.globl _WWDG_Init
                                     36 	.globl _PWR_UltraLowPowerCmd
                                     37 	.globl _PWR_FastWakeUpCmd
                                     38 	.globl _ITC_SetSoftwarePriority
                                     39 	.globl _GPIO_Init
                                     40 	.globl _EXTI_SetPinSensitivity
                                     41 	.globl _EXTI_DeInit
                                     42 	.globl _ADC_SoftwareStartConv
                                     43 ;--------------------------------------------------------
                                     44 ; ram data
                                     45 ;--------------------------------------------------------
                                     46 	.area DATA
      00043C                         47 _main_last_ph_10000_693:
      00043C                         48 	.ds 1
      00043D                         49 _main_last_t_10000_693:
      00043D                         50 	.ds 4
      000441                         51 _main_version_10000_693:
      000441                         52 	.ds 32
                                     53 ;--------------------------------------------------------
                                     54 ; ram data
                                     55 ;--------------------------------------------------------
                                     56 	.area INITIALIZED
                                     57 ;--------------------------------------------------------
                                     58 ; Stack segment in internal ram
                                     59 ;--------------------------------------------------------
                                     60 	.area SSEG
      0007FF                         61 __start__stack:
      0007FF                         62 	.ds	1
                                     63 
                                     64 ;--------------------------------------------------------
                                     65 ; absolute external ram data
                                     66 ;--------------------------------------------------------
                                     67 	.area DABS (ABS)
                                     68 
                                     69 ; default segment ordering for linker
                                     70 	.area HOME
                                     71 	.area GSINIT
                                     72 	.area GSFINAL
                                     73 	.area CONST
                                     74 	.area INITIALIZER
                                     75 	.area CODE
                                     76 
                                     77 ;--------------------------------------------------------
                                     78 ; interrupt vector
                                     79 ;--------------------------------------------------------
                                     80 	.area HOME
      008080                         81 __interrupt_vect:
      008080 82 00 80 88             82 	int s_GSINIT ; reset
                                     83 ;--------------------------------------------------------
                                     84 ; global & static initialisations
                                     85 ;--------------------------------------------------------
                                     86 	.area HOME
                                     87 	.area GSINIT
                                     88 	.area GSFINAL
                                     89 	.area GSINIT
      0080D8 CD EE 1E         [ 4]   90 	call	___sdcc_external_startup
      0080DB 4D               [ 1]   91 	tnz	a
      0080DC 27 03            [ 1]   92 	jreq	__sdcc_init_data
      0080DE CC 80 84         [ 2]   93 	jp	__sdcc_program_startup
      0080E1                         94 __sdcc_init_data:
                                     95 ; stm8_genXINIT() start
      0080E1 AE 04 98         [ 2]   96 	ldw x, #l_DATA
      0080E4 27 07            [ 1]   97 	jreq	00002$
      0080E6                         98 00001$:
      0080E6 72 4F 00 00      [ 1]   99 	clr (s_DATA - 1, x)
      0080EA 5A               [ 2]  100 	decw x
      0080EB 26 F9            [ 1]  101 	jrne	00001$
      0080ED                        102 00002$:
      0080ED AE 00 CC         [ 2]  103 	ldw	x, #l_INITIALIZER
      0080F0 27 09            [ 1]  104 	jreq	00004$
      0080F2                        105 00003$:
      0080F2 D6 90 1E         [ 1]  106 	ld	a, (s_INITIALIZER - 1, x)
      0080F5 D7 04 98         [ 1]  107 	ld	(s_INITIALIZED - 1, x), a
      0080F8 5A               [ 2]  108 	decw	x
      0080F9 26 F7            [ 1]  109 	jrne	00003$
      0080FB                        110 00004$:
                                    111 ; stm8_genXINIT() end
                                    112 ;	User/main.c: 23: static uint8_t last_ph = 0; //上一次的相位
                                    113 ; genAssign
      0080FB 72 5F 04 3C      [ 1]  114 	clr	_main_last_ph_10000_693+0
                                    115 ;	User/main.c: 24: static uint32_t last_t = 0; //相邻上一次触发的时间，用于比较两次是不是相邻两项（如AB）同时导通
                                    116 ; genAssign
      0080FF 5F               [ 1]  117 	clrw	x
      008100 CF 04 3F         [ 2]  118 	ldw	_main_last_t_10000_693+2, x
      008103 CF 04 3D         [ 2]  119 	ldw	_main_last_t_10000_693+0, x
                                    120 ;	User/main.c: 25: static char version[32] = "Eric301 V1.2\r\n2024-4-10";
                                    121 ; skipping iCode since result will be rematerialized
                                    122 ; genPointerSet
      008106 35 45 04 41      [ 1]  123 	mov	_main_version_10000_693+0, #0x45
                                    124 ; skipping iCode since result will be rematerialized
                                    125 ; genPointerSet
      00810A 35 72 04 42      [ 1]  126 	mov	_main_version_10000_693+1, #0x72
                                    127 ; skipping iCode since result will be rematerialized
                                    128 ; genPointerSet
      00810E 35 69 04 43      [ 1]  129 	mov	_main_version_10000_693+2, #0x69
                                    130 ; skipping iCode since result will be rematerialized
                                    131 ; genPointerSet
      008112 35 63 04 44      [ 1]  132 	mov	_main_version_10000_693+3, #0x63
                                    133 ; skipping iCode since result will be rematerialized
                                    134 ; genPointerSet
      008116 35 33 04 45      [ 1]  135 	mov	_main_version_10000_693+4, #0x33
                                    136 ; skipping iCode since result will be rematerialized
                                    137 ; genPointerSet
      00811A 35 30 04 46      [ 1]  138 	mov	_main_version_10000_693+5, #0x30
                                    139 ; skipping iCode since result will be rematerialized
                                    140 ; genPointerSet
      00811E 35 31 04 47      [ 1]  141 	mov	_main_version_10000_693+6, #0x31
                                    142 ; skipping iCode since result will be rematerialized
                                    143 ; genPointerSet
      008122 35 20 04 48      [ 1]  144 	mov	_main_version_10000_693+7, #0x20
                                    145 ; skipping iCode since result will be rematerialized
                                    146 ; genPointerSet
      008126 35 56 04 49      [ 1]  147 	mov	_main_version_10000_693+8, #0x56
                                    148 ; skipping iCode since result will be rematerialized
                                    149 ; genPointerSet
      00812A 35 31 04 4A      [ 1]  150 	mov	_main_version_10000_693+9, #0x31
                                    151 ; skipping iCode since result will be rematerialized
                                    152 ; genPointerSet
      00812E 35 2E 04 4B      [ 1]  153 	mov	_main_version_10000_693+10, #0x2e
                                    154 ; skipping iCode since result will be rematerialized
                                    155 ; genPointerSet
      008132 35 32 04 4C      [ 1]  156 	mov	_main_version_10000_693+11, #0x32
                                    157 ; skipping iCode since result will be rematerialized
                                    158 ; genPointerSet
      008136 35 0D 04 4D      [ 1]  159 	mov	_main_version_10000_693+12, #0x0d
                                    160 ; skipping iCode since result will be rematerialized
                                    161 ; genPointerSet
      00813A 35 0A 04 4E      [ 1]  162 	mov	_main_version_10000_693+13, #0x0a
                                    163 ; skipping iCode since result will be rematerialized
                                    164 ; genPointerSet
      00813E 35 32 04 4F      [ 1]  165 	mov	_main_version_10000_693+14, #0x32
                                    166 ; skipping iCode since result will be rematerialized
                                    167 ; genPointerSet
      008142 35 30 04 50      [ 1]  168 	mov	_main_version_10000_693+15, #0x30
                                    169 ; skipping iCode since result will be rematerialized
                                    170 ; genPointerSet
      008146 35 32 04 51      [ 1]  171 	mov	_main_version_10000_693+16, #0x32
                                    172 ; skipping iCode since result will be rematerialized
                                    173 ; genPointerSet
      00814A 35 34 04 52      [ 1]  174 	mov	_main_version_10000_693+17, #0x34
                                    175 ; skipping iCode since result will be rematerialized
                                    176 ; genPointerSet
      00814E 35 2D 04 53      [ 1]  177 	mov	_main_version_10000_693+18, #0x2d
                                    178 ; skipping iCode since result will be rematerialized
                                    179 ; genPointerSet
      008152 35 34 04 54      [ 1]  180 	mov	_main_version_10000_693+19, #0x34
                                    181 ; skipping iCode since result will be rematerialized
                                    182 ; genPointerSet
      008156 35 2D 04 55      [ 1]  183 	mov	_main_version_10000_693+20, #0x2d
                                    184 ; skipping iCode since result will be rematerialized
                                    185 ; genPointerSet
      00815A 35 31 04 56      [ 1]  186 	mov	_main_version_10000_693+21, #0x31
                                    187 ; skipping iCode since result will be rematerialized
                                    188 ; genPointerSet
      00815E 35 30 04 57      [ 1]  189 	mov	_main_version_10000_693+22, #0x30
                                    190 ; skipping iCode since result will be rematerialized
                                    191 ; genPointerSet
      008162 35 00 04 58      [ 1]  192 	mov	_main_version_10000_693+23, #0x00
                                    193 ; skipping iCode since result will be rematerialized
                                    194 ; genPointerSet
      008166 35 00 04 59      [ 1]  195 	mov	_main_version_10000_693+24, #0x00
                                    196 ; skipping iCode since result will be rematerialized
                                    197 ; genPointerSet
      00816A 35 00 04 5A      [ 1]  198 	mov	_main_version_10000_693+25, #0x00
                                    199 ; skipping iCode since result will be rematerialized
                                    200 ; genPointerSet
      00816E 35 00 04 5B      [ 1]  201 	mov	_main_version_10000_693+26, #0x00
                                    202 ; skipping iCode since result will be rematerialized
                                    203 ; genPointerSet
      008172 35 00 04 5C      [ 1]  204 	mov	_main_version_10000_693+27, #0x00
                                    205 ; skipping iCode since result will be rematerialized
                                    206 ; genPointerSet
      008176 35 00 04 5D      [ 1]  207 	mov	_main_version_10000_693+28, #0x00
                                    208 ; skipping iCode since result will be rematerialized
                                    209 ; genPointerSet
      00817A 35 00 04 5E      [ 1]  210 	mov	_main_version_10000_693+29, #0x00
                                    211 ; skipping iCode since result will be rematerialized
                                    212 ; genPointerSet
      00817E 35 00 04 5F      [ 1]  213 	mov	_main_version_10000_693+30, #0x00
                                    214 ; skipping iCode since result will be rematerialized
                                    215 ; genPointerSet
      008182 35 00 04 60      [ 1]  216 	mov	_main_version_10000_693+31, #0x00
                                    217 	.area GSFINAL
      0081A2 CC 80 84         [ 2]  218 	jp	__sdcc_program_startup
                                    219 ;--------------------------------------------------------
                                    220 ; Home
                                    221 ;--------------------------------------------------------
                                    222 	.area HOME
                                    223 	.area HOME
      008084                        224 __sdcc_program_startup:
      008084 CC A8 16         [ 2]  225 	jp	_main
                                    226 ;	return from main will return to caller
                                    227 ;--------------------------------------------------------
                                    228 ; code
                                    229 ;--------------------------------------------------------
                                    230 	.area CODE
                                    231 ;	User/main.c: 18: int main(void)
                                    232 ; genLabel
                                    233 ;	-----------------------------------------
                                    234 ;	 function main
                                    235 ;	-----------------------------------------
                                    236 ;	Register assignment might be sub-optimal.
                                    237 ;	Stack space usage: 19 bytes.
      00A816                        238 _main:
      00A816 52 13            [ 2]  239 	sub	sp, #19
                                    240 ;	User/main.c: 27: Delay(30000);
                                    241 ; genSend
      00A818 AE 75 30         [ 2]  242 	ldw	x, #0x7530
                                    243 ; genCall
      00A81B CD 91 EB         [ 4]  244 	call	_Delay
                                    245 ;	User/main.c: 28: CLK_Config();
                                    246 ; genCall
      00A81E CD 91 FB         [ 4]  247 	call	_CLK_Config
                                    248 ;	User/main.c: 29: Delay(30000);
                                    249 ; genSend
      00A821 AE 75 30         [ 2]  250 	ldw	x, #0x7530
                                    251 ; genCall
      00A824 CD 91 EB         [ 4]  252 	call	_Delay
                                    253 ;	User/main.c: 30: init_rtc();
                                    254 ; genCall
      00A827 CD 97 25         [ 4]  255 	call	_init_rtc
                                    256 ;	User/main.c: 31: Delay(30000);
                                    257 ; genSend
      00A82A AE 75 30         [ 2]  258 	ldw	x, #0x7530
                                    259 ; genCall
      00A82D CD 91 EB         [ 4]  260 	call	_Delay
                                    261 ;	User/main.c: 35: GPIO_Init(GPIOC, GPIO_Pin_4, GPIO_Mode_In_PU_IT); //输入上拉
                                    262 ; genIPush
      00A830 4B 60            [ 1]  263 	push	#0x60
                                    264 ; genSend
      00A832 A6 10            [ 1]  265 	ld	a, #0x10
                                    266 ; genSend
      00A834 AE 50 0A         [ 2]  267 	ldw	x, #0x500a
                                    268 ; genCall
      00A837 CD CD E4         [ 4]  269 	call	_GPIO_Init
                                    270 ;	User/main.c: 36: System_InitMode(); //读取AC_DEL(PC4)以决定是电池供电还是AC供电
                                    271 ; genCall
      00A83A CD 9C 4C         [ 4]  272 	call	_System_InitMode
                                    273 ;	User/main.c: 37: Delay(30000);
                                    274 ; genSend
      00A83D AE 75 30         [ 2]  275 	ldw	x, #0x7530
                                    276 ; genCall
      00A840 CD 91 EB         [ 4]  277 	call	_Delay
                                    278 ;	User/main.c: 40: GPIO_Init(GPIOA, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
                                    279 ; genIPush
      00A843 4B C0            [ 1]  280 	push	#0xc0
                                    281 ; genSend
      00A845 A6 FF            [ 1]  282 	ld	a, #0xff
                                    283 ; genSend
      00A847 AE 50 00         [ 2]  284 	ldw	x, #0x5000
                                    285 ; genCall
      00A84A CD CD E4         [ 4]  286 	call	_GPIO_Init
                                    287 ;	User/main.c: 41: GPIO_Init(GPIOB, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
                                    288 ; genIPush
      00A84D 4B C0            [ 1]  289 	push	#0xc0
                                    290 ; genSend
      00A84F A6 FF            [ 1]  291 	ld	a, #0xff
                                    292 ; genSend
      00A851 AE 50 05         [ 2]  293 	ldw	x, #0x5005
                                    294 ; genCall
      00A854 CD CD E4         [ 4]  295 	call	_GPIO_Init
                                    296 ;	User/main.c: 42: GPIO_Init(GPIOC, 0xEC, GPIO_Mode_Out_PP_Low_Slow);//除PC0，PC1(I2C1)，PC4
                                    297 ; genIPush
      00A857 4B C0            [ 1]  298 	push	#0xc0
                                    299 ; genSend
      00A859 A6 EC            [ 1]  300 	ld	a, #0xec
                                    301 ; genSend
      00A85B AE 50 0A         [ 2]  302 	ldw	x, #0x500a
                                    303 ; genCall
      00A85E CD CD E4         [ 4]  304 	call	_GPIO_Init
                                    305 ;	User/main.c: 43: GPIO_Init(GPIOD, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
                                    306 ; genIPush
      00A861 4B C0            [ 1]  307 	push	#0xc0
                                    308 ; genSend
      00A863 A6 FF            [ 1]  309 	ld	a, #0xff
                                    310 ; genSend
      00A865 AE 50 0F         [ 2]  311 	ldw	x, #0x500f
                                    312 ; genCall
      00A868 CD CD E4         [ 4]  313 	call	_GPIO_Init
                                    314 ;	User/main.c: 44: GPIO_Init(GPIOE, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
                                    315 ; genIPush
      00A86B 4B C0            [ 1]  316 	push	#0xc0
                                    317 ; genSend
      00A86D A6 FF            [ 1]  318 	ld	a, #0xff
                                    319 ; genSend
      00A86F AE 50 14         [ 2]  320 	ldw	x, #0x5014
                                    321 ; genCall
      00A872 CD CD E4         [ 4]  322 	call	_GPIO_Init
                                    323 ;	User/main.c: 45: GPIO_Init(GPIOF, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
                                    324 ; genIPush
      00A875 4B C0            [ 1]  325 	push	#0xc0
                                    326 ; genSend
      00A877 A6 FF            [ 1]  327 	ld	a, #0xff
                                    328 ; genSend
      00A879 AE 50 19         [ 2]  329 	ldw	x, #0x5019
                                    330 ; genCall
      00A87C CD CD E4         [ 4]  331 	call	_GPIO_Init
                                    332 ;	User/main.c: 47: GPIO_Init(KEY_PORT, KEY_PINS, GPIO_Mode_In_PU_IT);//初始化按键,PE0~4
                                    333 ; genIPush
      00A87F 4B 60            [ 1]  334 	push	#0x60
                                    335 ; genSend
      00A881 A6 1F            [ 1]  336 	ld	a, #0x1f
                                    337 ; genSend
      00A883 AE 50 14         [ 2]  338 	ldw	x, #0x5014
                                    339 ; genCall
      00A886 CD CD E4         [ 4]  340 	call	_GPIO_Init
                                    341 ;	User/main.c: 48: GPIO_Init(GPIOB, GPIO_Pin_1 | GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_6 | GPIO_Pin_7,
                                    342 ; genIPush
      00A889 4B F0            [ 1]  343 	push	#0xf0
                                    344 ; genSend
      00A88B A6 FE            [ 1]  345 	ld	a, #0xfe
                                    346 ; genSend
      00A88D AE 50 05         [ 2]  347 	ldw	x, #0x5005
                                    348 ; genCall
      00A890 CD CD E4         [ 4]  349 	call	_GPIO_Init
                                    350 ;	User/main.c: 50: GPIO_Init(GPIOD, GPIO_Pin_5 | GPIO_Pin_6 | GPIO_Pin_7, GPIO_Mode_In_PU_IT); //phase A、B、C
                                    351 ; genIPush
      00A893 4B 60            [ 1]  352 	push	#0x60
                                    353 ; genSend
      00A895 A6 E0            [ 1]  354 	ld	a, #0xe0
                                    355 ; genSend
      00A897 AE 50 0F         [ 2]  356 	ldw	x, #0x500f
                                    357 ; genCall
      00A89A CD CD E4         [ 4]  358 	call	_GPIO_Init
                                    359 ;	User/main.c: 52: lcd_init();
                                    360 ; genCall
      00A89D CD BD 32         [ 4]  361 	call	_lcd_init
                                    362 ;	User/main.c: 55: for (i = 0; i < 200; i++)
                                    363 ; genAssign
      00A8A0 4F               [ 1]  364 	clr	a
                                    365 ; genLabel
      00A8A1                        366 00136$:
                                    367 ;	User/main.c: 57: Delay(0xffff);
                                    368 ; genSend
      00A8A1 88               [ 1]  369 	push	a
      00A8A2 5F               [ 1]  370 	clrw	x
      00A8A3 5A               [ 2]  371 	decw	x
                                    372 ; genCall
      00A8A4 CD 91 EB         [ 4]  373 	call	_Delay
      00A8A7 84               [ 1]  374 	pop	a
                                    375 ;	User/main.c: 55: for (i = 0; i < 200; i++)
                                    376 ; genPlus
      00A8A8 4C               [ 1]  377 	inc	a
                                    378 ; genCmp
                                    379 ; genCmpTnz
      00A8A9 A1 C8            [ 1]  380 	cp	a, #0xc8
                                    381 ; peephole j5 changed absolute to relative unconditional jump.
      00A8AB 25 F4            [ 1]  382 	jrc	00136$
                                    383 ; peephole j9 removed jra by using inverse jump logic
                                    384 ; peephole j30 removed unused label 00262$.
                                    385 ; skipping generated iCode
                                    386 ;	User/main.c: 60: EXTI_DeInit(); //恢复中断的所有设置
                                    387 ; genCall
      00A8AD CD C9 0F         [ 4]  388 	call	_EXTI_DeInit
                                    389 ;	User/main.c: 62: ITC_SetSoftwarePriority(TIM2_UPD_OVF_TRG_BRK_IRQn, ITC_PriorityLevel_3);
                                    390 ; genIPush
      00A8B0 4B 03            [ 1]  391 	push	#0x03
                                    392 ; genSend
      00A8B2 A6 13            [ 1]  393 	ld	a, #0x13
                                    394 ; genCall
      00A8B4 CD D3 EE         [ 4]  395 	call	_ITC_SetSoftwarePriority
                                    396 ;	User/main.c: 63: ITC_SetSoftwarePriority(EXTI0_IRQn, ITC_PriorityLevel_1);
                                    397 ; genIPush
      00A8B7 4B 01            [ 1]  398 	push	#0x01
                                    399 ; genSend
      00A8B9 A6 08            [ 1]  400 	ld	a, #0x08
                                    401 ; genCall
      00A8BB CD D3 EE         [ 4]  402 	call	_ITC_SetSoftwarePriority
                                    403 ;	User/main.c: 64: ITC_SetSoftwarePriority(EXTI1_IRQn, ITC_PriorityLevel_1);
                                    404 ; genIPush
      00A8BE 4B 01            [ 1]  405 	push	#0x01
                                    406 ; genSend
      00A8C0 A6 09            [ 1]  407 	ld	a, #0x09
                                    408 ; genCall
      00A8C2 CD D3 EE         [ 4]  409 	call	_ITC_SetSoftwarePriority
                                    410 ;	User/main.c: 65: ITC_SetSoftwarePriority(EXTI2_IRQn, ITC_PriorityLevel_1);
                                    411 ; genIPush
      00A8C5 4B 01            [ 1]  412 	push	#0x01
                                    413 ; genSend
      00A8C7 A6 0A            [ 1]  414 	ld	a, #0x0a
                                    415 ; genCall
      00A8C9 CD D3 EE         [ 4]  416 	call	_ITC_SetSoftwarePriority
                                    417 ;	User/main.c: 66: ITC_SetSoftwarePriority(EXTI3_IRQn, ITC_PriorityLevel_1);
                                    418 ; genIPush
      00A8CC 4B 01            [ 1]  419 	push	#0x01
                                    420 ; genSend
      00A8CE A6 0B            [ 1]  421 	ld	a, #0x0b
                                    422 ; genCall
      00A8D0 CD D3 EE         [ 4]  423 	call	_ITC_SetSoftwarePriority
                                    424 ;	User/main.c: 67: ITC_SetSoftwarePriority(EXTI4_IRQn, ITC_PriorityLevel_1);
                                    425 ; genIPush
      00A8D3 4B 01            [ 1]  426 	push	#0x01
                                    427 ; genSend
      00A8D5 A6 0C            [ 1]  428 	ld	a, #0x0c
                                    429 ; genCall
      00A8D7 CD D3 EE         [ 4]  430 	call	_ITC_SetSoftwarePriority
                                    431 ;	User/main.c: 69: ITC_SetSoftwarePriority(EXTI5_IRQn, ITC_PriorityLevel_1);
                                    432 ; genIPush
      00A8DA 4B 01            [ 1]  433 	push	#0x01
                                    434 ; genSend
      00A8DC A6 0D            [ 1]  435 	ld	a, #0x0d
                                    436 ; genCall
      00A8DE CD D3 EE         [ 4]  437 	call	_ITC_SetSoftwarePriority
                                    438 ;	User/main.c: 70: ITC_SetSoftwarePriority(EXTI6_IRQn, ITC_PriorityLevel_1);
                                    439 ; genIPush
      00A8E1 4B 01            [ 1]  440 	push	#0x01
                                    441 ; genSend
      00A8E3 A6 0E            [ 1]  442 	ld	a, #0x0e
                                    443 ; genCall
      00A8E5 CD D3 EE         [ 4]  444 	call	_ITC_SetSoftwarePriority
                                    445 ;	User/main.c: 71: ITC_SetSoftwarePriority(EXTI7_IRQn, ITC_PriorityLevel_1);
                                    446 ; genIPush
      00A8E8 4B 01            [ 1]  447 	push	#0x01
                                    448 ; genSend
      00A8EA A6 0F            [ 1]  449 	ld	a, #0x0f
                                    450 ; genCall
      00A8EC CD D3 EE         [ 4]  451 	call	_ITC_SetSoftwarePriority
                                    452 ;	User/main.c: 73: EXTI_SetPinSensitivity(EXTI_Pin_0, EXTI_Trigger_Rising); //外部中断0，上沿触发，PE0，用于唤醒设备
                                    453 ; genIPush
      00A8EF 4B 01            [ 1]  454 	push	#0x01
                                    455 ; genSend
      00A8F1 4F               [ 1]  456 	clr	a
                                    457 ; genCall
      00A8F2 CD C9 30         [ 4]  458 	call	_EXTI_SetPinSensitivity
                                    459 ;	User/main.c: 74: EXTI_SetPinSensitivity(EXTI_Pin_1, EXTI_Trigger_Rising); //外部中断1，上沿触发，PE1
                                    460 ; genIPush
      00A8F5 4B 01            [ 1]  461 	push	#0x01
                                    462 ; genSend
      00A8F7 A6 02            [ 1]  463 	ld	a, #0x02
                                    464 ; genCall
      00A8F9 CD C9 30         [ 4]  465 	call	_EXTI_SetPinSensitivity
                                    466 ;	User/main.c: 75: EXTI_SetPinSensitivity(EXTI_Pin_2, EXTI_Trigger_Rising); //外部中断2，上沿触发，PE2
                                    467 ; genIPush
      00A8FC 4B 01            [ 1]  468 	push	#0x01
                                    469 ; genSend
      00A8FE A6 04            [ 1]  470 	ld	a, #0x04
                                    471 ; genCall
      00A900 CD C9 30         [ 4]  472 	call	_EXTI_SetPinSensitivity
                                    473 ;	User/main.c: 76: EXTI_SetPinSensitivity(EXTI_Pin_3, EXTI_Trigger_Rising); //外部中断3，上沿触发，PE3
                                    474 ; genIPush
      00A903 4B 01            [ 1]  475 	push	#0x01
                                    476 ; genSend
      00A905 A6 06            [ 1]  477 	ld	a, #0x06
                                    478 ; genCall
      00A907 CD C9 30         [ 4]  479 	call	_EXTI_SetPinSensitivity
                                    480 ;	User/main.c: 77: EXTI_SetPinSensitivity(EXTI_Pin_4, EXTI_Trigger_Rising_Falling); //外部中断4，上沿触发，PE4,PC4
                                    481 ; genIPush
      00A90A 4B 03            [ 1]  482 	push	#0x03
                                    483 ; genSend
      00A90C A6 10            [ 1]  484 	ld	a, #0x10
                                    485 ; genCall
      00A90E CD C9 30         [ 4]  486 	call	_EXTI_SetPinSensitivity
                                    487 ;	User/main.c: 79: EXTI_SetPinSensitivity(EXTI_Pin_5, EXTI_Trigger_Rising_Falling);//外部中断5，上下沿触发，PD5
                                    488 ; genIPush
      00A911 4B 03            [ 1]  489 	push	#0x03
                                    490 ; genSend
      00A913 A6 12            [ 1]  491 	ld	a, #0x12
                                    492 ; genCall
      00A915 CD C9 30         [ 4]  493 	call	_EXTI_SetPinSensitivity
                                    494 ;	User/main.c: 80: EXTI_SetPinSensitivity(EXTI_Pin_6, EXTI_Trigger_Rising_Falling);//外部中断6，上下沿触发，PD6
                                    495 ; genIPush
      00A918 4B 03            [ 1]  496 	push	#0x03
                                    497 ; genSend
      00A91A A6 14            [ 1]  498 	ld	a, #0x14
                                    499 ; genCall
      00A91C CD C9 30         [ 4]  500 	call	_EXTI_SetPinSensitivity
                                    501 ;	User/main.c: 81: EXTI_SetPinSensitivity(EXTI_Pin_7, EXTI_Trigger_Rising_Falling);//外部中断7，上下沿触发，PD7
                                    502 ; genIPush
      00A91F 4B 03            [ 1]  503 	push	#0x03
                                    504 ; genSend
      00A921 A6 16            [ 1]  505 	ld	a, #0x16
                                    506 ; genCall
      00A923 CD C9 30         [ 4]  507 	call	_EXTI_SetPinSensitivity
                                    508 ;	User/main.c: 83: if (System_GetMode() == 0)
                                    509 ; genCall
      00A926 CD 9C 48         [ 4]  510 	call	_System_GetMode
                                    511 ; genIfx
      00A929 4D               [ 1]  512 	tnz	a
                                    513 ; peephole j5 changed absolute to relative unconditional jump.
      00A92A 26 0D            [ 1]  514 	jrne	00103$
                                    515 ; peephole j7 removed jra by using inverse jump logic
                                    516 ; peephole j30 removed unused label 00263$.
                                    517 ;	User/main.c: 85: Uart1_Init();
                                    518 ; genCall
      00A92C CD 92 54         [ 4]  519 	call	_Uart1_Init
                                    520 ;	User/main.c: 86: Uart1_Send((uint8_t *)version, 32);
                                    521 ; skipping iCode since result will be rematerialized
                                    522 ; skipping iCode since result will be rematerialized
                                    523 ; genIPush
      00A92F 4B 20            [ 1]  524 	push	#0x20
      00A931 4B 00            [ 1]  525 	push	#0x00
                                    526 ; genSend
      00A933 AE 04 41         [ 2]  527 	ldw	x, #(_main_version_10000_693+0)
                                    528 ; genCall
      00A936 CD 92 A7         [ 4]  529 	call	_Uart1_Send
                                    530 ; genLabel
      00A939                        531 00103$:
                                    532 ;	User/main.c: 89: TIM2_Init();
                                    533 ; genCall
      00A939 CD 92 13         [ 4]  534 	call	_TIM2_Init
                                    535 ;	User/main.c: 90: TIM4_Init();
                                    536 ; genCall
      00A93C CD 92 35         [ 4]  537 	call	_TIM4_Init
                                    538 ;	User/main.c: 91: IIC_Init();//数据记录库初始化
                                    539 ; genCall
      00A93F CD 95 32         [ 4]  540 	call	_IIC_Init
                                    541 ;	User/main.c: 92: Storage_Init(); //加载系统设置和系统统计数据
                                    542 ; genCall
      00A942 CD A6 DB         [ 4]  543 	call	_Storage_Init
                                    544 ;	User/main.c: 94: ADC_Config();
                                    545 ; genCall
      00A945 CD 99 C7         [ 4]  546 	call	_ADC_Config
                                    547 ;	User/main.c: 95: DMA_Config();
                                    548 ; genCall
      00A948 CD 99 FE         [ 4]  549 	call	_DMA_Config
                                    550 ;	User/main.c: 97: PWR_FastWakeUpCmd(ENABLE);  //快速唤醒使能
                                    551 ; genSend
      00A94B A6 01            [ 1]  552 	ld	a, #0x01
                                    553 ; genCall
      00A94D CD D5 26         [ 4]  554 	call	_PWR_FastWakeUpCmd
                                    555 ;	User/main.c: 98: PWR_UltraLowPowerCmd(ENABLE);//超低功耗
                                    556 ; genSend
      00A950 A6 01            [ 1]  557 	ld	a, #0x01
                                    558 ; genCall
      00A952 CD D5 3E         [ 4]  559 	call	_PWR_UltraLowPowerCmd
                                    560 ;	User/main.c: 99: enableInterrupts();//使能中断
                                    561 ;	genInline
      00A955 9A               [ 1]  562 	rim
                                    563 ;	User/main.c: 101: SendMsg(&MsgSystem, MSG_KEY_TIMER, KEY_RIGHT,  0); //开机显示第一个菜单
                                    564 ; skipping iCode since result will be rematerialized
                                    565 ; skipping iCode since result will be rematerialized
                                    566 ; genIPush
      00A956 5F               [ 1]  567 	clrw	x
      00A957 89               [ 2]  568 	pushw	x
      00A958 5F               [ 1]  569 	clrw	x
      00A959 89               [ 2]  570 	pushw	x
                                    571 ; genIPush
      00A95A 4B 07            [ 1]  572 	push	#0x07
      00A95C 5F               [ 1]  573 	clrw	x
      00A95D 89               [ 2]  574 	pushw	x
      00A95E 4B 00            [ 1]  575 	push	#0x00
                                    576 ; genSend
      00A960 A6 02            [ 1]  577 	ld	a, #0x02
                                    578 ; genSend
      00A962 AE 01 0D         [ 2]  579 	ldw	x, #(_MsgSystem+0)
                                    580 ; genCall
      00A965 CD 9D 28         [ 4]  581 	call	_SendMsg
                                    582 ;	User/main.c: 102: ADC_SoftwareStartConv(ADC1); //开启软件转换
                                    583 ; genSend
      00A968 AE 53 40         [ 2]  584 	ldw	x, #0x5340
                                    585 ; genCall
      00A96B CD C2 8C         [ 4]  586 	call	_ADC_SoftwareStartConv
                                    587 ;	User/main.c: 104: WWDG_Init(0x7f, 0x7f);
                                    588 ; genIPush
      00A96E 4B 7F            [ 1]  589 	push	#0x7f
                                    590 ; genSend
      00A970 A6 7F            [ 1]  591 	ld	a, #0x7f
                                    592 ; genCall
      00A972 CD EC 94         [ 4]  593 	call	_WWDG_Init
                                    594 ;	User/main.c: 105: while (1)
                                    595 ; genLabel
      00A975                        596 00134$:
                                    597 ;	User/main.c: 107: msg = RevMsg(&MsgSystem);  //由消息触发
                                    598 ; genSend
      00A975 AE 01 0D         [ 2]  599 	ldw	x, #(_MsgSystem+0)
                                    600 ; genCall
      00A978 CD 9D 7E         [ 4]  601 	call	_RevMsg
                                    602 ;	User/main.c: 108: if (msg == 0)
                                    603 ; genIfx
      00A97B 5D               [ 2]  604 	tnzw	x
                                    605 ; peephole j5 changed absolute to relative unconditional jump.
      00A97C 27 F7            [ 1]  606 	jreq	00134$
                                    607 ; peephole j10 removed jra by using inverse jump logic
                                    608 ; peephole j30 removed unused label 00264$.
                                    609 ;	User/main.c: 113: if (msg->msgtype == MSG_TIMER)
                                    610 ; genPointerGet
      00A97E F6               [ 1]  611 	ld	a, (x)
                                    612 ; genCmpEQorNE
      00A97F 6B 13            [ 1]  613 	ld	(0x13, sp), a
                                    614 ; peephole 4 removed redundant load from (0x13, sp) into a.
      00A981 4A               [ 1]  615 	dec	a
                                    616 ; peephole j5 changed absolute to relative unconditional jump.
                                    617 ; peephole j10 removed jra by using inverse jump logic
                                    618 ; peephole j30 removed unused label 00266$.
                                    619 ; peephole j5 changed absolute to relative unconditional jump.
      00A982 26 17            [ 1]  620 	jrne	00131$
                                    621 ; peephole j7 removed jra by using inverse jump logic
                                    622 ; peephole j30 removed unused label 00267$.
                                    623 ; skipping generated iCode
                                    624 ;	User/main.c: 115: A_Fxn();
                                    625 ; genCall
      00A984 CD 9D BE         [ 4]  626 	call	_A_Fxn
                                    627 ;	User/main.c: 116: B_Fxn();
                                    628 ; genCall
      00A987 CD 9E D2         [ 4]  629 	call	_B_Fxn
                                    630 ;	User/main.c: 117: C_Fxn();
                                    631 ; genCall
      00A98A CD 9F E6         [ 4]  632 	call	_C_Fxn
                                    633 ;	User/main.c: 119: if (System_GetMode() == 0) //AC
                                    634 ; genCall
      00A98D CD 9C 48         [ 4]  635 	call	_System_GetMode
                                    636 ; genIfx
      00A990 4D               [ 1]  637 	tnz	a
                                    638 ; peephole j5 changed absolute to relative unconditional jump.
      00A991 26 03            [ 1]  639 	jrne	00107$
                                    640 ; peephole j7 removed jra by using inverse jump logic
                                    641 ; peephole j30 removed unused label 00268$.
                                    642 ;	User/main.c: 121: Rs485_Proc();    //rs485通信处理
                                    643 ; genCall
      00A993 CD A3 77         [ 4]  644 	call	_Rs485_Proc
                                    645 ; genLabel
      00A996                        646 00107$:
                                    647 ;	User/main.c: 123: Chk_State();
                                    648 ; genCall
      00A996 CD A5 AC         [ 4]  649 	call	_Chk_State
                                    650 ; genGoto
      00A999 20 DA            [ 2]  651 	jra	00134$
                                    652 ; peephole j5 changed absolute to relative unconditional jump.
                                    653 ; genLabel
      00A99B                        654 00131$:
                                    655 ;	User/main.c: 128: Menu_Proc(msg->msgval1, msg->msgval2);
                                    656 ; genPlus
      00A99B 9F               [ 1]  657 	ld	a, xl
      00A99C AB 05            [ 1]  658 	add	a, #0x05
      00A99E 6B 02            [ 1]  659 	ld	(0x02, sp), a
      00A9A0 9E               [ 1]  660 	ld	a, xh
      00A9A1 A9 00            [ 1]  661 	adc	a, #0x00
      00A9A3 6B 01            [ 1]  662 	ld	(0x01, sp), a
                                    663 ; genPlus
      00A9A5 5C               [ 1]  664 	incw	x
      00A9A6 1F 0D            [ 2]  665 	ldw	(0x0d, sp), x
                                    666 ;	User/main.c: 126: else if (msg->msgtype == MSG_KEY_TIMER)
                                    667 ; genCmpEQorNE
      00A9A8 7B 13            [ 1]  668 	ld	a, (0x13, sp)
      00A9AA A1 02            [ 1]  669 	cp	a, #0x02
                                    670 ; peephole j5 changed absolute to relative unconditional jump.
                                    671 ; peephole j10 removed jra by using inverse jump logic
                                    672 ; peephole j30 removed unused label 00270$.
                                    673 ; peephole j5 changed absolute to relative unconditional jump.
      00A9AC 26 18            [ 1]  674 	jrne	00128$
                                    675 ; peephole j7 removed jra by using inverse jump logic
                                    676 ; peephole j30 removed unused label 00271$.
                                    677 ; skipping generated iCode
                                    678 ;	User/main.c: 128: Menu_Proc(msg->msgval1, msg->msgval2);
                                    679 ; genPointerGet
      00A9AE 1E 01            [ 2]  680 	ldw	x, (0x01, sp)
      00A9B0 90 93            [ 1]  681 	ldw	y, x
      00A9B2 90 EE 02         [ 2]  682 	ldw	y, (0x2, y)
      00A9B5 FE               [ 2]  683 	ldw	x, (x)
      00A9B6 1F 10            [ 2]  684 	ldw	(0x10, sp), x
                                    685 ; genPointerGet
      00A9B8 1E 0D            [ 2]  686 	ldw	x, (0x0d, sp)
      00A9BA E6 03            [ 1]  687 	ld	a, (0x3, x)
                                    688 ; genIPush
      00A9BC 90 89            [ 2]  689 	pushw	y
      00A9BE 1E 12            [ 2]  690 	ldw	x, (0x12, sp)
      00A9C0 89               [ 2]  691 	pushw	x
                                    692 ; genSend
                                    693 ; genCall
      00A9C1 CD AB D0         [ 4]  694 	call	_Menu_Proc
                                    695 ; genGoto
      00A9C4 20 AF            [ 2]  696 	jra	00134$
                                    697 ; peephole j5 changed absolute to relative unconditional jump.
                                    698 ; genLabel
      00A9C6                        699 00128$:
                                    700 ;	User/main.c: 130: else if (msg->msgtype == MSG_COUNT)
                                    701 ; genCmpEQorNE
      00A9C6 7B 13            [ 1]  702 	ld	a, (0x13, sp)
      00A9C8 A1 03            [ 1]  703 	cp	a, #0x03
                                    704 ; peephole j5 changed absolute to relative unconditional jump.
      00A9CA 27 03            [ 1]  705 	jreq	00274$
                                    706 ; peephole j10 removed jra by using inverse jump logic
                                    707 ; peephole j30 removed unused label 00273$.
      00A9CC CC AB 49         [ 2]  708 	jp	00125$
      00A9CF                        709 00274$:
                                    710 ; skipping generated iCode
                                    711 ;	User/main.c: 132: phase = (msg->msgval1 >> 24) & 0xff;
                                    712 ; genPointerGet
      00A9CF 1E 0D            [ 2]  713 	ldw	x, (0x0d, sp)
      00A9D1 90 93            [ 1]  714 	ldw	y, x
      00A9D3 90 EE 02         [ 2]  715 	ldw	y, (0x2, y)
      00A9D6 17 11            [ 2]  716 	ldw	(0x11, sp), y
      00A9D8 FE               [ 2]  717 	ldw	x, (x)
      00A9D9 1F 0F            [ 2]  718 	ldw	(0x0f, sp), x
                                    719 ; genGetByte
      00A9DB 7B 0F            [ 1]  720 	ld	a, (0x0f, sp)
                                    721 ;	User/main.c: 133: if (phase == A || phase == B || phase == C)
                                    722 ; genCmpEQorNE
      00A9DD 6B 13            [ 1]  723 	ld	(0x13, sp), a
                                    724 ; peephole 4 removed redundant load from (0x13, sp) into a.
      00A9DF 4A               [ 1]  725 	dec	a
                                    726 ; peephole j5 changed absolute to relative unconditional jump.
      00A9E0 27 0C            [ 1]  727 	jreq	00113$
                                    728 ; peephole j10 removed jra by using inverse jump logic
                                    729 ; peephole j30 removed unused label 00276$.
                                    730 ; skipping generated iCode
                                    731 ; genCmpEQorNE
      00A9E2 7B 13            [ 1]  732 	ld	a, (0x13, sp)
      00A9E4 A1 02            [ 1]  733 	cp	a, #0x02
                                    734 ; peephole j5 changed absolute to relative unconditional jump.
      00A9E6 27 06            [ 1]  735 	jreq	00113$
                                    736 ; peephole j10 removed jra by using inverse jump logic
                                    737 ; peephole j30 removed unused label 00279$.
                                    738 ; skipping generated iCode
                                    739 ; genCmpEQorNE
      00A9E8 7B 13            [ 1]  740 	ld	a, (0x13, sp)
      00A9EA A1 04            [ 1]  741 	cp	a, #0x04
                                    742 ; peephole j5 changed absolute to relative unconditional jump.
                                    743 ; peephole j10 removed jra by using inverse jump logic
                                    744 ; peephole j30 removed unused label 00282$.
                                    745 ; peephole j5 changed absolute to relative unconditional jump.
      00A9EC 26 87            [ 1]  746 	jrne	00134$
                                    747 ; peephole j7 removed jra by using inverse jump logic
                                    748 ; peephole j30 removed unused label 00283$.
                                    749 ; skipping generated iCode
                                    750 ; genLabel
      00A9EE                        751 00113$:
                                    752 ;	User/main.c: 135: tlen = (msg->msgval1 & 0x00ffffff); //时长
                                    753 ; genAnd
      00A9EE 16 11            [ 2]  754 	ldw	y, (0x11, sp)
      00A9F0 17 05            [ 2]  755 	ldw	(0x05, sp), y
      00A9F2 7B 10            [ 1]  756 	ld	a, (0x10, sp)
      00A9F4 6B 04            [ 1]  757 	ld	(0x04, sp), a
      00A9F6 0F 03            [ 1]  758 	clr	(0x03, sp)
                                    759 ;	User/main.c: 136: interval = msg->msgval2 > last_t ? msg->msgval2 - last_t : last_t - msg->msgval2;
                                    760 ; genPointerGet
      00A9F8 1E 01            [ 2]  761 	ldw	x, (0x01, sp)
      00A9FA 90 93            [ 1]  762 	ldw	y, x
      00A9FC 90 EE 02         [ 2]  763 	ldw	y, (0x2, y)
      00A9FF 17 0D            [ 2]  764 	ldw	(0x0d, sp), y
      00AA01 FE               [ 2]  765 	ldw	x, (x)
      00AA02 1F 0B            [ 2]  766 	ldw	(0x0b, sp), x
                                    767 ; genCmp
                                    768 ; genCmpTnz
      00AA04 CE 04 3F         [ 2]  769 	ldw	x, _main_last_t_10000_693+2
      00AA07 13 0D            [ 2]  770 	cpw	x, (0x0d, sp)
      00AA09 C6 04 3E         [ 1]  771 	ld	a, _main_last_t_10000_693+1
      00AA0C 12 0C            [ 1]  772 	sbc	a, (0x0c, sp)
      00AA0E C6 04 3D         [ 1]  773 	ld	a, _main_last_t_10000_693+0
      00AA11 12 0B            [ 1]  774 	sbc	a, (0x0b, sp)
                                    775 ; peephole j5 changed absolute to relative unconditional jump.
      00AA13 24 15            [ 1]  776 	jrnc	00140$
                                    777 ; peephole j6 removed jra by using inverse jump logic
                                    778 ; peephole j30 removed unused label 00284$.
                                    779 ; skipping generated iCode
                                    780 ; genMinus
      00AA15 1E 0D            [ 2]  781 	ldw	x, (0x0d, sp)
      00AA17 72 B0 04 3F      [ 2]  782 	subw	x, _main_last_t_10000_693+2
      00AA1B 1F 11            [ 2]  783 	ldw	(0x11, sp), x
      00AA1D 7B 0C            [ 1]  784 	ld	a, (0x0c, sp)
      00AA1F C2 04 3E         [ 1]  785 	sbc	a, _main_last_t_10000_693+1
      00AA22 97               [ 1]  786 	ld	xl, a
      00AA23 7B 0B            [ 1]  787 	ld	a, (0x0b, sp)
      00AA25 C2 04 3D         [ 1]  788 	sbc	a, _main_last_t_10000_693+0
                                    789 ; genGoto
      00AA28 20 13            [ 2]  790 	jra	00141$
                                    791 ; peephole j5 changed absolute to relative unconditional jump.
                                    792 ; genLabel
      00AA2A                        793 00140$:
                                    794 ; genMinus
      00AA2A CE 04 3F         [ 2]  795 	ldw	x, _main_last_t_10000_693+2
      00AA2D 72 F0 0D         [ 2]  796 	subw	x, (0x0d, sp)
      00AA30 1F 11            [ 2]  797 	ldw	(0x11, sp), x
      00AA32 C6 04 3E         [ 1]  798 	ld	a, _main_last_t_10000_693+1
      00AA35 12 0C            [ 1]  799 	sbc	a, (0x0c, sp)
      00AA37 97               [ 1]  800 	ld	xl, a
      00AA38 C6 04 3D         [ 1]  801 	ld	a, _main_last_t_10000_693+0
      00AA3B 12 0B            [ 1]  802 	sbc	a, (0x0b, sp)
                                    803 ; genLabel
      00AA3D                        804 00141$:
                                    805 ; genAssign
      00AA3D 41               [ 1]  806 	exg	a, xl
      00AA3E 6B 10            [ 1]  807 	ld	(0x10, sp), a
      00AA40 41               [ 1]  808 	exg	a, xl
      00AA41 6B 0F            [ 1]  809 	ld	(0x0f, sp), a
                                    810 ;	User/main.c: 144: SendMsg(&MsgSystem, MSG_KEY_TIMER, FRESH_DATA, (0x00ffffff & tlen) | (phase32 << 24));
                                    811 ; genAnd
      00AA43 16 05            [ 2]  812 	ldw	y, (0x05, sp)
      00AA45 17 09            [ 2]  813 	ldw	(0x09, sp), y
      00AA47 7B 04            [ 1]  814 	ld	a, (0x04, sp)
      00AA49 6B 08            [ 1]  815 	ld	(0x08, sp), a
      00AA4B 0F 07            [ 1]  816 	clr	(0x07, sp)
                                    817 ;	User/main.c: 137: if (interval <= 5) //间隔小于5ms判定为两相同时雷击
                                    818 ; genCmp
                                    819 ; genCmpTnz
      00AA4D AE 00 05         [ 2]  820 	ldw	x, #0x0005
      00AA50 13 11            [ 2]  821 	cpw	x, (0x11, sp)
      00AA52 4F               [ 1]  822 	clr	a
      00AA53 12 10            [ 1]  823 	sbc	a, (0x10, sp)
      00AA55 4F               [ 1]  824 	clr	a
      00AA56 12 0F            [ 1]  825 	sbc	a, (0x0f, sp)
                                    826 ; peephole j5 changed absolute to relative unconditional jump.
      00AA58 25 6F            [ 1]  827 	jrc	00111$
                                    828 ; peephole j9 removed jra by using inverse jump logic
                                    829 ; peephole j30 removed unused label 00285$.
                                    830 ; skipping generated iCode
                                    831 ;	User/main.c: 139: Record_GetStat(phase + last_ph)->tscount += 1; //两相总次数统计
                                    832 ; genPlus
      00AA5A 7B 13            [ 1]  833 	ld	a, (0x13, sp)
      00AA5C CB 04 3C         [ 1]  834 	add	a, _main_last_ph_10000_693+0
                                    835 ; genSend
                                    836 ; genCall
      00AA5F CD 9C 58         [ 4]  837 	call	_Record_GetStat
                                    838 ; genCast
                                    839 ; genAssign
                                    840 ; genPointerGet
                                    841 ; peephole 5w replaced exgw-ldw by ldw.
      00AA62 90 93            [ 1]  842 	ldw	y, x
      00AA64 FE               [ 2]  843 	ldw	x, (x)
                                    844 ; genCast
                                    845 ; genAssign
                                    846 ; genPlus
      00AA65 5C               [ 1]  847 	incw	x
                                    848 ; genCast
                                    849 ; genAssign
                                    850 ; genPointerSet
      00AA66 90 FF            [ 2]  851 	ldw	(y), x
                                    852 ;	User/main.c: 140: Record_GetStat(phase + last_ph)->tltotal += tlen; //两相总时长统计
                                    853 ; genPlus
      00AA68 7B 13            [ 1]  854 	ld	a, (0x13, sp)
      00AA6A CB 04 3C         [ 1]  855 	add	a, _main_last_ph_10000_693+0
                                    856 ; genSend
                                    857 ; genCall
      00AA6D CD 9C 58         [ 4]  858 	call	_Record_GetStat
                                    859 ; genPlus
      00AA70 1C 00 06         [ 2]  860 	addw	x, #0x0006
                                    861 ; genPointerGet
      00AA73 90 93            [ 1]  862 	ldw	y, x
      00AA75 90 EE 02         [ 2]  863 	ldw	y, (0x2, y)
      00AA78 E6 01            [ 1]  864 	ld	a, (0x1, x)
      00AA7A 88               [ 1]  865 	push	a
      00AA7B F6               [ 1]  866 	ld	a, (x)
      00AA7C 6B 0C            [ 1]  867 	ld	(0x0c, sp), a
      00AA7E 84               [ 1]  868 	pop	a
                                    869 ; genPlus
      00AA7F 72 F9 05         [ 2]  870 	addw	y, (0x05, sp)
      00AA82 19 04            [ 1]  871 	adc	a, (0x04, sp)
      00AA84 6B 10            [ 1]  872 	ld	(0x10, sp), a
      00AA86 7B 0B            [ 1]  873 	ld	a, (0x0b, sp)
      00AA88 19 03            [ 1]  874 	adc	a, (0x03, sp)
      00AA8A 6B 0F            [ 1]  875 	ld	(0x0f, sp), a
                                    876 ; genPointerSet
      00AA8C EF 02            [ 2]  877 	ldw	(0x2, x), y
      00AA8E 16 0F            [ 2]  878 	ldw	y, (0x0f, sp)
      00AA90 FF               [ 2]  879 	ldw	(x), y
                                    880 ;	User/main.c: 141: Record_GetStat(phase + last_ph)->tlmax = tlen;
                                    881 ; genPlus
      00AA91 7B 13            [ 1]  882 	ld	a, (0x13, sp)
      00AA93 CB 04 3C         [ 1]  883 	add	a, _main_last_ph_10000_693+0
                                    884 ; genSend
                                    885 ; genCall
      00AA96 CD 9C 58         [ 4]  886 	call	_Record_GetStat
                                    887 ; genPlus
      00AA99 5C               [ 1]  888 	incw	x
      00AA9A 5C               [ 1]  889 	incw	x
                                    890 ; genPointerSet
      00AA9B 16 05            [ 2]  891 	ldw	y, (0x05, sp)
      00AA9D EF 02            [ 2]  892 	ldw	(0x2, x), y
      00AA9F 16 03            [ 2]  893 	ldw	y, (0x03, sp)
      00AAA1 FF               [ 2]  894 	ldw	(x), y
                                    895 ;	User/main.c: 142: phase += last_ph;
                                    896 ; genPlus
      00AAA2 7B 13            [ 1]  897 	ld	a, (0x13, sp)
      00AAA4 CB 04 3C         [ 1]  898 	add	a, _main_last_ph_10000_693+0
                                    899 ;	User/main.c: 143: phase32 = phase;
                                    900 ; genCast
                                    901 ; genAssign
      00AAA7 6B 13            [ 1]  902 	ld	(0x13, sp), a
                                    903 ; peephole 4 removed redundant load from (0x13, sp) into a.
                                    904 ; peephole 3 removed dead clrw of x.
                                    905 ; peephole 3 removed dead clrw of y.
                                    906 ;	User/main.c: 144: SendMsg(&MsgSystem, MSG_KEY_TIMER, FRESH_DATA, (0x00ffffff & tlen) | (phase32 << 24));
                                    907 ; genLeftShiftLiteral
                                    908 ; peephole 3 removed dead clrw of x.
      00AAA9 0F 10            [ 1]  909 	clr	(0x10, sp)
                                    910 ; genOr
      00AAAB 90 95            [ 1]  911 	ld	yh, a
      00AAAD 1E 09            [ 2]  912 	ldw	x, (0x09, sp)
      00AAAF 7B 08            [ 1]  913 	ld	a, (0x08, sp)
      00AAB1 90 97            [ 1]  914 	ld	yl, a
                                    915 ; genIPush
      00AAB3 89               [ 2]  916 	pushw	x
      00AAB4 90 89            [ 2]  917 	pushw	y
                                    918 ; genIPush
      00AAB6 4B 62            [ 1]  919 	push	#0x62
      00AAB8 5F               [ 1]  920 	clrw	x
      00AAB9 89               [ 2]  921 	pushw	x
      00AABA 4B 00            [ 1]  922 	push	#0x00
                                    923 ; genSend
      00AABC A6 02            [ 1]  924 	ld	a, #0x02
                                    925 ; genSend
      00AABE AE 01 0D         [ 2]  926 	ldw	x, #(_MsgSystem+0)
                                    927 ; genCall
      00AAC1 CD 9D 28         [ 4]  928 	call	_SendMsg
                                    929 ;	User/main.c: 145: Storage_SaveAllStats(); //掉电保护：立即保存统计数据
                                    930 ; genCall
      00AAC4 CD 9C 6E         [ 4]  931 	call	_Storage_SaveAllStats
                                    932 ; genGoto
      00AAC7 20 65            [ 2]  933 	jra	00112$
                                    934 ; peephole j5 changed absolute to relative unconditional jump.
                                    935 ; genLabel
      00AAC9                        936 00111$:
                                    937 ;	User/main.c: 149: if (single_trg == 1)
                                    938 ; genCmpEQorNE
      00AAC9 C6 01 0C         [ 1]  939 	ld	a, _single_trg+0
      00AACC 4A               [ 1]  940 	dec	a
                                    941 ; peephole j5 changed absolute to relative unconditional jump.
                                    942 ; peephole j10 removed jra by using inverse jump logic
                                    943 ; peephole j30 removed unused label 00287$.
                                    944 ; peephole j5 changed absolute to relative unconditional jump.
      00AACD 26 5F            [ 1]  945 	jrne	00112$
                                    946 ; peephole j7 removed jra by using inverse jump logic
                                    947 ; peephole j30 removed unused label 00288$.
                                    948 ; skipping generated iCode
                                    949 ;	User/main.c: 151: Record_GetStat(phase)->tscount += 1; //A相总次数统计
                                    950 ; genSend
      00AACF 7B 13            [ 1]  951 	ld	a, (0x13, sp)
                                    952 ; genCall
      00AAD1 CD 9C 58         [ 4]  953 	call	_Record_GetStat
                                    954 ; genCast
                                    955 ; genAssign
                                    956 ; genPointerGet
                                    957 ; peephole 5w replaced exgw-ldw by ldw.
      00AAD4 90 93            [ 1]  958 	ldw	y, x
      00AAD6 FE               [ 2]  959 	ldw	x, (x)
                                    960 ; genCast
                                    961 ; genAssign
                                    962 ; genPlus
      00AAD7 5C               [ 1]  963 	incw	x
                                    964 ; genCast
                                    965 ; genAssign
                                    966 ; genPointerSet
      00AAD8 90 FF            [ 2]  967 	ldw	(y), x
                                    968 ;	User/main.c: 152: Record_GetStat(phase)->tltotal += tlen; //A相总时长统计
                                    969 ; genSend
      00AADA 7B 13            [ 1]  970 	ld	a, (0x13, sp)
                                    971 ; genCall
      00AADC CD 9C 58         [ 4]  972 	call	_Record_GetStat
                                    973 ; genPlus
      00AADF 1C 00 06         [ 2]  974 	addw	x, #0x0006
                                    975 ; genPointerGet
      00AAE2 90 93            [ 1]  976 	ldw	y, x
      00AAE4 90 EE 02         [ 2]  977 	ldw	y, (0x2, y)
      00AAE7 E6 01            [ 1]  978 	ld	a, (0x1, x)
      00AAE9 6B 0C            [ 1]  979 	ld	(0x0c, sp), a
      00AAEB F6               [ 1]  980 	ld	a, (x)
                                    981 ; genPlus
      00AAEC 72 F9 05         [ 2]  982 	addw	y, (0x05, sp)
      00AAEF 88               [ 1]  983 	push	a
      00AAF0 7B 0D            [ 1]  984 	ld	a, (0x0d, sp)
      00AAF2 19 05            [ 1]  985 	adc	a, (0x05, sp)
      00AAF4 6B 11            [ 1]  986 	ld	(0x11, sp), a
      00AAF6 84               [ 1]  987 	pop	a
      00AAF7 19 03            [ 1]  988 	adc	a, (0x03, sp)
      00AAF9 6B 0F            [ 1]  989 	ld	(0x0f, sp), a
                                    990 ; genPointerSet
      00AAFB EF 02            [ 2]  991 	ldw	(0x2, x), y
      00AAFD 16 0F            [ 2]  992 	ldw	y, (0x0f, sp)
      00AAFF FF               [ 2]  993 	ldw	(x), y
                                    994 ;	User/main.c: 153: Record_GetStat(phase)->tlmax = tlen;
                                    995 ; genSend
      00AB00 7B 13            [ 1]  996 	ld	a, (0x13, sp)
                                    997 ; genCall
      00AB02 CD 9C 58         [ 4]  998 	call	_Record_GetStat
                                    999 ; genPlus
      00AB05 5C               [ 1] 1000 	incw	x
      00AB06 5C               [ 1] 1001 	incw	x
                                   1002 ; genPointerSet
      00AB07 16 05            [ 2] 1003 	ldw	y, (0x05, sp)
      00AB09 EF 02            [ 2] 1004 	ldw	(0x2, x), y
      00AB0B 16 03            [ 2] 1005 	ldw	y, (0x03, sp)
      00AB0D FF               [ 2] 1006 	ldw	(x), y
                                   1007 ;	User/main.c: 154: phase32 = phase;
                                   1008 ; genCast
                                   1009 ; genAssign
      00AB0E 7B 13            [ 1] 1010 	ld	a, (0x13, sp)
                                   1011 ; peephole 3 removed dead clrw of x.
                                   1012 ; peephole 3 removed dead clrw of y.
                                   1013 ;	User/main.c: 155: SendMsg(&MsgSystem, MSG_KEY_TIMER, FRESH_DATA, (0x00ffffff & tlen) | (phase32 << 24));
                                   1014 ; genLeftShiftLiteral
                                   1015 ; peephole 3 removed dead clrw of x.
      00AB10 0F 10            [ 1] 1016 	clr	(0x10, sp)
                                   1017 ; genOr
      00AB12 90 95            [ 1] 1018 	ld	yh, a
      00AB14 1E 09            [ 2] 1019 	ldw	x, (0x09, sp)
      00AB16 7B 08            [ 1] 1020 	ld	a, (0x08, sp)
      00AB18 90 97            [ 1] 1021 	ld	yl, a
                                   1022 ; genIPush
      00AB1A 89               [ 2] 1023 	pushw	x
      00AB1B 90 89            [ 2] 1024 	pushw	y
                                   1025 ; genIPush
      00AB1D 4B 62            [ 1] 1026 	push	#0x62
      00AB1F 5F               [ 1] 1027 	clrw	x
      00AB20 89               [ 2] 1028 	pushw	x
      00AB21 4B 00            [ 1] 1029 	push	#0x00
                                   1030 ; genSend
      00AB23 A6 02            [ 1] 1031 	ld	a, #0x02
                                   1032 ; genSend
      00AB25 AE 01 0D         [ 2] 1033 	ldw	x, #(_MsgSystem+0)
                                   1034 ; genCall
      00AB28 CD 9D 28         [ 4] 1035 	call	_SendMsg
                                   1036 ;	User/main.c: 156: Storage_SaveAllStats(); //掉电保护：立即保存统计数据
                                   1037 ; genCall
      00AB2B CD 9C 6E         [ 4] 1038 	call	_Storage_SaveAllStats
                                   1039 ; genLabel
      00AB2E                       1040 00112$:
                                   1041 ;	User/main.c: 159: single_trg = 0;
                                   1042 ; genAssign
      00AB2E 72 5F 01 0C      [ 1] 1043 	clr	_single_trg+0
                                   1044 ;	User/main.c: 161: last_ph = phase;
                                   1045 ; genAssign
      00AB32 7B 13            [ 1] 1046 	ld	a, (0x13, sp)
      00AB34 C7 04 3C         [ 1] 1047 	ld	_main_last_ph_10000_693+0, a
                                   1048 ;	User/main.c: 162: last_t = msg->msgval2; //保存上一次触发时间
                                   1049 ; genPointerGet
      00AB37 1E 01            [ 2] 1050 	ldw	x, (0x01, sp)
      00AB39 90 93            [ 1] 1051 	ldw	y, x
      00AB3B 90 EE 02         [ 2] 1052 	ldw	y, (0x2, y)
      00AB3E FE               [ 2] 1053 	ldw	x, (x)
                                   1054 ; genAssign
      00AB3F 90 CF 04 3F      [ 2] 1055 	ldw	_main_last_t_10000_693+2, y
      00AB43 CF 04 3D         [ 2] 1056 	ldw	_main_last_t_10000_693+0, x
                                   1057 ; genGoto
      00AB46 CC A9 75         [ 2] 1058 	jp	00134$
                                   1059 ; genLabel
      00AB49                       1060 00125$:
                                   1061 ;	User/main.c: 165: else if (msg->msgtype == MSG_ADC) //检测电池电压
                                   1062 ; genCmpEQorNE
      00AB49 7B 13            [ 1] 1063 	ld	a, (0x13, sp)
      00AB4B A1 04            [ 1] 1064 	cp	a, #0x04
                                   1065 ; peephole j5 changed absolute to relative unconditional jump.
      00AB4D 27 03            [ 1] 1066 	jreq	00291$
                                   1067 ; peephole j10 removed jra by using inverse jump logic
                                   1068 ; peephole j30 removed unused label 00290$.
      00AB4F CC A9 75         [ 2] 1069 	jp	00134$
      00AB52                       1070 00291$:
                                   1071 ; skipping generated iCode
                                   1072 ;	User/main.c: 167: if (msg->msgval1)
                                   1073 ; genPointerGet
      00AB52 1E 0D            [ 2] 1074 	ldw	x, (0x0d, sp)
      00AB54 90 93            [ 1] 1075 	ldw	y, x
      00AB56 90 EE 02         [ 2] 1076 	ldw	y, (0x2, y)
      00AB59 FE               [ 2] 1077 	ldw	x, (x)
                                   1078 ; genIfx
      00AB5A 90 5D            [ 2] 1079 	tnzw	y
      00AB5C 26 06            [ 1] 1080 	jrne	00292$
      00AB5E 5D               [ 2] 1081 	tnzw	x
      00AB5F 26 03            [ 1] 1082 	jrne	00292$
      00AB61 CC A9 75         [ 2] 1083 	jp	00134$
      00AB64                       1084 00292$:
                                   1085 ;	User/main.c: 169: val = msg->msgval1 / 10;
                                   1086 ; genIPush
      00AB64 4B 0A            [ 1] 1087 	push	#0x0a
      00AB66 4B 00            [ 1] 1088 	push	#0x00
      00AB68 4B 00            [ 1] 1089 	push	#0x00
      00AB6A 4B 00            [ 1] 1090 	push	#0x00
                                   1091 ; genIPush
      00AB6C 90 89            [ 2] 1092 	pushw	y
      00AB6E 89               [ 2] 1093 	pushw	x
                                   1094 ;	User/main.c: 170: uint32_t new_v = (uint32_t)(5017600 / val);
                                   1095 ; genCall
      00AB6F CD ED 50         [ 4] 1096 	call	__divulong
      00AB72 5B 08            [ 2] 1097 	addw	sp, #8
                                   1098 ; genIPush
      00AB74 89               [ 2] 1099 	pushw	x
      00AB75 90 89            [ 2] 1100 	pushw	y
                                   1101 ; genIPush
      00AB77 4B 00            [ 1] 1102 	push	#0x00
      00AB79 4B 90            [ 1] 1103 	push	#0x90
      00AB7B 4B 4C            [ 1] 1104 	push	#0x4c
      00AB7D 4B 00            [ 1] 1105 	push	#0x00
                                   1106 ;	User/main.c: 171: if (Verfin == 0) {
                                   1107 ; genCall
      00AB7F CD ED 50         [ 4] 1108 	call	__divulong
      00AB82 5B 08            [ 2] 1109 	addw	sp, #8
      00AB84 1F 12            [ 2] 1110 	ldw	(0x12, sp), x
      00AB86 17 10            [ 2] 1111 	ldw	(0x10, sp), y
                                   1112 ; genIfx
      00AB88 CE 04 B6         [ 2] 1113 	ldw	x, _Verfin+2
      00AB8B 26 12            [ 1] 1114 	jrne	00118$
                                   1115 ; peephole j22 jumped to 00118$ directly instead of via 00293$.
      00AB8D CE 04 B4         [ 2] 1116 	ldw	x, _Verfin+0
                                   1117 ; peephole j30 removed unused label 00293$.
                                   1118 ; peephole j5 changed absolute to relative unconditional jump.
      00AB90 26 0D            [ 1] 1119 	jrne	00118$
                                   1120 ; peephole j7 removed jra by using inverse jump logic
                                   1121 ; peephole j30 removed unused label 00294$.
                                   1122 ;	User/main.c: 172: Verfin = new_v;
                                   1123 ; genAssign
      00AB92 1E 12            [ 2] 1124 	ldw	x, (0x12, sp)
      00AB94 CF 04 B6         [ 2] 1125 	ldw	_Verfin+2, x
      00AB97 1E 10            [ 2] 1126 	ldw	x, (0x10, sp)
      00AB99 CF 04 B4         [ 2] 1127 	ldw	_Verfin+0, x
                                   1128 ; genGoto
      00AB9C CC A9 75         [ 2] 1129 	jp	00134$
                                   1130 ; genLabel
      00AB9F                       1131 00118$:
                                   1132 ;	User/main.c: 174: Verfin = (Verfin * 7 + new_v) >> 3; // IIR 平滑滤波 (避免图标频繁跳动)
                                   1133 ; genIPush
      00AB9F CE 04 B6         [ 2] 1134 	ldw	x, _Verfin+2
      00ABA2 89               [ 2] 1135 	pushw	x
      00ABA3 CE 04 B4         [ 2] 1136 	ldw	x, _Verfin+0
      00ABA6 89               [ 2] 1137 	pushw	x
                                   1138 ; genIPush
      00ABA7 4B 07            [ 1] 1139 	push	#0x07
      00ABA9 5F               [ 1] 1140 	clrw	x
      00ABAA 89               [ 2] 1141 	pushw	x
      00ABAB 4B 00            [ 1] 1142 	push	#0x00
                                   1143 ; genCall
      00ABAD CD EE 20         [ 4] 1144 	call	__mullong
      00ABB0 5B 08            [ 2] 1145 	addw	sp, #8
      00ABB2 51               [ 1] 1146 	exgw	x, y
                                   1147 ; genPlus
      00ABB3 72 F9 12         [ 2] 1148 	addw	y, (0x12, sp)
      00ABB6 9F               [ 1] 1149 	ld	a, xl
      00ABB7 19 11            [ 1] 1150 	adc	a, (0x11, sp)
      00ABB9 02               [ 1] 1151 	rlwa	x
                                   1152 ; peephole r1 used rlwa.
      00ABBA 19 10            [ 1] 1153 	adc	a, (0x10, sp)
      00ABBC 95               [ 1] 1154 	ld	xh, a
                                   1155 ; genRightShiftLiteral
      00ABBD 54               [ 2] 1156 	srlw	x
      00ABBE 90 56            [ 2] 1157 	rrcw	y
      00ABC0 54               [ 2] 1158 	srlw	x
      00ABC1 90 56            [ 2] 1159 	rrcw	y
      00ABC3 54               [ 2] 1160 	srlw	x
      00ABC4 90 56            [ 2] 1161 	rrcw	y
                                   1162 ; genAssign
      00ABC6 90 CF 04 B6      [ 2] 1163 	ldw	_Verfin+2, y
      00ABCA CF 04 B4         [ 2] 1164 	ldw	_Verfin+0, x
                                   1165 ; genGoto
                                   1166 ; genLabel
                                   1167 ; peephole j30 removed unused label 00138$.
                                   1168 ;	User/main.c: 180: }
                                   1169 ; genEndFunction
                                   1170 ; peephole 53 removed unreachable addw.
      00ABCD CC A9 75         [ 2] 1171 	jp	00134$
                                   1172 ; peephole 52 removed unreachable ret.
                                   1173 ;	Total main function size at codegen: 3 bytes.
                                   1174 	.area CODE
                                   1175 	.area CONST
                                   1176 	.area INITIALIZER
                                   1177 	.area CABS (ABS)
