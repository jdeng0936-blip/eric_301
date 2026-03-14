                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module st7565r_lcd
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _logo
                                     11 	.globl _char_7x8
                                     12 	.globl _hz_12x12
                                     13 	.globl _char_8x12
                                     14 	.globl _ST7565_IO_Delay
                                     15 	.globl _GPIO_ResetBits
                                     16 	.globl _GPIO_SetBits
                                     17 	.globl _ST7565_Write
                                     18 	.globl _writec
                                     19 	.globl _writed
                                     20 	.globl _lcd_init
                                     21 	.globl _lcd_address
                                     22 	.globl _clear_screen
                                     23 	.globl _show_str_8x12
                                     24 	.globl _show_str_7x8
                                     25 	.globl _show_hz_12x12
                                     26 	.globl _show_pic_128x64
                                     27 ;--------------------------------------------------------
                                     28 ; ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area DATA
                                     31 ;--------------------------------------------------------
                                     32 ; ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area INITIALIZED
                                     35 ;--------------------------------------------------------
                                     36 ; absolute external ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area DABS (ABS)
                                     39 
                                     40 ; default segment ordering for linker
                                     41 	.area HOME
                                     42 	.area GSINIT
                                     43 	.area GSFINAL
                                     44 	.area CONST
                                     45 	.area INITIALIZER
                                     46 	.area CODE
                                     47 
                                     48 ;--------------------------------------------------------
                                     49 ; global & static initialisations
                                     50 ;--------------------------------------------------------
                                     51 	.area HOME
                                     52 	.area GSINIT
                                     53 	.area GSFINAL
                                     54 	.area GSINIT
                                     55 ;--------------------------------------------------------
                                     56 ; Home
                                     57 ;--------------------------------------------------------
                                     58 	.area HOME
                                     59 	.area HOME
                                     60 ;--------------------------------------------------------
                                     61 ; code
                                     62 ;--------------------------------------------------------
                                     63 	.area CODE
                                     64 ;	User/st7565r_lcd.c: 20: void ST7565_IO_Delay(__IO uint16_t t)
                                     65 ; genLabel
                                     66 ;	-----------------------------------------
                                     67 ;	 function ST7565_IO_Delay
                                     68 ;	-----------------------------------------
                                     69 ;	Register assignment is optimal.
                                     70 ;	Stack space usage: 2 bytes.
      00BCAF                         71 _ST7565_IO_Delay:
      00BCAF 89               [ 2]   72 	pushw	x
                                     73 ; genReceive
      00BCB0 1F 01            [ 2]   74 	ldw	(0x01, sp), x
                                     75 ;	User/st7565r_lcd.c: 23: while (t != 0)
                                     76 ; genLabel
      00BCB2                         77 00101$:
                                     78 ; genIfx
      00BCB2 1E 01            [ 2]   79 	ldw	x, (0x01, sp)
                                     80 ; peephole j5 changed absolute to relative unconditional jump.
      00BCB4 27 07            [ 1]   81 	jreq	00104$
                                     82 ; peephole j10 removed jra by using inverse jump logic
                                     83 ; peephole j30 removed unused label 00120$.
                                     84 ;	User/st7565r_lcd.c: 25: t--;
                                     85 ; genAssign
      00BCB6 1E 01            [ 2]   86 	ldw	x, (0x01, sp)
                                     87 ; genMinus
      00BCB8 5A               [ 2]   88 	decw	x
                                     89 ; genAssign
      00BCB9 1F 01            [ 2]   90 	ldw	(0x01, sp), x
                                     91 ; genGoto
      00BCBB 20 F5            [ 2]   92 	jra	00101$
                                     93 ; peephole j5 changed absolute to relative unconditional jump.
                                     94 ; genLabel
      00BCBD                         95 00104$:
                                     96 ;	User/st7565r_lcd.c: 27: }
                                     97 ; genEndFunction
      00BCBD 85               [ 2]   98 	popw	x
      00BCBE 81               [ 4]   99 	ret
                                    100 ;	Total ST7565_IO_Delay function size at codegen: 2 bytes.
                                    101 ;	User/st7565r_lcd.c: 30: void ST7565_Write(uint8_t dat,uint8_t rs) //rs == 1 data rs==0  cmd
                                    102 ; genLabel
                                    103 ;	-----------------------------------------
                                    104 ;	 function ST7565_Write
                                    105 ;	-----------------------------------------
                                    106 ;	Register assignment is optimal.
                                    107 ;	Stack space usage: 2 bytes.
      00BCBF                        108 _ST7565_Write:
      00BCBF 89               [ 2]  109 	pushw	x
                                    110 ; genReceive
      00BCC0 6B 01            [ 1]  111 	ld	(0x01, sp), a
                                    112 ;	User/st7565r_lcd.c: 34: IO_ST7565_CS_0;
                                    113 ; genSend
      00BCC2 A6 10            [ 1]  114 	ld	a, #0x10
                                    115 ; genSend
      00BCC4 AE 50 05         [ 2]  116 	ldw	x, #0x5005
                                    117 ; genCall
      00BCC7 CD CE 9F         [ 4]  118 	call	_GPIO_ResetBits
                                    119 ;	User/st7565r_lcd.c: 35: if(!rs)
                                    120 ; genIfx
      00BCCA 0D 05            [ 1]  121 	tnz	(0x05, sp)
                                    122 ; peephole j5 changed absolute to relative unconditional jump.
      00BCCC 26 0A            [ 1]  123 	jrne	00102$
                                    124 ; peephole j7 removed jra by using inverse jump logic
                                    125 ; peephole j30 removed unused label 00141$.
                                    126 ;	User/st7565r_lcd.c: 37: IO_ST7565_RS_0; //Command
                                    127 ; genSend
      00BCCE A6 08            [ 1]  128 	ld	a, #0x08
                                    129 ; genSend
      00BCD0 AE 50 05         [ 2]  130 	ldw	x, #0x5005
                                    131 ; genCall
      00BCD3 CD CE 9F         [ 4]  132 	call	_GPIO_ResetBits
                                    133 ; genGoto
      00BCD6 20 08            [ 2]  134 	jra	00114$
                                    135 ; peephole j5 changed absolute to relative unconditional jump.
                                    136 ; genLabel
      00BCD8                        137 00102$:
                                    138 ;	User/st7565r_lcd.c: 41: IO_ST7565_RS_1;
                                    139 ; genSend
      00BCD8 A6 08            [ 1]  140 	ld	a, #0x08
                                    141 ; genSend
      00BCDA AE 50 05         [ 2]  142 	ldw	x, #0x5005
                                    143 ; genCall
      00BCDD CD CE 96         [ 4]  144 	call	_GPIO_SetBits
                                    145 ;	User/st7565r_lcd.c: 44: for(i=0; i<8; i++)
                                    146 ; genLabel
      00BCE0                        147 00114$:
                                    148 ; genAssign
      00BCE0 0F 02            [ 1]  149 	clr	(0x02, sp)
                                    150 ; genLabel
      00BCE2                        151 00108$:
                                    152 ;	User/st7565r_lcd.c: 46: IO_ST7565_SCK_0;
                                    153 ; genSend
      00BCE2 A6 20            [ 1]  154 	ld	a, #0x20
                                    155 ; genSend
      00BCE4 AE 50 05         [ 2]  156 	ldw	x, #0x5005
                                    157 ; genCall
      00BCE7 CD CE 9F         [ 4]  158 	call	_GPIO_ResetBits
                                    159 ;	User/st7565r_lcd.c: 47: if(dat&0x80)
                                    160 ; genAnd
      00BCEA 0D 01            [ 1]  161 	tnz	(0x01, sp)
                                    162 ; peephole j5 changed absolute to relative unconditional jump.
      00BCEC 2A 0A            [ 1]  163 	jrpl	00105$
                                    164 ; peephole j8 removed jra by using inverse jump logic
                                    165 ; peephole j30 removed unused label 00142$.
                                    166 ; skipping generated iCode
                                    167 ;	User/st7565r_lcd.c: 48: IO_ST7565_SDA_1;
                                    168 ; genSend
      00BCEE A6 40            [ 1]  169 	ld	a, #0x40
                                    170 ; genSend
      00BCF0 AE 50 05         [ 2]  171 	ldw	x, #0x5005
                                    172 ; genCall
      00BCF3 CD CE 96         [ 4]  173 	call	_GPIO_SetBits
                                    174 ; genGoto
      00BCF6 20 08            [ 2]  175 	jra	00106$
                                    176 ; peephole j5 changed absolute to relative unconditional jump.
                                    177 ; genLabel
      00BCF8                        178 00105$:
                                    179 ;	User/st7565r_lcd.c: 50: IO_ST7565_SDA_0;
                                    180 ; genSend
      00BCF8 A6 40            [ 1]  181 	ld	a, #0x40
                                    182 ; genSend
      00BCFA AE 50 05         [ 2]  183 	ldw	x, #0x5005
                                    184 ; genCall
      00BCFD CD CE 9F         [ 4]  185 	call	_GPIO_ResetBits
                                    186 ; genLabel
      00BD00                        187 00106$:
                                    188 ;	User/st7565r_lcd.c: 51: IO_ST7565_SCK_1;
                                    189 ; genSend
      00BD00 A6 20            [ 1]  190 	ld	a, #0x20
                                    191 ; genSend
      00BD02 AE 50 05         [ 2]  192 	ldw	x, #0x5005
                                    193 ; genCall
      00BD05 CD CE 96         [ 4]  194 	call	_GPIO_SetBits
                                    195 ;	User/st7565r_lcd.c: 52: dat<<=1;
                                    196 ; genLeftShiftLiteral
      00BD08 08 01            [ 1]  197 	sll	(0x01, sp)
                                    198 ;	User/st7565r_lcd.c: 44: for(i=0; i<8; i++)
                                    199 ; genPlus
      00BD0A 0C 02            [ 1]  200 	inc	(0x02, sp)
                                    201 ; genCmp
                                    202 ; genCmpTnz
      00BD0C 7B 02            [ 1]  203 	ld	a, (0x02, sp)
      00BD0E A1 08            [ 1]  204 	cp	a, #0x08
                                    205 ; peephole j5 changed absolute to relative unconditional jump.
      00BD10 25 D0            [ 1]  206 	jrc	00108$
                                    207 ; peephole j9 removed jra by using inverse jump logic
                                    208 ; peephole j30 removed unused label 00143$.
                                    209 ; skipping generated iCode
                                    210 ;	User/st7565r_lcd.c: 55: IO_ST7565_CS_1;
                                    211 ; genSend
      00BD12 A6 10            [ 1]  212 	ld	a, #0x10
                                    213 ; genSend
      00BD14 AE 50 05         [ 2]  214 	ldw	x, #0x5005
                                    215 ; genCall
      00BD17 CD CE 96         [ 4]  216 	call	_GPIO_SetBits
                                    217 ;	User/st7565r_lcd.c: 56: IO_ST7565_RS_1;
                                    218 ; genSend
      00BD1A A6 08            [ 1]  219 	ld	a, #0x08
                                    220 ; genSend
      00BD1C AE 50 05         [ 2]  221 	ldw	x, #0x5005
                                    222 ; genCall
      00BD1F CD CE 96         [ 4]  223 	call	_GPIO_SetBits
                                    224 ; genLabel
                                    225 ; peephole j30 removed unused label 00110$.
                                    226 ;	User/st7565r_lcd.c: 58: }
                                    227 ; genEndFunction
      00BD22 85               [ 2]  228 	popw	x
      00BD23 85               [ 2]  229 	popw	x
      00BD24 84               [ 1]  230 	pop	a
      00BD25 FC               [ 2]  231 	jp	(x)
                                    232 ;	Total ST7565_Write function size at codegen: 4 bytes.
                                    233 ;	User/st7565r_lcd.c: 60: void writec(uint8_t com)
                                    234 ; genLabel
                                    235 ;	-----------------------------------------
                                    236 ;	 function writec
                                    237 ;	-----------------------------------------
                                    238 ;	Register assignment is optimal.
                                    239 ;	Stack space usage: 0 bytes.
      00BD26                        240 _writec:
                                    241 ; genReceive
                                    242 ;	User/st7565r_lcd.c: 62: ST7565_Write(com,0);
                                    243 ; genIPush
      00BD26 4B 00            [ 1]  244 	push	#0x00
                                    245 ; genSend
                                    246 ; genCall
      00BD28 CD BC BF         [ 4]  247 	call	_ST7565_Write
                                    248 ; genLabel
                                    249 ; peephole j30 removed unused label 00101$.
                                    250 ;	User/st7565r_lcd.c: 63: }
                                    251 ; genEndFunction
      00BD2B 81               [ 4]  252 	ret
                                    253 ;	Total writec function size at codegen: 1 bytes.
                                    254 ;	User/st7565r_lcd.c: 65: void writed(uint8_t dat)
                                    255 ; genLabel
                                    256 ;	-----------------------------------------
                                    257 ;	 function writed
                                    258 ;	-----------------------------------------
                                    259 ;	Register assignment is optimal.
                                    260 ;	Stack space usage: 0 bytes.
      00BD2C                        261 _writed:
                                    262 ; genReceive
                                    263 ;	User/st7565r_lcd.c: 67: ST7565_Write(dat,1);
                                    264 ; genIPush
      00BD2C 4B 01            [ 1]  265 	push	#0x01
                                    266 ; genSend
                                    267 ; genCall
      00BD2E CD BC BF         [ 4]  268 	call	_ST7565_Write
                                    269 ; genLabel
                                    270 ; peephole j30 removed unused label 00101$.
                                    271 ;	User/st7565r_lcd.c: 68: }
                                    272 ; genEndFunction
      00BD31 81               [ 4]  273 	ret
                                    274 ;	Total writed function size at codegen: 1 bytes.
                                    275 ;	User/st7565r_lcd.c: 71: void lcd_init(void)
                                    276 ; genLabel
                                    277 ;	-----------------------------------------
                                    278 ;	 function lcd_init
                                    279 ;	-----------------------------------------
                                    280 ;	Register assignment is optimal.
                                    281 ;	Stack space usage: 0 bytes.
      00BD32                        282 _lcd_init:
                                    283 ;	User/st7565r_lcd.c: 73: IO_ST7565_CS_0;
                                    284 ; genSend
      00BD32 A6 10            [ 1]  285 	ld	a, #0x10
                                    286 ; genSend
      00BD34 AE 50 05         [ 2]  287 	ldw	x, #0x5005
                                    288 ; genCall
      00BD37 CD CE 9F         [ 4]  289 	call	_GPIO_ResetBits
                                    290 ;	User/st7565r_lcd.c: 74: IO_ST7565_RST_0;
                                    291 ; genSend
      00BD3A A6 04            [ 1]  292 	ld	a, #0x04
                                    293 ; genSend
      00BD3C AE 50 05         [ 2]  294 	ldw	x, #0x5005
                                    295 ; genCall
      00BD3F CD CE 9F         [ 4]  296 	call	_GPIO_ResetBits
                                    297 ;	User/st7565r_lcd.c: 75: ST7565_IO_Delay(1000);
                                    298 ; genSend
      00BD42 AE 03 E8         [ 2]  299 	ldw	x, #0x03e8
                                    300 ; genCall
      00BD45 CD BC AF         [ 4]  301 	call	_ST7565_IO_Delay
                                    302 ;	User/st7565r_lcd.c: 76: IO_ST7565_RST_1;
                                    303 ; genSend
      00BD48 A6 04            [ 1]  304 	ld	a, #0x04
                                    305 ; genSend
      00BD4A AE 50 05         [ 2]  306 	ldw	x, #0x5005
                                    307 ; genCall
      00BD4D CD CE 96         [ 4]  308 	call	_GPIO_SetBits
                                    309 ;	User/st7565r_lcd.c: 77: ST7565_IO_Delay(1000);
                                    310 ; genSend
      00BD50 AE 03 E8         [ 2]  311 	ldw	x, #0x03e8
                                    312 ; genCall
      00BD53 CD BC AF         [ 4]  313 	call	_ST7565_IO_Delay
                                    314 ;	User/st7565r_lcd.c: 78: ST7565_Write(0xE2,0); //Soft Reset
                                    315 ; genIPush
      00BD56 4B 00            [ 1]  316 	push	#0x00
                                    317 ; genSend
      00BD58 A6 E2            [ 1]  318 	ld	a, #0xe2
                                    319 ; genCall
      00BD5A CD BC BF         [ 4]  320 	call	_ST7565_Write
                                    321 ;	User/st7565r_lcd.c: 79: ST7565_Write(0xA2,0); //Duty bias set  0xA2 is light 0xA3 is dark
                                    322 ; genIPush
      00BD5D 4B 00            [ 1]  323 	push	#0x00
                                    324 ; genSend
      00BD5F A6 A2            [ 1]  325 	ld	a, #0xa2
                                    326 ; genCall
      00BD61 CD BC BF         [ 4]  327 	call	_ST7565_Write
                                    328 ;	User/st7565r_lcd.c: 81: ST7565_Write(0xA0,0); //ADC select S0->S131(?????S1-S128)
                                    329 ; genIPush
      00BD64 4B 00            [ 1]  330 	push	#0x00
                                    331 ; genSend
      00BD66 A6 A0            [ 1]  332 	ld	a, #0xa0
                                    333 ; genCall
      00BD68 CD BC BF         [ 4]  334 	call	_ST7565_Write
                                    335 ;	User/st7565r_lcd.c: 82: ST7565_Write(0xC8,0); //com1 --> com64
                                    336 ; genIPush
      00BD6B 4B 00            [ 1]  337 	push	#0x00
                                    338 ; genSend
      00BD6D A6 C8            [ 1]  339 	ld	a, #0xc8
                                    340 ; genCall
      00BD6F CD BC BF         [ 4]  341 	call	_ST7565_Write
                                    342 ;	User/st7565r_lcd.c: 83: ST7565_Write(0x23,0); //V0 Voltage Regulator Internal Resistor Ratio Set 0x20~0x27
                                    343 ; genIPush
      00BD72 4B 00            [ 1]  344 	push	#0x00
                                    345 ; genSend
      00BD74 A6 23            [ 1]  346 	ld	a, #0x23
                                    347 ; genCall
      00BD76 CD BC BF         [ 4]  348 	call	_ST7565_Write
                                    349 ;	User/st7565r_lcd.c: 84: ST7565_IO_Delay(500);
                                    350 ; genSend
      00BD79 AE 01 F4         [ 2]  351 	ldw	x, #0x01f4
                                    352 ; genCall
      00BD7C CD BC AF         [ 4]  353 	call	_ST7565_IO_Delay
                                    354 ;	User/st7565r_lcd.c: 85: ST7565_Write(0x81,0); //V0 voltage set first cmd
                                    355 ; genIPush
      00BD7F 4B 00            [ 1]  356 	push	#0x00
                                    357 ; genSend
      00BD81 A6 81            [ 1]  358 	ld	a, #0x81
                                    359 ; genCall
      00BD83 CD BC BF         [ 4]  360 	call	_ST7565_Write
                                    361 ;	User/st7565r_lcd.c: 86: ST7565_Write(0x2f & 0x3F,0); //following V0 voltage set 0x00~0x3F
                                    362 ; genIPush
      00BD86 4B 00            [ 1]  363 	push	#0x00
                                    364 ; genSend
      00BD88 A6 2F            [ 1]  365 	ld	a, #0x2f
                                    366 ; genCall
      00BD8A CD BC BF         [ 4]  367 	call	_ST7565_Write
                                    368 ;	User/st7565r_lcd.c: 87: ST7565_IO_Delay(500);
                                    369 ; genSend
      00BD8D AE 01 F4         [ 2]  370 	ldw	x, #0x01f4
                                    371 ; genCall
      00BD90 CD BC AF         [ 4]  372 	call	_ST7565_IO_Delay
                                    373 ;	User/st7565r_lcd.c: 88: ST7565_Write(0xF8,0); //Booster Ratio Select Mode Set first cmd
                                    374 ; genIPush
      00BD93 4B 00            [ 1]  375 	push	#0x00
                                    376 ; genSend
      00BD95 A6 F8            [ 1]  377 	ld	a, #0xf8
                                    378 ; genCall
      00BD97 CD BC BF         [ 4]  379 	call	_ST7565_Write
                                    380 ;	User/st7565r_lcd.c: 89: ST7565_Write(0x00 & 0x03,0); //following Booset Ratio Register Set 0x00~0x03
                                    381 ; genIPush
      00BD9A 4B 00            [ 1]  382 	push	#0x00
                                    383 ; genSend
      00BD9C 4F               [ 1]  384 	clr	a
                                    385 ; genCall
      00BD9D CD BC BF         [ 4]  386 	call	_ST7565_Write
                                    387 ;	User/st7565r_lcd.c: 90: ST7565_IO_Delay(500);
                                    388 ; genSend
      00BDA0 AE 01 F4         [ 2]  389 	ldw	x, #0x01f4
                                    390 ; genCall
      00BDA3 CD BC AF         [ 4]  391 	call	_ST7565_IO_Delay
                                    392 ;	User/st7565r_lcd.c: 91: ST7565_Write(0x2F,0); //power control all on
                                    393 ; genIPush
      00BDA6 4B 00            [ 1]  394 	push	#0x00
                                    395 ; genSend
      00BDA8 A6 2F            [ 1]  396 	ld	a, #0x2f
                                    397 ; genCall
      00BDAA CD BC BF         [ 4]  398 	call	_ST7565_Write
                                    399 ;	User/st7565r_lcd.c: 92: ST7565_IO_Delay(500);
                                    400 ; genSend
      00BDAD AE 01 F4         [ 2]  401 	ldw	x, #0x01f4
                                    402 ; genCall
      00BDB0 CD BC AF         [ 4]  403 	call	_ST7565_IO_Delay
                                    404 ;	User/st7565r_lcd.c: 93: ST7565_Write(0x40 + 0x00,0); //0x40 + Display Start Line(0)
                                    405 ; genIPush
      00BDB3 4B 00            [ 1]  406 	push	#0x00
                                    407 ; genSend
      00BDB5 A6 40            [ 1]  408 	ld	a, #0x40
                                    409 ; genCall
      00BDB7 CD BC BF         [ 4]  410 	call	_ST7565_Write
                                    411 ;	User/st7565r_lcd.c: 94: clear_screen();
                                    412 ; genCall
      00BDBA CD BD ED         [ 4]  413 	call	_clear_screen
                                    414 ;	User/st7565r_lcd.c: 95: ST7565_Write(0xAF,0); //Display ON: 0xaf, OFF:0xae
                                    415 ; genIPush
      00BDBD 4B 00            [ 1]  416 	push	#0x00
                                    417 ; genSend
      00BDBF A6 AF            [ 1]  418 	ld	a, #0xaf
                                    419 ; genCall
      00BDC1 CD BC BF         [ 4]  420 	call	_ST7565_Write
                                    421 ;	User/st7565r_lcd.c: 97: show_pic_128x64();
                                    422 ; genCall
      00BDC4 CD BF D2         [ 4]  423 	call	_show_pic_128x64
                                    424 ;	User/st7565r_lcd.c: 98: LCD_BKLIGHT_1;//背光开
                                    425 ; genSend
      00BDC7 A6 02            [ 1]  426 	ld	a, #0x02
                                    427 ; genSend
      00BDC9 AE 50 05         [ 2]  428 	ldw	x, #0x5005
                                    429 ; genCall
                                    430 ; genLabel
                                    431 ; peephole j30 removed unused label 00101$.
                                    432 ;	User/st7565r_lcd.c: 100: }
                                    433 ; genEndFunction
      00BDCC CC CE 96         [ 2]  434 	jp	_GPIO_SetBits
                                    435 ; peephole 52 removed unreachable ret.
                                    436 ;	Total lcd_init function size at codegen: 1 bytes.
                                    437 ;	User/st7565r_lcd.c: 103: void lcd_address(uint8_t page,uint8_t column)
                                    438 ; genLabel
                                    439 ;	-----------------------------------------
                                    440 ;	 function lcd_address
                                    441 ;	-----------------------------------------
                                    442 ;	Register assignment is optimal.
                                    443 ;	Stack space usage: 0 bytes.
      00BDCF                        444 _lcd_address:
                                    445 ; genReceive
      00BDCF 97               [ 1]  446 	ld	xl, a
                                    447 ;	User/st7565r_lcd.c: 105: column=column-1; //我们平常所说的第 1 列，在 LCD 驱动 IC 里是第 0 列。所以在这里减去 1.
                                    448 ; genCast
                                    449 ; genAssign
                                    450 ; genMinus
      00BDD0 0A 03            [ 1]  451 	dec	(0x03, sp)
                                    452 ; peephole 16 applied dec on (0x03, sp) instead of a.
                                    453 ;	User/st7565r_lcd.c: 106: page=page-1;
                                    454 ; genCast
                                    455 ; genAssign
      00BDD2 9F               [ 1]  456 	ld	a, xl
                                    457 ; genMinus
      00BDD3 4A               [ 1]  458 	dec	a
                                    459 ;	User/st7565r_lcd.c: 107: writec(0xb0+page); //设置页地址。每页是 8 行。一个画面的 64 行被分成 8 个页。我们平常所说的第 1 页，在 LCD 驱动IC 里是第 0 页，所以在这里减去 1*/
                                    460 ; genCast
                                    461 ; genAssign
                                    462 ; genPlus
      00BDD4 AB B0            [ 1]  463 	add	a, #0xb0
                                    464 ; genSend
                                    465 ; genCall
      00BDD6 CD BD 26         [ 4]  466 	call	_writec
                                    467 ;	User/st7565r_lcd.c: 108: writec(((column>>4)&0x0f)+0x10); //设置列地址的高 4 位
                                    468 ; genRightShiftLiteral
      00BDD9 7B 03            [ 1]  469 	ld	a, (0x03, sp)
      00BDDB 4E               [ 1]  470 	swap	a
                                    471 ; genCast
                                    472 ; genAssign
                                    473 ; genAnd
      00BDDC A4 0F            [ 1]  474 	and	a, #15
                                    475 ; peephole 130 combined 'and-and' (0x0f, 0x0f) into 'and' (15).
                                    476 ; genPlus
      00BDDE AB 10            [ 1]  477 	add	a, #0x10
                                    478 ; genSend
                                    479 ; genCall
      00BDE0 CD BD 26         [ 4]  480 	call	_writec
                                    481 ;	User/st7565r_lcd.c: 109: writec(column&0x0f); //设置列地址的低 4 位
                                    482 ; genAssign
      00BDE3 7B 03            [ 1]  483 	ld	a, (0x03, sp)
                                    484 ; genAnd
      00BDE5 A4 0F            [ 1]  485 	and	a, #0x0f
                                    486 ; genSend
                                    487 ; genCall
      00BDE7 CD BD 26         [ 4]  488 	call	_writec
                                    489 ; genLabel
                                    490 ; peephole j30 removed unused label 00101$.
                                    491 ;	User/st7565r_lcd.c: 110: }
                                    492 ; genEndFunction
      00BDEA 85               [ 2]  493 	popw	x
      00BDEB 84               [ 1]  494 	pop	a
      00BDEC FC               [ 2]  495 	jp	(x)
                                    496 ;	Total lcd_address function size at codegen: 3 bytes.
                                    497 ;	User/st7565r_lcd.c: 112: void clear_screen(void)
                                    498 ; genLabel
                                    499 ;	-----------------------------------------
                                    500 ;	 function clear_screen
                                    501 ;	-----------------------------------------
                                    502 ;	Register assignment is optimal.
                                    503 ;	Stack space usage: 1 bytes.
      00BDED                        504 _clear_screen:
      00BDED 88               [ 1]  505 	push	a
                                    506 ;	User/st7565r_lcd.c: 116: for(i=0; i<8; i++)
                                    507 ; genAssign
      00BDEE 0F 01            [ 1]  508 	clr	(0x01, sp)
                                    509 ; genLabel
      00BDF0                        510 00105$:
                                    511 ;	User/st7565r_lcd.c: 118: lcd_address(1+i,1);
                                    512 ; genCast
                                    513 ; genAssign
      00BDF0 7B 01            [ 1]  514 	ld	a, (0x01, sp)
                                    515 ; genPlus
      00BDF2 4C               [ 1]  516 	inc	a
                                    517 ; genIPush
      00BDF3 4B 01            [ 1]  518 	push	#0x01
                                    519 ; genSend
                                    520 ; genCall
      00BDF5 CD BD CF         [ 4]  521 	call	_lcd_address
                                    522 ;	User/st7565r_lcd.c: 119: for(j=0; j<128; j++)
                                    523 ; genAssign
      00BDF8 4F               [ 1]  524 	clr	a
                                    525 ; genLabel
      00BDF9                        526 00103$:
                                    527 ;	User/st7565r_lcd.c: 121: writed(0x00);
                                    528 ; genSend
      00BDF9 88               [ 1]  529 	push	a
      00BDFA 4F               [ 1]  530 	clr	a
                                    531 ; genCall
      00BDFB CD BD 2C         [ 4]  532 	call	_writed
      00BDFE 84               [ 1]  533 	pop	a
                                    534 ;	User/st7565r_lcd.c: 119: for(j=0; j<128; j++)
                                    535 ; genPlus
      00BDFF 4C               [ 1]  536 	inc	a
                                    537 ; genCmp
                                    538 ; genCmpTnz
      00BE00 A1 80            [ 1]  539 	cp	a, #0x80
                                    540 ; peephole j5 changed absolute to relative unconditional jump.
      00BE02 25 F5            [ 1]  541 	jrc	00103$
                                    542 ; peephole j9 removed jra by using inverse jump logic
                                    543 ; peephole j30 removed unused label 00132$.
                                    544 ; skipping generated iCode
                                    545 ;	User/st7565r_lcd.c: 116: for(i=0; i<8; i++)
                                    546 ; genPlus
      00BE04 0C 01            [ 1]  547 	inc	(0x01, sp)
                                    548 ; genCmp
                                    549 ; genCmpTnz
      00BE06 7B 01            [ 1]  550 	ld	a, (0x01, sp)
      00BE08 A1 08            [ 1]  551 	cp	a, #0x08
                                    552 ; peephole j5 changed absolute to relative unconditional jump.
      00BE0A 25 E4            [ 1]  553 	jrc	00105$
                                    554 ; peephole j9 removed jra by using inverse jump logic
                                    555 ; peephole j30 removed unused label 00133$.
                                    556 ; skipping generated iCode
                                    557 ; genLabel
                                    558 ; peephole j30 removed unused label 00107$.
                                    559 ;	User/st7565r_lcd.c: 125: }
                                    560 ; genEndFunction
      00BE0C 84               [ 1]  561 	pop	a
      00BE0D 81               [ 4]  562 	ret
                                    563 ;	Total clear_screen function size at codegen: 2 bytes.
                                    564 ;	User/st7565r_lcd.c: 128: void show_str_8x12(uint16_t page,uint16_t column,uint8_t *text)
                                    565 ; genLabel
                                    566 ;	-----------------------------------------
                                    567 ;	 function show_str_8x12
                                    568 ;	-----------------------------------------
                                    569 ;	Register assignment might be sub-optimal.
                                    570 ;	Stack space usage: 9 bytes.
      00BE0E                        571 _show_str_8x12:
      00BE0E 52 09            [ 2]  572 	sub	sp, #9
                                    573 ; genReceive
      00BE10 1F 06            [ 2]  574 	ldw	(0x06, sp), x
                                    575 ;	User/st7565r_lcd.c: 130: uint16_t i=0,j,k,n;
                                    576 ; genAssign
      00BE12 5F               [ 1]  577 	clrw	x
      00BE13 1F 04            [ 2]  578 	ldw	(0x04, sp), x
                                    579 ;	User/st7565r_lcd.c: 132: while(text[i]>0x00)
                                    580 ; skipping iCode since result will be rematerialized
                                    581 ; genLabel
      00BE15                        582 00113$:
                                    583 ; genPlus
      00BE15 1E 0E            [ 2]  584 	ldw	x, (0x0e, sp)
      00BE17 72 FB 04         [ 2]  585 	addw	x, (0x04, sp)
                                    586 ; genPointerGet
      00BE1A F6               [ 1]  587 	ld	a, (x)
                                    588 ; genIfx
      00BE1B 6B 09            [ 1]  589 	ld	(0x09, sp), a
                                    590 ; peephole 31a removed redundant tnz.
      00BE1D 26 03            [ 1]  591 	jrne	00194$
      00BE1F CC BE C1         [ 2]  592 	jp	00120$
      00BE22                        593 00194$:
                                    594 ;	User/st7565r_lcd.c: 148: i++;
                                    595 ; genPlus
      00BE22 1E 04            [ 2]  596 	ldw	x, (0x04, sp)
      00BE24 5C               [ 1]  597 	incw	x
      00BE25 1F 01            [ 2]  598 	ldw	(0x01, sp), x
                                    599 ;	User/st7565r_lcd.c: 134: if((text[i]>=0x30)&&(text[i]<=0x56))
                                    600 ; genCmp
                                    601 ; genCmpTnz
                                    602 ; peephole j5 changed absolute to relative unconditional jump.
                                    603 ; peephole j9 removed jra by using inverse jump logic
                                    604 ; peephole j30 removed unused label 00195$.
                                    605 ; skipping generated iCode
                                    606 ; genCmp
                                    607 ; genCmpTnz
      00BE27 7B 09            [ 1]  608 	ld	a, (0x09, sp)
      00BE29 A1 30            [ 1]  609 	cp	a, #0x30
      00BE2B 25 0E            [ 1]  610 	jrc	00108$
                                    611 ; peephole 42 removed redundant load of a from (0x09, sp).
      00BE2D A1 56            [ 1]  612 	cp	a, #0x56
                                    613 ; peephole j5 changed absolute to relative unconditional jump.
      00BE2F 22 0A            [ 1]  614 	jrugt	00108$
                                    615 ; peephole j17 removed jp by using inverse jump logic
                                    616 ; peephole j30 removed unused label 00196$.
                                    617 ; skipping generated iCode
                                    618 ;	User/st7565r_lcd.c: 136: j=text[i]-0x30;
                                    619 ; genCast
                                    620 ; genAssign
                                    621 ; genMinus
      00BE31 7B 09            [ 1]  622 	ld	a, (0x09, sp)
      00BE33 A0 30            [ 1]  623 	sub	a, #0x30
      00BE35 6B 09            [ 1]  624 	ld	(0x09, sp), a
                                    625 ; genCast
                                    626 ; genAssign
      00BE37 0F 08            [ 1]  627 	clr	(0x08, sp)
                                    628 ; genGoto
      00BE39 20 20            [ 2]  629 	jra	00130$
                                    630 ; peephole j5 changed absolute to relative unconditional jump.
                                    631 ; genLabel
      00BE3B                        632 00108$:
                                    633 ;	User/st7565r_lcd.c: 138: else if(text[i]==0x20)//空格,
                                    634 ; genCmpEQorNE
      00BE3B 7B 09            [ 1]  635 	ld	a, (0x09, sp)
      00BE3D A1 20            [ 1]  636 	cp	a, #0x20
                                    637 ; peephole j5 changed absolute to relative unconditional jump.
                                    638 ; peephole j10 removed jra by using inverse jump logic
                                    639 ; peephole j30 removed unused label 00198$.
                                    640 ; peephole j5 changed absolute to relative unconditional jump.
      00BE3F 26 07            [ 1]  641 	jrne	00105$
                                    642 ; peephole j7 removed jra by using inverse jump logic
                                    643 ; peephole j30 removed unused label 00199$.
                                    644 ; skipping generated iCode
                                    645 ;	User/st7565r_lcd.c: 140: j=16;
                                    646 ; genAssign
      00BE41 AE 00 10         [ 2]  647 	ldw	x, #0x0010
      00BE44 1F 08            [ 2]  648 	ldw	(0x08, sp), x
                                    649 ; genGoto
      00BE46 20 13            [ 2]  650 	jra	00130$
                                    651 ; peephole j5 changed absolute to relative unconditional jump.
                                    652 ; genLabel
      00BE48                        653 00105$:
                                    654 ;	User/st7565r_lcd.c: 142: else if(text[i]==0x2d)
                                    655 ; genCmpEQorNE
      00BE48 7B 09            [ 1]  656 	ld	a, (0x09, sp)
      00BE4A A1 2D            [ 1]  657 	cp	a, #0x2d
                                    658 ; peephole j5 changed absolute to relative unconditional jump.
                                    659 ; peephole j10 removed jra by using inverse jump logic
                                    660 ; peephole j30 removed unused label 00201$.
                                    661 ; peephole j5 changed absolute to relative unconditional jump.
      00BE4C 26 07            [ 1]  662 	jrne	00102$
                                    663 ; peephole j7 removed jra by using inverse jump logic
                                    664 ; peephole j30 removed unused label 00202$.
                                    665 ; skipping generated iCode
                                    666 ;	User/st7565r_lcd.c: 144: j=15;
                                    667 ; genAssign
      00BE4E AE 00 0F         [ 2]  668 	ldw	x, #0x000f
      00BE51 1F 08            [ 2]  669 	ldw	(0x08, sp), x
                                    670 ; genGoto
      00BE53 20 06            [ 2]  671 	jra	00130$
                                    672 ; peephole j5 changed absolute to relative unconditional jump.
                                    673 ; genLabel
      00BE55                        674 00102$:
                                    675 ;	User/st7565r_lcd.c: 148: i++;
                                    676 ; genAssign
      00BE55 16 01            [ 2]  677 	ldw	y, (0x01, sp)
      00BE57 17 04            [ 2]  678 	ldw	(0x04, sp), y
                                    679 ;	User/st7565r_lcd.c: 149: continue;
                                    680 ; genGoto
      00BE59 20 BA            [ 2]  681 	jra	00113$
                                    682 ; peephole j5 changed absolute to relative unconditional jump.
                                    683 ;	User/st7565r_lcd.c: 152: for(n=0; n<2; n++)
                                    684 ; genLabel
      00BE5B                        685 00130$:
                                    686 ; genLeftShiftLiteral
      00BE5B 08 09            [ 1]  687 	sll	(0x09, sp)
      00BE5D 09 08            [ 1]  688 	rlc	(0x08, sp)
      00BE5F 08 09            [ 1]  689 	sll	(0x09, sp)
      00BE61 09 08            [ 1]  690 	rlc	(0x08, sp)
      00BE63 08 09            [ 1]  691 	sll	(0x09, sp)
      00BE65 09 08            [ 1]  692 	rlc	(0x08, sp)
      00BE67 08 09            [ 1]  693 	sll	(0x09, sp)
      00BE69 09 08            [ 1]  694 	rlc	(0x08, sp)
                                    695 ; genPlus
      00BE6B 1E 08            [ 2]  696 	ldw	x, (0x08, sp)
      00BE6D 1C 84 2A         [ 2]  697 	addw	x, #(_char_8x12+0)
      00BE70 1F 03            [ 2]  698 	ldw	(0x03, sp), x
                                    699 ; genAssign
      00BE72 5F               [ 1]  700 	clrw	x
      00BE73 1F 08            [ 2]  701 	ldw	(0x08, sp), x
                                    702 ; genLabel
      00BE75                        703 00118$:
                                    704 ;	User/st7565r_lcd.c: 154: lcd_address(page+n,column);
                                    705 ; genCast
                                    706 ; genAssign
      00BE75 7B 0D            [ 1]  707 	ld	a, (0x0d, sp)
      00BE77 97               [ 1]  708 	ld	xl, a
                                    709 ; genCast
                                    710 ; genAssign
      00BE78 7B 07            [ 1]  711 	ld	a, (0x07, sp)
                                    712 ; genCast
                                    713 ; genAssign
      00BE7A 88               [ 1]  714 	push	a
      00BE7B 7B 0A            [ 1]  715 	ld	a, (0x0a, sp)
      00BE7D 6B 06            [ 1]  716 	ld	(0x06, sp), a
      00BE7F 84               [ 1]  717 	pop	a
                                    718 ; genPlus
      00BE80 1B 05            [ 1]  719 	add	a, (0x05, sp)
                                    720 ; genIPush
      00BE82 89               [ 2]  721 	pushw	x
      00BE83 5B 01            [ 2]  722 	addw	sp, #1
                                    723 ; genSend
                                    724 ; genCall
      00BE85 CD BD CF         [ 4]  725 	call	_lcd_address
                                    726 ;	User/st7565r_lcd.c: 155: for(k=0; k<8; k++)
                                    727 ; genAssign
      00BE88 90 5F            [ 1]  728 	clrw	y
                                    729 ; genLabel
      00BE8A                        730 00116$:
                                    731 ;	User/st7565r_lcd.c: 157: writed(char_8x12[j][k+8*n]);/*显示ASCII 字到 LCD 上，y 为页地址，x 为列地址，最后为数据*/
                                    732 ; genCast
                                    733 ; genAssign
      00BE8A 93               [ 1]  734 	ldw	x, y
                                    735 ; genLeftShiftLiteral
      00BE8B 7B 05            [ 1]  736 	ld	a, (0x05, sp)
      00BE8D 48               [ 1]  737 	sll	a
      00BE8E 48               [ 1]  738 	sll	a
      00BE8F 48               [ 1]  739 	sll	a
                                    740 ; genCast
                                    741 ; genAssign
                                    742 ; genPlus
      00BE90 89               [ 2]  743 	pushw	x
      00BE91 1B 02            [ 1]  744 	add	a, (2, sp)
      00BE93 85               [ 2]  745 	popw	x
                                    746 ; genPlus
      00BE94 5F               [ 1]  747 	clrw	x
      00BE95 97               [ 1]  748 	ld	xl, a
      00BE96 72 FB 03         [ 2]  749 	addw	x, (0x03, sp)
                                    750 ; genPointerGet
      00BE99 F6               [ 1]  751 	ld	a, (x)
                                    752 ; genSend
      00BE9A 90 89            [ 2]  753 	pushw	y
                                    754 ; genCall
      00BE9C CD BD 2C         [ 4]  755 	call	_writed
      00BE9F 90 85            [ 2]  756 	popw	y
                                    757 ;	User/st7565r_lcd.c: 155: for(k=0; k<8; k++)
                                    758 ; genPlus
      00BEA1 90 5C            [ 1]  759 	incw	y
                                    760 ; genCast
                                    761 ; genAssign
      00BEA3 93               [ 1]  762 	ldw	x, y
                                    763 ; genCmp
                                    764 ; genCmpTnz
      00BEA4 A3 00 08         [ 2]  765 	cpw	x, #0x0008
                                    766 ; peephole j5 changed absolute to relative unconditional jump.
      00BEA7 25 E1            [ 1]  767 	jrc	00116$
                                    768 ; peephole j9 removed jra by using inverse jump logic
                                    769 ; peephole j30 removed unused label 00203$.
                                    770 ; skipping generated iCode
                                    771 ;	User/st7565r_lcd.c: 152: for(n=0; n<2; n++)
                                    772 ; genPlus
      00BEA9 1E 08            [ 2]  773 	ldw	x, (0x08, sp)
      00BEAB 5C               [ 1]  774 	incw	x
                                    775 ; peephole j30 removed unused label 00204$.
                                    776 ; genCast
                                    777 ; genAssign
      00BEAC 1F 08            [ 2]  778 	ldw	(0x08, sp), x
                                    779 ; peephole 4w removed redundant load from (0x08, sp) into x.
                                    780 ; genCmp
                                    781 ; genCmpTnz
      00BEAE A3 00 02         [ 2]  782 	cpw	x, #0x0002
                                    783 ; peephole j5 changed absolute to relative unconditional jump.
      00BEB1 25 C2            [ 1]  784 	jrc	00118$
                                    785 ; peephole j9 removed jra by using inverse jump logic
                                    786 ; peephole j30 removed unused label 00205$.
                                    787 ; skipping generated iCode
                                    788 ;	User/st7565r_lcd.c: 160: i++;
                                    789 ; genAssign
      00BEB3 16 01            [ 2]  790 	ldw	y, (0x01, sp)
      00BEB5 17 04            [ 2]  791 	ldw	(0x04, sp), y
                                    792 ;	User/st7565r_lcd.c: 161: column+=8;
                                    793 ; genCast
                                    794 ; genAssign
      00BEB7 1E 0C            [ 2]  795 	ldw	x, (0x0c, sp)
                                    796 ; genPlus
      00BEB9 1C 00 08         [ 2]  797 	addw	x, #0x0008
                                    798 ; genCast
                                    799 ; genAssign
                                    800 ; genAssign
      00BEBC 1F 0C            [ 2]  801 	ldw	(0x0c, sp), x
                                    802 ; genGoto
      00BEBE CC BE 15         [ 2]  803 	jp	00113$
                                    804 ; genLabel
      00BEC1                        805 00120$:
                                    806 ;	User/st7565r_lcd.c: 164: }
                                    807 ; genEndFunction
      00BEC1 1E 0A            [ 2]  808 	ldw	x, (10, sp)
      00BEC3 5B 0F            [ 2]  809 	addw	sp, #15
      00BEC5 FC               [ 2]  810 	jp	(x)
                                    811 ;	Total show_str_8x12 function size at codegen: 5 bytes.
                                    812 ;	User/st7565r_lcd.c: 167: void show_str_7x8(uint16_t page,uint16_t column,uint8_t *text)
                                    813 ; genLabel
                                    814 ;	-----------------------------------------
                                    815 ;	 function show_str_7x8
                                    816 ;	-----------------------------------------
                                    817 ;	Register assignment might be sub-optimal.
                                    818 ;	Stack space usage: 8 bytes.
      00BEC6                        819 _show_str_7x8:
      00BEC6 52 08            [ 2]  820 	sub	sp, #8
                                    821 ; genReceive
      00BEC8 1F 05            [ 2]  822 	ldw	(0x05, sp), x
                                    823 ;	User/st7565r_lcd.c: 169: uint16_t i=0,j,k;
                                    824 ; genAssign
      00BECA 5F               [ 1]  825 	clrw	x
      00BECB 1F 03            [ 2]  826 	ldw	(0x03, sp), x
                                    827 ;	User/st7565r_lcd.c: 171: while(text[i]>0x00)
                                    828 ; skipping iCode since result will be rematerialized
                                    829 ; genLabel
      00BECD                        830 00109$:
                                    831 ; genPlus
      00BECD 1E 0D            [ 2]  832 	ldw	x, (0x0d, sp)
      00BECF 72 FB 03         [ 2]  833 	addw	x, (0x03, sp)
                                    834 ; genPointerGet
      00BED2 F6               [ 1]  835 	ld	a, (x)
                                    836 ; genIfx
      00BED3 6B 08            [ 1]  837 	ld	(0x08, sp), a
                                    838 ; peephole 31a removed redundant tnz.
                                    839 ; peephole j5 changed absolute to relative unconditional jump.
      00BED5 27 6D            [ 1]  840 	jreq	00114$
                                    841 ; peephole j10 removed jra by using inverse jump logic
                                    842 ; peephole j30 removed unused label 00166$.
                                    843 ;	User/st7565r_lcd.c: 183: i++;
                                    844 ; genPlus
      00BED7 1E 03            [ 2]  845 	ldw	x, (0x03, sp)
      00BED9 5C               [ 1]  846 	incw	x
      00BEDA 1F 01            [ 2]  847 	ldw	(0x01, sp), x
                                    848 ;	User/st7565r_lcd.c: 173: if((text[i]>=0x30)&&(text[i]<=0x7b))
                                    849 ; genCmp
                                    850 ; genCmpTnz
                                    851 ; peephole j5 changed absolute to relative unconditional jump.
                                    852 ; peephole j9 removed jra by using inverse jump logic
                                    853 ; peephole j30 removed unused label 00167$.
                                    854 ; skipping generated iCode
                                    855 ; genCmp
                                    856 ; genCmpTnz
      00BEDC 7B 08            [ 1]  857 	ld	a, (0x08, sp)
      00BEDE A1 30            [ 1]  858 	cp	a, #0x30
      00BEE0 25 0E            [ 1]  859 	jrc	00105$
                                    860 ; peephole 42 removed redundant load of a from (0x08, sp).
      00BEE2 A1 7B            [ 1]  861 	cp	a, #0x7b
                                    862 ; peephole j5 changed absolute to relative unconditional jump.
      00BEE4 22 0A            [ 1]  863 	jrugt	00105$
                                    864 ; peephole j17 removed jp by using inverse jump logic
                                    865 ; peephole j30 removed unused label 00168$.
                                    866 ; skipping generated iCode
                                    867 ;	User/st7565r_lcd.c: 175: j=text[i]-0x30;
                                    868 ; genCast
                                    869 ; genAssign
                                    870 ; genMinus
      00BEE6 7B 08            [ 1]  871 	ld	a, (0x08, sp)
      00BEE8 A0 30            [ 1]  872 	sub	a, #0x30
      00BEEA 6B 08            [ 1]  873 	ld	(0x08, sp), a
                                    874 ; genCast
                                    875 ; genAssign
      00BEEC 0F 07            [ 1]  876 	clr	(0x07, sp)
                                    877 ; genGoto
      00BEEE 20 13            [ 2]  878 	jra	00106$
                                    879 ; peephole j5 changed absolute to relative unconditional jump.
                                    880 ; genLabel
      00BEF0                        881 00105$:
                                    882 ;	User/st7565r_lcd.c: 177: else if(text[i]==0x20)//' '空格,
                                    883 ; genCmpEQorNE
      00BEF0 7B 08            [ 1]  884 	ld	a, (0x08, sp)
      00BEF2 A1 20            [ 1]  885 	cp	a, #0x20
                                    886 ; peephole j5 changed absolute to relative unconditional jump.
                                    887 ; peephole j10 removed jra by using inverse jump logic
                                    888 ; peephole j30 removed unused label 00170$.
                                    889 ; peephole j5 changed absolute to relative unconditional jump.
      00BEF4 26 07            [ 1]  890 	jrne	00102$
                                    891 ; peephole j7 removed jra by using inverse jump logic
                                    892 ; peephole j30 removed unused label 00171$.
                                    893 ; skipping generated iCode
                                    894 ;	User/st7565r_lcd.c: 179: j=16;
                                    895 ; genAssign
      00BEF6 AE 00 10         [ 2]  896 	ldw	x, #0x0010
      00BEF9 1F 07            [ 2]  897 	ldw	(0x07, sp), x
                                    898 ; genGoto
      00BEFB 20 06            [ 2]  899 	jra	00106$
                                    900 ; peephole j5 changed absolute to relative unconditional jump.
                                    901 ; genLabel
      00BEFD                        902 00102$:
                                    903 ;	User/st7565r_lcd.c: 183: i++;
                                    904 ; genAssign
      00BEFD 16 01            [ 2]  905 	ldw	y, (0x01, sp)
      00BEFF 17 03            [ 2]  906 	ldw	(0x03, sp), y
                                    907 ;	User/st7565r_lcd.c: 184: continue;
                                    908 ; genGoto
      00BF01 20 CA            [ 2]  909 	jra	00109$
                                    910 ; peephole j5 changed absolute to relative unconditional jump.
                                    911 ; genLabel
      00BF03                        912 00106$:
                                    913 ;	User/st7565r_lcd.c: 187: lcd_address(page,column);
                                    914 ; genCast
                                    915 ; genAssign
      00BF03 7B 0C            [ 1]  916 	ld	a, (0x0c, sp)
      00BF05 97               [ 1]  917 	ld	xl, a
                                    918 ; genCast
                                    919 ; genAssign
      00BF06 7B 06            [ 1]  920 	ld	a, (0x06, sp)
                                    921 ; genIPush
      00BF08 89               [ 2]  922 	pushw	x
      00BF09 5B 01            [ 2]  923 	addw	sp, #1
                                    924 ; genSend
                                    925 ; genCall
      00BF0B CD BD CF         [ 4]  926 	call	_lcd_address
                                    927 ;	User/st7565r_lcd.c: 188: for(k=0; k<8; k++)
                                    928 ; genLeftShiftLiteral
      00BF0E 08 08            [ 1]  929 	sll	(0x08, sp)
      00BF10 09 07            [ 1]  930 	rlc	(0x07, sp)
      00BF12 08 08            [ 1]  931 	sll	(0x08, sp)
      00BF14 09 07            [ 1]  932 	rlc	(0x07, sp)
      00BF16 08 08            [ 1]  933 	sll	(0x08, sp)
      00BF18 09 07            [ 1]  934 	rlc	(0x07, sp)
                                    935 ; genPlus
      00BF1A 1E 07            [ 2]  936 	ldw	x, (0x07, sp)
      00BF1C 1C 89 B2         [ 2]  937 	addw	x, #(_char_7x8+0)
      00BF1F 1F 03            [ 2]  938 	ldw	(0x03, sp), x
                                    939 ; genAssign
      00BF21 5F               [ 1]  940 	clrw	x
      00BF22 1F 07            [ 2]  941 	ldw	(0x07, sp), x
                                    942 ; genLabel
      00BF24                        943 00112$:
                                    944 ;	User/st7565r_lcd.c: 190: writed(char_7x8[j][k]);/*显示ASCII 字到 LCD 上，y 为页地址，x 为列地址，最后为数据*/
                                    945 ; genPlus
      00BF24 1E 03            [ 2]  946 	ldw	x, (0x03, sp)
      00BF26 72 FB 07         [ 2]  947 	addw	x, (0x07, sp)
                                    948 ; genPointerGet
      00BF29 F6               [ 1]  949 	ld	a, (x)
                                    950 ; genSend
                                    951 ; genCall
      00BF2A CD BD 2C         [ 4]  952 	call	_writed
                                    953 ;	User/st7565r_lcd.c: 188: for(k=0; k<8; k++)
                                    954 ; genPlus
      00BF2D 1E 07            [ 2]  955 	ldw	x, (0x07, sp)
      00BF2F 5C               [ 1]  956 	incw	x
                                    957 ; peephole j30 removed unused label 00172$.
                                    958 ; genCast
                                    959 ; genAssign
      00BF30 1F 07            [ 2]  960 	ldw	(0x07, sp), x
                                    961 ; peephole 4w removed redundant load from (0x07, sp) into x.
                                    962 ; genCmp
                                    963 ; genCmpTnz
      00BF32 A3 00 08         [ 2]  964 	cpw	x, #0x0008
                                    965 ; peephole j5 changed absolute to relative unconditional jump.
      00BF35 25 ED            [ 1]  966 	jrc	00112$
                                    967 ; peephole j9 removed jra by using inverse jump logic
                                    968 ; peephole j30 removed unused label 00173$.
                                    969 ; skipping generated iCode
                                    970 ;	User/st7565r_lcd.c: 192: i++;
                                    971 ; genAssign
      00BF37 16 01            [ 2]  972 	ldw	y, (0x01, sp)
      00BF39 17 03            [ 2]  973 	ldw	(0x03, sp), y
                                    974 ;	User/st7565r_lcd.c: 193: column+=8;//横
                                    975 ; genCast
                                    976 ; genAssign
      00BF3B 1E 0B            [ 2]  977 	ldw	x, (0x0b, sp)
                                    978 ; genPlus
      00BF3D 1C 00 08         [ 2]  979 	addw	x, #0x0008
                                    980 ; genCast
                                    981 ; genAssign
                                    982 ; genAssign
      00BF40 1F 0B            [ 2]  983 	ldw	(0x0b, sp), x
                                    984 ; genGoto
      00BF42 20 89            [ 2]  985 	jra	00109$
                                    986 ; peephole j5 changed absolute to relative unconditional jump.
                                    987 ; genLabel
      00BF44                        988 00114$:
                                    989 ;	User/st7565r_lcd.c: 195: }
                                    990 ; genEndFunction
      00BF44 1E 09            [ 2]  991 	ldw	x, (9, sp)
      00BF46 5B 0E            [ 2]  992 	addw	sp, #14
      00BF48 FC               [ 2]  993 	jp	(x)
                                    994 ;	Total show_str_7x8 function size at codegen: 5 bytes.
                                    995 ;	User/st7565r_lcd.c: 197: void show_hz_12x12(uint16_t page,uint16_t column,uint8_t *text)
                                    996 ; genLabel
                                    997 ;	-----------------------------------------
                                    998 ;	 function show_hz_12x12
                                    999 ;	-----------------------------------------
                                   1000 ;	Register assignment might be sub-optimal.
                                   1001 ;	Stack space usage: 11 bytes.
      00BF49                       1002 _show_hz_12x12:
      00BF49 52 0B            [ 2] 1003 	sub	sp, #11
                                   1004 ; genReceive
      00BF4B 1F 06            [ 2] 1005 	ldw	(0x06, sp), x
                                   1006 ;	User/st7565r_lcd.c: 199: uint16_t i=0,j,k,n;
                                   1007 ; genAssign
      00BF4D 90 5F            [ 1] 1008 	clrw	y
                                   1009 ;	User/st7565r_lcd.c: 201: while(text[i]>0x00)
                                   1010 ; skipping iCode since result will be rematerialized
                                   1011 ; genLabel
      00BF4F                       1012 00107$:
                                   1013 ; genPlus
      00BF4F 93               [ 1] 1014 	ldw	x, y
      00BF50 72 FB 10         [ 2] 1015 	addw	x, (0x10, sp)
                                   1016 ; genPointerGet
      00BF53 F6               [ 1] 1017 	ld	a, (x)
                                   1018 ; genIfx
      00BF54 6B 0B            [ 1] 1019 	ld	(0x0b, sp), a
                                   1020 ; peephole 31a removed redundant tnz.
                                   1021 ; peephole j5 changed absolute to relative unconditional jump.
      00BF56 27 75            [ 1] 1022 	jreq	00114$
                                   1023 ; peephole j10 removed jra by using inverse jump logic
                                   1024 ; peephole j30 removed unused label 00174$.
                                   1025 ;	User/st7565r_lcd.c: 214: i++;
                                   1026 ; genPlus
      00BF58 93               [ 1] 1027 	ldw	x, y
      00BF59 5C               [ 1] 1028 	incw	x
      00BF5A 1F 01            [ 2] 1029 	ldw	(0x01, sp), x
                                   1030 ;	User/st7565r_lcd.c: 203: if((text[i]>=0x41)&&(text[i]<=0x82))
                                   1031 ; genCmp
                                   1032 ; genCmpTnz
                                   1033 ; peephole j5 changed absolute to relative unconditional jump.
                                   1034 ; peephole j9 removed jra by using inverse jump logic
                                   1035 ; peephole j30 removed unused label 00175$.
                                   1036 ; skipping generated iCode
                                   1037 ; genCmp
                                   1038 ; genCmpTnz
      00BF5C 7B 0B            [ 1] 1039 	ld	a, (0x0b, sp)
      00BF5E A1 41            [ 1] 1040 	cp	a, #0x41
      00BF60 25 67            [ 1] 1041 	jrc	00104$
                                   1042 ; peephole 42 removed redundant load of a from (0x0b, sp).
      00BF62 A1 82            [ 1] 1043 	cp	a, #0x82
                                   1044 ; peephole j5 changed absolute to relative unconditional jump.
      00BF64 22 63            [ 1] 1045 	jrugt	00104$
                                   1046 ; peephole j17 removed jp by using inverse jump logic
                                   1047 ; peephole j30 removed unused label 00176$.
                                   1048 ; skipping generated iCode
                                   1049 ;	User/st7565r_lcd.c: 205: j=text[i]-0x41;
                                   1050 ; genCast
                                   1051 ; genAssign
      00BF66 7B 0B            [ 1] 1052 	ld	a, (0x0b, sp)
                                   1053 ; genMinus
      00BF68 A0 41            [ 1] 1054 	sub	a, #0x41
                                   1055 ; genCast
                                   1056 ; genAssign
      00BF6A 5F               [ 1] 1057 	clrw	x
                                   1058 ;	User/st7565r_lcd.c: 206: for(n=0; n<2; n++)
                                   1059 ; genMult
                                   1060 ; genMultLit
      00BF6B 97               [ 1] 1061 	ld	xl, a
      00BF6C 89               [ 2] 1062 	pushw	x
      00BF6D 58               [ 2] 1063 	sllw	x
      00BF6E 72 FB 01         [ 2] 1064 	addw	x, (1, sp)
      00BF71 58               [ 2] 1065 	sllw	x
      00BF72 58               [ 2] 1066 	sllw	x
      00BF73 5B 02            [ 2] 1067 	addw	sp, #2
                                   1068 ; genPlus
      00BF75 1C 86 9A         [ 2] 1069 	addw	x, #(_hz_12x12+0)
      00BF78 1F 03            [ 2] 1070 	ldw	(0x03, sp), x
                                   1071 ; genAssign
      00BF7A 5F               [ 1] 1072 	clrw	x
      00BF7B 1F 08            [ 2] 1073 	ldw	(0x08, sp), x
                                   1074 ; genLabel
      00BF7D                       1075 00112$:
                                   1076 ;	User/st7565r_lcd.c: 208: lcd_address(page+n,column);
                                   1077 ; genCast
                                   1078 ; genAssign
      00BF7D 7B 0F            [ 1] 1079 	ld	a, (0x0f, sp)
      00BF7F 97               [ 1] 1080 	ld	xl, a
                                   1081 ; genCast
                                   1082 ; genAssign
      00BF80 7B 07            [ 1] 1083 	ld	a, (0x07, sp)
                                   1084 ; genCast
                                   1085 ; genAssign
      00BF82 88               [ 1] 1086 	push	a
      00BF83 7B 0A            [ 1] 1087 	ld	a, (0x0a, sp)
      00BF85 6B 06            [ 1] 1088 	ld	(0x06, sp), a
      00BF87 84               [ 1] 1089 	pop	a
                                   1090 ; genPlus
      00BF88 1B 05            [ 1] 1091 	add	a, (0x05, sp)
                                   1092 ; genIPush
      00BF8A 89               [ 2] 1093 	pushw	x
      00BF8B 5B 01            [ 2] 1094 	addw	sp, #1
                                   1095 ; genSend
                                   1096 ; genCall
      00BF8D CD BD CF         [ 4] 1097 	call	_lcd_address
                                   1098 ;	User/st7565r_lcd.c: 209: for(k=0; k<12; k++)
                                   1099 ; genAssign
      00BF90 5F               [ 1] 1100 	clrw	x
      00BF91 1F 0A            [ 2] 1101 	ldw	(0x0a, sp), x
                                   1102 ; genLabel
      00BF93                       1103 00110$:
                                   1104 ;	User/st7565r_lcd.c: 211: writed(hz_12x12[j][k+12*n]);/*显示ASCII 字到 LCD 上，y 为页地址，x 为列地址，最后为数据*/
                                   1105 ; genCast
                                   1106 ; genAssign
      00BF93 7B 0B            [ 1] 1107 	ld	a, (0x0b, sp)
                                   1108 ; genMult
      00BF95 88               [ 1] 1109 	push	a
      00BF96 7B 06            [ 1] 1110 	ld	a, (0x06, sp)
      00BF98 97               [ 1] 1111 	ld	xl, a
      00BF99 A6 0C            [ 1] 1112 	ld	a, #0x0c
      00BF9B 42               [ 4] 1113 	mul	x, a
      00BF9C 84               [ 1] 1114 	pop	a
                                   1115 ; genCast
                                   1116 ; genAssign
                                   1117 ; genPlus
      00BF9D 89               [ 2] 1118 	pushw	x
      00BF9E 1B 02            [ 1] 1119 	add	a, (2, sp)
      00BFA0 85               [ 2] 1120 	popw	x
                                   1121 ; genPlus
      00BFA1 5F               [ 1] 1122 	clrw	x
      00BFA2 97               [ 1] 1123 	ld	xl, a
      00BFA3 72 FB 03         [ 2] 1124 	addw	x, (0x03, sp)
                                   1125 ; genPointerGet
      00BFA6 F6               [ 1] 1126 	ld	a, (x)
                                   1127 ; genSend
                                   1128 ; genCall
      00BFA7 CD BD 2C         [ 4] 1129 	call	_writed
                                   1130 ;	User/st7565r_lcd.c: 209: for(k=0; k<12; k++)
                                   1131 ; genPlus
      00BFAA 1E 0A            [ 2] 1132 	ldw	x, (0x0a, sp)
      00BFAC 5C               [ 1] 1133 	incw	x
                                   1134 ; peephole j30 removed unused label 00177$.
                                   1135 ; genCast
                                   1136 ; genAssign
      00BFAD 1F 0A            [ 2] 1137 	ldw	(0x0a, sp), x
                                   1138 ; peephole 4w removed redundant load from (0x0a, sp) into x.
                                   1139 ; genCmp
                                   1140 ; genCmpTnz
      00BFAF A3 00 0C         [ 2] 1141 	cpw	x, #0x000c
                                   1142 ; peephole j5 changed absolute to relative unconditional jump.
      00BFB2 25 DF            [ 1] 1143 	jrc	00110$
                                   1144 ; peephole j9 removed jra by using inverse jump logic
                                   1145 ; peephole j30 removed unused label 00178$.
                                   1146 ; skipping generated iCode
                                   1147 ;	User/st7565r_lcd.c: 206: for(n=0; n<2; n++)
                                   1148 ; genPlus
      00BFB4 1E 08            [ 2] 1149 	ldw	x, (0x08, sp)
      00BFB6 5C               [ 1] 1150 	incw	x
                                   1151 ; peephole j30 removed unused label 00179$.
                                   1152 ; genCast
                                   1153 ; genAssign
      00BFB7 1F 08            [ 2] 1154 	ldw	(0x08, sp), x
                                   1155 ; peephole 4w removed redundant load from (0x08, sp) into x.
                                   1156 ; genCmp
                                   1157 ; genCmpTnz
      00BFB9 A3 00 02         [ 2] 1158 	cpw	x, #0x0002
                                   1159 ; peephole j5 changed absolute to relative unconditional jump.
      00BFBC 25 BF            [ 1] 1160 	jrc	00112$
                                   1161 ; peephole j9 removed jra by using inverse jump logic
                                   1162 ; peephole j30 removed unused label 00180$.
                                   1163 ; skipping generated iCode
                                   1164 ;	User/st7565r_lcd.c: 214: i++;
                                   1165 ; genAssign
      00BFBE 16 01            [ 2] 1166 	ldw	y, (0x01, sp)
                                   1167 ;	User/st7565r_lcd.c: 215: column+=12;
                                   1168 ; genCast
                                   1169 ; genAssign
      00BFC0 1E 0E            [ 2] 1170 	ldw	x, (0x0e, sp)
                                   1171 ; genPlus
      00BFC2 1C 00 0C         [ 2] 1172 	addw	x, #0x000c
                                   1173 ; genCast
                                   1174 ; genAssign
                                   1175 ; genAssign
      00BFC5 1F 0E            [ 2] 1176 	ldw	(0x0e, sp), x
                                   1177 ; genGoto
      00BFC7 20 86            [ 2] 1178 	jra	00107$
                                   1179 ; peephole j5 changed absolute to relative unconditional jump.
                                   1180 ; genLabel
      00BFC9                       1181 00104$:
                                   1182 ;	User/st7565r_lcd.c: 218: i++;
                                   1183 ; genAssign
      00BFC9 16 01            [ 2] 1184 	ldw	y, (0x01, sp)
                                   1185 ; genGoto
      00BFCB 20 82            [ 2] 1186 	jra	00107$
                                   1187 ; peephole j5 changed absolute to relative unconditional jump.
                                   1188 ; genLabel
      00BFCD                       1189 00114$:
                                   1190 ;	User/st7565r_lcd.c: 221: }
                                   1191 ; genEndFunction
      00BFCD 1E 0C            [ 2] 1192 	ldw	x, (12, sp)
      00BFCF 5B 11            [ 2] 1193 	addw	sp, #17
      00BFD1 FC               [ 2] 1194 	jp	(x)
                                   1195 ;	Total show_hz_12x12 function size at codegen: 5 bytes.
                                   1196 ;	User/st7565r_lcd.c: 225: void show_pic_128x64(void)
                                   1197 ; genLabel
                                   1198 ;	-----------------------------------------
                                   1199 ;	 function show_pic_128x64
                                   1200 ;	-----------------------------------------
                                   1201 ;	Register assignment might be sub-optimal.
                                   1202 ;	Stack space usage: 4 bytes.
      00BFD2                       1203 _show_pic_128x64:
      00BFD2 52 04            [ 2] 1204 	sub	sp, #4
                                   1205 ;	User/st7565r_lcd.c: 228: uint16_t k=16;
                                   1206 ; genAssign
      00BFD4 AE 00 10         [ 2] 1207 	ldw	x, #0x0010
      00BFD7 1F 01            [ 2] 1208 	ldw	(0x01, sp), x
                                   1209 ;	User/st7565r_lcd.c: 230: for(j=1; j<=8; j++)
                                   1210 ; skipping iCode since result will be rematerialized
                                   1211 ; genAssign
      00BFD9 A6 01            [ 1] 1212 	ld	a, #0x01
      00BFDB 6B 03            [ 1] 1213 	ld	(0x03, sp), a
                                   1214 ; genLabel
      00BFDD                       1215 00105$:
                                   1216 ;	User/st7565r_lcd.c: 232: lcd_address(j,0);
                                   1217 ; genIPush
      00BFDD 4B 00            [ 1] 1218 	push	#0x00
                                   1219 ; genSend
      00BFDF 7B 04            [ 1] 1220 	ld	a, (0x04, sp)
                                   1221 ; genCall
      00BFE1 CD BD CF         [ 4] 1222 	call	_lcd_address
                                   1223 ;	User/st7565r_lcd.c: 233: for(i=0; i<128; i++)
                                   1224 ; genAssign
      00BFE4 1E 01            [ 2] 1225 	ldw	x, (0x01, sp)
                                   1226 ; genAssign
      00BFE6 0F 04            [ 1] 1227 	clr	(0x04, sp)
                                   1228 ; genLabel
      00BFE8                       1229 00103$:
                                   1230 ;	User/st7565r_lcd.c: 235: writed(logo[k++]);
                                   1231 ; genPlus
      00BFE8 90 93            [ 1] 1232 	ldw	y, x
      00BFEA 72 A9 8C 0A      [ 2] 1233 	addw	y, #(_logo+0)
                                   1234 ; genPlus
      00BFEE 5C               [ 1] 1235 	incw	x
                                   1236 ; genPointerGet
      00BFEF 90 F6            [ 1] 1237 	ld	a, (y)
                                   1238 ; genSend
      00BFF1 89               [ 2] 1239 	pushw	x
                                   1240 ; genCall
      00BFF2 CD BD 2C         [ 4] 1241 	call	_writed
      00BFF5 85               [ 2] 1242 	popw	x
                                   1243 ;	User/st7565r_lcd.c: 233: for(i=0; i<128; i++)
                                   1244 ; genPlus
      00BFF6 0C 04            [ 1] 1245 	inc	(0x04, sp)
                                   1246 ; genCmp
                                   1247 ; genCmpTnz
      00BFF8 7B 04            [ 1] 1248 	ld	a, (0x04, sp)
      00BFFA A1 80            [ 1] 1249 	cp	a, #0x80
                                   1250 ; peephole j5 changed absolute to relative unconditional jump.
      00BFFC 25 EA            [ 1] 1251 	jrc	00103$
                                   1252 ; peephole j9 removed jra by using inverse jump logic
                                   1253 ; peephole j30 removed unused label 00132$.
                                   1254 ; skipping generated iCode
                                   1255 ;	User/st7565r_lcd.c: 230: for(j=1; j<=8; j++)
                                   1256 ; genAssign
      00BFFE 1F 01            [ 2] 1257 	ldw	(0x01, sp), x
                                   1258 ; genPlus
      00C000 0C 03            [ 1] 1259 	inc	(0x03, sp)
                                   1260 ; genCmp
                                   1261 ; genCmpTnz
      00C002 7B 03            [ 1] 1262 	ld	a, (0x03, sp)
      00C004 A1 08            [ 1] 1263 	cp	a, #0x08
                                   1264 ; peephole j5 changed absolute to relative unconditional jump.
      00C006 23 D5            [ 2] 1265 	jrule	00105$
                                   1266 ; peephole j16 removed jra by using inverse jump logic
                                   1267 ; peephole j30 removed unused label 00133$.
                                   1268 ; skipping generated iCode
                                   1269 ; genLabel
                                   1270 ; peephole j30 removed unused label 00107$.
                                   1271 ;	User/st7565r_lcd.c: 238: }
                                   1272 ; genEndFunction
      00C008 5B 04            [ 2] 1273 	addw	sp, #4
      00C00A 81               [ 4] 1274 	ret
                                   1275 ;	Total show_pic_128x64 function size at codegen: 3 bytes.
                                   1276 	.area CODE
                                   1277 	.area CONST
                                   1278 	.area CONST
      00842A                       1279 _char_8x12:
      00842A F8                    1280 	.db #0xf8	; 248
      00842B FC                    1281 	.db #0xfc	; 252
      00842C 06                    1282 	.db #0x06	; 6
      00842D 02                    1283 	.db #0x02	; 2
      00842E 06                    1284 	.db #0x06	; 6
      00842F FC                    1285 	.db #0xfc	; 252
      008430 F8                    1286 	.db #0xf8	; 248
      008431 00                    1287 	.db #0x00	; 0
      008432 0F                    1288 	.db #0x0f	; 15
      008433 1F                    1289 	.db #0x1f	; 31
      008434 30                    1290 	.db #0x30	; 48	'0'
      008435 20                    1291 	.db #0x20	; 32
      008436 30                    1292 	.db #0x30	; 48	'0'
      008437 1F                    1293 	.db #0x1f	; 31
      008438 0F                    1294 	.db #0x0f	; 15
      008439 00                    1295 	.db #0x00	; 0
      00843A 00                    1296 	.db #0x00	; 0
      00843B 04                    1297 	.db #0x04	; 4
      00843C 04                    1298 	.db #0x04	; 4
      00843D FE                    1299 	.db #0xfe	; 254
      00843E FE                    1300 	.db #0xfe	; 254
      00843F 00                    1301 	.db #0x00	; 0
      008440 00                    1302 	.db #0x00	; 0
      008441 00                    1303 	.db #0x00	; 0
      008442 00                    1304 	.db #0x00	; 0
      008443 00                    1305 	.db #0x00	; 0
      008444 00                    1306 	.db #0x00	; 0
      008445 3F                    1307 	.db #0x3f	; 63
      008446 3F                    1308 	.db #0x3f	; 63
      008447 00                    1309 	.db #0x00	; 0
      008448 00                    1310 	.db #0x00	; 0
      008449 00                    1311 	.db #0x00	; 0
      00844A 18                    1312 	.db #0x18	; 24
      00844B 1C                    1313 	.db #0x1c	; 28
      00844C 06                    1314 	.db #0x06	; 6
      00844D 02                    1315 	.db #0x02	; 2
      00844E C6                    1316 	.db #0xc6	; 198
      00844F FC                    1317 	.db #0xfc	; 252
      008450 38                    1318 	.db #0x38	; 56	'8'
      008451 00                    1319 	.db #0x00	; 0
      008452 30                    1320 	.db #0x30	; 48	'0'
      008453 38                    1321 	.db #0x38	; 56	'8'
      008454 2E                    1322 	.db #0x2e	; 46
      008455 27                    1323 	.db #0x27	; 39
      008456 21                    1324 	.db #0x21	; 33
      008457 20                    1325 	.db #0x20	; 32
      008458 20                    1326 	.db #0x20	; 32
      008459 00                    1327 	.db #0x00	; 0
      00845A 18                    1328 	.db #0x18	; 24
      00845B 1C                    1329 	.db #0x1c	; 28
      00845C 86                    1330 	.db #0x86	; 134
      00845D 82                    1331 	.db #0x82	; 130
      00845E C6                    1332 	.db #0xc6	; 198
      00845F 7C                    1333 	.db #0x7c	; 124
      008460 38                    1334 	.db #0x38	; 56	'8'
      008461 00                    1335 	.db #0x00	; 0
      008462 0C                    1336 	.db #0x0c	; 12
      008463 1C                    1337 	.db #0x1c	; 28
      008464 30                    1338 	.db #0x30	; 48	'0'
      008465 20                    1339 	.db #0x20	; 32
      008466 31                    1340 	.db #0x31	; 49	'1'
      008467 1F                    1341 	.db #0x1f	; 31
      008468 0E                    1342 	.db #0x0e	; 14
      008469 00                    1343 	.db #0x00	; 0
      00846A 00                    1344 	.db #0x00	; 0
      00846B 80                    1345 	.db #0x80	; 128
      00846C E0                    1346 	.db #0xe0	; 224
      00846D 78                    1347 	.db #0x78	; 120	'x'
      00846E FE                    1348 	.db #0xfe	; 254
      00846F FE                    1349 	.db #0xfe	; 254
      008470 00                    1350 	.db #0x00	; 0
      008471 00                    1351 	.db #0x00	; 0
      008472 06                    1352 	.db #0x06	; 6
      008473 07                    1353 	.db #0x07	; 7
      008474 05                    1354 	.db #0x05	; 5
      008475 04                    1355 	.db #0x04	; 4
      008476 3F                    1356 	.db #0x3f	; 63
      008477 3F                    1357 	.db #0x3f	; 63
      008478 04                    1358 	.db #0x04	; 4
      008479 00                    1359 	.db #0x00	; 0
      00847A FE                    1360 	.db #0xfe	; 254
      00847B FE                    1361 	.db #0xfe	; 254
      00847C 62                    1362 	.db #0x62	; 98	'b'
      00847D 22                    1363 	.db #0x22	; 34
      00847E 62                    1364 	.db #0x62	; 98	'b'
      00847F C2                    1365 	.db #0xc2	; 194
      008480 82                    1366 	.db #0x82	; 130
      008481 00                    1367 	.db #0x00	; 0
      008482 08                    1368 	.db #0x08	; 8
      008483 18                    1369 	.db #0x18	; 24
      008484 30                    1370 	.db #0x30	; 48	'0'
      008485 20                    1371 	.db #0x20	; 32
      008486 30                    1372 	.db #0x30	; 48	'0'
      008487 1F                    1373 	.db #0x1f	; 31
      008488 0F                    1374 	.db #0x0f	; 15
      008489 00                    1375 	.db #0x00	; 0
      00848A F8                    1376 	.db #0xf8	; 248
      00848B FC                    1377 	.db #0xfc	; 252
      00848C C6                    1378 	.db #0xc6	; 198
      00848D 42                    1379 	.db #0x42	; 66	'B'
      00848E C6                    1380 	.db #0xc6	; 198
      00848F 9C                    1381 	.db #0x9c	; 156
      008490 18                    1382 	.db #0x18	; 24
      008491 00                    1383 	.db #0x00	; 0
      008492 0F                    1384 	.db #0x0f	; 15
      008493 1F                    1385 	.db #0x1f	; 31
      008494 30                    1386 	.db #0x30	; 48	'0'
      008495 20                    1387 	.db #0x20	; 32
      008496 30                    1388 	.db #0x30	; 48	'0'
      008497 1F                    1389 	.db #0x1f	; 31
      008498 0F                    1390 	.db #0x0f	; 15
      008499 00                    1391 	.db #0x00	; 0
      00849A 02                    1392 	.db #0x02	; 2
      00849B 02                    1393 	.db #0x02	; 2
      00849C 02                    1394 	.db #0x02	; 2
      00849D 82                    1395 	.db #0x82	; 130
      00849E F2                    1396 	.db #0xf2	; 242
      00849F 7E                    1397 	.db #0x7e	; 126
      0084A0 0E                    1398 	.db #0x0e	; 14
      0084A1 00                    1399 	.db #0x00	; 0
      0084A2 00                    1400 	.db #0x00	; 0
      0084A3 00                    1401 	.db #0x00	; 0
      0084A4 3C                    1402 	.db #0x3c	; 60
      0084A5 3F                    1403 	.db #0x3f	; 63
      0084A6 03                    1404 	.db #0x03	; 3
      0084A7 00                    1405 	.db #0x00	; 0
      0084A8 00                    1406 	.db #0x00	; 0
      0084A9 00                    1407 	.db #0x00	; 0
      0084AA 38                    1408 	.db #0x38	; 56	'8'
      0084AB 7C                    1409 	.db #0x7c	; 124
      0084AC C6                    1410 	.db #0xc6	; 198
      0084AD 82                    1411 	.db #0x82	; 130
      0084AE C6                    1412 	.db #0xc6	; 198
      0084AF 7C                    1413 	.db #0x7c	; 124
      0084B0 38                    1414 	.db #0x38	; 56	'8'
      0084B1 00                    1415 	.db #0x00	; 0
      0084B2 0E                    1416 	.db #0x0e	; 14
      0084B3 1F                    1417 	.db #0x1f	; 31
      0084B4 31                    1418 	.db #0x31	; 49	'1'
      0084B5 20                    1419 	.db #0x20	; 32
      0084B6 31                    1420 	.db #0x31	; 49	'1'
      0084B7 1F                    1421 	.db #0x1f	; 31
      0084B8 0E                    1422 	.db #0x0e	; 14
      0084B9 00                    1423 	.db #0x00	; 0
      0084BA 78                    1424 	.db #0x78	; 120	'x'
      0084BB FC                    1425 	.db #0xfc	; 252
      0084BC 86                    1426 	.db #0x86	; 134
      0084BD 02                    1427 	.db #0x02	; 2
      0084BE 86                    1428 	.db #0x86	; 134
      0084BF FC                    1429 	.db #0xfc	; 252
      0084C0 F8                    1430 	.db #0xf8	; 248
      0084C1 00                    1431 	.db #0x00	; 0
      0084C2 0C                    1432 	.db #0x0c	; 12
      0084C3 1C                    1433 	.db #0x1c	; 28
      0084C4 31                    1434 	.db #0x31	; 49	'1'
      0084C5 21                    1435 	.db #0x21	; 33
      0084C6 31                    1436 	.db #0x31	; 49	'1'
      0084C7 1F                    1437 	.db #0x1f	; 31
      0084C8 0F                    1438 	.db #0x0f	; 15
      0084C9 00                    1439 	.db #0x00	; 0
      0084CA 00                    1440 	.db #0x00	; 0
      0084CB 00                    1441 	.db #0x00	; 0
      0084CC 60                    1442 	.db #0x60	; 96
      0084CD 60                    1443 	.db #0x60	; 96
      0084CE 60                    1444 	.db #0x60	; 96
      0084CF 00                    1445 	.db #0x00	; 0
      0084D0 00                    1446 	.db #0x00	; 0
      0084D1 00                    1447 	.db #0x00	; 0
      0084D2 00                    1448 	.db #0x00	; 0
      0084D3 00                    1449 	.db #0x00	; 0
      0084D4 18                    1450 	.db #0x18	; 24
      0084D5 18                    1451 	.db #0x18	; 24
      0084D6 18                    1452 	.db #0x18	; 24
      0084D7 00                    1453 	.db #0x00	; 0
      0084D8 00                    1454 	.db #0x00	; 0
      0084D9 00                    1455 	.db #0x00	; 0
      0084DA 00                    1456 	.db #0x00	; 0
      0084DB 00                    1457 	.db #0x00	; 0
      0084DC 00                    1458 	.db #0x00	; 0
      0084DD 00                    1459 	.db #0x00	; 0
      0084DE 00                    1460 	.db #0x00	; 0
      0084DF 00                    1461 	.db #0x00	; 0
      0084E0 00                    1462 	.db #0x00	; 0
      0084E1 00                    1463 	.db #0x00	; 0
      0084E2 00                    1464 	.db #0x00	; 0
      0084E3 00                    1465 	.db #0x00	; 0
      0084E4 30                    1466 	.db #0x30	; 48	'0'
      0084E5 30                    1467 	.db #0x30	; 48	'0'
      0084E6 30                    1468 	.db #0x30	; 48	'0'
      0084E7 00                    1469 	.db #0x00	; 0
      0084E8 00                    1470 	.db #0x00	; 0
      0084E9 00                    1471 	.db #0x00	; 0
      0084EA 20                    1472 	.db #0x20	; 32
      0084EB 70                    1473 	.db #0x70	; 112	'p'
      0084EC F8                    1474 	.db #0xf8	; 248
      0084ED FC                    1475 	.db #0xfc	; 252
      0084EE FE                    1476 	.db #0xfe	; 254
      0084EF 00                    1477 	.db #0x00	; 0
      0084F0 00                    1478 	.db #0x00	; 0
      0084F1 00                    1479 	.db #0x00	; 0
      0084F2 00                    1480 	.db #0x00	; 0
      0084F3 00                    1481 	.db #0x00	; 0
      0084F4 00                    1482 	.db #0x00	; 0
      0084F5 01                    1483 	.db #0x01	; 1
      0084F6 03                    1484 	.db #0x03	; 3
      0084F7 00                    1485 	.db #0x00	; 0
      0084F8 00                    1486 	.db #0x00	; 0
      0084F9 00                    1487 	.db #0x00	; 0
      0084FA 00                    1488 	.db #0x00	; 0
      0084FB 20                    1489 	.db #0x20	; 32
      0084FC 20                    1490 	.db #0x20	; 32
      0084FD 20                    1491 	.db #0x20	; 32
      0084FE 20                    1492 	.db #0x20	; 32
      0084FF 20                    1493 	.db #0x20	; 32
      008500 20                    1494 	.db #0x20	; 32
      008501 00                    1495 	.db #0x00	; 0
      008502 00                    1496 	.db #0x00	; 0
      008503 02                    1497 	.db #0x02	; 2
      008504 02                    1498 	.db #0x02	; 2
      008505 02                    1499 	.db #0x02	; 2
      008506 02                    1500 	.db #0x02	; 2
      008507 02                    1501 	.db #0x02	; 2
      008508 02                    1502 	.db #0x02	; 2
      008509 00                    1503 	.db #0x00	; 0
      00850A 00                    1504 	.db #0x00	; 0
      00850B 00                    1505 	.db #0x00	; 0
      00850C 00                    1506 	.db #0x00	; 0
      00850D FE                    1507 	.db #0xfe	; 254
      00850E FC                    1508 	.db #0xfc	; 252
      00850F F8                    1509 	.db #0xf8	; 248
      008510 70                    1510 	.db #0x70	; 112	'p'
      008511 20                    1511 	.db #0x20	; 32
      008512 00                    1512 	.db #0x00	; 0
      008513 00                    1513 	.db #0x00	; 0
      008514 00                    1514 	.db #0x00	; 0
      008515 03                    1515 	.db #0x03	; 3
      008516 01                    1516 	.db #0x01	; 1
      008517 00                    1517 	.db #0x00	; 0
      008518 00                    1518 	.db #0x00	; 0
      008519 00                    1519 	.db #0x00	; 0
      00851A 00                    1520 	.db #0x00	; 0
      00851B 80                    1521 	.db #0x80	; 128
      00851C 80                    1522 	.db #0x80	; 128
      00851D 80                    1523 	.db #0x80	; 128
      00851E 80                    1524 	.db #0x80	; 128
      00851F 80                    1525 	.db #0x80	; 128
      008520 80                    1526 	.db #0x80	; 128
      008521 00                    1527 	.db #0x00	; 0
      008522 00                    1528 	.db #0x00	; 0
      008523 00                    1529 	.db #0x00	; 0
      008524 00                    1530 	.db #0x00	; 0
      008525 00                    1531 	.db #0x00	; 0
      008526 00                    1532 	.db #0x00	; 0
      008527 00                    1533 	.db #0x00	; 0
      008528 00                    1534 	.db #0x00	; 0
      008529 00                    1535 	.db #0x00	; 0
      00852A 00                    1536 	.db #0x00	; 0
      00852B 00                    1537 	.db #0x00	; 0
      00852C 00                    1538 	.db #0x00	; 0
      00852D 00                    1539 	.db #0x00	; 0
      00852E 00                    1540 	.db #0x00	; 0
      00852F 00                    1541 	.db #0x00	; 0
      008530 00                    1542 	.db #0x00	; 0
      008531 00                    1543 	.db #0x00	; 0
      008532 00                    1544 	.db #0x00	; 0
      008533 00                    1545 	.db #0x00	; 0
      008534 00                    1546 	.db #0x00	; 0
      008535 00                    1547 	.db #0x00	; 0
      008536 00                    1548 	.db #0x00	; 0
      008537 00                    1549 	.db #0x00	; 0
      008538 00                    1550 	.db #0x00	; 0
      008539 00                    1551 	.db #0x00	; 0
      00853A 00                    1552 	.db #0x00	; 0
      00853B 00                    1553 	.db #0x00	; 0
      00853C E0                    1554 	.db #0xe0	; 224
      00853D FC                    1555 	.db #0xfc	; 252
      00853E FC                    1556 	.db #0xfc	; 252
      00853F E0                    1557 	.db #0xe0	; 224
      008540 00                    1558 	.db #0x00	; 0
      008541 00                    1559 	.db #0x00	; 0
      008542 38                    1560 	.db #0x38	; 56	'8'
      008543 3F                    1561 	.db #0x3f	; 63
      008544 07                    1562 	.db #0x07	; 7
      008545 04                    1563 	.db #0x04	; 4
      008546 04                    1564 	.db #0x04	; 4
      008547 07                    1565 	.db #0x07	; 7
      008548 3F                    1566 	.db #0x3f	; 63
      008549 38                    1567 	.db #0x38	; 56	'8'
      00854A FC                    1568 	.db #0xfc	; 252
      00854B FC                    1569 	.db #0xfc	; 252
      00854C 84                    1570 	.db #0x84	; 132
      00854D 84                    1571 	.db #0x84	; 132
      00854E 84                    1572 	.db #0x84	; 132
      00854F CC                    1573 	.db #0xcc	; 204
      008550 78                    1574 	.db #0x78	; 120	'x'
      008551 30                    1575 	.db #0x30	; 48	'0'
      008552 3F                    1576 	.db #0x3f	; 63
      008553 3F                    1577 	.db #0x3f	; 63
      008554 20                    1578 	.db #0x20	; 32
      008555 20                    1579 	.db #0x20	; 32
      008556 20                    1580 	.db #0x20	; 32
      008557 31                    1581 	.db #0x31	; 49	'1'
      008558 1F                    1582 	.db #0x1f	; 31
      008559 0E                    1583 	.db #0x0e	; 14
      00855A F0                    1584 	.db #0xf0	; 240
      00855B F8                    1585 	.db #0xf8	; 248
      00855C 0C                    1586 	.db #0x0c	; 12
      00855D 04                    1587 	.db #0x04	; 4
      00855E 04                    1588 	.db #0x04	; 4
      00855F 0C                    1589 	.db #0x0c	; 12
      008560 38                    1590 	.db #0x38	; 56	'8'
      008561 30                    1591 	.db #0x30	; 48	'0'
      008562 0F                    1592 	.db #0x0f	; 15
      008563 1F                    1593 	.db #0x1f	; 31
      008564 30                    1594 	.db #0x30	; 48	'0'
      008565 20                    1595 	.db #0x20	; 32
      008566 20                    1596 	.db #0x20	; 32
      008567 30                    1597 	.db #0x30	; 48	'0'
      008568 1C                    1598 	.db #0x1c	; 28
      008569 0C                    1599 	.db #0x0c	; 12
      00856A FC                    1600 	.db #0xfc	; 252
      00856B FC                    1601 	.db #0xfc	; 252
      00856C 04                    1602 	.db #0x04	; 4
      00856D 04                    1603 	.db #0x04	; 4
      00856E 04                    1604 	.db #0x04	; 4
      00856F 1C                    1605 	.db #0x1c	; 28
      008570 F8                    1606 	.db #0xf8	; 248
      008571 E0                    1607 	.db #0xe0	; 224
      008572 3F                    1608 	.db #0x3f	; 63
      008573 3F                    1609 	.db #0x3f	; 63
      008574 20                    1610 	.db #0x20	; 32
      008575 20                    1611 	.db #0x20	; 32
      008576 20                    1612 	.db #0x20	; 32
      008577 38                    1613 	.db #0x38	; 56	'8'
      008578 1F                    1614 	.db #0x1f	; 31
      008579 07                    1615 	.db #0x07	; 7
      00857A 00                    1616 	.db #0x00	; 0
      00857B F0                    1617 	.db #0xf0	; 240
      00857C F0                    1618 	.db #0xf0	; 240
      00857D 10                    1619 	.db #0x10	; 16
      00857E F0                    1620 	.db #0xf0	; 240
      00857F 10                    1621 	.db #0x10	; 16
      008580 F0                    1622 	.db #0xf0	; 240
      008581 E0                    1623 	.db #0xe0	; 224
      008582 00                    1624 	.db #0x00	; 0
      008583 07                    1625 	.db #0x07	; 7
      008584 07                    1626 	.db #0x07	; 7
      008585 00                    1627 	.db #0x00	; 0
      008586 03                    1628 	.db #0x03	; 3
      008587 00                    1629 	.db #0x00	; 0
      008588 07                    1630 	.db #0x07	; 7
      008589 07                    1631 	.db #0x07	; 7
      00858A 00                    1632 	.db #0x00	; 0
      00858B F0                    1633 	.db #0xf0	; 240
      00858C F0                    1634 	.db #0xf0	; 240
      00858D 00                    1635 	.db #0x00	; 0
      00858E 00                    1636 	.db #0x00	; 0
      00858F F0                    1637 	.db #0xf0	; 240
      008590 F0                    1638 	.db #0xf0	; 240
      008591 00                    1639 	.db #0x00	; 0
      008592 00                    1640 	.db #0x00	; 0
      008593 03                    1641 	.db #0x03	; 3
      008594 07                    1642 	.db #0x07	; 7
      008595 04                    1643 	.db #0x04	; 4
      008596 04                    1644 	.db #0x04	; 4
      008597 07                    1645 	.db #0x07	; 7
      008598 07                    1646 	.db #0x07	; 7
      008599 00                    1647 	.db #0x00	; 0
      00859A 00                    1648 	.db #0x00	; 0
      00859B 60                    1649 	.db #0x60	; 96
      00859C F0                    1650 	.db #0xf0	; 240
      00859D 90                    1651 	.db #0x90	; 144
      00859E 90                    1652 	.db #0x90	; 144
      00859F 90                    1653 	.db #0x90	; 144
      0085A0 10                    1654 	.db #0x10	; 16
      0085A1 00                    1655 	.db #0x00	; 0
      0085A2 00                    1656 	.db #0x00	; 0
      0085A3 04                    1657 	.db #0x04	; 4
      0085A4 04                    1658 	.db #0x04	; 4
      0085A5 04                    1659 	.db #0x04	; 4
      0085A6 04                    1660 	.db #0x04	; 4
      0085A7 07                    1661 	.db #0x07	; 7
      0085A8 03                    1662 	.db #0x03	; 3
      0085A9 00                    1663 	.db #0x00	; 0
      0085AA 1C                    1664 	.db #0x1c	; 28
      0085AB FC                    1665 	.db #0xfc	; 252
      0085AC E0                    1666 	.db #0xe0	; 224
      0085AD 00                    1667 	.db #0x00	; 0
      0085AE 00                    1668 	.db #0x00	; 0
      0085AF E0                    1669 	.db #0xe0	; 224
      0085B0 FC                    1670 	.db #0xfc	; 252
      0085B1 1C                    1671 	.db #0x1c	; 28
      0085B2 00                    1672 	.db #0x00	; 0
      0085B3 00                    1673 	.db #0x00	; 0
      0085B4 07                    1674 	.db #0x07	; 7
      0085B5 3F                    1675 	.db #0x3f	; 63
      0085B6 3F                    1676 	.db #0x3f	; 63
      0085B7 07                    1677 	.db #0x07	; 7
      0085B8 00                    1678 	.db #0x00	; 0
      0085B9 00                    1679 	.db #0x00	; 0
      0085BA 00                    1680 	.db #0x00	; 0
      0085BB 00                    1681 	.db #0x00	; 0
      0085BC 00                    1682 	.db #0x00	; 0
      0085BD FC                    1683 	.db #0xfc	; 252
      0085BE FC                    1684 	.db #0xfc	; 252
      0085BF 00                    1685 	.db #0x00	; 0
      0085C0 00                    1686 	.db #0x00	; 0
      0085C1 00                    1687 	.db #0x00	; 0
      0085C2 00                    1688 	.db #0x00	; 0
      0085C3 00                    1689 	.db #0x00	; 0
      0085C4 00                    1690 	.db #0x00	; 0
      0085C5 3F                    1691 	.db #0x3f	; 63
      0085C6 3F                    1692 	.db #0x3f	; 63
      0085C7 00                    1693 	.db #0x00	; 0
      0085C8 00                    1694 	.db #0x00	; 0
      0085C9 00                    1695 	.db #0x00	; 0
      0085CA 0C                    1696 	.db #0x0c	; 12
      0085CB 3C                    1697 	.db #0x3c	; 60
      0085CC F0                    1698 	.db #0xf0	; 240
      0085CD C0                    1699 	.db #0xc0	; 192
      0085CE C0                    1700 	.db #0xc0	; 192
      0085CF F0                    1701 	.db #0xf0	; 240
      0085D0 3C                    1702 	.db #0x3c	; 60
      0085D1 0C                    1703 	.db #0x0c	; 12
      0085D2 00                    1704 	.db #0x00	; 0
      0085D3 00                    1705 	.db #0x00	; 0
      0085D4 00                    1706 	.db #0x00	; 0
      0085D5 3F                    1707 	.db #0x3f	; 63
      0085D6 3F                    1708 	.db #0x3f	; 63
      0085D7 00                    1709 	.db #0x00	; 0
      0085D8 00                    1710 	.db #0x00	; 0
      0085D9 00                    1711 	.db #0x00	; 0
      0085DA FC                    1712 	.db #0xfc	; 252
      0085DB FC                    1713 	.db #0xfc	; 252
      0085DC 78                    1714 	.db #0x78	; 120	'x'
      0085DD E0                    1715 	.db #0xe0	; 224
      0085DE 80                    1716 	.db #0x80	; 128
      0085DF 00                    1717 	.db #0x00	; 0
      0085E0 FC                    1718 	.db #0xfc	; 252
      0085E1 FC                    1719 	.db #0xfc	; 252
      0085E2 3F                    1720 	.db #0x3f	; 63
      0085E3 3F                    1721 	.db #0x3f	; 63
      0085E4 00                    1722 	.db #0x00	; 0
      0085E5 01                    1723 	.db #0x01	; 1
      0085E6 07                    1724 	.db #0x07	; 7
      0085E7 1E                    1725 	.db #0x1e	; 30
      0085E8 3F                    1726 	.db #0x3f	; 63
      0085E9 3F                    1727 	.db #0x3f	; 63
      0085EA F0                    1728 	.db #0xf0	; 240
      0085EB F0                    1729 	.db #0xf0	; 240
      0085EC FC                    1730 	.db #0xfc	; 252
      0085ED FC                    1731 	.db #0xfc	; 252
      0085EE FC                    1732 	.db #0xfc	; 252
      0085EF FC                    1733 	.db #0xfc	; 252
      0085F0 FC                    1734 	.db #0xfc	; 252
      0085F1 FC                    1735 	.db #0xfc	; 252
      0085F2 00                    1736 	.db #0x00	; 0
      0085F3 00                    1737 	.db #0x00	; 0
      0085F4 03                    1738 	.db #0x03	; 3
      0085F5 03                    1739 	.db #0x03	; 3
      0085F6 03                    1740 	.db #0x03	; 3
      0085F7 03                    1741 	.db #0x03	; 3
      0085F8 03                    1742 	.db #0x03	; 3
      0085F9 03                    1743 	.db #0x03	; 3
      0085FA FC                    1744 	.db #0xfc	; 252
      0085FB FC                    1745 	.db #0xfc	; 252
      0085FC FC                    1746 	.db #0xfc	; 252
      0085FD FC                    1747 	.db #0xfc	; 252
      0085FE FC                    1748 	.db #0xfc	; 252
      0085FF FC                    1749 	.db #0xfc	; 252
      008600 FC                    1750 	.db #0xfc	; 252
      008601 FC                    1751 	.db #0xfc	; 252
      008602 03                    1752 	.db #0x03	; 3
      008603 03                    1753 	.db #0x03	; 3
      008604 03                    1754 	.db #0x03	; 3
      008605 03                    1755 	.db #0x03	; 3
      008606 03                    1756 	.db #0x03	; 3
      008607 03                    1757 	.db #0x03	; 3
      008608 03                    1758 	.db #0x03	; 3
      008609 03                    1759 	.db #0x03	; 3
      00860A FC                    1760 	.db #0xfc	; 252
      00860B FC                    1761 	.db #0xfc	; 252
      00860C FC                    1762 	.db #0xfc	; 252
      00860D FC                    1763 	.db #0xfc	; 252
      00860E FC                    1764 	.db #0xfc	; 252
      00860F FC                    1765 	.db #0xfc	; 252
      008610 FC                    1766 	.db #0xfc	; 252
      008611 FC                    1767 	.db #0xfc	; 252
      008612 03                    1768 	.db #0x03	; 3
      008613 03                    1769 	.db #0x03	; 3
      008614 03                    1770 	.db #0x03	; 3
      008615 03                    1771 	.db #0x03	; 3
      008616 03                    1772 	.db #0x03	; 3
      008617 03                    1773 	.db #0x03	; 3
      008618 03                    1774 	.db #0x03	; 3
      008619 03                    1775 	.db #0x03	; 3
      00861A F0                    1776 	.db #0xf0	; 240
      00861B F0                    1777 	.db #0xf0	; 240
      00861C FC                    1778 	.db #0xfc	; 252
      00861D 04                    1779 	.db #0x04	; 4
      00861E 04                    1780 	.db #0x04	; 4
      00861F 04                    1781 	.db #0x04	; 4
      008620 04                    1782 	.db #0x04	; 4
      008621 04                    1783 	.db #0x04	; 4
      008622 00                    1784 	.db #0x00	; 0
      008623 00                    1785 	.db #0x00	; 0
      008624 03                    1786 	.db #0x03	; 3
      008625 02                    1787 	.db #0x02	; 2
      008626 02                    1788 	.db #0x02	; 2
      008627 02                    1789 	.db #0x02	; 2
      008628 02                    1790 	.db #0x02	; 2
      008629 02                    1791 	.db #0x02	; 2
      00862A 04                    1792 	.db #0x04	; 4
      00862B 04                    1793 	.db #0x04	; 4
      00862C 04                    1794 	.db #0x04	; 4
      00862D 04                    1795 	.db #0x04	; 4
      00862E 04                    1796 	.db #0x04	; 4
      00862F 04                    1797 	.db #0x04	; 4
      008630 04                    1798 	.db #0x04	; 4
      008631 04                    1799 	.db #0x04	; 4
      008632 02                    1800 	.db #0x02	; 2
      008633 02                    1801 	.db #0x02	; 2
      008634 02                    1802 	.db #0x02	; 2
      008635 02                    1803 	.db #0x02	; 2
      008636 02                    1804 	.db #0x02	; 2
      008637 02                    1805 	.db #0x02	; 2
      008638 02                    1806 	.db #0x02	; 2
      008639 02                    1807 	.db #0x02	; 2
      00863A 04                    1808 	.db #0x04	; 4
      00863B 04                    1809 	.db #0x04	; 4
      00863C 04                    1810 	.db #0x04	; 4
      00863D 04                    1811 	.db #0x04	; 4
      00863E 04                    1812 	.db #0x04	; 4
      00863F 04                    1813 	.db #0x04	; 4
      008640 04                    1814 	.db #0x04	; 4
      008641 FC                    1815 	.db #0xfc	; 252
      008642 02                    1816 	.db #0x02	; 2
      008643 02                    1817 	.db #0x02	; 2
      008644 02                    1818 	.db #0x02	; 2
      008645 02                    1819 	.db #0x02	; 2
      008646 02                    1820 	.db #0x02	; 2
      008647 02                    1821 	.db #0x02	; 2
      008648 02                    1822 	.db #0x02	; 2
      008649 03                    1823 	.db #0x03	; 3
      00864A 20                    1824 	.db #0x20	; 32
      00864B 30                    1825 	.db #0x30	; 48	'0'
      00864C 38                    1826 	.db #0x38	; 56	'8'
      00864D 3C                    1827 	.db #0x3c	; 60
      00864E 3C                    1828 	.db #0x3c	; 60
      00864F 38                    1829 	.db #0x38	; 56	'8'
      008650 30                    1830 	.db #0x30	; 48	'0'
      008651 20                    1831 	.db #0x20	; 32
      008652 00                    1832 	.db #0x00	; 0
      008653 00                    1833 	.db #0x00	; 0
      008654 00                    1834 	.db #0x00	; 0
      008655 00                    1835 	.db #0x00	; 0
      008656 00                    1836 	.db #0x00	; 0
      008657 00                    1837 	.db #0x00	; 0
      008658 00                    1838 	.db #0x00	; 0
      008659 00                    1839 	.db #0x00	; 0
      00865A 40                    1840 	.db #0x40	; 64
      00865B C0                    1841 	.db #0xc0	; 192
      00865C C0                    1842 	.db #0xc0	; 192
      00865D C0                    1843 	.db #0xc0	; 192
      00865E C0                    1844 	.db #0xc0	; 192
      00865F C0                    1845 	.db #0xc0	; 192
      008660 C0                    1846 	.db #0xc0	; 192
      008661 40                    1847 	.db #0x40	; 64
      008662 00                    1848 	.db #0x00	; 0
      008663 00                    1849 	.db #0x00	; 0
      008664 01                    1850 	.db #0x01	; 1
      008665 03                    1851 	.db #0x03	; 3
      008666 03                    1852 	.db #0x03	; 3
      008667 01                    1853 	.db #0x01	; 1
      008668 00                    1854 	.db #0x00	; 0
      008669 00                    1855 	.db #0x00	; 0
      00866A 00                    1856 	.db #0x00	; 0
      00866B 00                    1857 	.db #0x00	; 0
      00866C F0                    1858 	.db #0xf0	; 240
      00866D FE                    1859 	.db #0xfe	; 254
      00866E F0                    1860 	.db #0xf0	; 240
      00866F F0                    1861 	.db #0xf0	; 240
      008670 F0                    1862 	.db #0xf0	; 240
      008671 F0                    1863 	.db #0xf0	; 240
      008672 00                    1864 	.db #0x00	; 0
      008673 00                    1865 	.db #0x00	; 0
      008674 00                    1866 	.db #0x00	; 0
      008675 00                    1867 	.db #0x00	; 0
      008676 01                    1868 	.db #0x01	; 1
      008677 0F                    1869 	.db #0x0f	; 15
      008678 0F                    1870 	.db #0x0f	; 15
      008679 01                    1871 	.db #0x01	; 1
      00867A FE                    1872 	.db #0xfe	; 254
      00867B F0                    1873 	.db #0xf0	; 240
      00867C 00                    1874 	.db #0x00	; 0
      00867D 00                    1875 	.db #0x00	; 0
      00867E 00                    1876 	.db #0x00	; 0
      00867F 00                    1877 	.db #0x00	; 0
      008680 00                    1878 	.db #0x00	; 0
      008681 00                    1879 	.db #0x00	; 0
      008682 00                    1880 	.db #0x00	; 0
      008683 00                    1881 	.db #0x00	; 0
      008684 00                    1882 	.db #0x00	; 0
      008685 00                    1883 	.db #0x00	; 0
      008686 00                    1884 	.db #0x00	; 0
      008687 00                    1885 	.db #0x00	; 0
      008688 00                    1886 	.db #0x00	; 0
      008689 00                    1887 	.db #0x00	; 0
      00868A 40                    1888 	.db #0x40	; 64
      00868B 60                    1889 	.db #0x60	; 96
      00868C 70                    1890 	.db #0x70	; 112	'p'
      00868D F8                    1891 	.db #0xf8	; 248
      00868E DC                    1892 	.db #0xdc	; 220
      00868F CE                    1893 	.db #0xce	; 206
      008690 40                    1894 	.db #0x40	; 64
      008691 00                    1895 	.db #0x00	; 0
      008692 00                    1896 	.db #0x00	; 0
      008693 0E                    1897 	.db #0x0e	; 14
      008694 07                    1898 	.db #0x07	; 7
      008695 03                    1899 	.db #0x03	; 3
      008696 01                    1900 	.db #0x01	; 1
      008697 00                    1901 	.db #0x00	; 0
      008698 00                    1902 	.db #0x00	; 0
      008699 00                    1903 	.db #0x00	; 0
                                   1904 	.area CODE
                                   1905 	.area CONST
      00869A                       1906 _hz_12x12:
      00869A 88                    1907 	.db #0x88	; 136
      00869B 88                    1908 	.db #0x88	; 136
      00869C FF                    1909 	.db #0xff	; 255
      00869D 48                    1910 	.db #0x48	; 72	'H'
      00869E 00                    1911 	.db #0x00	; 0
      00869F FE                    1912 	.db #0xfe	; 254
      0086A0 42                    1913 	.db #0x42	; 66	'B'
      0086A1 C2                    1914 	.db #0xc2	; 194
      0086A2 52                    1915 	.db #0x52	; 82	'R'
      0086A3 52                    1916 	.db #0x52	; 82	'R'
      0086A4 CE                    1917 	.db #0xce	; 206
      0086A5 00                    1918 	.db #0x00	; 0
      0086A6 00                    1919 	.db #0x00	; 0
      0086A7 08                    1920 	.db #0x08	; 8
      0086A8 0F                    1921 	.db #0x0f	; 15
      0086A9 00                    1922 	.db #0x00	; 0
      0086AA 00                    1923 	.db #0x00	; 0
      0086AB 0F                    1924 	.db #0x0f	; 15
      0086AC 08                    1925 	.db #0x08	; 8
      0086AD 05                    1926 	.db #0x05	; 5
      0086AE 02                    1927 	.db #0x02	; 2
      0086AF 05                    1928 	.db #0x05	; 5
      0086B0 08                    1929 	.db #0x08	; 8
      0086B1 00                    1930 	.db #0x00	; 0
      0086B2 92                    1931 	.db #0x92	; 146
      0086B3 BF                    1932 	.db #0xbf	; 191
      0086B4 AA                    1933 	.db #0xaa	; 170
      0086B5 BA                    1934 	.db #0xba	; 186
      0086B6 CF                    1935 	.db #0xcf	; 207
      0086B7 BA                    1936 	.db #0xba	; 186
      0086B8 C4                    1937 	.db #0xc4	; 196
      0086B9 AB                    1938 	.db #0xab	; 171
      0086BA 92                    1939 	.db #0x92	; 146
      0086BB AE                    1940 	.db #0xae	; 174
      0086BC C2                    1941 	.db #0xc2	; 194
      0086BD 00                    1942 	.db #0x00	; 0
      0086BE 00                    1943 	.db #0x00	; 0
      0086BF 02                    1944 	.db #0x02	; 2
      0086C0 0E                    1945 	.db #0x0e	; 14
      0086C1 0A                    1946 	.db #0x0a	; 10
      0086C2 0A                    1947 	.db #0x0a	; 10
      0086C3 0A                    1948 	.db #0x0a	; 10
      0086C4 0A                    1949 	.db #0x0a	; 10
      0086C5 0A                    1950 	.db #0x0a	; 10
      0086C6 0E                    1951 	.db #0x0e	; 14
      0086C7 02                    1952 	.db #0x02	; 2
      0086C8 00                    1953 	.db #0x00	; 0
      0086C9 00                    1954 	.db #0x00	; 0
      0086CA 82                    1955 	.db #0x82	; 130
      0086CB A2                    1956 	.db #0xa2	; 162
      0086CC AE                    1957 	.db #0xae	; 174
      0086CD AA                    1958 	.db #0xaa	; 170
      0086CE AA                    1959 	.db #0xaa	; 170
      0086CF FF                    1960 	.db #0xff	; 255
      0086D0 AA                    1961 	.db #0xaa	; 170
      0086D1 AA                    1962 	.db #0xaa	; 170
      0086D2 AE                    1963 	.db #0xae	; 174
      0086D3 E2                    1964 	.db #0xe2	; 226
      0086D4 82                    1965 	.db #0x82	; 130
      0086D5 00                    1966 	.db #0x00	; 0
      0086D6 00                    1967 	.db #0x00	; 0
      0086D7 02                    1968 	.db #0x02	; 2
      0086D8 02                    1969 	.db #0x02	; 2
      0086D9 02                    1970 	.db #0x02	; 2
      0086DA 0A                    1971 	.db #0x0a	; 10
      0086DB 0F                    1972 	.db #0x0f	; 15
      0086DC 02                    1973 	.db #0x02	; 2
      0086DD 02                    1974 	.db #0x02	; 2
      0086DE 02                    1975 	.db #0x02	; 2
      0086DF 03                    1976 	.db #0x03	; 3
      0086E0 00                    1977 	.db #0x00	; 0
      0086E1 00                    1978 	.db #0x00	; 0
      0086E2 10                    1979 	.db #0x10	; 16
      0086E3 FC                    1980 	.db #0xfc	; 252
      0086E4 03                    1981 	.db #0x03	; 3
      0086E5 90                    1982 	.db #0x90	; 144
      0086E6 8E                    1983 	.db #0x8e	; 142
      0086E7 88                    1984 	.db #0x88	; 136
      0086E8 88                    1985 	.db #0x88	; 136
      0086E9 FF                    1986 	.db #0xff	; 255
      0086EA 88                    1987 	.db #0x88	; 136
      0086EB 88                    1988 	.db #0x88	; 136
      0086EC 88                    1989 	.db #0x88	; 136
      0086ED 00                    1990 	.db #0x00	; 0
      0086EE 00                    1991 	.db #0x00	; 0
      0086EF 0F                    1992 	.db #0x0f	; 15
      0086F0 00                    1993 	.db #0x00	; 0
      0086F1 00                    1994 	.db #0x00	; 0
      0086F2 00                    1995 	.db #0x00	; 0
      0086F3 00                    1996 	.db #0x00	; 0
      0086F4 00                    1997 	.db #0x00	; 0
      0086F5 0F                    1998 	.db #0x0f	; 15
      0086F6 00                    1999 	.db #0x00	; 0
      0086F7 00                    2000 	.db #0x00	; 0
      0086F8 00                    2001 	.db #0x00	; 0
      0086F9 00                    2002 	.db #0x00	; 0
      0086FA 10                    2003 	.db #0x10	; 16
      0086FB 11                    2004 	.db #0x11	; 17
      0086FC F2                    2005 	.db #0xf2	; 242
      0086FD 00                    2006 	.db #0x00	; 0
      0086FE 00                    2007 	.db #0x00	; 0
      0086FF E2                    2008 	.db #0xe2	; 226
      008700 22                    2009 	.db #0x22	; 34
      008701 22                    2010 	.db #0x22	; 34
      008702 22                    2011 	.db #0x22	; 34
      008703 3E                    2012 	.db #0x3e	; 62
      008704 00                    2013 	.db #0x00	; 0
      008705 00                    2014 	.db #0x00	; 0
      008706 00                    2015 	.db #0x00	; 0
      008707 00                    2016 	.db #0x00	; 0
      008708 07                    2017 	.db #0x07	; 7
      008709 02                    2018 	.db #0x02	; 2
      00870A 01                    2019 	.db #0x01	; 1
      00870B 07                    2020 	.db #0x07	; 7
      00870C 08                    2021 	.db #0x08	; 8
      00870D 08                    2022 	.db #0x08	; 8
      00870E 08                    2023 	.db #0x08	; 8
      00870F 08                    2024 	.db #0x08	; 8
      008710 0E                    2025 	.db #0x0e	; 14
      008711 00                    2026 	.db #0x00	; 0
      008712 10                    2027 	.db #0x10	; 16
      008713 51                    2028 	.db #0x51	; 81	'Q'
      008714 95                    2029 	.db #0x95	; 149
      008715 15                    2030 	.db #0x15	; 21
      008716 95                    2031 	.db #0x95	; 149
      008717 F5                    2032 	.db #0xf5	; 245
      008718 95                    2033 	.db #0x95	; 149
      008719 15                    2034 	.db #0x15	; 21
      00871A 9F                    2035 	.db #0x9f	; 159
      00871B 50                    2036 	.db #0x50	; 80	'P'
      00871C 10                    2037 	.db #0x10	; 16
      00871D 00                    2038 	.db #0x00	; 0
      00871E 04                    2039 	.db #0x04	; 4
      00871F 04                    2040 	.db #0x04	; 4
      008720 02                    2041 	.db #0x02	; 2
      008721 01                    2042 	.db #0x01	; 1
      008722 08                    2043 	.db #0x08	; 8
      008723 0F                    2044 	.db #0x0f	; 15
      008724 00                    2045 	.db #0x00	; 0
      008725 01                    2046 	.db #0x01	; 1
      008726 02                    2047 	.db #0x02	; 2
      008727 04                    2048 	.db #0x04	; 4
      008728 04                    2049 	.db #0x04	; 4
      008729 00                    2050 	.db #0x00	; 0
      00872A 10                    2051 	.db #0x10	; 16
      00872B D2                    2052 	.db #0xd2	; 210
      00872C 32                    2053 	.db #0x32	; 50	'2'
      00872D 92                    2054 	.db #0x92	; 146
      00872E 10                    2055 	.db #0x10	; 16
      00872F 00                    2056 	.db #0x00	; 0
      008730 08                    2057 	.db #0x08	; 8
      008731 FF                    2058 	.db #0xff	; 255
      008732 08                    2059 	.db #0x08	; 8
      008733 08                    2060 	.db #0x08	; 8
      008734 F8                    2061 	.db #0xf8	; 248
      008735 00                    2062 	.db #0x00	; 0
      008736 03                    2063 	.db #0x03	; 3
      008737 02                    2064 	.db #0x02	; 2
      008738 02                    2065 	.db #0x02	; 2
      008739 02                    2066 	.db #0x02	; 2
      00873A 03                    2067 	.db #0x03	; 3
      00873B 08                    2068 	.db #0x08	; 8
      00873C 06                    2069 	.db #0x06	; 6
      00873D 01                    2070 	.db #0x01	; 1
      00873E 08                    2071 	.db #0x08	; 8
      00873F 08                    2072 	.db #0x08	; 8
      008740 07                    2073 	.db #0x07	; 7
      008741 00                    2074 	.db #0x00	; 0
      008742 20                    2075 	.db #0x20	; 32
      008743 10                    2076 	.db #0x10	; 16
      008744 FC                    2077 	.db #0xfc	; 252
      008745 03                    2078 	.db #0x03	; 3
      008746 08                    2079 	.db #0x08	; 8
      008747 07                    2080 	.db #0x07	; 7
      008748 FC                    2081 	.db #0xfc	; 252
      008749 24                    2082 	.db #0x24	; 36
      00874A 24                    2083 	.db #0x24	; 36
      00874B 24                    2084 	.db #0x24	; 36
      00874C 04                    2085 	.db #0x04	; 4
      00874D 00                    2086 	.db #0x00	; 0
      00874E 00                    2087 	.db #0x00	; 0
      00874F 00                    2088 	.db #0x00	; 0
      008750 0F                    2089 	.db #0x0f	; 15
      008751 00                    2090 	.db #0x00	; 0
      008752 00                    2091 	.db #0x00	; 0
      008753 00                    2092 	.db #0x00	; 0
      008754 0F                    2093 	.db #0x0f	; 15
      008755 01                    2094 	.db #0x01	; 1
      008756 01                    2095 	.db #0x01	; 1
      008757 01                    2096 	.db #0x01	; 1
      008758 01                    2097 	.db #0x01	; 1
      008759 00                    2098 	.db #0x00	; 0
      00875A 10                    2099 	.db #0x10	; 16
      00875B 11                    2100 	.db #0x11	; 17
      00875C F2                    2101 	.db #0xf2	; 242
      00875D 00                    2102 	.db #0x00	; 0
      00875E 20                    2103 	.db #0x20	; 32
      00875F 20                    2104 	.db #0x20	; 32
      008760 20                    2105 	.db #0x20	; 32
      008761 FF                    2106 	.db #0xff	; 255
      008762 20                    2107 	.db #0x20	; 32
      008763 20                    2108 	.db #0x20	; 32
      008764 20                    2109 	.db #0x20	; 32
      008765 00                    2110 	.db #0x00	; 0
      008766 00                    2111 	.db #0x00	; 0
      008767 00                    2112 	.db #0x00	; 0
      008768 07                    2113 	.db #0x07	; 7
      008769 02                    2114 	.db #0x02	; 2
      00876A 01                    2115 	.db #0x01	; 1
      00876B 00                    2116 	.db #0x00	; 0
      00876C 00                    2117 	.db #0x00	; 0
      00876D 0F                    2118 	.db #0x0f	; 15
      00876E 00                    2119 	.db #0x00	; 0
      00876F 00                    2120 	.db #0x00	; 0
      008770 00                    2121 	.db #0x00	; 0
      008771 00                    2122 	.db #0x00	; 0
      008772 02                    2123 	.db #0x02	; 2
      008773 04                    2124 	.db #0x04	; 4
      008774 80                    2125 	.db #0x80	; 128
      008775 20                    2126 	.db #0x20	; 32
      008776 18                    2127 	.db #0x18	; 24
      008777 87                    2128 	.db #0x87	; 135
      008778 74                    2129 	.db #0x74	; 116	't'
      008779 84                    2130 	.db #0x84	; 132
      00877A 04                    2131 	.db #0x04	; 4
      00877B 14                    2132 	.db #0x14	; 20
      00877C 0C                    2133 	.db #0x0c	; 12
      00877D 00                    2134 	.db #0x00	; 0
      00877E 02                    2135 	.db #0x02	; 2
      00877F 01                    2136 	.db #0x01	; 1
      008780 08                    2137 	.db #0x08	; 8
      008781 04                    2138 	.db #0x04	; 4
      008782 02                    2139 	.db #0x02	; 2
      008783 01                    2140 	.db #0x01	; 1
      008784 00                    2141 	.db #0x00	; 0
      008785 01                    2142 	.db #0x01	; 1
      008786 02                    2143 	.db #0x02	; 2
      008787 04                    2144 	.db #0x04	; 4
      008788 08                    2145 	.db #0x08	; 8
      008789 00                    2146 	.db #0x00	; 0
      00878A 00                    2147 	.db #0x00	; 0
      00878B 1F                    2148 	.db #0x1f	; 31
      00878C 25                    2149 	.db #0x25	; 37
      00878D 25                    2150 	.db #0x25	; 37
      00878E 25                    2151 	.db #0x25	; 37
      00878F 25                    2152 	.db #0x25	; 37
      008790 25                    2153 	.db #0x25	; 37
      008791 25                    2154 	.db #0x25	; 37
      008792 A5                    2155 	.db #0xa5	; 165
      008793 27                    2156 	.db #0x27	; 39
      008794 30                    2157 	.db #0x30	; 48	'0'
      008795 00                    2158 	.db #0x00	; 0
      008796 01                    2159 	.db #0x01	; 1
      008797 01                    2160 	.db #0x01	; 1
      008798 03                    2161 	.db #0x03	; 3
      008799 05                    2162 	.db #0x05	; 5
      00879A 01                    2163 	.db #0x01	; 1
      00879B 01                    2164 	.db #0x01	; 1
      00879C 09                    2165 	.db #0x09	; 9
      00879D 09                    2166 	.db #0x09	; 9
      00879E 0F                    2167 	.db #0x0f	; 15
      00879F 01                    2168 	.db #0x01	; 1
      0087A0 01                    2169 	.db #0x01	; 1
      0087A1 00                    2170 	.db #0x00	; 0
      0087A2 11                    2171 	.db #0x11	; 17
      0087A3 F2                    2172 	.db #0xf2	; 242
      0087A4 00                    2173 	.db #0x00	; 0
      0087A5 F9                    2174 	.db #0xf9	; 249
      0087A6 A9                    2175 	.db #0xa9	; 169
      0087A7 AB                    2176 	.db #0xab	; 171
      0087A8 FD                    2177 	.db #0xfd	; 253
      0087A9 AD                    2178 	.db #0xad	; 173
      0087AA AB                    2179 	.db #0xab	; 171
      0087AB F8                    2180 	.db #0xf8	; 248
      0087AC 00                    2181 	.db #0x00	; 0
      0087AD 00                    2182 	.db #0x00	; 0
      0087AE 08                    2183 	.db #0x08	; 8
      0087AF 07                    2184 	.db #0x07	; 7
      0087B0 08                    2185 	.db #0x08	; 8
      0087B1 0B                    2186 	.db #0x0b	; 11
      0087B2 08                    2187 	.db #0x08	; 8
      0087B3 08                    2188 	.db #0x08	; 8
      0087B4 0B                    2189 	.db #0x0b	; 11
      0087B5 08                    2190 	.db #0x08	; 8
      0087B6 0A                    2191 	.db #0x0a	; 10
      0087B7 0B                    2192 	.db #0x0b	; 11
      0087B8 08                    2193 	.db #0x08	; 8
      0087B9 00                    2194 	.db #0x00	; 0
      0087BA 10                    2195 	.db #0x10	; 16
      0087BB F0                    2196 	.db #0xf0	; 240
      0087BC 5F                    2197 	.db #0x5f	; 95
      0087BD 55                    2198 	.db #0x55	; 85	'U'
      0087BE F5                    2199 	.db #0xf5	; 245
      0087BF 15                    2200 	.db #0x15	; 21
      0087C0 55                    2201 	.db #0x55	; 85	'U'
      0087C1 D5                    2202 	.db #0xd5	; 213
      0087C2 5F                    2203 	.db #0x5f	; 95
      0087C3 D0                    2204 	.db #0xd0	; 208
      0087C4 10                    2205 	.db #0x10	; 16
      0087C5 00                    2206 	.db #0x00	; 0
      0087C6 04                    2207 	.db #0x04	; 4
      0087C7 07                    2208 	.db #0x07	; 7
      0087C8 05                    2209 	.db #0x05	; 5
      0087C9 05                    2210 	.db #0x05	; 5
      0087CA 0F                    2211 	.db #0x0f	; 15
      0087CB 02                    2212 	.db #0x02	; 2
      0087CC 08                    2213 	.db #0x08	; 8
      0087CD 05                    2214 	.db #0x05	; 5
      0087CE 02                    2215 	.db #0x02	; 2
      0087CF 05                    2216 	.db #0x05	; 5
      0087D0 08                    2217 	.db #0x08	; 8
      0087D1 00                    2218 	.db #0x00	; 0
      0087D2 10                    2219 	.db #0x10	; 16
      0087D3 10                    2220 	.db #0x10	; 16
      0087D4 10                    2221 	.db #0x10	; 16
      0087D5 10                    2222 	.db #0x10	; 16
      0087D6 D0                    2223 	.db #0xd0	; 208
      0087D7 3F                    2224 	.db #0x3f	; 63
      0087D8 D0                    2225 	.db #0xd0	; 208
      0087D9 10                    2226 	.db #0x10	; 16
      0087DA 10                    2227 	.db #0x10	; 16
      0087DB 10                    2228 	.db #0x10	; 16
      0087DC 10                    2229 	.db #0x10	; 16
      0087DD 00                    2230 	.db #0x00	; 0
      0087DE 08                    2231 	.db #0x08	; 8
      0087DF 08                    2232 	.db #0x08	; 8
      0087E0 04                    2233 	.db #0x04	; 4
      0087E1 03                    2234 	.db #0x03	; 3
      0087E2 00                    2235 	.db #0x00	; 0
      0087E3 00                    2236 	.db #0x00	; 0
      0087E4 00                    2237 	.db #0x00	; 0
      0087E5 03                    2238 	.db #0x03	; 3
      0087E6 04                    2239 	.db #0x04	; 4
      0087E7 08                    2240 	.db #0x08	; 8
      0087E8 08                    2241 	.db #0x08	; 8
      0087E9 00                    2242 	.db #0x00	; 0
      0087EA FE                    2243 	.db #0xfe	; 254
      0087EB 22                    2244 	.db #0x22	; 34
      0087EC 22                    2245 	.db #0x22	; 34
      0087ED FE                    2246 	.db #0xfe	; 254
      0087EE 00                    2247 	.db #0x00	; 0
      0087EF 08                    2248 	.db #0x08	; 8
      0087F0 48                    2249 	.db #0x48	; 72	'H'
      0087F1 88                    2250 	.db #0x88	; 136
      0087F2 08                    2251 	.db #0x08	; 8
      0087F3 FF                    2252 	.db #0xff	; 255
      0087F4 08                    2253 	.db #0x08	; 8
      0087F5 00                    2254 	.db #0x00	; 0
      0087F6 07                    2255 	.db #0x07	; 7
      0087F7 02                    2256 	.db #0x02	; 2
      0087F8 02                    2257 	.db #0x02	; 2
      0087F9 07                    2258 	.db #0x07	; 7
      0087FA 00                    2259 	.db #0x00	; 0
      0087FB 00                    2260 	.db #0x00	; 0
      0087FC 00                    2261 	.db #0x00	; 0
      0087FD 09                    2262 	.db #0x09	; 9
      0087FE 08                    2263 	.db #0x08	; 8
      0087FF 0F                    2264 	.db #0x0f	; 15
      008800 00                    2265 	.db #0x00	; 0
      008801 00                    2266 	.db #0x00	; 0
      008802 20                    2267 	.db #0x20	; 32
      008803 20                    2268 	.db #0x20	; 32
      008804 20                    2269 	.db #0x20	; 32
      008805 FF                    2270 	.db #0xff	; 255
      008806 28                    2271 	.db #0x28	; 40
      008807 28                    2272 	.db #0x28	; 40
      008808 E4                    2273 	.db #0xe4	; 228
      008809 24                    2274 	.db #0x24	; 36
      00880A 22                    2275 	.db #0x22	; 34
      00880B 22                    2276 	.db #0x22	; 34
      00880C 20                    2277 	.db #0x20	; 32
      00880D 00                    2278 	.db #0x00	; 0
      00880E 00                    2279 	.db #0x00	; 0
      00880F 00                    2280 	.db #0x00	; 0
      008810 00                    2281 	.db #0x00	; 0
      008811 0F                    2282 	.db #0x0f	; 15
      008812 04                    2283 	.db #0x04	; 4
      008813 02                    2284 	.db #0x02	; 2
      008814 00                    2285 	.db #0x00	; 0
      008815 01                    2286 	.db #0x01	; 1
      008816 02                    2287 	.db #0x02	; 2
      008817 04                    2288 	.db #0x04	; 4
      008818 04                    2289 	.db #0x04	; 4
      008819 00                    2290 	.db #0x00	; 0
      00881A 00                    2291 	.db #0x00	; 0
      00881B 00                    2292 	.db #0x00	; 0
      00881C 00                    2293 	.db #0x00	; 0
      00881D 00                    2294 	.db #0x00	; 0
      00881E 00                    2295 	.db #0x00	; 0
      00881F 00                    2296 	.db #0x00	; 0
      008820 00                    2297 	.db #0x00	; 0
      008821 00                    2298 	.db #0x00	; 0
      008822 00                    2299 	.db #0x00	; 0
      008823 00                    2300 	.db #0x00	; 0
      008824 00                    2301 	.db #0x00	; 0
      008825 00                    2302 	.db #0x00	; 0
      008826 00                    2303 	.db #0x00	; 0
      008827 00                    2304 	.db #0x00	; 0
      008828 00                    2305 	.db #0x00	; 0
      008829 00                    2306 	.db #0x00	; 0
      00882A 00                    2307 	.db #0x00	; 0
      00882B 00                    2308 	.db #0x00	; 0
      00882C 00                    2309 	.db #0x00	; 0
      00882D 00                    2310 	.db #0x00	; 0
      00882E 00                    2311 	.db #0x00	; 0
      00882F 00                    2312 	.db #0x00	; 0
      008830 00                    2313 	.db #0x00	; 0
      008831 00                    2314 	.db #0x00	; 0
      008832 FC                    2315 	.db #0xfc	; 252
      008833 24                    2316 	.db #0x24	; 36
      008834 24                    2317 	.db #0x24	; 36
      008835 24                    2318 	.db #0x24	; 36
      008836 FF                    2319 	.db #0xff	; 255
      008837 24                    2320 	.db #0x24	; 36
      008838 24                    2321 	.db #0x24	; 36
      008839 24                    2322 	.db #0x24	; 36
      00883A FC                    2323 	.db #0xfc	; 252
      00883B 00                    2324 	.db #0x00	; 0
      00883C 00                    2325 	.db #0x00	; 0
      00883D 00                    2326 	.db #0x00	; 0
      00883E 03                    2327 	.db #0x03	; 3
      00883F 01                    2328 	.db #0x01	; 1
      008840 01                    2329 	.db #0x01	; 1
      008841 01                    2330 	.db #0x01	; 1
      008842 07                    2331 	.db #0x07	; 7
      008843 09                    2332 	.db #0x09	; 9
      008844 09                    2333 	.db #0x09	; 9
      008845 09                    2334 	.db #0x09	; 9
      008846 09                    2335 	.db #0x09	; 9
      008847 08                    2336 	.db #0x08	; 8
      008848 0E                    2337 	.db #0x0e	; 14
      008849 00                    2338 	.db #0x00	; 0
      00884A 22                    2339 	.db #0x22	; 34
      00884B 44                    2340 	.db #0x44	; 68	'D'
      00884C 40                    2341 	.db #0x40	; 64
      00884D FC                    2342 	.db #0xfc	; 252
      00884E 20                    2343 	.db #0x20	; 32
      00884F 10                    2344 	.db #0x10	; 16
      008850 FF                    2345 	.db #0xff	; 255
      008851 08                    2346 	.db #0x08	; 8
      008852 04                    2347 	.db #0x04	; 4
      008853 FC                    2348 	.db #0xfc	; 252
      008854 00                    2349 	.db #0x00	; 0
      008855 00                    2350 	.db #0x00	; 0
      008856 04                    2351 	.db #0x04	; 4
      008857 02                    2352 	.db #0x02	; 2
      008858 00                    2353 	.db #0x00	; 0
      008859 07                    2354 	.db #0x07	; 7
      00885A 08                    2355 	.db #0x08	; 8
      00885B 08                    2356 	.db #0x08	; 8
      00885C 0B                    2357 	.db #0x0b	; 11
      00885D 08                    2358 	.db #0x08	; 8
      00885E 09                    2359 	.db #0x09	; 9
      00885F 09                    2360 	.db #0x09	; 9
      008860 0C                    2361 	.db #0x0c	; 12
      008861 00                    2362 	.db #0x00	; 0
      008862 00                    2363 	.db #0x00	; 0
      008863 FF                    2364 	.db #0xff	; 255
      008864 01                    2365 	.db #0x01	; 1
      008865 21                    2366 	.db #0x21	; 33
      008866 21                    2367 	.db #0x21	; 33
      008867 21                    2368 	.db #0x21	; 33
      008868 FD                    2369 	.db #0xfd	; 253
      008869 21                    2370 	.db #0x21	; 33
      00886A A1                    2371 	.db #0xa1	; 161
      00886B 21                    2372 	.db #0x21	; 33
      00886C 01                    2373 	.db #0x01	; 1
      00886D 00                    2374 	.db #0x00	; 0
      00886E 04                    2375 	.db #0x04	; 4
      00886F 03                    2376 	.db #0x03	; 3
      008870 04                    2377 	.db #0x04	; 4
      008871 04                    2378 	.db #0x04	; 4
      008872 04                    2379 	.db #0x04	; 4
      008873 04                    2380 	.db #0x04	; 4
      008874 07                    2381 	.db #0x07	; 7
      008875 04                    2382 	.db #0x04	; 4
      008876 04                    2383 	.db #0x04	; 4
      008877 05                    2384 	.db #0x05	; 5
      008878 04                    2385 	.db #0x04	; 4
      008879 00                    2386 	.db #0x00	; 0
      00887A 00                    2387 	.db #0x00	; 0
      00887B F8                    2388 	.db #0xf8	; 248
      00887C 88                    2389 	.db #0x88	; 136
      00887D 88                    2390 	.db #0x88	; 136
      00887E 88                    2391 	.db #0x88	; 136
      00887F FF                    2392 	.db #0xff	; 255
      008880 88                    2393 	.db #0x88	; 136
      008881 88                    2394 	.db #0x88	; 136
      008882 88                    2395 	.db #0x88	; 136
      008883 F8                    2396 	.db #0xf8	; 248
      008884 00                    2397 	.db #0x00	; 0
      008885 00                    2398 	.db #0x00	; 0
      008886 00                    2399 	.db #0x00	; 0
      008887 01                    2400 	.db #0x01	; 1
      008888 00                    2401 	.db #0x00	; 0
      008889 00                    2402 	.db #0x00	; 0
      00888A 00                    2403 	.db #0x00	; 0
      00888B 0F                    2404 	.db #0x0f	; 15
      00888C 00                    2405 	.db #0x00	; 0
      00888D 00                    2406 	.db #0x00	; 0
      00888E 00                    2407 	.db #0x00	; 0
      00888F 01                    2408 	.db #0x01	; 1
      008890 00                    2409 	.db #0x00	; 0
      008891 00                    2410 	.db #0x00	; 0
      008892 04                    2411 	.db #0x04	; 4
      008893 04                    2412 	.db #0x04	; 4
      008894 1C                    2413 	.db #0x1c	; 28
      008895 64                    2414 	.db #0x64	; 100	'd'
      008896 85                    2415 	.db #0x85	; 133
      008897 06                    2416 	.db #0x06	; 6
      008898 84                    2417 	.db #0x84	; 132
      008899 64                    2418 	.db #0x64	; 100	'd'
      00889A 1C                    2419 	.db #0x1c	; 28
      00889B 04                    2420 	.db #0x04	; 4
      00889C 04                    2421 	.db #0x04	; 4
      00889D 00                    2422 	.db #0x00	; 0
      00889E 08                    2423 	.db #0x08	; 8
      00889F 08                    2424 	.db #0x08	; 8
      0088A0 04                    2425 	.db #0x04	; 4
      0088A1 04                    2426 	.db #0x04	; 4
      0088A2 02                    2427 	.db #0x02	; 2
      0088A3 01                    2428 	.db #0x01	; 1
      0088A4 02                    2429 	.db #0x02	; 2
      0088A5 04                    2430 	.db #0x04	; 4
      0088A6 04                    2431 	.db #0x04	; 4
      0088A7 08                    2432 	.db #0x08	; 8
      0088A8 08                    2433 	.db #0x08	; 8
      0088A9 00                    2434 	.db #0x00	; 0
      0088AA 00                    2435 	.db #0x00	; 0
      0088AB 3E                    2436 	.db #0x3e	; 62
      0088AC 22                    2437 	.db #0x22	; 34
      0088AD 23                    2438 	.db #0x23	; 35
      0088AE 22                    2439 	.db #0x22	; 34
      0088AF A2                    2440 	.db #0xa2	; 162
      0088B0 22                    2441 	.db #0x22	; 34
      0088B1 23                    2442 	.db #0x23	; 35
      0088B2 22                    2443 	.db #0x22	; 34
      0088B3 BE                    2444 	.db #0xbe	; 190
      0088B4 00                    2445 	.db #0x00	; 0
      0088B5 00                    2446 	.db #0x00	; 0
      0088B6 04                    2447 	.db #0x04	; 4
      0088B7 03                    2448 	.db #0x03	; 3
      0088B8 00                    2449 	.db #0x00	; 0
      0088B9 03                    2450 	.db #0x03	; 3
      0088BA 04                    2451 	.db #0x04	; 4
      0088BB 04                    2452 	.db #0x04	; 4
      0088BC 05                    2453 	.db #0x05	; 5
      0088BD 04                    2454 	.db #0x04	; 4
      0088BE 06                    2455 	.db #0x06	; 6
      0088BF 00                    2456 	.db #0x00	; 0
      0088C0 03                    2457 	.db #0x03	; 3
      0088C1 00                    2458 	.db #0x00	; 0
      0088C2 98                    2459 	.db #0x98	; 152
      0088C3 D4                    2460 	.db #0xd4	; 212
      0088C4 B3                    2461 	.db #0xb3	; 179
      0088C5 88                    2462 	.db #0x88	; 136
      0088C6 00                    2463 	.db #0x00	; 0
      0088C7 64                    2464 	.db #0x64	; 100	'd'
      0088C8 D4                    2465 	.db #0xd4	; 212
      0088C9 4D                    2466 	.db #0x4d	; 77	'M'
      0088CA C6                    2467 	.db #0xc6	; 198
      0088CB 54                    2468 	.db #0x54	; 84	'T'
      0088CC E4                    2469 	.db #0xe4	; 228
      0088CD 00                    2470 	.db #0x00	; 0
      0088CE 04                    2471 	.db #0x04	; 4
      0088CF 04                    2472 	.db #0x04	; 4
      0088D0 02                    2473 	.db #0x02	; 2
      0088D1 02                    2474 	.db #0x02	; 2
      0088D2 08                    2475 	.db #0x08	; 8
      0088D3 04                    2476 	.db #0x04	; 4
      0088D4 03                    2477 	.db #0x03	; 3
      0088D5 00                    2478 	.db #0x00	; 0
      0088D6 07                    2479 	.db #0x07	; 7
      0088D7 08                    2480 	.db #0x08	; 8
      0088D8 0C                    2481 	.db #0x0c	; 12
      0088D9 00                    2482 	.db #0x00	; 0
      0088DA 80                    2483 	.db #0x80	; 128
      0088DB 1E                    2484 	.db #0x1e	; 30
      0088DC 10                    2485 	.db #0x10	; 16
      0088DD 10                    2486 	.db #0x10	; 16
      0088DE 10                    2487 	.db #0x10	; 16
      0088DF FF                    2488 	.db #0xff	; 255
      0088E0 10                    2489 	.db #0x10	; 16
      0088E1 10                    2490 	.db #0x10	; 16
      0088E2 10                    2491 	.db #0x10	; 16
      0088E3 1E                    2492 	.db #0x1e	; 30
      0088E4 80                    2493 	.db #0x80	; 128
      0088E5 00                    2494 	.db #0x00	; 0
      0088E6 07                    2495 	.db #0x07	; 7
      0088E7 04                    2496 	.db #0x04	; 4
      0088E8 04                    2497 	.db #0x04	; 4
      0088E9 04                    2498 	.db #0x04	; 4
      0088EA 04                    2499 	.db #0x04	; 4
      0088EB 07                    2500 	.db #0x07	; 7
      0088EC 04                    2501 	.db #0x04	; 4
      0088ED 04                    2502 	.db #0x04	; 4
      0088EE 04                    2503 	.db #0x04	; 4
      0088EF 04                    2504 	.db #0x04	; 4
      0088F0 0F                    2505 	.db #0x0f	; 15
      0088F1 00                    2506 	.db #0x00	; 0
      0088F2 00                    2507 	.db #0x00	; 0
      0088F3 FE                    2508 	.db #0xfe	; 254
      0088F4 02                    2509 	.db #0x02	; 2
      0088F5 02                    2510 	.db #0x02	; 2
      0088F6 02                    2511 	.db #0x02	; 2
      0088F7 02                    2512 	.db #0x02	; 2
      0088F8 02                    2513 	.db #0x02	; 2
      0088F9 02                    2514 	.db #0x02	; 2
      0088FA 02                    2515 	.db #0x02	; 2
      0088FB 02                    2516 	.db #0x02	; 2
      0088FC 02                    2517 	.db #0x02	; 2
      0088FD 00                    2518 	.db #0x00	; 0
      0088FE 08                    2519 	.db #0x08	; 8
      0088FF 07                    2520 	.db #0x07	; 7
      008900 00                    2521 	.db #0x00	; 0
      008901 00                    2522 	.db #0x00	; 0
      008902 00                    2523 	.db #0x00	; 0
      008903 00                    2524 	.db #0x00	; 0
      008904 00                    2525 	.db #0x00	; 0
      008905 00                    2526 	.db #0x00	; 0
      008906 00                    2527 	.db #0x00	; 0
      008907 00                    2528 	.db #0x00	; 0
      008908 00                    2529 	.db #0x00	; 0
      008909 00                    2530 	.db #0x00	; 0
      00890A 10                    2531 	.db #0x10	; 16
      00890B 11                    2532 	.db #0x11	; 17
      00890C F2                    2533 	.db #0xf2	; 242
      00890D 00                    2534 	.db #0x00	; 0
      00890E 50                    2535 	.db #0x50	; 80	'P'
      00890F CF                    2536 	.db #0xcf	; 207
      008910 41                    2537 	.db #0x41	; 65	'A'
      008911 41                    2538 	.db #0x41	; 65	'A'
      008912 4F                    2539 	.db #0x4f	; 79	'O'
      008913 D0                    2540 	.db #0xd0	; 208
      008914 10                    2541 	.db #0x10	; 16
      008915 00                    2542 	.db #0x00	; 0
      008916 00                    2543 	.db #0x00	; 0
      008917 00                    2544 	.db #0x00	; 0
      008918 07                    2545 	.db #0x07	; 7
      008919 02                    2546 	.db #0x02	; 2
      00891A 08                    2547 	.db #0x08	; 8
      00891B 08                    2548 	.db #0x08	; 8
      00891C 05                    2549 	.db #0x05	; 5
      00891D 02                    2550 	.db #0x02	; 2
      00891E 05                    2551 	.db #0x05	; 5
      00891F 08                    2552 	.db #0x08	; 8
      008920 08                    2553 	.db #0x08	; 8
      008921 00                    2554 	.db #0x00	; 0
      008922 10                    2555 	.db #0x10	; 16
      008923 17                    2556 	.db #0x17	; 23
      008924 D5                    2557 	.db #0xd5	; 213
      008925 55                    2558 	.db #0x55	; 85	'U'
      008926 57                    2559 	.db #0x57	; 87	'W'
      008927 7D                    2560 	.db #0x7d	; 125
      008928 57                    2561 	.db #0x57	; 87	'W'
      008929 55                    2562 	.db #0x55	; 85	'U'
      00892A D5                    2563 	.db #0xd5	; 213
      00892B 17                    2564 	.db #0x17	; 23
      00892C 10                    2565 	.db #0x10	; 16
      00892D 00                    2566 	.db #0x00	; 0
      00892E 08                    2567 	.db #0x08	; 8
      00892F 08                    2568 	.db #0x08	; 8
      008930 0F                    2569 	.db #0x0f	; 15
      008931 08                    2570 	.db #0x08	; 8
      008932 08                    2571 	.db #0x08	; 8
      008933 0E                    2572 	.db #0x0e	; 14
      008934 08                    2573 	.db #0x08	; 8
      008935 08                    2574 	.db #0x08	; 8
      008936 0F                    2575 	.db #0x0f	; 15
      008937 08                    2576 	.db #0x08	; 8
      008938 08                    2577 	.db #0x08	; 8
      008939 00                    2578 	.db #0x00	; 0
      00893A FF                    2579 	.db #0xff	; 255
      00893B 01                    2580 	.db #0x01	; 1
      00893C 01                    2581 	.db #0x01	; 1
      00893D 01                    2582 	.db #0x01	; 1
      00893E 09                    2583 	.db #0x09	; 9
      00893F FD                    2584 	.db #0xfd	; 253
      008940 FD                    2585 	.db #0xfd	; 253
      008941 01                    2586 	.db #0x01	; 1
      008942 01                    2587 	.db #0x01	; 1
      008943 01                    2588 	.db #0x01	; 1
      008944 01                    2589 	.db #0x01	; 1
      008945 FF                    2590 	.db #0xff	; 255
      008946 0F                    2591 	.db #0x0f	; 15
      008947 08                    2592 	.db #0x08	; 8
      008948 08                    2593 	.db #0x08	; 8
      008949 08                    2594 	.db #0x08	; 8
      00894A 0A                    2595 	.db #0x0a	; 10
      00894B 0B                    2596 	.db #0x0b	; 11
      00894C 0B                    2597 	.db #0x0b	; 11
      00894D 0A                    2598 	.db #0x0a	; 10
      00894E 08                    2599 	.db #0x08	; 8
      00894F 08                    2600 	.db #0x08	; 8
      008950 08                    2601 	.db #0x08	; 8
      008951 0F                    2602 	.db #0x0f	; 15
      008952 FF                    2603 	.db #0xff	; 255
      008953 01                    2604 	.db #0x01	; 1
      008954 01                    2605 	.db #0x01	; 1
      008955 09                    2606 	.db #0x09	; 9
      008956 8D                    2607 	.db #0x8d	; 141
      008957 C5                    2608 	.db #0xc5	; 197
      008958 65                    2609 	.db #0x65	; 101	'e'
      008959 3D                    2610 	.db #0x3d	; 61
      00895A 19                    2611 	.db #0x19	; 25
      00895B 01                    2612 	.db #0x01	; 1
      00895C 01                    2613 	.db #0x01	; 1
      00895D FF                    2614 	.db #0xff	; 255
      00895E 0F                    2615 	.db #0x0f	; 15
      00895F 08                    2616 	.db #0x08	; 8
      008960 08                    2617 	.db #0x08	; 8
      008961 0B                    2618 	.db #0x0b	; 11
      008962 0B                    2619 	.db #0x0b	; 11
      008963 0A                    2620 	.db #0x0a	; 10
      008964 0A                    2621 	.db #0x0a	; 10
      008965 0A                    2622 	.db #0x0a	; 10
      008966 0A                    2623 	.db #0x0a	; 10
      008967 08                    2624 	.db #0x08	; 8
      008968 08                    2625 	.db #0x08	; 8
      008969 0F                    2626 	.db #0x0f	; 15
      00896A FF                    2627 	.db #0xff	; 255
      00896B 01                    2628 	.db #0x01	; 1
      00896C 01                    2629 	.db #0x01	; 1
      00896D 09                    2630 	.db #0x09	; 9
      00896E 0D                    2631 	.db #0x0d	; 13
      00896F 25                    2632 	.db #0x25	; 37
      008970 25                    2633 	.db #0x25	; 37
      008971 FD                    2634 	.db #0xfd	; 253
      008972 D9                    2635 	.db #0xd9	; 217
      008973 01                    2636 	.db #0x01	; 1
      008974 01                    2637 	.db #0x01	; 1
      008975 FF                    2638 	.db #0xff	; 255
      008976 0F                    2639 	.db #0x0f	; 15
      008977 08                    2640 	.db #0x08	; 8
      008978 08                    2641 	.db #0x08	; 8
      008979 09                    2642 	.db #0x09	; 9
      00897A 0B                    2643 	.db #0x0b	; 11
      00897B 0A                    2644 	.db #0x0a	; 10
      00897C 0A                    2645 	.db #0x0a	; 10
      00897D 0B                    2646 	.db #0x0b	; 11
      00897E 09                    2647 	.db #0x09	; 9
      00897F 08                    2648 	.db #0x08	; 8
      008980 08                    2649 	.db #0x08	; 8
      008981 0F                    2650 	.db #0x0f	; 15
      008982 FF                    2651 	.db #0xff	; 255
      008983 01                    2652 	.db #0x01	; 1
      008984 C1                    2653 	.db #0xc1	; 193
      008985 A1                    2654 	.db #0xa1	; 161
      008986 91                    2655 	.db #0x91	; 145
      008987 F9                    2656 	.db #0xf9	; 249
      008988 FD                    2657 	.db #0xfd	; 253
      008989 81                    2658 	.db #0x81	; 129
      00898A 01                    2659 	.db #0x01	; 1
      00898B 01                    2660 	.db #0x01	; 1
      00898C 01                    2661 	.db #0x01	; 1
      00898D FF                    2662 	.db #0xff	; 255
      00898E 0F                    2663 	.db #0x0f	; 15
      00898F 08                    2664 	.db #0x08	; 8
      008990 08                    2665 	.db #0x08	; 8
      008991 08                    2666 	.db #0x08	; 8
      008992 08                    2667 	.db #0x08	; 8
      008993 0B                    2668 	.db #0x0b	; 11
      008994 0B                    2669 	.db #0x0b	; 11
      008995 08                    2670 	.db #0x08	; 8
      008996 08                    2671 	.db #0x08	; 8
      008997 08                    2672 	.db #0x08	; 8
      008998 08                    2673 	.db #0x08	; 8
      008999 0F                    2674 	.db #0x0f	; 15
      00899A FF                    2675 	.db #0xff	; 255
      00899B 01                    2676 	.db #0x01	; 1
      00899C 01                    2677 	.db #0x01	; 1
      00899D 01                    2678 	.db #0x01	; 1
      00899E 3D                    2679 	.db #0x3d	; 61
      00899F 3D                    2680 	.db #0x3d	; 61
      0089A0 25                    2681 	.db #0x25	; 37
      0089A1 E5                    2682 	.db #0xe5	; 229
      0089A2 C5                    2683 	.db #0xc5	; 197
      0089A3 01                    2684 	.db #0x01	; 1
      0089A4 01                    2685 	.db #0x01	; 1
      0089A5 FF                    2686 	.db #0xff	; 255
      0089A6 0F                    2687 	.db #0x0f	; 15
      0089A7 08                    2688 	.db #0x08	; 8
      0089A8 08                    2689 	.db #0x08	; 8
      0089A9 08                    2690 	.db #0x08	; 8
      0089AA 0B                    2691 	.db #0x0b	; 11
      0089AB 0A                    2692 	.db #0x0a	; 10
      0089AC 0A                    2693 	.db #0x0a	; 10
      0089AD 0B                    2694 	.db #0x0b	; 11
      0089AE 09                    2695 	.db #0x09	; 9
      0089AF 08                    2696 	.db #0x08	; 8
      0089B0 08                    2697 	.db #0x08	; 8
      0089B1 0F                    2698 	.db #0x0f	; 15
                                   2699 	.area CODE
                                   2700 	.area CONST
      0089B2                       2701 _char_7x8:
      0089B2 00                    2702 	.db #0x00	; 0
      0089B3 3C                    2703 	.db #0x3c	; 60
      0089B4 66                    2704 	.db #0x66	; 102	'f'
      0089B5 42                    2705 	.db #0x42	; 66	'B'
      0089B6 42                    2706 	.db #0x42	; 66	'B'
      0089B7 66                    2707 	.db #0x66	; 102	'f'
      0089B8 3C                    2708 	.db #0x3c	; 60
      0089B9 00                    2709 	.db #0x00	; 0
      0089BA 00                    2710 	.db #0x00	; 0
      0089BB 04                    2711 	.db #0x04	; 4
      0089BC 04                    2712 	.db #0x04	; 4
      0089BD 04                    2713 	.db #0x04	; 4
      0089BE 7E                    2714 	.db #0x7e	; 126
      0089BF 00                    2715 	.db #0x00	; 0
      0089C0 00                    2716 	.db #0x00	; 0
      0089C1 00                    2717 	.db #0x00	; 0
      0089C2 00                    2718 	.db #0x00	; 0
      0089C3 64                    2719 	.db #0x64	; 100	'd'
      0089C4 72                    2720 	.db #0x72	; 114	'r'
      0089C5 52                    2721 	.db #0x52	; 82	'R'
      0089C6 52                    2722 	.db #0x52	; 82	'R'
      0089C7 4A                    2723 	.db #0x4a	; 74	'J'
      0089C8 4C                    2724 	.db #0x4c	; 76	'L'
      0089C9 00                    2725 	.db #0x00	; 0
      0089CA 00                    2726 	.db #0x00	; 0
      0089CB 24                    2727 	.db #0x24	; 36
      0089CC 42                    2728 	.db #0x42	; 66	'B'
      0089CD 4A                    2729 	.db #0x4a	; 74	'J'
      0089CE 4A                    2730 	.db #0x4a	; 74	'J'
      0089CF 4A                    2731 	.db #0x4a	; 74	'J'
      0089D0 34                    2732 	.db #0x34	; 52	'4'
      0089D1 00                    2733 	.db #0x00	; 0
      0089D2 10                    2734 	.db #0x10	; 16
      0089D3 18                    2735 	.db #0x18	; 24
      0089D4 14                    2736 	.db #0x14	; 20
      0089D5 14                    2737 	.db #0x14	; 20
      0089D6 12                    2738 	.db #0x12	; 18
      0089D7 7E                    2739 	.db #0x7e	; 126
      0089D8 10                    2740 	.db #0x10	; 16
      0089D9 00                    2741 	.db #0x00	; 0
      0089DA 00                    2742 	.db #0x00	; 0
      0089DB 38                    2743 	.db #0x38	; 56	'8'
      0089DC 4E                    2744 	.db #0x4e	; 78	'N'
      0089DD 4A                    2745 	.db #0x4a	; 74	'J'
      0089DE 4A                    2746 	.db #0x4a	; 74	'J'
      0089DF 4A                    2747 	.db #0x4a	; 74	'J'
      0089E0 32                    2748 	.db #0x32	; 50	'2'
      0089E1 00                    2749 	.db #0x00	; 0
      0089E2 00                    2750 	.db #0x00	; 0
      0089E3 3C                    2751 	.db #0x3c	; 60
      0089E4 4A                    2752 	.db #0x4a	; 74	'J'
      0089E5 4A                    2753 	.db #0x4a	; 74	'J'
      0089E6 4A                    2754 	.db #0x4a	; 74	'J'
      0089E7 4A                    2755 	.db #0x4a	; 74	'J'
      0089E8 34                    2756 	.db #0x34	; 52	'4'
      0089E9 00                    2757 	.db #0x00	; 0
      0089EA 00                    2758 	.db #0x00	; 0
      0089EB 02                    2759 	.db #0x02	; 2
      0089EC 42                    2760 	.db #0x42	; 66	'B'
      0089ED 32                    2761 	.db #0x32	; 50	'2'
      0089EE 0A                    2762 	.db #0x0a	; 10
      0089EF 06                    2763 	.db #0x06	; 6
      0089F0 02                    2764 	.db #0x02	; 2
      0089F1 00                    2765 	.db #0x00	; 0
      0089F2 00                    2766 	.db #0x00	; 0
      0089F3 34                    2767 	.db #0x34	; 52	'4'
      0089F4 4A                    2768 	.db #0x4a	; 74	'J'
      0089F5 4A                    2769 	.db #0x4a	; 74	'J'
      0089F6 4A                    2770 	.db #0x4a	; 74	'J'
      0089F7 4A                    2771 	.db #0x4a	; 74	'J'
      0089F8 34                    2772 	.db #0x34	; 52	'4'
      0089F9 00                    2773 	.db #0x00	; 0
      0089FA 00                    2774 	.db #0x00	; 0
      0089FB 4C                    2775 	.db #0x4c	; 76	'L'
      0089FC 52                    2776 	.db #0x52	; 82	'R'
      0089FD 52                    2777 	.db #0x52	; 82	'R'
      0089FE 52                    2778 	.db #0x52	; 82	'R'
      0089FF 72                    2779 	.db #0x72	; 114	'r'
      008A00 3C                    2780 	.db #0x3c	; 60
      008A01 00                    2781 	.db #0x00	; 0
      008A02 00                    2782 	.db #0x00	; 0
      008A03 00                    2783 	.db #0x00	; 0
      008A04 00                    2784 	.db #0x00	; 0
      008A05 22                    2785 	.db #0x22	; 34
      008A06 00                    2786 	.db #0x00	; 0
      008A07 00                    2787 	.db #0x00	; 0
      008A08 00                    2788 	.db #0x00	; 0
      008A09 00                    2789 	.db #0x00	; 0
      008A0A 00                    2790 	.db #0x00	; 0
      008A0B 00                    2791 	.db #0x00	; 0
      008A0C 00                    2792 	.db #0x00	; 0
      008A0D 22                    2793 	.db #0x22	; 34
      008A0E 62                    2794 	.db #0x62	; 98	'b'
      008A0F 00                    2795 	.db #0x00	; 0
      008A10 00                    2796 	.db #0x00	; 0
      008A11 00                    2797 	.db #0x00	; 0
      008A12 00                    2798 	.db #0x00	; 0
      008A13 00                    2799 	.db #0x00	; 0
      008A14 18                    2800 	.db #0x18	; 24
      008A15 18                    2801 	.db #0x18	; 24
      008A16 28                    2802 	.db #0x28	; 40
      008A17 28                    2803 	.db #0x28	; 40
      008A18 24                    2804 	.db #0x24	; 36
      008A19 24                    2805 	.db #0x24	; 36
      008A1A 00                    2806 	.db #0x00	; 0
      008A1B 18                    2807 	.db #0x18	; 24
      008A1C 18                    2808 	.db #0x18	; 24
      008A1D 18                    2809 	.db #0x18	; 24
      008A1E 18                    2810 	.db #0x18	; 24
      008A1F 18                    2811 	.db #0x18	; 24
      008A20 18                    2812 	.db #0x18	; 24
      008A21 00                    2813 	.db #0x00	; 0
      008A22 24                    2814 	.db #0x24	; 36
      008A23 24                    2815 	.db #0x24	; 36
      008A24 28                    2816 	.db #0x28	; 40
      008A25 28                    2817 	.db #0x28	; 40
      008A26 18                    2818 	.db #0x18	; 24
      008A27 18                    2819 	.db #0x18	; 24
      008A28 00                    2820 	.db #0x00	; 0
      008A29 00                    2821 	.db #0x00	; 0
      008A2A 00                    2822 	.db #0x00	; 0
      008A2B 04                    2823 	.db #0x04	; 4
      008A2C 02                    2824 	.db #0x02	; 2
      008A2D 62                    2825 	.db #0x62	; 98	'b'
      008A2E 12                    2826 	.db #0x12	; 18
      008A2F 12                    2827 	.db #0x12	; 18
      008A30 0C                    2828 	.db #0x0c	; 12
      008A31 00                    2829 	.db #0x00	; 0
      008A32 78                    2830 	.db #0x78	; 120	'x'
      008A33 C4                    2831 	.db #0xc4	; 196
      008A34 B4                    2832 	.db #0xb4	; 180
      008A35 AA                    2833 	.db #0xaa	; 170
      008A36 BA                    2834 	.db #0xba	; 186
      008A37 6A                    2835 	.db #0x6a	; 106	'j'
      008A38 26                    2836 	.db #0x26	; 38
      008A39 1C                    2837 	.db #0x1c	; 28
      008A3A 40                    2838 	.db #0x40	; 64
      008A3B 30                    2839 	.db #0x30	; 48	'0'
      008A3C 18                    2840 	.db #0x18	; 24
      008A3D 16                    2841 	.db #0x16	; 22
      008A3E 16                    2842 	.db #0x16	; 22
      008A3F 18                    2843 	.db #0x18	; 24
      008A40 30                    2844 	.db #0x30	; 48	'0'
      008A41 40                    2845 	.db #0x40	; 64
      008A42 00                    2846 	.db #0x00	; 0
      008A43 7E                    2847 	.db #0x7e	; 126
      008A44 4A                    2848 	.db #0x4a	; 74	'J'
      008A45 4A                    2849 	.db #0x4a	; 74	'J'
      008A46 4A                    2850 	.db #0x4a	; 74	'J'
      008A47 4A                    2851 	.db #0x4a	; 74	'J'
      008A48 54                    2852 	.db #0x54	; 84	'T'
      008A49 20                    2853 	.db #0x20	; 32
      008A4A 00                    2854 	.db #0x00	; 0
      008A4B 3C                    2855 	.db #0x3c	; 60
      008A4C 66                    2856 	.db #0x66	; 102	'f'
      008A4D 42                    2857 	.db #0x42	; 66	'B'
      008A4E 42                    2858 	.db #0x42	; 66	'B'
      008A4F 42                    2859 	.db #0x42	; 66	'B'
      008A50 44                    2860 	.db #0x44	; 68	'D'
      008A51 20                    2861 	.db #0x20	; 32
      008A52 00                    2862 	.db #0x00	; 0
      008A53 7E                    2863 	.db #0x7e	; 126
      008A54 42                    2864 	.db #0x42	; 66	'B'
      008A55 42                    2865 	.db #0x42	; 66	'B'
      008A56 42                    2866 	.db #0x42	; 66	'B'
      008A57 66                    2867 	.db #0x66	; 102	'f'
      008A58 3C                    2868 	.db #0x3c	; 60
      008A59 00                    2869 	.db #0x00	; 0
      008A5A 00                    2870 	.db #0x00	; 0
      008A5B 7E                    2871 	.db #0x7e	; 126
      008A5C 4A                    2872 	.db #0x4a	; 74	'J'
      008A5D 4A                    2873 	.db #0x4a	; 74	'J'
      008A5E 4A                    2874 	.db #0x4a	; 74	'J'
      008A5F 4A                    2875 	.db #0x4a	; 74	'J'
      008A60 4A                    2876 	.db #0x4a	; 74	'J'
      008A61 00                    2877 	.db #0x00	; 0
      008A62 00                    2878 	.db #0x00	; 0
      008A63 7E                    2879 	.db #0x7e	; 126
      008A64 0A                    2880 	.db #0x0a	; 10
      008A65 0A                    2881 	.db #0x0a	; 10
      008A66 0A                    2882 	.db #0x0a	; 10
      008A67 0A                    2883 	.db #0x0a	; 10
      008A68 0A                    2884 	.db #0x0a	; 10
      008A69 00                    2885 	.db #0x00	; 0
      008A6A 00                    2886 	.db #0x00	; 0
      008A6B 3C                    2887 	.db #0x3c	; 60
      008A6C 66                    2888 	.db #0x66	; 102	'f'
      008A6D 42                    2889 	.db #0x42	; 66	'B'
      008A6E 52                    2890 	.db #0x52	; 82	'R'
      008A6F 52                    2891 	.db #0x52	; 82	'R'
      008A70 74                    2892 	.db #0x74	; 116	't'
      008A71 00                    2893 	.db #0x00	; 0
      008A72 00                    2894 	.db #0x00	; 0
      008A73 7E                    2895 	.db #0x7e	; 126
      008A74 08                    2896 	.db #0x08	; 8
      008A75 08                    2897 	.db #0x08	; 8
      008A76 08                    2898 	.db #0x08	; 8
      008A77 08                    2899 	.db #0x08	; 8
      008A78 7E                    2900 	.db #0x7e	; 126
      008A79 00                    2901 	.db #0x00	; 0
      008A7A 00                    2902 	.db #0x00	; 0
      008A7B 00                    2903 	.db #0x00	; 0
      008A7C 00                    2904 	.db #0x00	; 0
      008A7D 7E                    2905 	.db #0x7e	; 126
      008A7E 00                    2906 	.db #0x00	; 0
      008A7F 00                    2907 	.db #0x00	; 0
      008A80 00                    2908 	.db #0x00	; 0
      008A81 00                    2909 	.db #0x00	; 0
      008A82 00                    2910 	.db #0x00	; 0
      008A83 20                    2911 	.db #0x20	; 32
      008A84 40                    2912 	.db #0x40	; 64
      008A85 40                    2913 	.db #0x40	; 64
      008A86 40                    2914 	.db #0x40	; 64
      008A87 40                    2915 	.db #0x40	; 64
      008A88 3E                    2916 	.db #0x3e	; 62
      008A89 00                    2917 	.db #0x00	; 0
      008A8A 00                    2918 	.db #0x00	; 0
      008A8B 7E                    2919 	.db #0x7e	; 126
      008A8C 10                    2920 	.db #0x10	; 16
      008A8D 08                    2921 	.db #0x08	; 8
      008A8E 14                    2922 	.db #0x14	; 20
      008A8F 22                    2923 	.db #0x22	; 34
      008A90 42                    2924 	.db #0x42	; 66	'B'
      008A91 00                    2925 	.db #0x00	; 0
      008A92 00                    2926 	.db #0x00	; 0
      008A93 7E                    2927 	.db #0x7e	; 126
      008A94 40                    2928 	.db #0x40	; 64
      008A95 40                    2929 	.db #0x40	; 64
      008A96 40                    2930 	.db #0x40	; 64
      008A97 40                    2931 	.db #0x40	; 64
      008A98 40                    2932 	.db #0x40	; 64
      008A99 00                    2933 	.db #0x00	; 0
      008A9A 00                    2934 	.db #0x00	; 0
      008A9B 7E                    2935 	.db #0x7e	; 126
      008A9C 0E                    2936 	.db #0x0e	; 14
      008A9D 70                    2937 	.db #0x70	; 112	'p'
      008A9E 70                    2938 	.db #0x70	; 112	'p'
      008A9F 0E                    2939 	.db #0x0e	; 14
      008AA0 7E                    2940 	.db #0x7e	; 126
      008AA1 00                    2941 	.db #0x00	; 0
      008AA2 00                    2942 	.db #0x00	; 0
      008AA3 7E                    2943 	.db #0x7e	; 126
      008AA4 06                    2944 	.db #0x06	; 6
      008AA5 08                    2945 	.db #0x08	; 8
      008AA6 10                    2946 	.db #0x10	; 16
      008AA7 60                    2947 	.db #0x60	; 96
      008AA8 7E                    2948 	.db #0x7e	; 126
      008AA9 00                    2949 	.db #0x00	; 0
      008AAA 00                    2950 	.db #0x00	; 0
      008AAB 3C                    2951 	.db #0x3c	; 60
      008AAC 66                    2952 	.db #0x66	; 102	'f'
      008AAD 42                    2953 	.db #0x42	; 66	'B'
      008AAE 42                    2954 	.db #0x42	; 66	'B'
      008AAF 66                    2955 	.db #0x66	; 102	'f'
      008AB0 3C                    2956 	.db #0x3c	; 60
      008AB1 00                    2957 	.db #0x00	; 0
      008AB2 00                    2958 	.db #0x00	; 0
      008AB3 7E                    2959 	.db #0x7e	; 126
      008AB4 12                    2960 	.db #0x12	; 18
      008AB5 12                    2961 	.db #0x12	; 18
      008AB6 12                    2962 	.db #0x12	; 18
      008AB7 12                    2963 	.db #0x12	; 18
      008AB8 0C                    2964 	.db #0x0c	; 12
      008AB9 00                    2965 	.db #0x00	; 0
      008ABA 00                    2966 	.db #0x00	; 0
      008ABB 3C                    2967 	.db #0x3c	; 60
      008ABC 66                    2968 	.db #0x66	; 102	'f'
      008ABD 42                    2969 	.db #0x42	; 66	'B'
      008ABE 62                    2970 	.db #0x62	; 98	'b'
      008ABF 46                    2971 	.db #0x46	; 70	'F'
      008AC0 BC                    2972 	.db #0xbc	; 188
      008AC1 00                    2973 	.db #0x00	; 0
      008AC2 00                    2974 	.db #0x00	; 0
      008AC3 7E                    2975 	.db #0x7e	; 126
      008AC4 0A                    2976 	.db #0x0a	; 10
      008AC5 0A                    2977 	.db #0x0a	; 10
      008AC6 0A                    2978 	.db #0x0a	; 10
      008AC7 0A                    2979 	.db #0x0a	; 10
      008AC8 7C                    2980 	.db #0x7c	; 124
      008AC9 00                    2981 	.db #0x00	; 0
      008ACA 00                    2982 	.db #0x00	; 0
      008ACB 24                    2983 	.db #0x24	; 36
      008ACC 4A                    2984 	.db #0x4a	; 74	'J'
      008ACD 4A                    2985 	.db #0x4a	; 74	'J'
      008ACE 4A                    2986 	.db #0x4a	; 74	'J'
      008ACF 4A                    2987 	.db #0x4a	; 74	'J'
      008AD0 54                    2988 	.db #0x54	; 84	'T'
      008AD1 30                    2989 	.db #0x30	; 48	'0'
      008AD2 02                    2990 	.db #0x02	; 2
      008AD3 02                    2991 	.db #0x02	; 2
      008AD4 02                    2992 	.db #0x02	; 2
      008AD5 7E                    2993 	.db #0x7e	; 126
      008AD6 02                    2994 	.db #0x02	; 2
      008AD7 02                    2995 	.db #0x02	; 2
      008AD8 02                    2996 	.db #0x02	; 2
      008AD9 00                    2997 	.db #0x00	; 0
      008ADA 00                    2998 	.db #0x00	; 0
      008ADB 3E                    2999 	.db #0x3e	; 62
      008ADC 40                    3000 	.db #0x40	; 64
      008ADD 40                    3001 	.db #0x40	; 64
      008ADE 40                    3002 	.db #0x40	; 64
      008ADF 40                    3003 	.db #0x40	; 64
      008AE0 3E                    3004 	.db #0x3e	; 62
      008AE1 00                    3005 	.db #0x00	; 0
      008AE2 02                    3006 	.db #0x02	; 2
      008AE3 0C                    3007 	.db #0x0c	; 12
      008AE4 30                    3008 	.db #0x30	; 48	'0'
      008AE5 60                    3009 	.db #0x60	; 96
      008AE6 20                    3010 	.db #0x20	; 32
      008AE7 18                    3011 	.db #0x18	; 24
      008AE8 04                    3012 	.db #0x04	; 4
      008AE9 02                    3013 	.db #0x02	; 2
      008AEA 0E                    3014 	.db #0x0e	; 14
      008AEB 10                    3015 	.db #0x10	; 16
      008AEC 78                    3016 	.db #0x78	; 120	'x'
      008AED 1E                    3017 	.db #0x1e	; 30
      008AEE 1C                    3018 	.db #0x1c	; 28
      008AEF 60                    3019 	.db #0x60	; 96
      008AF0 1C                    3020 	.db #0x1c	; 28
      008AF1 02                    3021 	.db #0x02	; 2
      008AF2 40                    3022 	.db #0x40	; 64
      008AF3 62                    3023 	.db #0x62	; 98	'b'
      008AF4 34                    3024 	.db #0x34	; 52	'4'
      008AF5 18                    3025 	.db #0x18	; 24
      008AF6 14                    3026 	.db #0x14	; 20
      008AF7 22                    3027 	.db #0x22	; 34
      008AF8 40                    3028 	.db #0x40	; 64
      008AF9 00                    3029 	.db #0x00	; 0
      008AFA 02                    3030 	.db #0x02	; 2
      008AFB 06                    3031 	.db #0x06	; 6
      008AFC 0C                    3032 	.db #0x0c	; 12
      008AFD 78                    3033 	.db #0x78	; 120	'x'
      008AFE 08                    3034 	.db #0x08	; 8
      008AFF 04                    3035 	.db #0x04	; 4
      008B00 02                    3036 	.db #0x02	; 2
      008B01 00                    3037 	.db #0x00	; 0
      008B02 42                    3038 	.db #0x42	; 66	'B'
      008B03 62                    3039 	.db #0x62	; 98	'b'
      008B04 52                    3040 	.db #0x52	; 82	'R'
      008B05 4A                    3041 	.db #0x4a	; 74	'J'
      008B06 4A                    3042 	.db #0x4a	; 74	'J'
      008B07 46                    3043 	.db #0x46	; 70	'F'
      008B08 42                    3044 	.db #0x42	; 66	'B'
      008B09 00                    3045 	.db #0x00	; 0
      008B0A 00                    3046 	.db #0x00	; 0
      008B0B 00                    3047 	.db #0x00	; 0
      008B0C FF                    3048 	.db #0xff	; 255
      008B0D 81                    3049 	.db #0x81	; 129
      008B0E 81                    3050 	.db #0x81	; 129
      008B0F 00                    3051 	.db #0x00	; 0
      008B10 00                    3052 	.db #0x00	; 0
      008B11 00                    3053 	.db #0x00	; 0
      008B12 0E                    3054 	.db #0x0e	; 14
      008B13 38                    3055 	.db #0x38	; 56	'8'
      008B14 68                    3056 	.db #0x68	; 104	'h'
      008B15 3E                    3057 	.db #0x3e	; 62
      008B16 0E                    3058 	.db #0x0e	; 14
      008B17 38                    3059 	.db #0x38	; 56	'8'
      008B18 78                    3060 	.db #0x78	; 120	'x'
      008B19 0E                    3061 	.db #0x0e	; 14
      008B1A 00                    3062 	.db #0x00	; 0
      008B1B 00                    3063 	.db #0x00	; 0
      008B1C 00                    3064 	.db #0x00	; 0
      008B1D 81                    3065 	.db #0x81	; 129
      008B1E 81                    3066 	.db #0x81	; 129
      008B1F FF                    3067 	.db #0xff	; 255
      008B20 00                    3068 	.db #0x00	; 0
      008B21 00                    3069 	.db #0x00	; 0
      008B22 08                    3070 	.db #0x08	; 8
      008B23 08                    3071 	.db #0x08	; 8
      008B24 04                    3072 	.db #0x04	; 4
      008B25 02                    3073 	.db #0x02	; 2
      008B26 02                    3074 	.db #0x02	; 2
      008B27 04                    3075 	.db #0x04	; 4
      008B28 08                    3076 	.db #0x08	; 8
      008B29 08                    3077 	.db #0x08	; 8
      008B2A 80                    3078 	.db #0x80	; 128
      008B2B 80                    3079 	.db #0x80	; 128
      008B2C 80                    3080 	.db #0x80	; 128
      008B2D 80                    3081 	.db #0x80	; 128
      008B2E 80                    3082 	.db #0x80	; 128
      008B2F 80                    3083 	.db #0x80	; 128
      008B30 80                    3084 	.db #0x80	; 128
      008B31 80                    3085 	.db #0x80	; 128
      008B32 00                    3086 	.db #0x00	; 0
      008B33 00                    3087 	.db #0x00	; 0
      008B34 00                    3088 	.db #0x00	; 0
      008B35 02                    3089 	.db #0x02	; 2
      008B36 00                    3090 	.db #0x00	; 0
      008B37 00                    3091 	.db #0x00	; 0
      008B38 00                    3092 	.db #0x00	; 0
      008B39 00                    3093 	.db #0x00	; 0
      008B3A 00                    3094 	.db #0x00	; 0
      008B3B 28                    3095 	.db #0x28	; 40
      008B3C 58                    3096 	.db #0x58	; 88	'X'
      008B3D 58                    3097 	.db #0x58	; 88	'X'
      008B3E 58                    3098 	.db #0x58	; 88	'X'
      008B3F 58                    3099 	.db #0x58	; 88	'X'
      008B40 78                    3100 	.db #0x78	; 120	'x'
      008B41 40                    3101 	.db #0x40	; 64
      008B42 00                    3102 	.db #0x00	; 0
      008B43 7C                    3103 	.db #0x7c	; 124
      008B44 48                    3104 	.db #0x48	; 72	'H'
      008B45 48                    3105 	.db #0x48	; 72	'H'
      008B46 48                    3106 	.db #0x48	; 72	'H'
      008B47 48                    3107 	.db #0x48	; 72	'H'
      008B48 30                    3108 	.db #0x30	; 48	'0'
      008B49 00                    3109 	.db #0x00	; 0
      008B4A 00                    3110 	.db #0x00	; 0
      008B4B 30                    3111 	.db #0x30	; 48	'0'
      008B4C 48                    3112 	.db #0x48	; 72	'H'
      008B4D 48                    3113 	.db #0x48	; 72	'H'
      008B4E 48                    3114 	.db #0x48	; 72	'H'
      008B4F 48                    3115 	.db #0x48	; 72	'H'
      008B50 48                    3116 	.db #0x48	; 72	'H'
      008B51 00                    3117 	.db #0x00	; 0
      008B52 00                    3118 	.db #0x00	; 0
      008B53 30                    3119 	.db #0x30	; 48	'0'
      008B54 48                    3120 	.db #0x48	; 72	'H'
      008B55 48                    3121 	.db #0x48	; 72	'H'
      008B56 48                    3122 	.db #0x48	; 72	'H'
      008B57 48                    3123 	.db #0x48	; 72	'H'
      008B58 7C                    3124 	.db #0x7c	; 124
      008B59 00                    3125 	.db #0x00	; 0
      008B5A 00                    3126 	.db #0x00	; 0
      008B5B 30                    3127 	.db #0x30	; 48	'0'
      008B5C 68                    3128 	.db #0x68	; 104	'h'
      008B5D 68                    3129 	.db #0x68	; 104	'h'
      008B5E 68                    3130 	.db #0x68	; 104	'h'
      008B5F 68                    3131 	.db #0x68	; 104	'h'
      008B60 70                    3132 	.db #0x70	; 112	'p'
      008B61 00                    3133 	.db #0x00	; 0
      008B62 00                    3134 	.db #0x00	; 0
      008B63 00                    3135 	.db #0x00	; 0
      008B64 08                    3136 	.db #0x08	; 8
      008B65 7E                    3137 	.db #0x7e	; 126
      008B66 0A                    3138 	.db #0x0a	; 10
      008B67 0A                    3139 	.db #0x0a	; 10
      008B68 00                    3140 	.db #0x00	; 0
      008B69 00                    3141 	.db #0x00	; 0
      008B6A 00                    3142 	.db #0x00	; 0
      008B6B B0                    3143 	.db #0xb0	; 176
      008B6C C8                    3144 	.db #0xc8	; 200
      008B6D C8                    3145 	.db #0xc8	; 200
      008B6E C8                    3146 	.db #0xc8	; 200
      008B6F D0                    3147 	.db #0xd0	; 208
      008B70 78                    3148 	.db #0x78	; 120	'x'
      008B71 00                    3149 	.db #0x00	; 0
      008B72 00                    3150 	.db #0x00	; 0
      008B73 7E                    3151 	.db #0x7e	; 126
      008B74 08                    3152 	.db #0x08	; 8
      008B75 08                    3153 	.db #0x08	; 8
      008B76 08                    3154 	.db #0x08	; 8
      008B77 08                    3155 	.db #0x08	; 8
      008B78 78                    3156 	.db #0x78	; 120	'x'
      008B79 00                    3157 	.db #0x00	; 0
      008B7A 00                    3158 	.db #0x00	; 0
      008B7B 00                    3159 	.db #0x00	; 0
      008B7C 00                    3160 	.db #0x00	; 0
      008B7D 00                    3161 	.db #0x00	; 0
      008B7E 7A                    3162 	.db #0x7a	; 122	'z'
      008B7F 00                    3163 	.db #0x00	; 0
      008B80 00                    3164 	.db #0x00	; 0
      008B81 00                    3165 	.db #0x00	; 0
      008B82 00                    3166 	.db #0x00	; 0
      008B83 00                    3167 	.db #0x00	; 0
      008B84 00                    3168 	.db #0x00	; 0
      008B85 80                    3169 	.db #0x80	; 128
      008B86 FA                    3170 	.db #0xfa	; 250
      008B87 00                    3171 	.db #0x00	; 0
      008B88 00                    3172 	.db #0x00	; 0
      008B89 00                    3173 	.db #0x00	; 0
      008B8A 00                    3174 	.db #0x00	; 0
      008B8B 7E                    3175 	.db #0x7e	; 126
      008B8C 20                    3176 	.db #0x20	; 32
      008B8D 10                    3177 	.db #0x10	; 16
      008B8E 30                    3178 	.db #0x30	; 48	'0'
      008B8F 48                    3179 	.db #0x48	; 72	'H'
      008B90 00                    3180 	.db #0x00	; 0
      008B91 00                    3181 	.db #0x00	; 0
      008B92 00                    3182 	.db #0x00	; 0
      008B93 00                    3183 	.db #0x00	; 0
      008B94 00                    3184 	.db #0x00	; 0
      008B95 00                    3185 	.db #0x00	; 0
      008B96 7E                    3186 	.db #0x7e	; 126
      008B97 00                    3187 	.db #0x00	; 0
      008B98 00                    3188 	.db #0x00	; 0
      008B99 00                    3189 	.db #0x00	; 0
      008B9A 00                    3190 	.db #0x00	; 0
      008B9B 78                    3191 	.db #0x78	; 120	'x'
      008B9C 08                    3192 	.db #0x08	; 8
      008B9D 08                    3193 	.db #0x08	; 8
      008B9E 78                    3194 	.db #0x78	; 120	'x'
      008B9F 08                    3195 	.db #0x08	; 8
      008BA0 78                    3196 	.db #0x78	; 120	'x'
      008BA1 00                    3197 	.db #0x00	; 0
      008BA2 00                    3198 	.db #0x00	; 0
      008BA3 78                    3199 	.db #0x78	; 120	'x'
      008BA4 08                    3200 	.db #0x08	; 8
      008BA5 08                    3201 	.db #0x08	; 8
      008BA6 08                    3202 	.db #0x08	; 8
      008BA7 08                    3203 	.db #0x08	; 8
      008BA8 78                    3204 	.db #0x78	; 120	'x'
      008BA9 00                    3205 	.db #0x00	; 0
      008BAA 00                    3206 	.db #0x00	; 0
      008BAB 30                    3207 	.db #0x30	; 48	'0'
      008BAC 48                    3208 	.db #0x48	; 72	'H'
      008BAD 48                    3209 	.db #0x48	; 72	'H'
      008BAE 48                    3210 	.db #0x48	; 72	'H'
      008BAF 48                    3211 	.db #0x48	; 72	'H'
      008BB0 30                    3212 	.db #0x30	; 48	'0'
      008BB1 00                    3213 	.db #0x00	; 0
      008BB2 00                    3214 	.db #0x00	; 0
      008BB3 F8                    3215 	.db #0xf8	; 248
      008BB4 48                    3216 	.db #0x48	; 72	'H'
      008BB5 48                    3217 	.db #0x48	; 72	'H'
      008BB6 48                    3218 	.db #0x48	; 72	'H'
      008BB7 48                    3219 	.db #0x48	; 72	'H'
      008BB8 30                    3220 	.db #0x30	; 48	'0'
      008BB9 00                    3221 	.db #0x00	; 0
      008BBA 00                    3222 	.db #0x00	; 0
      008BBB 30                    3223 	.db #0x30	; 48	'0'
      008BBC 48                    3224 	.db #0x48	; 72	'H'
      008BBD 48                    3225 	.db #0x48	; 72	'H'
      008BBE 48                    3226 	.db #0x48	; 72	'H'
      008BBF 48                    3227 	.db #0x48	; 72	'H'
      008BC0 F8                    3228 	.db #0xf8	; 248
      008BC1 00                    3229 	.db #0x00	; 0
      008BC2 00                    3230 	.db #0x00	; 0
      008BC3 00                    3231 	.db #0x00	; 0
      008BC4 78                    3232 	.db #0x78	; 120	'x'
      008BC5 08                    3233 	.db #0x08	; 8
      008BC6 08                    3234 	.db #0x08	; 8
      008BC7 08                    3235 	.db #0x08	; 8
      008BC8 00                    3236 	.db #0x00	; 0
      008BC9 00                    3237 	.db #0x00	; 0
      008BCA 00                    3238 	.db #0x00	; 0
      008BCB 58                    3239 	.db #0x58	; 88	'X'
      008BCC 58                    3240 	.db #0x58	; 88	'X'
      008BCD 58                    3241 	.db #0x58	; 88	'X'
      008BCE 58                    3242 	.db #0x58	; 88	'X'
      008BCF 58                    3243 	.db #0x58	; 88	'X'
      008BD0 28                    3244 	.db #0x28	; 40
      008BD1 00                    3245 	.db #0x00	; 0
      008BD2 00                    3246 	.db #0x00	; 0
      008BD3 00                    3247 	.db #0x00	; 0
      008BD4 08                    3248 	.db #0x08	; 8
      008BD5 7C                    3249 	.db #0x7c	; 124
      008BD6 48                    3250 	.db #0x48	; 72	'H'
      008BD7 48                    3251 	.db #0x48	; 72	'H'
      008BD8 00                    3252 	.db #0x00	; 0
      008BD9 00                    3253 	.db #0x00	; 0
      008BDA 00                    3254 	.db #0x00	; 0
      008BDB 78                    3255 	.db #0x78	; 120	'x'
      008BDC 40                    3256 	.db #0x40	; 64
      008BDD 40                    3257 	.db #0x40	; 64
      008BDE 40                    3258 	.db #0x40	; 64
      008BDF 40                    3259 	.db #0x40	; 64
      008BE0 78                    3260 	.db #0x78	; 120	'x'
      008BE1 00                    3261 	.db #0x00	; 0
      008BE2 00                    3262 	.db #0x00	; 0
      008BE3 08                    3263 	.db #0x08	; 8
      008BE4 30                    3264 	.db #0x30	; 48	'0'
      008BE5 40                    3265 	.db #0x40	; 64
      008BE6 60                    3266 	.db #0x60	; 96
      008BE7 10                    3267 	.db #0x10	; 16
      008BE8 08                    3268 	.db #0x08	; 8
      008BE9 00                    3269 	.db #0x00	; 0
      008BEA 18                    3270 	.db #0x18	; 24
      008BEB 60                    3271 	.db #0x60	; 96
      008BEC 60                    3272 	.db #0x60	; 96
      008BED 18                    3273 	.db #0x18	; 24
      008BEE 18                    3274 	.db #0x18	; 24
      008BEF 60                    3275 	.db #0x60	; 96
      008BF0 70                    3276 	.db #0x70	; 112	'p'
      008BF1 08                    3277 	.db #0x08	; 8
      008BF2 00                    3278 	.db #0x00	; 0
      008BF3 00                    3279 	.db #0x00	; 0
      008BF4 48                    3280 	.db #0x48	; 72	'H'
      008BF5 30                    3281 	.db #0x30	; 48	'0'
      008BF6 30                    3282 	.db #0x30	; 48	'0'
      008BF7 48                    3283 	.db #0x48	; 72	'H'
      008BF8 00                    3284 	.db #0x00	; 0
      008BF9 00                    3285 	.db #0x00	; 0
      008BFA 00                    3286 	.db #0x00	; 0
      008BFB 88                    3287 	.db #0x88	; 136
      008BFC B0                    3288 	.db #0xb0	; 176
      008BFD C0                    3289 	.db #0xc0	; 192
      008BFE 20                    3290 	.db #0x20	; 32
      008BFF 10                    3291 	.db #0x10	; 16
      008C00 08                    3292 	.db #0x08	; 8
      008C01 00                    3293 	.db #0x00	; 0
      008C02 00                    3294 	.db #0x00	; 0
      008C03 48                    3295 	.db #0x48	; 72	'H'
      008C04 68                    3296 	.db #0x68	; 104	'h'
      008C05 68                    3297 	.db #0x68	; 104	'h'
      008C06 58                    3298 	.db #0x58	; 88	'X'
      008C07 48                    3299 	.db #0x48	; 72	'H'
      008C08 48                    3300 	.db #0x48	; 72	'H'
      008C09 00                    3301 	.db #0x00	; 0
                                   3302 	.area CODE
                                   3303 	.area CONST
      008C0A                       3304 _logo:
      008C0A 12                    3305 	.db #0x12	; 18
      008C0B 34                    3306 	.db #0x34	; 52	'4'
      008C0C 56                    3307 	.db #0x56	; 86	'V'
      008C0D 78                    3308 	.db #0x78	; 120	'x'
      008C0E 00                    3309 	.db #0x00	; 0
      008C0F 00                    3310 	.db #0x00	; 0
      008C10 00                    3311 	.db #0x00	; 0
      008C11 00                    3312 	.db #0x00	; 0
      008C12 00                    3313 	.db #0x00	; 0
      008C13 00                    3314 	.db #0x00	; 0
      008C14 00                    3315 	.db #0x00	; 0
      008C15 00                    3316 	.db #0x00	; 0
      008C16 00                    3317 	.db #0x00	; 0
      008C17 00                    3318 	.db #0x00	; 0
      008C18 00                    3319 	.db #0x00	; 0
      008C19 00                    3320 	.db #0x00	; 0
      008C1A FF                    3321 	.db #0xff	; 255
      008C1B FF                    3322 	.db #0xff	; 255
      008C1C FF                    3323 	.db #0xff	; 255
      008C1D FF                    3324 	.db #0xff	; 255
      008C1E FF                    3325 	.db #0xff	; 255
      008C1F FF                    3326 	.db #0xff	; 255
      008C20 FF                    3327 	.db #0xff	; 255
      008C21 FF                    3328 	.db #0xff	; 255
      008C22 FF                    3329 	.db #0xff	; 255
      008C23 FF                    3330 	.db #0xff	; 255
      008C24 FF                    3331 	.db #0xff	; 255
      008C25 FF                    3332 	.db #0xff	; 255
      008C26 FF                    3333 	.db #0xff	; 255
      008C27 FF                    3334 	.db #0xff	; 255
      008C28 FF                    3335 	.db #0xff	; 255
      008C29 FF                    3336 	.db #0xff	; 255
      008C2A FF                    3337 	.db #0xff	; 255
      008C2B FF                    3338 	.db #0xff	; 255
      008C2C FF                    3339 	.db #0xff	; 255
      008C2D FF                    3340 	.db #0xff	; 255
      008C2E FF                    3341 	.db #0xff	; 255
      008C2F FF                    3342 	.db #0xff	; 255
      008C30 FF                    3343 	.db #0xff	; 255
      008C31 7F                    3344 	.db #0x7f	; 127
      008C32 7F                    3345 	.db #0x7f	; 127
      008C33 7F                    3346 	.db #0x7f	; 127
      008C34 FF                    3347 	.db #0xff	; 255
      008C35 FF                    3348 	.db #0xff	; 255
      008C36 FF                    3349 	.db #0xff	; 255
      008C37 FF                    3350 	.db #0xff	; 255
      008C38 FF                    3351 	.db #0xff	; 255
      008C39 FF                    3352 	.db #0xff	; 255
      008C3A FF                    3353 	.db #0xff	; 255
      008C3B FF                    3354 	.db #0xff	; 255
      008C3C FF                    3355 	.db #0xff	; 255
      008C3D FF                    3356 	.db #0xff	; 255
      008C3E FF                    3357 	.db #0xff	; 255
      008C3F FF                    3358 	.db #0xff	; 255
      008C40 FF                    3359 	.db #0xff	; 255
      008C41 FF                    3360 	.db #0xff	; 255
      008C42 FF                    3361 	.db #0xff	; 255
      008C43 FF                    3362 	.db #0xff	; 255
      008C44 FF                    3363 	.db #0xff	; 255
      008C45 FF                    3364 	.db #0xff	; 255
      008C46 FF                    3365 	.db #0xff	; 255
      008C47 FF                    3366 	.db #0xff	; 255
      008C48 FF                    3367 	.db #0xff	; 255
      008C49 FF                    3368 	.db #0xff	; 255
      008C4A FF                    3369 	.db #0xff	; 255
      008C4B FF                    3370 	.db #0xff	; 255
      008C4C FF                    3371 	.db #0xff	; 255
      008C4D FF                    3372 	.db #0xff	; 255
      008C4E FF                    3373 	.db #0xff	; 255
      008C4F FF                    3374 	.db #0xff	; 255
      008C50 FF                    3375 	.db #0xff	; 255
      008C51 FF                    3376 	.db #0xff	; 255
      008C52 FF                    3377 	.db #0xff	; 255
      008C53 FF                    3378 	.db #0xff	; 255
      008C54 FF                    3379 	.db #0xff	; 255
      008C55 FF                    3380 	.db #0xff	; 255
      008C56 FF                    3381 	.db #0xff	; 255
      008C57 FF                    3382 	.db #0xff	; 255
      008C58 FF                    3383 	.db #0xff	; 255
      008C59 FF                    3384 	.db #0xff	; 255
      008C5A FF                    3385 	.db #0xff	; 255
      008C5B FF                    3386 	.db #0xff	; 255
      008C5C FF                    3387 	.db #0xff	; 255
      008C5D FF                    3388 	.db #0xff	; 255
      008C5E FF                    3389 	.db #0xff	; 255
      008C5F FF                    3390 	.db #0xff	; 255
      008C60 FF                    3391 	.db #0xff	; 255
      008C61 FF                    3392 	.db #0xff	; 255
      008C62 FF                    3393 	.db #0xff	; 255
      008C63 FF                    3394 	.db #0xff	; 255
      008C64 FF                    3395 	.db #0xff	; 255
      008C65 FF                    3396 	.db #0xff	; 255
      008C66 FF                    3397 	.db #0xff	; 255
      008C67 FF                    3398 	.db #0xff	; 255
      008C68 FF                    3399 	.db #0xff	; 255
      008C69 FF                    3400 	.db #0xff	; 255
      008C6A FF                    3401 	.db #0xff	; 255
      008C6B FF                    3402 	.db #0xff	; 255
      008C6C FF                    3403 	.db #0xff	; 255
      008C6D FF                    3404 	.db #0xff	; 255
      008C6E FF                    3405 	.db #0xff	; 255
      008C6F FF                    3406 	.db #0xff	; 255
      008C70 FF                    3407 	.db #0xff	; 255
      008C71 FF                    3408 	.db #0xff	; 255
      008C72 FF                    3409 	.db #0xff	; 255
      008C73 FF                    3410 	.db #0xff	; 255
      008C74 FF                    3411 	.db #0xff	; 255
      008C75 FF                    3412 	.db #0xff	; 255
      008C76 FF                    3413 	.db #0xff	; 255
      008C77 FF                    3414 	.db #0xff	; 255
      008C78 FF                    3415 	.db #0xff	; 255
      008C79 FF                    3416 	.db #0xff	; 255
      008C7A FF                    3417 	.db #0xff	; 255
      008C7B FF                    3418 	.db #0xff	; 255
      008C7C FF                    3419 	.db #0xff	; 255
      008C7D FF                    3420 	.db #0xff	; 255
      008C7E FF                    3421 	.db #0xff	; 255
      008C7F FF                    3422 	.db #0xff	; 255
      008C80 FF                    3423 	.db #0xff	; 255
      008C81 FF                    3424 	.db #0xff	; 255
      008C82 FF                    3425 	.db #0xff	; 255
      008C83 FF                    3426 	.db #0xff	; 255
      008C84 FF                    3427 	.db #0xff	; 255
      008C85 FF                    3428 	.db #0xff	; 255
      008C86 FF                    3429 	.db #0xff	; 255
      008C87 FF                    3430 	.db #0xff	; 255
      008C88 FF                    3431 	.db #0xff	; 255
      008C89 FF                    3432 	.db #0xff	; 255
      008C8A FF                    3433 	.db #0xff	; 255
      008C8B FF                    3434 	.db #0xff	; 255
      008C8C FF                    3435 	.db #0xff	; 255
      008C8D FF                    3436 	.db #0xff	; 255
      008C8E FF                    3437 	.db #0xff	; 255
      008C8F FF                    3438 	.db #0xff	; 255
      008C90 FF                    3439 	.db #0xff	; 255
      008C91 FF                    3440 	.db #0xff	; 255
      008C92 FF                    3441 	.db #0xff	; 255
      008C93 FF                    3442 	.db #0xff	; 255
      008C94 FF                    3443 	.db #0xff	; 255
      008C95 FF                    3444 	.db #0xff	; 255
      008C96 FF                    3445 	.db #0xff	; 255
      008C97 FF                    3446 	.db #0xff	; 255
      008C98 FF                    3447 	.db #0xff	; 255
      008C99 FF                    3448 	.db #0xff	; 255
      008C9A FF                    3449 	.db #0xff	; 255
      008C9B FF                    3450 	.db #0xff	; 255
      008C9C FF                    3451 	.db #0xff	; 255
      008C9D FF                    3452 	.db #0xff	; 255
      008C9E FF                    3453 	.db #0xff	; 255
      008C9F FF                    3454 	.db #0xff	; 255
      008CA0 FF                    3455 	.db #0xff	; 255
      008CA1 FF                    3456 	.db #0xff	; 255
      008CA2 FF                    3457 	.db #0xff	; 255
      008CA3 FF                    3458 	.db #0xff	; 255
      008CA4 FF                    3459 	.db #0xff	; 255
      008CA5 FF                    3460 	.db #0xff	; 255
      008CA6 FF                    3461 	.db #0xff	; 255
      008CA7 FF                    3462 	.db #0xff	; 255
      008CA8 FF                    3463 	.db #0xff	; 255
      008CA9 3F                    3464 	.db #0x3f	; 63
      008CAA 0F                    3465 	.db #0x0f	; 15
      008CAB 07                    3466 	.db #0x07	; 7
      008CAC 03                    3467 	.db #0x03	; 3
      008CAD C1                    3468 	.db #0xc1	; 193
      008CAE E0                    3469 	.db #0xe0	; 224
      008CAF E0                    3470 	.db #0xe0	; 224
      008CB0 F0                    3471 	.db #0xf0	; 240
      008CB1 F0                    3472 	.db #0xf0	; 240
      008CB2 F0                    3473 	.db #0xf0	; 240
      008CB3 F0                    3474 	.db #0xf0	; 240
      008CB4 F0                    3475 	.db #0xf0	; 240
      008CB5 E0                    3476 	.db #0xe0	; 224
      008CB6 E0                    3477 	.db #0xe0	; 224
      008CB7 C1                    3478 	.db #0xc1	; 193
      008CB8 C3                    3479 	.db #0xc3	; 195
      008CB9 E7                    3480 	.db #0xe7	; 231
      008CBA FF                    3481 	.db #0xff	; 255
      008CBB FF                    3482 	.db #0xff	; 255
      008CBC FF                    3483 	.db #0xff	; 255
      008CBD FF                    3484 	.db #0xff	; 255
      008CBE FF                    3485 	.db #0xff	; 255
      008CBF FF                    3486 	.db #0xff	; 255
      008CC0 FF                    3487 	.db #0xff	; 255
      008CC1 FF                    3488 	.db #0xff	; 255
      008CC2 FF                    3489 	.db #0xff	; 255
      008CC3 FF                    3490 	.db #0xff	; 255
      008CC4 FF                    3491 	.db #0xff	; 255
      008CC5 FF                    3492 	.db #0xff	; 255
      008CC6 FF                    3493 	.db #0xff	; 255
      008CC7 FF                    3494 	.db #0xff	; 255
      008CC8 FF                    3495 	.db #0xff	; 255
      008CC9 FF                    3496 	.db #0xff	; 255
      008CCA FF                    3497 	.db #0xff	; 255
      008CCB FF                    3498 	.db #0xff	; 255
      008CCC FF                    3499 	.db #0xff	; 255
      008CCD FF                    3500 	.db #0xff	; 255
      008CCE FF                    3501 	.db #0xff	; 255
      008CCF FF                    3502 	.db #0xff	; 255
      008CD0 FF                    3503 	.db #0xff	; 255
      008CD1 FF                    3504 	.db #0xff	; 255
      008CD2 FF                    3505 	.db #0xff	; 255
      008CD3 FF                    3506 	.db #0xff	; 255
      008CD4 FF                    3507 	.db #0xff	; 255
      008CD5 FF                    3508 	.db #0xff	; 255
      008CD6 FF                    3509 	.db #0xff	; 255
      008CD7 FF                    3510 	.db #0xff	; 255
      008CD8 FF                    3511 	.db #0xff	; 255
      008CD9 FF                    3512 	.db #0xff	; 255
      008CDA FF                    3513 	.db #0xff	; 255
      008CDB FF                    3514 	.db #0xff	; 255
      008CDC FF                    3515 	.db #0xff	; 255
      008CDD FF                    3516 	.db #0xff	; 255
      008CDE FF                    3517 	.db #0xff	; 255
      008CDF FF                    3518 	.db #0xff	; 255
      008CE0 FF                    3519 	.db #0xff	; 255
      008CE1 FF                    3520 	.db #0xff	; 255
      008CE2 FF                    3521 	.db #0xff	; 255
      008CE3 FF                    3522 	.db #0xff	; 255
      008CE4 FF                    3523 	.db #0xff	; 255
      008CE5 FF                    3524 	.db #0xff	; 255
      008CE6 FF                    3525 	.db #0xff	; 255
      008CE7 FF                    3526 	.db #0xff	; 255
      008CE8 FF                    3527 	.db #0xff	; 255
      008CE9 FF                    3528 	.db #0xff	; 255
      008CEA FF                    3529 	.db #0xff	; 255
      008CEB FF                    3530 	.db #0xff	; 255
      008CEC 01                    3531 	.db #0x01	; 1
      008CED 01                    3532 	.db #0x01	; 1
      008CEE 01                    3533 	.db #0x01	; 1
      008CEF FF                    3534 	.db #0xff	; 255
      008CF0 FF                    3535 	.db #0xff	; 255
      008CF1 FF                    3536 	.db #0xff	; 255
      008CF2 FF                    3537 	.db #0xff	; 255
      008CF3 FF                    3538 	.db #0xff	; 255
      008CF4 FF                    3539 	.db #0xff	; 255
      008CF5 FF                    3540 	.db #0xff	; 255
      008CF6 FF                    3541 	.db #0xff	; 255
      008CF7 FF                    3542 	.db #0xff	; 255
      008CF8 FF                    3543 	.db #0xff	; 255
      008CF9 FF                    3544 	.db #0xff	; 255
      008CFA FF                    3545 	.db #0xff	; 255
      008CFB FF                    3546 	.db #0xff	; 255
      008CFC FF                    3547 	.db #0xff	; 255
      008CFD FF                    3548 	.db #0xff	; 255
      008CFE FF                    3549 	.db #0xff	; 255
      008CFF FF                    3550 	.db #0xff	; 255
      008D00 FF                    3551 	.db #0xff	; 255
      008D01 FF                    3552 	.db #0xff	; 255
      008D02 FF                    3553 	.db #0xff	; 255
      008D03 FF                    3554 	.db #0xff	; 255
      008D04 FF                    3555 	.db #0xff	; 255
      008D05 FF                    3556 	.db #0xff	; 255
      008D06 FF                    3557 	.db #0xff	; 255
      008D07 FF                    3558 	.db #0xff	; 255
      008D08 FF                    3559 	.db #0xff	; 255
      008D09 FF                    3560 	.db #0xff	; 255
      008D0A FF                    3561 	.db #0xff	; 255
      008D0B FF                    3562 	.db #0xff	; 255
      008D0C FF                    3563 	.db #0xff	; 255
      008D0D FF                    3564 	.db #0xff	; 255
      008D0E FF                    3565 	.db #0xff	; 255
      008D0F FF                    3566 	.db #0xff	; 255
      008D10 FF                    3567 	.db #0xff	; 255
      008D11 FF                    3568 	.db #0xff	; 255
      008D12 FF                    3569 	.db #0xff	; 255
      008D13 FF                    3570 	.db #0xff	; 255
      008D14 FF                    3571 	.db #0xff	; 255
      008D15 FF                    3572 	.db #0xff	; 255
      008D16 FF                    3573 	.db #0xff	; 255
      008D17 FF                    3574 	.db #0xff	; 255
      008D18 FF                    3575 	.db #0xff	; 255
      008D19 FF                    3576 	.db #0xff	; 255
      008D1A FF                    3577 	.db #0xff	; 255
      008D1B FF                    3578 	.db #0xff	; 255
      008D1C FF                    3579 	.db #0xff	; 255
      008D1D FF                    3580 	.db #0xff	; 255
      008D1E FF                    3581 	.db #0xff	; 255
      008D1F FF                    3582 	.db #0xff	; 255
      008D20 FF                    3583 	.db #0xff	; 255
      008D21 FF                    3584 	.db #0xff	; 255
      008D22 FF                    3585 	.db #0xff	; 255
      008D23 FF                    3586 	.db #0xff	; 255
      008D24 FF                    3587 	.db #0xff	; 255
      008D25 FF                    3588 	.db #0xff	; 255
      008D26 FF                    3589 	.db #0xff	; 255
      008D27 1F                    3590 	.db #0x1f	; 31
      008D28 00                    3591 	.db #0x00	; 0
      008D29 00                    3592 	.db #0x00	; 0
      008D2A 00                    3593 	.db #0x00	; 0
      008D2B FC                    3594 	.db #0xfc	; 252
      008D2C FF                    3595 	.db #0xff	; 255
      008D2D FF                    3596 	.db #0xff	; 255
      008D2E FF                    3597 	.db #0xff	; 255
      008D2F FF                    3598 	.db #0xff	; 255
      008D30 FF                    3599 	.db #0xff	; 255
      008D31 FF                    3600 	.db #0xff	; 255
      008D32 7F                    3601 	.db #0x7f	; 127
      008D33 3F                    3602 	.db #0x3f	; 63
      008D34 3F                    3603 	.db #0x3f	; 63
      008D35 3F                    3604 	.db #0x3f	; 63
      008D36 3F                    3605 	.db #0x3f	; 63
      008D37 3F                    3606 	.db #0x3f	; 63
      008D38 3F                    3607 	.db #0x3f	; 63
      008D39 3F                    3608 	.db #0x3f	; 63
      008D3A 3F                    3609 	.db #0x3f	; 63
      008D3B 3F                    3610 	.db #0x3f	; 63
      008D3C 7F                    3611 	.db #0x7f	; 127
      008D3D FF                    3612 	.db #0xff	; 255
      008D3E FF                    3613 	.db #0xff	; 255
      008D3F 7F                    3614 	.db #0x7f	; 127
      008D40 1F                    3615 	.db #0x1f	; 31
      008D41 0F                    3616 	.db #0x0f	; 15
      008D42 0F                    3617 	.db #0x0f	; 15
      008D43 07                    3618 	.db #0x07	; 7
      008D44 87                    3619 	.db #0x87	; 135
      008D45 87                    3620 	.db #0x87	; 135
      008D46 87                    3621 	.db #0x87	; 135
      008D47 0F                    3622 	.db #0x0f	; 15
      008D48 0F                    3623 	.db #0x0f	; 15
      008D49 1F                    3624 	.db #0x1f	; 31
      008D4A 7F                    3625 	.db #0x7f	; 127
      008D4B FF                    3626 	.db #0xff	; 255
      008D4C FF                    3627 	.db #0xff	; 255
      008D4D FF                    3628 	.db #0xff	; 255
      008D4E FF                    3629 	.db #0xff	; 255
      008D4F 3F                    3630 	.db #0x3f	; 63
      008D50 1F                    3631 	.db #0x1f	; 31
      008D51 0F                    3632 	.db #0x0f	; 15
      008D52 07                    3633 	.db #0x07	; 7
      008D53 87                    3634 	.db #0x87	; 135
      008D54 87                    3635 	.db #0x87	; 135
      008D55 87                    3636 	.db #0x87	; 135
      008D56 07                    3637 	.db #0x07	; 7
      008D57 0F                    3638 	.db #0x0f	; 15
      008D58 1F                    3639 	.db #0x1f	; 31
      008D59 3F                    3640 	.db #0x3f	; 63
      008D5A FF                    3641 	.db #0xff	; 255
      008D5B FF                    3642 	.db #0xff	; 255
      008D5C FF                    3643 	.db #0xff	; 255
      008D5D FF                    3644 	.db #0xff	; 255
      008D5E 7F                    3645 	.db #0x7f	; 127
      008D5F 1F                    3646 	.db #0x1f	; 31
      008D60 0F                    3647 	.db #0x0f	; 15
      008D61 0F                    3648 	.db #0x0f	; 15
      008D62 07                    3649 	.db #0x07	; 7
      008D63 87                    3650 	.db #0x87	; 135
      008D64 87                    3651 	.db #0x87	; 135
      008D65 07                    3652 	.db #0x07	; 7
      008D66 0F                    3653 	.db #0x0f	; 15
      008D67 0F                    3654 	.db #0x0f	; 15
      008D68 0F                    3655 	.db #0x0f	; 15
      008D69 0F                    3656 	.db #0x0f	; 15
      008D6A FF                    3657 	.db #0xff	; 255
      008D6B FF                    3658 	.db #0xff	; 255
      008D6C 00                    3659 	.db #0x00	; 0
      008D6D 00                    3660 	.db #0x00	; 0
      008D6E 00                    3661 	.db #0x00	; 0
      008D6F FF                    3662 	.db #0xff	; 255
      008D70 FF                    3663 	.db #0xff	; 255
      008D71 FF                    3664 	.db #0xff	; 255
      008D72 3F                    3665 	.db #0x3f	; 63
      008D73 1F                    3666 	.db #0x1f	; 31
      008D74 0F                    3667 	.db #0x0f	; 15
      008D75 07                    3668 	.db #0x07	; 7
      008D76 87                    3669 	.db #0x87	; 135
      008D77 87                    3670 	.db #0x87	; 135
      008D78 87                    3671 	.db #0x87	; 135
      008D79 0F                    3672 	.db #0x0f	; 15
      008D7A 0F                    3673 	.db #0x0f	; 15
      008D7B 1F                    3674 	.db #0x1f	; 31
      008D7C 7F                    3675 	.db #0x7f	; 127
      008D7D FF                    3676 	.db #0xff	; 255
      008D7E FF                    3677 	.db #0xff	; 255
      008D7F FF                    3678 	.db #0xff	; 255
      008D80 FF                    3679 	.db #0xff	; 255
      008D81 FF                    3680 	.db #0xff	; 255
      008D82 FF                    3681 	.db #0xff	; 255
      008D83 FF                    3682 	.db #0xff	; 255
      008D84 FF                    3683 	.db #0xff	; 255
      008D85 FF                    3684 	.db #0xff	; 255
      008D86 FF                    3685 	.db #0xff	; 255
      008D87 FF                    3686 	.db #0xff	; 255
      008D88 FF                    3687 	.db #0xff	; 255
      008D89 FF                    3688 	.db #0xff	; 255
      008D8A FF                    3689 	.db #0xff	; 255
      008D8B FF                    3690 	.db #0xff	; 255
      008D8C FF                    3691 	.db #0xff	; 255
      008D8D FF                    3692 	.db #0xff	; 255
      008D8E FF                    3693 	.db #0xff	; 255
      008D8F FF                    3694 	.db #0xff	; 255
      008D90 FF                    3695 	.db #0xff	; 255
      008D91 FF                    3696 	.db #0xff	; 255
      008D92 FF                    3697 	.db #0xff	; 255
      008D93 FF                    3698 	.db #0xff	; 255
      008D94 FF                    3699 	.db #0xff	; 255
      008D95 FF                    3700 	.db #0xff	; 255
      008D96 FF                    3701 	.db #0xff	; 255
      008D97 FF                    3702 	.db #0xff	; 255
      008D98 FF                    3703 	.db #0xff	; 255
      008D99 FF                    3704 	.db #0xff	; 255
      008D9A FF                    3705 	.db #0xff	; 255
      008D9B FF                    3706 	.db #0xff	; 255
      008D9C FF                    3707 	.db #0xff	; 255
      008D9D FF                    3708 	.db #0xff	; 255
      008D9E FF                    3709 	.db #0xff	; 255
      008D9F FF                    3710 	.db #0xff	; 255
      008DA0 FF                    3711 	.db #0xff	; 255
      008DA1 FF                    3712 	.db #0xff	; 255
      008DA2 FF                    3713 	.db #0xff	; 255
      008DA3 FF                    3714 	.db #0xff	; 255
      008DA4 FF                    3715 	.db #0xff	; 255
      008DA5 FF                    3716 	.db #0xff	; 255
      008DA6 FF                    3717 	.db #0xff	; 255
      008DA7 F8                    3718 	.db #0xf8	; 248
      008DA8 80                    3719 	.db #0x80	; 128
      008DA9 00                    3720 	.db #0x00	; 0
      008DAA 00                    3721 	.db #0x00	; 0
      008DAB 1F                    3722 	.db #0x1f	; 31
      008DAC FF                    3723 	.db #0xff	; 255
      008DAD FF                    3724 	.db #0xff	; 255
      008DAE FF                    3725 	.db #0xff	; 255
      008DAF FF                    3726 	.db #0xff	; 255
      008DB0 FF                    3727 	.db #0xff	; 255
      008DB1 FF                    3728 	.db #0xff	; 255
      008DB2 FD                    3729 	.db #0xfd	; 253
      008DB3 F8                    3730 	.db #0xf8	; 248
      008DB4 F8                    3731 	.db #0xf8	; 248
      008DB5 F8                    3732 	.db #0xf8	; 248
      008DB6 F8                    3733 	.db #0xf8	; 248
      008DB7 F8                    3734 	.db #0xf8	; 248
      008DB8 F8                    3735 	.db #0xf8	; 248
      008DB9 08                    3736 	.db #0x08	; 8
      008DBA 00                    3737 	.db #0x00	; 0
      008DBB 00                    3738 	.db #0x00	; 0
      008DBC E0                    3739 	.db #0xe0	; 224
      008DBD FF                    3740 	.db #0xff	; 255
      008DBE 03                    3741 	.db #0x03	; 3
      008DBF 00                    3742 	.db #0x00	; 0
      008DC0 00                    3743 	.db #0x00	; 0
      008DC1 F8                    3744 	.db #0xf8	; 248
      008DC2 FE                    3745 	.db #0xfe	; 254
      008DC3 FF                    3746 	.db #0xff	; 255
      008DC4 FF                    3747 	.db #0xff	; 255
      008DC5 FF                    3748 	.db #0xff	; 255
      008DC6 FF                    3749 	.db #0xff	; 255
      008DC7 FF                    3750 	.db #0xff	; 255
      008DC8 FC                    3751 	.db #0xfc	; 252
      008DC9 00                    3752 	.db #0x00	; 0
      008DCA 00                    3753 	.db #0x00	; 0
      008DCB 01                    3754 	.db #0x01	; 1
      008DCC FF                    3755 	.db #0xff	; 255
      008DCD DF                    3756 	.db #0xdf	; 223
      008DCE 00                    3757 	.db #0x00	; 0
      008DCF 00                    3758 	.db #0x00	; 0
      008DD0 00                    3759 	.db #0x00	; 0
      008DD1 FE                    3760 	.db #0xfe	; 254
      008DD2 FF                    3761 	.db #0xff	; 255
      008DD3 FF                    3762 	.db #0xff	; 255
      008DD4 FF                    3763 	.db #0xff	; 255
      008DD5 FF                    3764 	.db #0xff	; 255
      008DD6 FF                    3765 	.db #0xff	; 255
      008DD7 FE                    3766 	.db #0xfe	; 254
      008DD8 70                    3767 	.db #0x70	; 112	'p'
      008DD9 00                    3768 	.db #0x00	; 0
      008DDA 00                    3769 	.db #0x00	; 0
      008DDB 8F                    3770 	.db #0x8f	; 143
      008DDC FF                    3771 	.db #0xff	; 255
      008DDD 01                    3772 	.db #0x01	; 1
      008DDE 00                    3773 	.db #0x00	; 0
      008DDF 00                    3774 	.db #0x00	; 0
      008DE0 FC                    3775 	.db #0xfc	; 252
      008DE1 FF                    3776 	.db #0xff	; 255
      008DE2 FF                    3777 	.db #0xff	; 255
      008DE3 FF                    3778 	.db #0xff	; 255
      008DE4 FF                    3779 	.db #0xff	; 255
      008DE5 FF                    3780 	.db #0xff	; 255
      008DE6 FE                    3781 	.db #0xfe	; 254
      008DE7 F8                    3782 	.db #0xf8	; 248
      008DE8 00                    3783 	.db #0x00	; 0
      008DE9 00                    3784 	.db #0x00	; 0
      008DEA FF                    3785 	.db #0xff	; 255
      008DEB FF                    3786 	.db #0xff	; 255
      008DEC 00                    3787 	.db #0x00	; 0
      008DED 00                    3788 	.db #0x00	; 0
      008DEE 00                    3789 	.db #0x00	; 0
      008DEF FF                    3790 	.db #0xff	; 255
      008DF0 FF                    3791 	.db #0xff	; 255
      008DF1 00                    3792 	.db #0x00	; 0
      008DF2 00                    3793 	.db #0x00	; 0
      008DF3 00                    3794 	.db #0x00	; 0
      008DF4 1E                    3795 	.db #0x1e	; 30
      008DF5 0F                    3796 	.db #0x0f	; 15
      008DF6 87                    3797 	.db #0x87	; 135
      008DF7 87                    3798 	.db #0x87	; 135
      008DF8 C3                    3799 	.db #0xc3	; 195
      008DF9 E3                    3800 	.db #0xe3	; 227
      008DFA E0                    3801 	.db #0xe0	; 224
      008DFB F0                    3802 	.db #0xf0	; 240
      008DFC F0                    3803 	.db #0xf0	; 240
      008DFD FB                    3804 	.db #0xfb	; 251
      008DFE FF                    3805 	.db #0xff	; 255
      008DFF FF                    3806 	.db #0xff	; 255
      008E00 FF                    3807 	.db #0xff	; 255
      008E01 FF                    3808 	.db #0xff	; 255
      008E02 FF                    3809 	.db #0xff	; 255
      008E03 FF                    3810 	.db #0xff	; 255
      008E04 FF                    3811 	.db #0xff	; 255
      008E05 FF                    3812 	.db #0xff	; 255
      008E06 FF                    3813 	.db #0xff	; 255
      008E07 FF                    3814 	.db #0xff	; 255
      008E08 FF                    3815 	.db #0xff	; 255
      008E09 FF                    3816 	.db #0xff	; 255
      008E0A FF                    3817 	.db #0xff	; 255
      008E0B FF                    3818 	.db #0xff	; 255
      008E0C FF                    3819 	.db #0xff	; 255
      008E0D FF                    3820 	.db #0xff	; 255
      008E0E FF                    3821 	.db #0xff	; 255
      008E0F FF                    3822 	.db #0xff	; 255
      008E10 FF                    3823 	.db #0xff	; 255
      008E11 FF                    3824 	.db #0xff	; 255
      008E12 FF                    3825 	.db #0xff	; 255
      008E13 FF                    3826 	.db #0xff	; 255
      008E14 FF                    3827 	.db #0xff	; 255
      008E15 FF                    3828 	.db #0xff	; 255
      008E16 FF                    3829 	.db #0xff	; 255
      008E17 FF                    3830 	.db #0xff	; 255
      008E18 FF                    3831 	.db #0xff	; 255
      008E19 FF                    3832 	.db #0xff	; 255
      008E1A FF                    3833 	.db #0xff	; 255
      008E1B FF                    3834 	.db #0xff	; 255
      008E1C FF                    3835 	.db #0xff	; 255
      008E1D FF                    3836 	.db #0xff	; 255
      008E1E FF                    3837 	.db #0xff	; 255
      008E1F FF                    3838 	.db #0xff	; 255
      008E20 FF                    3839 	.db #0xff	; 255
      008E21 FF                    3840 	.db #0xff	; 255
      008E22 FF                    3841 	.db #0xff	; 255
      008E23 FF                    3842 	.db #0xff	; 255
      008E24 FF                    3843 	.db #0xff	; 255
      008E25 FF                    3844 	.db #0xff	; 255
      008E26 FF                    3845 	.db #0xff	; 255
      008E27 FF                    3846 	.db #0xff	; 255
      008E28 FF                    3847 	.db #0xff	; 255
      008E29 FE                    3848 	.db #0xfe	; 254
      008E2A F8                    3849 	.db #0xf8	; 248
      008E2B F0                    3850 	.db #0xf0	; 240
      008E2C E0                    3851 	.db #0xe0	; 224
      008E2D C1                    3852 	.db #0xc1	; 193
      008E2E 83                    3853 	.db #0x83	; 131
      008E2F 87                    3854 	.db #0x87	; 135
      008E30 07                    3855 	.db #0x07	; 7
      008E31 07                    3856 	.db #0x07	; 7
      008E32 0F                    3857 	.db #0x0f	; 15
      008E33 07                    3858 	.db #0x07	; 7
      008E34 07                    3859 	.db #0x07	; 7
      008E35 87                    3860 	.db #0x87	; 135
      008E36 83                    3861 	.db #0x83	; 131
      008E37 C1                    3862 	.db #0xc1	; 193
      008E38 E0                    3863 	.db #0xe0	; 224
      008E39 F0                    3864 	.db #0xf0	; 240
      008E3A F8                    3865 	.db #0xf8	; 248
      008E3B FE                    3866 	.db #0xfe	; 254
      008E3C FF                    3867 	.db #0xff	; 255
      008E3D FF                    3868 	.db #0xff	; 255
      008E3E FE                    3869 	.db #0xfe	; 254
      008E3F F0                    3870 	.db #0xf0	; 240
      008E40 E0                    3871 	.db #0xe0	; 224
      008E41 C0                    3872 	.db #0xc0	; 192
      008E42 83                    3873 	.db #0x83	; 131
      008E43 07                    3874 	.db #0x07	; 7
      008E44 0F                    3875 	.db #0x0f	; 15
      008E45 0F                    3876 	.db #0x0f	; 15
      008E46 07                    3877 	.db #0x07	; 7
      008E47 87                    3878 	.db #0x87	; 135
      008E48 81                    3879 	.db #0x81	; 129
      008E49 C0                    3880 	.db #0xc0	; 192
      008E4A F0                    3881 	.db #0xf0	; 240
      008E4B FC                    3882 	.db #0xfc	; 252
      008E4C FF                    3883 	.db #0xff	; 255
      008E4D FF                    3884 	.db #0xff	; 255
      008E4E F8                    3885 	.db #0xf8	; 248
      008E4F E0                    3886 	.db #0xe0	; 224
      008E50 C0                    3887 	.db #0xc0	; 192
      008E51 83                    3888 	.db #0x83	; 131
      008E52 07                    3889 	.db #0x07	; 7
      008E53 0F                    3890 	.db #0x0f	; 15
      008E54 0F                    3891 	.db #0x0f	; 15
      008E55 0F                    3892 	.db #0x0f	; 15
      008E56 07                    3893 	.db #0x07	; 7
      008E57 83                    3894 	.db #0x83	; 131
      008E58 C0                    3895 	.db #0xc0	; 192
      008E59 E0                    3896 	.db #0xe0	; 224
      008E5A F8                    3897 	.db #0xf8	; 248
      008E5B FF                    3898 	.db #0xff	; 255
      008E5C FF                    3899 	.db #0xff	; 255
      008E5D FC                    3900 	.db #0xfc	; 252
      008E5E F0                    3901 	.db #0xf0	; 240
      008E5F C0                    3902 	.db #0xc0	; 192
      008E60 81                    3903 	.db #0x81	; 129
      008E61 87                    3904 	.db #0x87	; 135
      008E62 07                    3905 	.db #0x07	; 7
      008E63 0F                    3906 	.db #0x0f	; 15
      008E64 0F                    3907 	.db #0x0f	; 15
      008E65 87                    3908 	.db #0x87	; 135
      008E66 83                    3909 	.db #0x83	; 131
      008E67 C0                    3910 	.db #0xc0	; 192
      008E68 00                    3911 	.db #0x00	; 0
      008E69 00                    3912 	.db #0x00	; 0
      008E6A FF                    3913 	.db #0xff	; 255
      008E6B FF                    3914 	.db #0xff	; 255
      008E6C 80                    3915 	.db #0x80	; 128
      008E6D 80                    3916 	.db #0x80	; 128
      008E6E 80                    3917 	.db #0x80	; 128
      008E6F FF                    3918 	.db #0xff	; 255
      008E70 FF                    3919 	.db #0xff	; 255
      008E71 F8                    3920 	.db #0xf8	; 248
      008E72 E0                    3921 	.db #0xe0	; 224
      008E73 C0                    3922 	.db #0xc0	; 192
      008E74 80                    3923 	.db #0x80	; 128
      008E75 87                    3924 	.db #0x87	; 135
      008E76 0F                    3925 	.db #0x0f	; 15
      008E77 0F                    3926 	.db #0x0f	; 15
      008E78 0F                    3927 	.db #0x0f	; 15
      008E79 07                    3928 	.db #0x07	; 7
      008E7A 83                    3929 	.db #0x83	; 131
      008E7B C1                    3930 	.db #0xc1	; 193
      008E7C E3                    3931 	.db #0xe3	; 227
      008E7D FF                    3932 	.db #0xff	; 255
      008E7E FF                    3933 	.db #0xff	; 255
      008E7F FF                    3934 	.db #0xff	; 255
      008E80 FF                    3935 	.db #0xff	; 255
      008E81 FF                    3936 	.db #0xff	; 255
      008E82 FF                    3937 	.db #0xff	; 255
      008E83 FF                    3938 	.db #0xff	; 255
      008E84 FF                    3939 	.db #0xff	; 255
      008E85 FF                    3940 	.db #0xff	; 255
      008E86 FF                    3941 	.db #0xff	; 255
      008E87 FF                    3942 	.db #0xff	; 255
      008E88 FF                    3943 	.db #0xff	; 255
      008E89 FF                    3944 	.db #0xff	; 255
      008E8A FF                    3945 	.db #0xff	; 255
      008E8B FF                    3946 	.db #0xff	; 255
      008E8C FF                    3947 	.db #0xff	; 255
      008E8D FF                    3948 	.db #0xff	; 255
      008E8E FF                    3949 	.db #0xff	; 255
      008E8F FF                    3950 	.db #0xff	; 255
      008E90 FF                    3951 	.db #0xff	; 255
      008E91 FF                    3952 	.db #0xff	; 255
      008E92 FF                    3953 	.db #0xff	; 255
      008E93 FF                    3954 	.db #0xff	; 255
      008E94 FF                    3955 	.db #0xff	; 255
      008E95 FF                    3956 	.db #0xff	; 255
      008E96 FF                    3957 	.db #0xff	; 255
      008E97 FF                    3958 	.db #0xff	; 255
      008E98 FF                    3959 	.db #0xff	; 255
      008E99 FF                    3960 	.db #0xff	; 255
      008E9A FF                    3961 	.db #0xff	; 255
      008E9B FF                    3962 	.db #0xff	; 255
      008E9C FF                    3963 	.db #0xff	; 255
      008E9D FF                    3964 	.db #0xff	; 255
      008E9E FF                    3965 	.db #0xff	; 255
      008E9F FF                    3966 	.db #0xff	; 255
      008EA0 FF                    3967 	.db #0xff	; 255
      008EA1 FF                    3968 	.db #0xff	; 255
      008EA2 FF                    3969 	.db #0xff	; 255
      008EA3 FF                    3970 	.db #0xff	; 255
      008EA4 FF                    3971 	.db #0xff	; 255
      008EA5 FF                    3972 	.db #0xff	; 255
      008EA6 FF                    3973 	.db #0xff	; 255
      008EA7 FF                    3974 	.db #0xff	; 255
      008EA8 FF                    3975 	.db #0xff	; 255
      008EA9 FF                    3976 	.db #0xff	; 255
      008EAA FF                    3977 	.db #0xff	; 255
      008EAB FF                    3978 	.db #0xff	; 255
      008EAC FF                    3979 	.db #0xff	; 255
      008EAD FF                    3980 	.db #0xff	; 255
      008EAE FF                    3981 	.db #0xff	; 255
      008EAF FF                    3982 	.db #0xff	; 255
      008EB0 FF                    3983 	.db #0xff	; 255
      008EB1 FF                    3984 	.db #0xff	; 255
      008EB2 FF                    3985 	.db #0xff	; 255
      008EB3 FF                    3986 	.db #0xff	; 255
      008EB4 FF                    3987 	.db #0xff	; 255
      008EB5 FF                    3988 	.db #0xff	; 255
      008EB6 FF                    3989 	.db #0xff	; 255
      008EB7 FF                    3990 	.db #0xff	; 255
      008EB8 FF                    3991 	.db #0xff	; 255
      008EB9 FF                    3992 	.db #0xff	; 255
      008EBA FF                    3993 	.db #0xff	; 255
      008EBB FF                    3994 	.db #0xff	; 255
      008EBC FF                    3995 	.db #0xff	; 255
      008EBD FF                    3996 	.db #0xff	; 255
      008EBE FF                    3997 	.db #0xff	; 255
      008EBF FF                    3998 	.db #0xff	; 255
      008EC0 FF                    3999 	.db #0xff	; 255
      008EC1 FF                    4000 	.db #0xff	; 255
      008EC2 FF                    4001 	.db #0xff	; 255
      008EC3 FF                    4002 	.db #0xff	; 255
      008EC4 FF                    4003 	.db #0xff	; 255
      008EC5 FF                    4004 	.db #0xff	; 255
      008EC6 FF                    4005 	.db #0xff	; 255
      008EC7 FF                    4006 	.db #0xff	; 255
      008EC8 FF                    4007 	.db #0xff	; 255
      008EC9 FF                    4008 	.db #0xff	; 255
      008ECA FF                    4009 	.db #0xff	; 255
      008ECB FF                    4010 	.db #0xff	; 255
      008ECC FF                    4011 	.db #0xff	; 255
      008ECD FF                    4012 	.db #0xff	; 255
      008ECE FF                    4013 	.db #0xff	; 255
      008ECF FF                    4014 	.db #0xff	; 255
      008ED0 FF                    4015 	.db #0xff	; 255
      008ED1 FF                    4016 	.db #0xff	; 255
      008ED2 FF                    4017 	.db #0xff	; 255
      008ED3 FF                    4018 	.db #0xff	; 255
      008ED4 FF                    4019 	.db #0xff	; 255
      008ED5 FF                    4020 	.db #0xff	; 255
      008ED6 FF                    4021 	.db #0xff	; 255
      008ED7 FF                    4022 	.db #0xff	; 255
      008ED8 FF                    4023 	.db #0xff	; 255
      008ED9 FF                    4024 	.db #0xff	; 255
      008EDA FF                    4025 	.db #0xff	; 255
      008EDB FF                    4026 	.db #0xff	; 255
      008EDC FF                    4027 	.db #0xff	; 255
      008EDD FF                    4028 	.db #0xff	; 255
      008EDE C7                    4029 	.db #0xc7	; 199
      008EDF 83                    4030 	.db #0x83	; 131
      008EE0 07                    4031 	.db #0x07	; 7
      008EE1 0F                    4032 	.db #0x0f	; 15
      008EE2 1F                    4033 	.db #0x1f	; 31
      008EE3 1F                    4034 	.db #0x1f	; 31
      008EE4 1F                    4035 	.db #0x1f	; 31
      008EE5 1F                    4036 	.db #0x1f	; 31
      008EE6 0F                    4037 	.db #0x0f	; 15
      008EE7 00                    4038 	.db #0x00	; 0
      008EE8 80                    4039 	.db #0x80	; 128
      008EE9 E0                    4040 	.db #0xe0	; 224
      008EEA FF                    4041 	.db #0xff	; 255
      008EEB FF                    4042 	.db #0xff	; 255
      008EEC FF                    4043 	.db #0xff	; 255
      008EED FF                    4044 	.db #0xff	; 255
      008EEE FF                    4045 	.db #0xff	; 255
      008EEF FF                    4046 	.db #0xff	; 255
      008EF0 FF                    4047 	.db #0xff	; 255
      008EF1 FF                    4048 	.db #0xff	; 255
      008EF2 FF                    4049 	.db #0xff	; 255
      008EF3 FF                    4050 	.db #0xff	; 255
      008EF4 FF                    4051 	.db #0xff	; 255
      008EF5 FF                    4052 	.db #0xff	; 255
      008EF6 FF                    4053 	.db #0xff	; 255
      008EF7 FF                    4054 	.db #0xff	; 255
      008EF8 FF                    4055 	.db #0xff	; 255
      008EF9 FF                    4056 	.db #0xff	; 255
      008EFA FF                    4057 	.db #0xff	; 255
      008EFB FF                    4058 	.db #0xff	; 255
      008EFC FF                    4059 	.db #0xff	; 255
      008EFD FF                    4060 	.db #0xff	; 255
      008EFE FF                    4061 	.db #0xff	; 255
      008EFF FF                    4062 	.db #0xff	; 255
      008F00 FF                    4063 	.db #0xff	; 255
      008F01 FF                    4064 	.db #0xff	; 255
      008F02 FF                    4065 	.db #0xff	; 255
      008F03 FF                    4066 	.db #0xff	; 255
      008F04 FF                    4067 	.db #0xff	; 255
      008F05 FF                    4068 	.db #0xff	; 255
      008F06 FF                    4069 	.db #0xff	; 255
      008F07 FF                    4070 	.db #0xff	; 255
      008F08 FF                    4071 	.db #0xff	; 255
      008F09 FF                    4072 	.db #0xff	; 255
      008F0A FF                    4073 	.db #0xff	; 255
      008F0B FF                    4074 	.db #0xff	; 255
      008F0C FF                    4075 	.db #0xff	; 255
      008F0D FF                    4076 	.db #0xff	; 255
      008F0E FF                    4077 	.db #0xff	; 255
      008F0F FF                    4078 	.db #0xff	; 255
      008F10 FF                    4079 	.db #0xff	; 255
      008F11 FF                    4080 	.db #0xff	; 255
      008F12 FF                    4081 	.db #0xff	; 255
      008F13 FF                    4082 	.db #0xff	; 255
      008F14 FF                    4083 	.db #0xff	; 255
      008F15 FF                    4084 	.db #0xff	; 255
      008F16 FF                    4085 	.db #0xff	; 255
      008F17 FF                    4086 	.db #0xff	; 255
      008F18 FF                    4087 	.db #0xff	; 255
      008F19 FF                    4088 	.db #0xff	; 255
      008F1A FF                    4089 	.db #0xff	; 255
      008F1B FF                    4090 	.db #0xff	; 255
      008F1C FF                    4091 	.db #0xff	; 255
      008F1D FF                    4092 	.db #0xff	; 255
      008F1E FF                    4093 	.db #0xff	; 255
      008F1F FF                    4094 	.db #0xff	; 255
      008F20 FF                    4095 	.db #0xff	; 255
      008F21 FF                    4096 	.db #0xff	; 255
      008F22 FF                    4097 	.db #0xff	; 255
      008F23 FF                    4098 	.db #0xff	; 255
      008F24 FF                    4099 	.db #0xff	; 255
      008F25 FF                    4100 	.db #0xff	; 255
      008F26 FF                    4101 	.db #0xff	; 255
      008F27 FF                    4102 	.db #0xff	; 255
      008F28 FF                    4103 	.db #0xff	; 255
      008F29 FF                    4104 	.db #0xff	; 255
      008F2A FF                    4105 	.db #0xff	; 255
      008F2B FF                    4106 	.db #0xff	; 255
      008F2C FF                    4107 	.db #0xff	; 255
      008F2D FF                    4108 	.db #0xff	; 255
      008F2E FF                    4109 	.db #0xff	; 255
      008F2F FF                    4110 	.db #0xff	; 255
      008F30 FF                    4111 	.db #0xff	; 255
      008F31 FF                    4112 	.db #0xff	; 255
      008F32 FF                    4113 	.db #0xff	; 255
      008F33 FF                    4114 	.db #0xff	; 255
      008F34 FF                    4115 	.db #0xff	; 255
      008F35 FF                    4116 	.db #0xff	; 255
      008F36 FF                    4117 	.db #0xff	; 255
      008F37 FF                    4118 	.db #0xff	; 255
      008F38 FF                    4119 	.db #0xff	; 255
      008F39 FF                    4120 	.db #0xff	; 255
      008F3A FF                    4121 	.db #0xff	; 255
      008F3B FF                    4122 	.db #0xff	; 255
      008F3C FF                    4123 	.db #0xff	; 255
      008F3D FF                    4124 	.db #0xff	; 255
      008F3E FF                    4125 	.db #0xff	; 255
      008F3F FF                    4126 	.db #0xff	; 255
      008F40 FF                    4127 	.db #0xff	; 255
      008F41 FF                    4128 	.db #0xff	; 255
      008F42 FF                    4129 	.db #0xff	; 255
      008F43 FF                    4130 	.db #0xff	; 255
      008F44 FF                    4131 	.db #0xff	; 255
      008F45 FF                    4132 	.db #0xff	; 255
      008F46 FF                    4133 	.db #0xff	; 255
      008F47 FF                    4134 	.db #0xff	; 255
      008F48 FF                    4135 	.db #0xff	; 255
      008F49 FF                    4136 	.db #0xff	; 255
      008F4A FF                    4137 	.db #0xff	; 255
      008F4B FF                    4138 	.db #0xff	; 255
      008F4C FF                    4139 	.db #0xff	; 255
      008F4D FF                    4140 	.db #0xff	; 255
      008F4E FF                    4141 	.db #0xff	; 255
      008F4F FF                    4142 	.db #0xff	; 255
      008F50 FF                    4143 	.db #0xff	; 255
      008F51 FF                    4144 	.db #0xff	; 255
      008F52 FF                    4145 	.db #0xff	; 255
      008F53 FF                    4146 	.db #0xff	; 255
      008F54 FF                    4147 	.db #0xff	; 255
      008F55 FF                    4148 	.db #0xff	; 255
      008F56 FF                    4149 	.db #0xff	; 255
      008F57 FF                    4150 	.db #0xff	; 255
      008F58 FF                    4151 	.db #0xff	; 255
      008F59 FF                    4152 	.db #0xff	; 255
      008F5A FF                    4153 	.db #0xff	; 255
      008F5B FF                    4154 	.db #0xff	; 255
      008F5C FF                    4155 	.db #0xff	; 255
      008F5D FF                    4156 	.db #0xff	; 255
      008F5E FF                    4157 	.db #0xff	; 255
      008F5F FF                    4158 	.db #0xff	; 255
      008F60 FF                    4159 	.db #0xff	; 255
      008F61 FE                    4160 	.db #0xfe	; 254
      008F62 FE                    4161 	.db #0xfe	; 254
      008F63 FE                    4162 	.db #0xfe	; 254
      008F64 FE                    4163 	.db #0xfe	; 254
      008F65 FE                    4164 	.db #0xfe	; 254
      008F66 FE                    4165 	.db #0xfe	; 254
      008F67 FF                    4166 	.db #0xff	; 255
      008F68 FF                    4167 	.db #0xff	; 255
      008F69 FF                    4168 	.db #0xff	; 255
      008F6A FF                    4169 	.db #0xff	; 255
      008F6B FF                    4170 	.db #0xff	; 255
      008F6C FF                    4171 	.db #0xff	; 255
      008F6D FF                    4172 	.db #0xff	; 255
      008F6E FF                    4173 	.db #0xff	; 255
      008F6F FF                    4174 	.db #0xff	; 255
      008F70 FF                    4175 	.db #0xff	; 255
      008F71 FF                    4176 	.db #0xff	; 255
      008F72 FF                    4177 	.db #0xff	; 255
      008F73 FF                    4178 	.db #0xff	; 255
      008F74 FF                    4179 	.db #0xff	; 255
      008F75 FF                    4180 	.db #0xff	; 255
      008F76 FF                    4181 	.db #0xff	; 255
      008F77 FF                    4182 	.db #0xff	; 255
      008F78 FF                    4183 	.db #0xff	; 255
      008F79 FF                    4184 	.db #0xff	; 255
      008F7A FF                    4185 	.db #0xff	; 255
      008F7B FF                    4186 	.db #0xff	; 255
      008F7C FF                    4187 	.db #0xff	; 255
      008F7D FF                    4188 	.db #0xff	; 255
      008F7E FF                    4189 	.db #0xff	; 255
      008F7F FF                    4190 	.db #0xff	; 255
      008F80 FF                    4191 	.db #0xff	; 255
      008F81 FF                    4192 	.db #0xff	; 255
      008F82 FF                    4193 	.db #0xff	; 255
      008F83 FF                    4194 	.db #0xff	; 255
      008F84 FF                    4195 	.db #0xff	; 255
      008F85 FF                    4196 	.db #0xff	; 255
      008F86 FF                    4197 	.db #0xff	; 255
      008F87 FF                    4198 	.db #0xff	; 255
      008F88 FF                    4199 	.db #0xff	; 255
      008F89 FF                    4200 	.db #0xff	; 255
      008F8A FF                    4201 	.db #0xff	; 255
      008F8B FF                    4202 	.db #0xff	; 255
      008F8C FF                    4203 	.db #0xff	; 255
      008F8D FF                    4204 	.db #0xff	; 255
      008F8E FF                    4205 	.db #0xff	; 255
      008F8F FF                    4206 	.db #0xff	; 255
      008F90 FF                    4207 	.db #0xff	; 255
      008F91 FF                    4208 	.db #0xff	; 255
      008F92 FF                    4209 	.db #0xff	; 255
      008F93 FF                    4210 	.db #0xff	; 255
      008F94 FF                    4211 	.db #0xff	; 255
      008F95 FF                    4212 	.db #0xff	; 255
      008F96 FF                    4213 	.db #0xff	; 255
      008F97 FF                    4214 	.db #0xff	; 255
      008F98 FF                    4215 	.db #0xff	; 255
      008F99 FF                    4216 	.db #0xff	; 255
      008F9A FF                    4217 	.db #0xff	; 255
      008F9B FF                    4218 	.db #0xff	; 255
      008F9C FF                    4219 	.db #0xff	; 255
      008F9D FF                    4220 	.db #0xff	; 255
      008F9E FF                    4221 	.db #0xff	; 255
      008F9F FF                    4222 	.db #0xff	; 255
      008FA0 FF                    4223 	.db #0xff	; 255
      008FA1 FF                    4224 	.db #0xff	; 255
      008FA2 FF                    4225 	.db #0xff	; 255
      008FA3 FF                    4226 	.db #0xff	; 255
      008FA4 FF                    4227 	.db #0xff	; 255
      008FA5 FF                    4228 	.db #0xff	; 255
      008FA6 FF                    4229 	.db #0xff	; 255
      008FA7 FF                    4230 	.db #0xff	; 255
      008FA8 FF                    4231 	.db #0xff	; 255
      008FA9 FF                    4232 	.db #0xff	; 255
      008FAA FF                    4233 	.db #0xff	; 255
      008FAB FF                    4234 	.db #0xff	; 255
      008FAC FF                    4235 	.db #0xff	; 255
      008FAD FF                    4236 	.db #0xff	; 255
      008FAE FF                    4237 	.db #0xff	; 255
      008FAF FF                    4238 	.db #0xff	; 255
      008FB0 FF                    4239 	.db #0xff	; 255
      008FB1 FF                    4240 	.db #0xff	; 255
      008FB2 FF                    4241 	.db #0xff	; 255
      008FB3 FF                    4242 	.db #0xff	; 255
      008FB4 FF                    4243 	.db #0xff	; 255
      008FB5 FF                    4244 	.db #0xff	; 255
      008FB6 FF                    4245 	.db #0xff	; 255
      008FB7 FF                    4246 	.db #0xff	; 255
      008FB8 FF                    4247 	.db #0xff	; 255
      008FB9 FF                    4248 	.db #0xff	; 255
      008FBA FF                    4249 	.db #0xff	; 255
      008FBB FF                    4250 	.db #0xff	; 255
      008FBC FF                    4251 	.db #0xff	; 255
      008FBD FF                    4252 	.db #0xff	; 255
      008FBE FF                    4253 	.db #0xff	; 255
      008FBF FF                    4254 	.db #0xff	; 255
      008FC0 FF                    4255 	.db #0xff	; 255
      008FC1 FF                    4256 	.db #0xff	; 255
      008FC2 FF                    4257 	.db #0xff	; 255
      008FC3 FF                    4258 	.db #0xff	; 255
      008FC4 FF                    4259 	.db #0xff	; 255
      008FC5 FF                    4260 	.db #0xff	; 255
      008FC6 FF                    4261 	.db #0xff	; 255
      008FC7 FF                    4262 	.db #0xff	; 255
      008FC8 FF                    4263 	.db #0xff	; 255
      008FC9 FF                    4264 	.db #0xff	; 255
      008FCA FF                    4265 	.db #0xff	; 255
      008FCB FF                    4266 	.db #0xff	; 255
      008FCC FF                    4267 	.db #0xff	; 255
      008FCD FF                    4268 	.db #0xff	; 255
      008FCE FF                    4269 	.db #0xff	; 255
      008FCF FF                    4270 	.db #0xff	; 255
      008FD0 FF                    4271 	.db #0xff	; 255
      008FD1 FF                    4272 	.db #0xff	; 255
      008FD2 FF                    4273 	.db #0xff	; 255
      008FD3 FF                    4274 	.db #0xff	; 255
      008FD4 FF                    4275 	.db #0xff	; 255
      008FD5 FF                    4276 	.db #0xff	; 255
      008FD6 FF                    4277 	.db #0xff	; 255
      008FD7 FF                    4278 	.db #0xff	; 255
      008FD8 FF                    4279 	.db #0xff	; 255
      008FD9 FF                    4280 	.db #0xff	; 255
      008FDA FF                    4281 	.db #0xff	; 255
      008FDB FF                    4282 	.db #0xff	; 255
      008FDC FF                    4283 	.db #0xff	; 255
      008FDD FF                    4284 	.db #0xff	; 255
      008FDE FF                    4285 	.db #0xff	; 255
      008FDF FF                    4286 	.db #0xff	; 255
      008FE0 FF                    4287 	.db #0xff	; 255
      008FE1 FF                    4288 	.db #0xff	; 255
      008FE2 FF                    4289 	.db #0xff	; 255
      008FE3 FF                    4290 	.db #0xff	; 255
      008FE4 FF                    4291 	.db #0xff	; 255
      008FE5 FF                    4292 	.db #0xff	; 255
      008FE6 FF                    4293 	.db #0xff	; 255
      008FE7 FF                    4294 	.db #0xff	; 255
      008FE8 FF                    4295 	.db #0xff	; 255
      008FE9 FF                    4296 	.db #0xff	; 255
      008FEA FF                    4297 	.db #0xff	; 255
      008FEB FF                    4298 	.db #0xff	; 255
      008FEC FF                    4299 	.db #0xff	; 255
      008FED FF                    4300 	.db #0xff	; 255
      008FEE FF                    4301 	.db #0xff	; 255
      008FEF FF                    4302 	.db #0xff	; 255
      008FF0 FF                    4303 	.db #0xff	; 255
      008FF1 FF                    4304 	.db #0xff	; 255
      008FF2 FF                    4305 	.db #0xff	; 255
      008FF3 FF                    4306 	.db #0xff	; 255
      008FF4 FF                    4307 	.db #0xff	; 255
      008FF5 FF                    4308 	.db #0xff	; 255
      008FF6 FF                    4309 	.db #0xff	; 255
      008FF7 FF                    4310 	.db #0xff	; 255
      008FF8 FF                    4311 	.db #0xff	; 255
      008FF9 FF                    4312 	.db #0xff	; 255
      008FFA FF                    4313 	.db #0xff	; 255
      008FFB FF                    4314 	.db #0xff	; 255
      008FFC FF                    4315 	.db #0xff	; 255
      008FFD FF                    4316 	.db #0xff	; 255
      008FFE FF                    4317 	.db #0xff	; 255
      008FFF FF                    4318 	.db #0xff	; 255
      009000 FF                    4319 	.db #0xff	; 255
      009001 FF                    4320 	.db #0xff	; 255
      009002 FF                    4321 	.db #0xff	; 255
      009003 FF                    4322 	.db #0xff	; 255
      009004 FF                    4323 	.db #0xff	; 255
      009005 FF                    4324 	.db #0xff	; 255
      009006 FF                    4325 	.db #0xff	; 255
      009007 FF                    4326 	.db #0xff	; 255
      009008 FF                    4327 	.db #0xff	; 255
      009009 FF                    4328 	.db #0xff	; 255
      00900A FF                    4329 	.db #0xff	; 255
      00900B FF                    4330 	.db #0xff	; 255
      00900C FF                    4331 	.db #0xff	; 255
      00900D FF                    4332 	.db #0xff	; 255
      00900E FF                    4333 	.db #0xff	; 255
      00900F FF                    4334 	.db #0xff	; 255
      009010 FF                    4335 	.db #0xff	; 255
      009011 FF                    4336 	.db #0xff	; 255
      009012 FF                    4337 	.db #0xff	; 255
      009013 FF                    4338 	.db #0xff	; 255
      009014 FF                    4339 	.db #0xff	; 255
      009015 FF                    4340 	.db #0xff	; 255
      009016 FF                    4341 	.db #0xff	; 255
      009017 FF                    4342 	.db #0xff	; 255
      009018 FF                    4343 	.db #0xff	; 255
      009019 FF                    4344 	.db #0xff	; 255
                                   4345 	.area CODE
                                   4346 	.area INITIALIZER
                                   4347 	.area CABS (ABS)
