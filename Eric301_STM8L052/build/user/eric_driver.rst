                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module eric_driver
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _dindex
                                     11 	.globl _Read_Key
                                     12 	.globl _Check_U1buf
                                     13 	.globl _Uart1_Recv
                                     14 	.globl _SendMsg
                                     15 	.globl _USART_ClearITPendingBit
                                     16 	.globl _USART_GetFlagStatus
                                     17 	.globl _USART_ITConfig
                                     18 	.globl _USART_SendData8
                                     19 	.globl _USART_Cmd
                                     20 	.globl _USART_Init
                                     21 	.globl _USART_DeInit
                                     22 	.globl _TIM4_ITConfig
                                     23 	.globl _TIM4_Cmd
                                     24 	.globl _TIM4_ARRPreloadConfig
                                     25 	.globl _TIM4_TimeBaseInit
                                     26 	.globl _TIM2_ITConfig
                                     27 	.globl _TIM2_Cmd
                                     28 	.globl _TIM2_ARRPreloadConfig
                                     29 	.globl _TIM2_TimeBaseInit
                                     30 	.globl _SYSCFG_REMAPDMAChannelConfig
                                     31 	.globl _RTC_GetDate
                                     32 	.globl _RTC_DateStructInit
                                     33 	.globl _RTC_SetDate
                                     34 	.globl _RTC_GetTime
                                     35 	.globl _RTC_TimeStructInit
                                     36 	.globl _RTC_SetTime
                                     37 	.globl _RTC_WaitForSynchro
                                     38 	.globl _RTC_Init
                                     39 	.globl _I2C_GetFlagStatus
                                     40 	.globl _I2C_CheckEvent
                                     41 	.globl _I2C_ReceiveData
                                     42 	.globl _I2C_SendData
                                     43 	.globl _I2C_Send7bitAddress
                                     44 	.globl _I2C_AcknowledgeConfig
                                     45 	.globl _I2C_GenerateSTOP
                                     46 	.globl _I2C_GenerateSTART
                                     47 	.globl _I2C_Cmd
                                     48 	.globl _I2C_Init
                                     49 	.globl _I2C_DeInit
                                     50 	.globl _GPIO_ReadInputDataBit
                                     51 	.globl _GPIO_Init
                                     52 	.globl _FLASH_ReadByte
                                     53 	.globl _FLASH_ProgramByte
                                     54 	.globl _FLASH_Lock
                                     55 	.globl _FLASH_Unlock
                                     56 	.globl _DMA_ITConfig
                                     57 	.globl _DMA_Cmd
                                     58 	.globl _DMA_GlobalCmd
                                     59 	.globl _DMA_Init
                                     60 	.globl _CLK_GetFlagStatus
                                     61 	.globl _CLK_PeripheralClockConfig
                                     62 	.globl _CLK_RTCClockConfig
                                     63 	.globl _CLK_SYSCLKSourceSwitchCmd
                                     64 	.globl _CLK_SYSCLKDivConfig
                                     65 	.globl _CLK_GetSYSCLKSource
                                     66 	.globl _CLK_SYSCLKSourceConfig
                                     67 	.globl _CLK_LSEConfig
                                     68 	.globl _ADC_DMACmd
                                     69 	.globl _ADC_SamplingTimeConfig
                                     70 	.globl _ADC_ChannelCmd
                                     71 	.globl _ADC_VrefintCmd
                                     72 	.globl _ADC_Cmd
                                     73 	.globl _ADC_Init
                                     74 	.globl _Verfin
                                     75 	.globl _dmabuf
                                     76 	.globl _data_index
                                     77 	.globl _key
                                     78 	.globl _u1buf
                                     79 	.globl _Delay
                                     80 	.globl _CLK_Config
                                     81 	.globl _TIM2_Init
                                     82 	.globl _TIM4_Init
                                     83 	.globl _Uart1_Init
                                     84 	.globl _Uart1_Send
                                     85 	.globl _I2C_WriteByte
                                     86 	.globl _I2C_ReadByte
                                     87 	.globl _Save_Stat
                                     88 	.globl _Load_Stat
                                     89 	.globl _IIC_Init
                                     90 	.globl _Save_Data
                                     91 	.globl _Load_Data
                                     92 	.globl _init_rtc
                                     93 	.globl _rtc_set_datetime
                                     94 	.globl _rtc_get_datetime
                                     95 	.globl _Scan_Key
                                     96 	.globl _ADC_Config
                                     97 	.globl _DMA_Config
                                     98 ;--------------------------------------------------------
                                     99 ; ram data
                                    100 ;--------------------------------------------------------
                                    101 	.area DATA
      000001                        102 _u1buf::
      000001                        103 	.ds 262
      000107                        104 _Check_U1buf_r1_10000_712:
      000107                        105 	.ds 2
      000109                        106 _Check_U1buf_r2_10000_712:
      000109                        107 	.ds 2
      00010B                        108 _init_rtc_tag_10000_765:
      00010B                        109 	.ds 1
                                    110 ;--------------------------------------------------------
                                    111 ; ram data
                                    112 ;--------------------------------------------------------
                                    113 	.area INITIALIZED
      000499                        114 _key::
      000499                        115 	.ds 4
      00049D                        116 _data_index::
      00049D                        117 	.ds 3
      0004A0                        118 _dmabuf::
      0004A0                        119 	.ds 20
      0004B4                        120 _Verfin::
      0004B4                        121 	.ds 4
                                    122 ;--------------------------------------------------------
                                    123 ; absolute external ram data
                                    124 ;--------------------------------------------------------
                                    125 	.area DABS (ABS)
                                    126 
                                    127 ; default segment ordering for linker
                                    128 	.area HOME
                                    129 	.area GSINIT
                                    130 	.area GSFINAL
                                    131 	.area CONST
                                    132 	.area INITIALIZER
                                    133 	.area CODE
                                    134 
                                    135 ;--------------------------------------------------------
                                    136 ; global & static initialisations
                                    137 ;--------------------------------------------------------
                                    138 	.area HOME
                                    139 	.area GSINIT
                                    140 	.area GSFINAL
                                    141 	.area GSINIT
                                    142 ;	User/eric_driver.c: 163: static uint16_t r1 = 0, r2 = 0;
                                    143 ; genAssign
      008088 5F               [ 1]  144 	clrw	x
      008089 CF 01 07         [ 2]  145 	ldw	_Check_U1buf_r1_10000_712+0, x
                                    146 ; genAssign
      00808C 5F               [ 1]  147 	clrw	x
      00808D CF 01 09         [ 2]  148 	ldw	_Check_U1buf_r2_10000_712+0, x
                                    149 ;	User/eric_driver.c: 443: static uint8_t tag = 0;
                                    150 ; genAssign
      008090 72 5F 01 0B      [ 1]  151 	clr	_init_rtc_tag_10000_765+0
                                    152 ;--------------------------------------------------------
                                    153 ; Home
                                    154 ;--------------------------------------------------------
                                    155 	.area HOME
                                    156 	.area HOME
                                    157 ;--------------------------------------------------------
                                    158 ; code
                                    159 ;--------------------------------------------------------
                                    160 	.area CODE
                                    161 ;	User/eric_driver.c: 43: void Delay(__IO uint16_t nCount)
                                    162 ; genLabel
                                    163 ;	-----------------------------------------
                                    164 ;	 function Delay
                                    165 ;	-----------------------------------------
                                    166 ;	Register assignment is optimal.
                                    167 ;	Stack space usage: 2 bytes.
      0091EB                        168 _Delay:
      0091EB 89               [ 2]  169 	pushw	x
                                    170 ; genReceive
      0091EC 1F 01            [ 2]  171 	ldw	(0x01, sp), x
                                    172 ;	User/eric_driver.c: 46: while (nCount != 0)
                                    173 ; genLabel
      0091EE                        174 00101$:
                                    175 ; genIfx
      0091EE 1E 01            [ 2]  176 	ldw	x, (0x01, sp)
                                    177 ; peephole j5 changed absolute to relative unconditional jump.
      0091F0 27 07            [ 1]  178 	jreq	00104$
                                    179 ; peephole j10 removed jra by using inverse jump logic
                                    180 ; peephole j30 removed unused label 00120$.
                                    181 ;	User/eric_driver.c: 48: nCount--;
                                    182 ; genAssign
      0091F2 1E 01            [ 2]  183 	ldw	x, (0x01, sp)
                                    184 ; genMinus
      0091F4 5A               [ 2]  185 	decw	x
                                    186 ; genAssign
      0091F5 1F 01            [ 2]  187 	ldw	(0x01, sp), x
                                    188 ; genGoto
      0091F7 20 F5            [ 2]  189 	jra	00101$
                                    190 ; peephole j5 changed absolute to relative unconditional jump.
                                    191 ; genLabel
      0091F9                        192 00104$:
                                    193 ;	User/eric_driver.c: 50: }
                                    194 ; genEndFunction
      0091F9 85               [ 2]  195 	popw	x
      0091FA 81               [ 4]  196 	ret
                                    197 ;	Total Delay function size at codegen: 2 bytes.
                                    198 ;	User/eric_driver.c: 56: void CLK_Config(void)
                                    199 ; genLabel
                                    200 ;	-----------------------------------------
                                    201 ;	 function CLK_Config
                                    202 ;	-----------------------------------------
                                    203 ;	Register assignment is optimal.
                                    204 ;	Stack space usage: 0 bytes.
      0091FB                        205 _CLK_Config:
                                    206 ;	User/eric_driver.c: 69: CLK_SYSCLKSourceSwitchCmd(ENABLE);//使能时钟切换
                                    207 ; genSend
      0091FB A6 01            [ 1]  208 	ld	a, #0x01
                                    209 ; genCall
      0091FD CD C5 65         [ 4]  210 	call	_CLK_SYSCLKSourceSwitchCmd
                                    211 ;	User/eric_driver.c: 70: CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_HSI);//选择内部高速时钟作为时钟源
                                    212 ; genSend
      009200 A6 01            [ 1]  213 	ld	a, #0x01
                                    214 ; genCall
      009202 CD C5 06         [ 4]  215 	call	_CLK_SYSCLKSourceConfig
                                    216 ;	User/eric_driver.c: 72: CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_1);//设置系统时钟分频
                                    217 ; genSend
      009205 4F               [ 1]  218 	clr	a
                                    219 ; genCall
      009206 CD C5 61         [ 4]  220 	call	_CLK_SYSCLKDivConfig
                                    221 ;	User/eric_driver.c: 73: while (CLK_GetSYSCLKSource() != CLK_SYSCLKSource_HSI)//等待时钟稳定
                                    222 ; genLabel
      009209                        223 00101$:
                                    224 ; genCall
      009209 CD C5 0A         [ 4]  225 	call	_CLK_GetSYSCLKSource
                                    226 ; genCmpEQorNE
      00920C 4A               [ 1]  227 	dec	a
      00920D 26 FA            [ 1]  228 	jrne	00101$
                                    229 ; peephole j22 jumped to 00101$ directly instead of via 00114$.
      00920F 81               [ 4]  230 	ret
                                    231 ; peephole j2e replaced jump by return.
                                    232 ; peephole j30 removed unused label 00114$.
      009210 20 F7            [ 2]  233 	jra	00101$
                                    234 ; peephole j5 changed absolute to relative unconditional jump.
                                    235 ; peephole j30 removed unused label 00115$.
                                    236 ; skipping generated iCode
                                    237 ; genLabel
                                    238 ; peephole j30 removed unused label 00104$.
                                    239 ;	User/eric_driver.c: 77: }
                                    240 ; genEndFunction
      009212 81               [ 4]  241 	ret
                                    242 ;	Total CLK_Config function size at codegen: 1 bytes.
                                    243 ;	User/eric_driver.c: 85: void TIM2_Init(void)
                                    244 ; genLabel
                                    245 ;	-----------------------------------------
                                    246 ;	 function TIM2_Init
                                    247 ;	-----------------------------------------
                                    248 ;	Register assignment is optimal.
                                    249 ;	Stack space usage: 0 bytes.
      009213                        250 _TIM2_Init:
                                    251 ;	User/eric_driver.c: 87: CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);          	    //使能定时器2时钟
                                    252 ; genIPush
      009213 4B 01            [ 1]  253 	push	#0x01
                                    254 ; genSend
      009215 4F               [ 1]  255 	clr	a
                                    256 ; genCall
      009216 CD C5 89         [ 4]  257 	call	_CLK_PeripheralClockConfig
                                    258 ;	User/eric_driver.c: 88: TIM2_TimeBaseInit(TIM2_Prescaler_64, TIM2_CounterMode_Up,
                                    259 ; genIPush
      009219 4B 18            [ 1]  260 	push	#0x18
      00921B 4B 00            [ 1]  261 	push	#0x00
                                    262 ; genIPush
      00921D 4B 00            [ 1]  263 	push	#0x00
                                    264 ; genSend
      00921F A6 06            [ 1]  265 	ld	a, #0x06
                                    266 ; genCall
      009221 CD E1 53         [ 4]  267 	call	_TIM2_TimeBaseInit
                                    268 ;	User/eric_driver.c: 91: TIM2_ITConfig(TIM2_IT_Update, ENABLE);      //使能向上计数溢出中断
                                    269 ; genIPush
      009224 4B 01            [ 1]  270 	push	#0x01
                                    271 ; genSend
      009226 A6 01            [ 1]  272 	ld	a, #0x01
                                    273 ; genCall
      009228 CD E5 21         [ 4]  274 	call	_TIM2_ITConfig
                                    275 ;	User/eric_driver.c: 92: TIM2_ARRPreloadConfig(ENABLE);  //使能定时器2自动重载功能
                                    276 ; genSend
      00922B A6 01            [ 1]  277 	ld	a, #0x01
                                    278 ; genCall
      00922D CD E1 FB         [ 4]  279 	call	_TIM2_ARRPreloadConfig
                                    280 ;	User/eric_driver.c: 93: TIM2_Cmd(ENABLE);               //启动定时器2开始计数
                                    281 ; genSend
      009230 A6 01            [ 1]  282 	ld	a, #0x01
                                    283 ; genCall
                                    284 ; genLabel
                                    285 ; peephole j30 removed unused label 00101$.
                                    286 ;	User/eric_driver.c: 94: }
                                    287 ; genEndFunction
      009232 CC E2 2B         [ 2]  288 	jp	_TIM2_Cmd
                                    289 ; peephole 52 removed unreachable ret.
                                    290 ;	Total TIM2_Init function size at codegen: 1 bytes.
                                    291 ;	User/eric_driver.c: 97: void TIM4_Init(void)
                                    292 ; genLabel
                                    293 ;	-----------------------------------------
                                    294 ;	 function TIM4_Init
                                    295 ;	-----------------------------------------
                                    296 ;	Register assignment is optimal.
                                    297 ;	Stack space usage: 0 bytes.
      009235                        298 _TIM4_Init:
                                    299 ;	User/eric_driver.c: 99: CLK_PeripheralClockConfig(CLK_Peripheral_TIM4, ENABLE); //使能定时器2时钟
                                    300 ; genIPush
      009235 4B 01            [ 1]  301 	push	#0x01
                                    302 ; genSend
      009237 A6 02            [ 1]  303 	ld	a, #0x02
                                    304 ; genCall
      009239 CD C5 89         [ 4]  305 	call	_CLK_PeripheralClockConfig
                                    306 ;	User/eric_driver.c: 104: TIM4_TimeBaseInit(TIM4_Prescaler_16384, 244);   		//250ms, 16M
                                    307 ; genIPush
      00923C 4B F4            [ 1]  308 	push	#0xf4
                                    309 ; genSend
      00923E A6 0E            [ 1]  310 	ld	a, #0x0e
                                    311 ; genCall
      009240 CD E7 BE         [ 4]  312 	call	_TIM4_TimeBaseInit
                                    313 ;	User/eric_driver.c: 105: TIM4_ITConfig(TIM4_IT_Update, ENABLE);     	//使能向上计数溢出中断
                                    314 ; genIPush
      009243 4B 01            [ 1]  315 	push	#0x01
                                    316 ; genSend
      009245 A6 01            [ 1]  317 	ld	a, #0x01
                                    318 ; genCall
      009247 CD E8 71         [ 4]  319 	call	_TIM4_ITConfig
                                    320 ;	User/eric_driver.c: 106: TIM4_ARRPreloadConfig(ENABLE);  				//使能定时器2自动重载功能
                                    321 ; genSend
      00924A A6 01            [ 1]  322 	ld	a, #0x01
                                    323 ; genCall
      00924C CD E8 29         [ 4]  324 	call	_TIM4_ARRPreloadConfig
                                    325 ;	User/eric_driver.c: 107: TIM4_Cmd(ENABLE);               				//启动定时器2开始计数
                                    326 ; genSend
      00924F A6 01            [ 1]  327 	ld	a, #0x01
                                    328 ; genCall
                                    329 ; genLabel
                                    330 ; peephole j30 removed unused label 00101$.
                                    331 ;	User/eric_driver.c: 108: }
                                    332 ; genEndFunction
      009251 CC E8 59         [ 2]  333 	jp	_TIM4_Cmd
                                    334 ; peephole 52 removed unreachable ret.
                                    335 ;	Total TIM4_Init function size at codegen: 1 bytes.
                                    336 ;	User/eric_driver.c: 110: void Uart1_Init(void)
                                    337 ; genLabel
                                    338 ;	-----------------------------------------
                                    339 ;	 function Uart1_Init
                                    340 ;	-----------------------------------------
                                    341 ;	Register assignment is optimal.
                                    342 ;	Stack space usage: 0 bytes.
      009254                        343 _Uart1_Init:
                                    344 ;	User/eric_driver.c: 115: CLK_PeripheralClockConfig(CLK_Peripheral_USART1, ENABLE);
                                    345 ; genIPush
      009254 4B 01            [ 1]  346 	push	#0x01
                                    347 ; genSend
      009256 A6 05            [ 1]  348 	ld	a, #0x05
                                    349 ; genCall
      009258 CD C5 89         [ 4]  350 	call	_CLK_PeripheralClockConfig
                                    351 ;	User/eric_driver.c: 116: GPIO_Init(GPIOC, GPIO_Pin_3, GPIO_Mode_Out_PP_High_Fast);//TXD
                                    352 ; genIPush
      00925B 4B F0            [ 1]  353 	push	#0xf0
                                    354 ; genSend
      00925D A6 08            [ 1]  355 	ld	a, #0x08
                                    356 ; genSend
      00925F AE 50 0A         [ 2]  357 	ldw	x, #0x500a
                                    358 ; genCall
      009262 CD CD E4         [ 4]  359 	call	_GPIO_Init
                                    360 ;	User/eric_driver.c: 117: GPIO_Init(GPIOC, GPIO_Pin_2, GPIO_Mode_In_PU_No_IT);//RXD
                                    361 ; genIPush
      009265 4B 40            [ 1]  362 	push	#0x40
                                    363 ; genSend
      009267 A6 04            [ 1]  364 	ld	a, #0x04
                                    365 ; genSend
      009269 AE 50 0A         [ 2]  366 	ldw	x, #0x500a
                                    367 ; genCall
      00926C CD CD E4         [ 4]  368 	call	_GPIO_Init
                                    369 ;	User/eric_driver.c: 118: USART_DeInit(USART1);       //复位UART1
                                    370 ; genSend
      00926F AE 52 30         [ 2]  371 	ldw	x, #0x5230
                                    372 ; genCall
      009272 CD E9 3F         [ 4]  373 	call	_USART_DeInit
                                    374 ;	User/eric_driver.c: 128: USART_Init(USART1, 9600, USART_WordLength_8b, USART_StopBits_1, USART_Parity_No, (USART_Mode_Tx | USART_Mode_Rx));
                                    375 ; genIPush
      009275 4B 0C            [ 1]  376 	push	#0x0c
                                    377 ; genIPush
      009277 4B 00            [ 1]  378 	push	#0x00
                                    379 ; genIPush
      009279 4B 00            [ 1]  380 	push	#0x00
                                    381 ; genIPush
      00927B 4B 00            [ 1]  382 	push	#0x00
                                    383 ; genIPush
      00927D 4B 80            [ 1]  384 	push	#0x80
      00927F 4B 25            [ 1]  385 	push	#0x25
      009281 5F               [ 1]  386 	clrw	x
      009282 89               [ 2]  387 	pushw	x
                                    388 ; genSend
      009283 AE 52 30         [ 2]  389 	ldw	x, #0x5230
                                    390 ; genCall
      009286 CD E9 56         [ 4]  391 	call	_USART_Init
                                    392 ;	User/eric_driver.c: 129: USART_ClearITPendingBit(USART1, USART_IT_RXNE);
                                    393 ; genIPush
      009289 4B 55            [ 1]  394 	push	#0x55
      00928B 4B 02            [ 1]  395 	push	#0x02
                                    396 ; genSend
      00928D AE 52 30         [ 2]  397 	ldw	x, #0x5230
                                    398 ; genCall
      009290 CD EC 8B         [ 4]  399 	call	_USART_ClearITPendingBit
                                    400 ;	User/eric_driver.c: 130: USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);//开启接收中断
                                    401 ; genIPush
      009293 4B 01            [ 1]  402 	push	#0x01
                                    403 ; genIPush
      009295 4B 55            [ 1]  404 	push	#0x55
      009297 4B 02            [ 1]  405 	push	#0x02
                                    406 ; genSend
      009299 AE 52 30         [ 2]  407 	ldw	x, #0x5230
                                    408 ; genCall
      00929C CD EB 30         [ 4]  409 	call	_USART_ITConfig
                                    410 ;	User/eric_driver.c: 131: USART_Cmd(USART1, ENABLE);  //使能UART2
                                    411 ; genSend
      00929F A6 01            [ 1]  412 	ld	a, #0x01
                                    413 ; genSend
      0092A1 AE 52 30         [ 2]  414 	ldw	x, #0x5230
                                    415 ; genCall
                                    416 ; genLabel
                                    417 ; peephole j30 removed unused label 00101$.
                                    418 ;	User/eric_driver.c: 132: }
                                    419 ; genEndFunction
      0092A4 CC EA 0D         [ 2]  420 	jp	_USART_Cmd
                                    421 ; peephole 52 removed unreachable ret.
                                    422 ;	Total Uart1_Init function size at codegen: 1 bytes.
                                    423 ;	User/eric_driver.c: 135: void Uart1_Send(uint8_t *data, uint16_t len)
                                    424 ; genLabel
                                    425 ;	-----------------------------------------
                                    426 ;	 function Uart1_Send
                                    427 ;	-----------------------------------------
                                    428 ;	Register assignment might be sub-optimal.
                                    429 ;	Stack space usage: 2 bytes.
      0092A7                        430 _Uart1_Send:
      0092A7 89               [ 2]  431 	pushw	x
                                    432 ; genReceive
      0092A8 1F 01            [ 2]  433 	ldw	(0x01, sp), x
                                    434 ;	User/eric_driver.c: 139: for (i = 0; i < len; i++)
                                    435 ; genAssign
      0092AA 5F               [ 1]  436 	clrw	x
                                    437 ; genLabel
      0092AB                        438 00106$:
                                    439 ; genCmp
                                    440 ; genCmpTnz
      0092AB 13 05            [ 2]  441 	cpw	x, (0x05, sp)
                                    442 ; peephole j5 changed absolute to relative unconditional jump.
      0092AD 24 21            [ 1]  443 	jrnc	00108$
                                    444 ; peephole j6 removed jra by using inverse jump logic
                                    445 ; peephole j30 removed unused label 00139$.
                                    446 ; skipping generated iCode
                                    447 ;	User/eric_driver.c: 141: USART_SendData8(USART1, (uint8_t)(*(data + i)));
                                    448 ; genPlus
      0092AF 90 93            [ 1]  449 	ldw	y, x
      0092B1 72 F9 01         [ 2]  450 	addw	y, (0x01, sp)
                                    451 ; genPointerGet
      0092B4 90 F6            [ 1]  452 	ld	a, (y)
                                    453 ; genSend
      0092B6 89               [ 2]  454 	pushw	x
                                    455 ; genSend
      0092B7 AE 52 30         [ 2]  456 	ldw	x, #0x5230
                                    457 ; genCall
      0092BA CD EA 4D         [ 4]  458 	call	_USART_SendData8
      0092BD 85               [ 2]  459 	popw	x
                                    460 ;	User/eric_driver.c: 143: while (USART_GetFlagStatus(USART1, USART_FLAG_TC) == RESET);
                                    461 ; genLabel
      0092BE                        462 00101$:
                                    463 ; genIPush
      0092BE 89               [ 2]  464 	pushw	x
      0092BF 4B 40            [ 1]  465 	push	#0x40
      0092C1 4B 00            [ 1]  466 	push	#0x00
                                    467 ; genSend
      0092C3 AE 52 30         [ 2]  468 	ldw	x, #0x5230
                                    469 ; genCall
      0092C6 CD EB BF         [ 4]  470 	call	_USART_GetFlagStatus
      0092C9 85               [ 2]  471 	popw	x
                                    472 ; genIfx
      0092CA 4D               [ 1]  473 	tnz	a
                                    474 ; peephole j5 changed absolute to relative unconditional jump.
      0092CB 27 F1            [ 1]  475 	jreq	00101$
                                    476 ; peephole j10 removed jra by using inverse jump logic
                                    477 ; peephole j30 removed unused label 00140$.
                                    478 ;	User/eric_driver.c: 139: for (i = 0; i < len; i++)
                                    479 ; genPlus
      0092CD 5C               [ 1]  480 	incw	x
                                    481 ; genGoto
      0092CE 20 DB            [ 2]  482 	jra	00106$
                                    483 ; peephole j5 changed absolute to relative unconditional jump.
                                    484 ; genLabel
      0092D0                        485 00108$:
                                    486 ;	User/eric_driver.c: 145: }
                                    487 ; genEndFunction
      0092D0 1E 03            [ 2]  488 	ldw	x, (3, sp)
      0092D2 5B 06            [ 2]  489 	addw	sp, #6
      0092D4 FC               [ 2]  490 	jp	(x)
                                    491 ;	Total Uart1_Send function size at codegen: 5 bytes.
                                    492 ;	User/eric_driver.c: 147: uint16_t Uart1_Recv(uint8_t *buf)
                                    493 ; genLabel
                                    494 ;	-----------------------------------------
                                    495 ;	 function Uart1_Recv
                                    496 ;	-----------------------------------------
                                    497 ;	Register assignment might be sub-optimal.
                                    498 ;	Stack space usage: 8 bytes.
      0092D5                        499 _Uart1_Recv:
      0092D5 52 08            [ 2]  500 	sub	sp, #8
                                    501 ; genReceive
      0092D7 1F 05            [ 2]  502 	ldw	(0x05, sp), x
                                    503 ;	User/eric_driver.c: 151: while (u1buf.r != u1buf.w)
                                    504 ; skipping iCode since result will be rematerialized
                                    505 ; skipping iCode since result will be rematerialized
                                    506 ; genAssign
      0092D9 5F               [ 1]  507 	clrw	x
      0092DA 1F 07            [ 2]  508 	ldw	(0x07, sp), x
                                    509 ; genLabel
      0092DC                        510 00101$:
                                    511 ; genCast
                                    512 ; genAssign
      0092DC AE 00 01         [ 2]  513 	ldw	x, #(_u1buf+0)
                                    514 ; genPointerGet
      0092DF 1F 01            [ 2]  515 	ldw	(0x01, sp), x
                                    516 ; peephole 4w removed redundant load from (0x01, sp) into x.
      0092E1 FE               [ 2]  517 	ldw	x, (x)
      0092E2 1F 03            [ 2]  518 	ldw	(0x03, sp), x
                                    519 ; genPointerGet
      0092E4 CE 00 03         [ 2]  520 	ldw	x, _u1buf+2
                                    521 ; genCmpEQorNE
      0092E7 13 03            [ 2]  522 	cpw	x, (0x03, sp)
                                    523 ; peephole j5 changed absolute to relative unconditional jump.
      0092E9 27 1D            [ 1]  524 	jreq	00103$
                                    525 ; peephole j10 removed jra by using inverse jump logic
                                    526 ; peephole j30 removed unused label 00122$.
                                    527 ; skipping generated iCode
                                    528 ;	User/eric_driver.c: 153: buf[i] = u1buf.recbuf[u1buf.r];
                                    529 ; genPlus
      0092EB 16 05            [ 2]  530 	ldw	y, (0x05, sp)
      0092ED 72 F9 07         [ 2]  531 	addw	y, (0x07, sp)
                                    532 ; skipping iCode since result will be rematerialized
                                    533 ; genPlus
      0092F0 1E 03            [ 2]  534 	ldw	x, (0x03, sp)
                                    535 ; genPointerGet
                                    536 ; peephole 10b moved addition of offset into storage instruction
      0092F2 D6 00 07         [ 1]  537 	ld	a, (_u1buf+6, x)
                                    538 ; genPointerSet
      0092F5 90 F7            [ 1]  539 	ld	(y), a
                                    540 ;	User/eric_driver.c: 154: u1buf.r = (u1buf.r + 1) % UBUFLEN;
                                    541 ; genPointerGet
      0092F7 1E 01            [ 2]  542 	ldw	x, (0x01, sp)
      0092F9 FE               [ 2]  543 	ldw	x, (x)
                                    544 ; genCast
                                    545 ; genAssign
                                    546 ; genPlus
      0092FA 5C               [ 1]  547 	incw	x
                                    548 ; peephole 0 removed dead load into a from xh.
                                    549 ; genAnd
      0092FB 4F               [ 1]  550 	clr	a
                                    551 ; genCast
                                    552 ; genAssign
      0092FC 95               [ 1]  553 	ld	xh, a
                                    554 ; genPointerSet
      0092FD 16 01            [ 2]  555 	ldw	y, (0x01, sp)
      0092FF 90 FF            [ 2]  556 	ldw	(y), x
                                    557 ;	User/eric_driver.c: 155: i++;
                                    558 ; genPlus
      009301 1E 07            [ 2]  559 	ldw	x, (0x07, sp)
      009303 5C               [ 1]  560 	incw	x
      009304 1F 07            [ 2]  561 	ldw	(0x07, sp), x
                                    562 ; peephole j30 removed unused label 00124$.
                                    563 ; genGoto
      009306 20 D4            [ 2]  564 	jra	00101$
                                    565 ; peephole j5 changed absolute to relative unconditional jump.
                                    566 ; genLabel
      009308                        567 00103$:
                                    568 ;	User/eric_driver.c: 157: u1buf.revn = 0;
                                    569 ; skipping iCode since result will be rematerialized
                                    570 ; genPointerSet
      009308 AE 00 05         [ 2]  571 	ldw	x, #(_u1buf+4)
      00930B 6F 01            [ 1]  572 	clr	(0x1, x)
      00930D 7F               [ 1]  573 	clr	(x)
                                    574 ;	User/eric_driver.c: 158: return i;
                                    575 ; genReturn
      00930E 1E 07            [ 2]  576 	ldw	x, (0x07, sp)
                                    577 ; genLabel
                                    578 ; peephole j30 removed unused label 00104$.
                                    579 ;	User/eric_driver.c: 159: }
                                    580 ; genEndFunction
      009310 5B 08            [ 2]  581 	addw	sp, #8
      009312 81               [ 4]  582 	ret
                                    583 ;	Total Uart1_Recv function size at codegen: 3 bytes.
                                    584 ;	User/eric_driver.c: 161: uint16_t Check_U1buf(void)
                                    585 ; genLabel
                                    586 ;	-----------------------------------------
                                    587 ;	 function Check_U1buf
                                    588 ;	-----------------------------------------
                                    589 ;	Register assignment is optimal.
                                    590 ;	Stack space usage: 0 bytes.
      009313                        591 _Check_U1buf:
                                    592 ;	User/eric_driver.c: 165: r2 = r1;
                                    593 ; genAssign
      009313 CE 01 07         [ 2]  594 	ldw	x, _Check_U1buf_r1_10000_712+0
                                    595 ; genAssign
      009316 CF 01 09         [ 2]  596 	ldw	_Check_U1buf_r2_10000_712+0, x
                                    597 ;	User/eric_driver.c: 166: r1 = u1buf.revn;
                                    598 ; skipping iCode since result will be rematerialized
                                    599 ; genPointerGet
      009319 CE 00 05         [ 2]  600 	ldw	x, _u1buf+4
                                    601 ; genAssign
      00931C CF 01 07         [ 2]  602 	ldw	_Check_U1buf_r1_10000_712+0, x
                                    603 ;	User/eric_driver.c: 167: if ((r1 == r2) && (r1 > 0))
                                    604 ; genCmpEQorNE
      00931F CE 01 09         [ 2]  605 	ldw	x, _Check_U1buf_r2_10000_712+0
      009322 C3 01 07         [ 2]  606 	cpw	x, _Check_U1buf_r1_10000_712+0
                                    607 ; peephole j5 changed absolute to relative unconditional jump.
                                    608 ; peephole j10 removed jra by using inverse jump logic
                                    609 ; peephole j30 removed unused label 00122$.
                                    610 ; peephole j5 changed absolute to relative unconditional jump.
      009325 26 06            [ 1]  611 	jrne	00102$
                                    612 ; peephole j7 removed jra by using inverse jump logic
                                    613 ; peephole j30 removed unused label 00123$.
                                    614 ; skipping generated iCode
                                    615 ; genIfx
                                    616 ; peephole j5 changed absolute to relative unconditional jump.
                                    617 ; peephole j10 removed jra by using inverse jump logic
                                    618 ; peephole j30 removed unused label 00124$.
                                    619 ;	User/eric_driver.c: 168: return r1;
                                    620 ; genReturn
      009327 CE 01 07         [ 2]  621 	ldw	x, _Check_U1buf_r1_10000_712+0
      00932A 27 01            [ 1]  622 	jreq	00102$
                                    623 ; peephole 50eq removed redundant load of x from _Check_U1buf_r1_10000_712+0.
      00932C 81               [ 4]  624 	ret
                                    625 ; peephole j2e replaced jump by return.
                                    626 ; genLabel
      00932D                        627 00102$:
                                    628 ;	User/eric_driver.c: 170: return 0;
                                    629 ; genReturn
      00932D 5F               [ 1]  630 	clrw	x
                                    631 ; genLabel
                                    632 ; peephole j30 removed unused label 00105$.
                                    633 ;	User/eric_driver.c: 171: }
                                    634 ; genEndFunction
      00932E 81               [ 4]  635 	ret
                                    636 ;	Total Check_U1buf function size at codegen: 1 bytes.
                                    637 ;	User/eric_driver.c: 183: void I2C_WriteByte(uint8_t paddr, uint8_t addr, uint8_t data)
                                    638 ; genLabel
                                    639 ;	-----------------------------------------
                                    640 ;	 function I2C_WriteByte
                                    641 ;	-----------------------------------------
                                    642 ;	Register assignment might be sub-optimal.
                                    643 ;	Stack space usage: 2 bytes.
      00932F                        644 _I2C_WriteByte:
      00932F 89               [ 2]  645 	pushw	x
                                    646 ; genReceive
      009330 6B 02            [ 1]  647 	ld	(0x02, sp), a
                                    648 ;	User/eric_driver.c: 187: while (I2C_GetFlagStatus(I2C1, I2C_FLAG_BUSY)) //等待空闲
                                    649 ; genAssign
      009332 AE 07 D0         [ 2]  650 	ldw	x, #0x07d0
                                    651 ; genLabel
      009335                        652 00103$:
                                    653 ; genIPush
      009335 89               [ 2]  654 	pushw	x
      009336 4B 02            [ 1]  655 	push	#0x02
      009338 4B 03            [ 1]  656 	push	#0x03
                                    657 ; genSend
      00933A AE 52 10         [ 2]  658 	ldw	x, #0x5210
                                    659 ; genCall
      00933D CD D2 6E         [ 4]  660 	call	_I2C_GetFlagStatus
      009340 6B 03            [ 1]  661 	ld	(0x03, sp), a
      009342 85               [ 2]  662 	popw	x
                                    663 ; genIfx
      009343 0D 01            [ 1]  664 	tnz	(0x01, sp)
                                    665 ; peephole j5 changed absolute to relative unconditional jump.
      009345 27 06            [ 1]  666 	jreq	00105$
                                    667 ; peephole j10 removed jra by using inverse jump logic
                                    668 ; peephole j30 removed unused label 00233$.
                                    669 ;	User/eric_driver.c: 189: if (--n == 0)
                                    670 ; genMinus
                                    671 ; genIfx
      009347 5A               [ 2]  672 	decw	x
                                    673 ; peephole 24b removed redundant tnzw.
                                    674 ; peephole j5 changed absolute to relative unconditional jump.
      009348 26 EB            [ 1]  675 	jrne	00103$
                                    676 ; peephole j7 removed jra by using inverse jump logic
                                    677 ; peephole j30 removed unused label 00234$.
                                    678 ;	User/eric_driver.c: 190: return;
                                    679 ; genReturn
      00934A CC 93 DB         [ 2]  680 	jp	00126$
                                    681 ; genLabel
      00934D                        682 00105$:
                                    683 ;	User/eric_driver.c: 193: I2C_GenerateSTART(I2C1, ENABLE);//开启I2C1
                                    684 ; genSend
      00934D A6 01            [ 1]  685 	ld	a, #0x01
                                    686 ; genSend
      00934F AE 52 10         [ 2]  687 	ldw	x, #0x5210
                                    688 ; genCall
      009352 CD D0 8F         [ 4]  689 	call	_I2C_GenerateSTART
                                    690 ;	User/eric_driver.c: 195: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT)) /*EV5,主模式*/
                                    691 ; genAssign
      009355 AE 07 D0         [ 2]  692 	ldw	x, #0x07d0
                                    693 ; genLabel
      009358                        694 00108$:
                                    695 ; genIPush
      009358 89               [ 2]  696 	pushw	x
      009359 4B 01            [ 1]  697 	push	#0x01
      00935B 4B 03            [ 1]  698 	push	#0x03
                                    699 ; genSend
      00935D AE 52 10         [ 2]  700 	ldw	x, #0x5210
                                    701 ; genCall
      009360 CD D2 08         [ 4]  702 	call	_I2C_CheckEvent
      009363 85               [ 2]  703 	popw	x
                                    704 ; genIfx
      009364 4D               [ 1]  705 	tnz	a
                                    706 ; peephole j5 changed absolute to relative unconditional jump.
      009365 26 05            [ 1]  707 	jrne	00110$
                                    708 ; peephole j7 removed jra by using inverse jump logic
                                    709 ; peephole j30 removed unused label 00235$.
                                    710 ;	User/eric_driver.c: 197: if (--n == 0)
                                    711 ; genMinus
                                    712 ; genIfx
      009367 5A               [ 2]  713 	decw	x
                                    714 ; peephole 24b removed redundant tnzw.
                                    715 ; peephole j5 changed absolute to relative unconditional jump.
      009368 26 EE            [ 1]  716 	jrne	00108$
                                    717 ; peephole j7 removed jra by using inverse jump logic
                                    718 ; peephole j30 removed unused label 00236$.
                                    719 ;	User/eric_driver.c: 198: return;
                                    720 ; genReturn
      00936A 20 6F            [ 2]  721 	jra	00126$
                                    722 ; peephole j5 changed absolute to relative unconditional jump.
                                    723 ; genLabel
      00936C                        724 00110$:
                                    725 ;	User/eric_driver.c: 201: I2C_Send7bitAddress(I2C1, paddr, I2C_Direction_Transmitter);//器件地址 -- 默认0xa0
                                    726 ; genIPush
      00936C 4B 00            [ 1]  727 	push	#0x00
                                    728 ; genSend
      00936E 7B 03            [ 1]  729 	ld	a, (0x03, sp)
                                    730 ; genSend
      009370 AE 52 10         [ 2]  731 	ldw	x, #0x5210
                                    732 ; genCall
      009373 CD D1 5E         [ 4]  733 	call	_I2C_Send7bitAddress
                                    734 ;	User/eric_driver.c: 203: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED))
                                    735 ; genAssign
      009376 AE 07 D0         [ 2]  736 	ldw	x, #0x07d0
                                    737 ; genLabel
      009379                        738 00113$:
                                    739 ; genIPush
      009379 89               [ 2]  740 	pushw	x
      00937A 4B 82            [ 1]  741 	push	#0x82
      00937C 4B 07            [ 1]  742 	push	#0x07
                                    743 ; genSend
      00937E AE 52 10         [ 2]  744 	ldw	x, #0x5210
                                    745 ; genCall
      009381 CD D2 08         [ 4]  746 	call	_I2C_CheckEvent
      009384 85               [ 2]  747 	popw	x
                                    748 ; genIfx
      009385 4D               [ 1]  749 	tnz	a
                                    750 ; peephole j5 changed absolute to relative unconditional jump.
      009386 26 05            [ 1]  751 	jrne	00115$
                                    752 ; peephole j7 removed jra by using inverse jump logic
                                    753 ; peephole j30 removed unused label 00237$.
                                    754 ;	User/eric_driver.c: 205: if (--n == 0)
                                    755 ; genMinus
                                    756 ; genIfx
      009388 5A               [ 2]  757 	decw	x
                                    758 ; peephole 24b removed redundant tnzw.
                                    759 ; peephole j5 changed absolute to relative unconditional jump.
      009389 26 EE            [ 1]  760 	jrne	00113$
                                    761 ; peephole j7 removed jra by using inverse jump logic
                                    762 ; peephole j30 removed unused label 00238$.
                                    763 ;	User/eric_driver.c: 206: return;
                                    764 ; genReturn
      00938B 20 4E            [ 2]  765 	jra	00126$
                                    766 ; peephole j5 changed absolute to relative unconditional jump.
                                    767 ; genLabel
      00938D                        768 00115$:
                                    769 ;	User/eric_driver.c: 209: I2C_SendData(I2C1, addr);//寄存器地址
                                    770 ; genSend
      00938D 7B 05            [ 1]  771 	ld	a, (0x05, sp)
                                    772 ; genSend
      00938F AE 52 10         [ 2]  773 	ldw	x, #0x5210
                                    774 ; genCall
      009392 CD D1 6F         [ 4]  775 	call	_I2C_SendData
                                    776 ;	User/eric_driver.c: 211: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED))
                                    777 ; genAssign
      009395 AE 07 D0         [ 2]  778 	ldw	x, #0x07d0
                                    779 ; genLabel
      009398                        780 00118$:
                                    781 ; genIPush
      009398 89               [ 2]  782 	pushw	x
      009399 4B 84            [ 1]  783 	push	#0x84
      00939B 4B 07            [ 1]  784 	push	#0x07
                                    785 ; genSend
      00939D AE 52 10         [ 2]  786 	ldw	x, #0x5210
                                    787 ; genCall
      0093A0 CD D2 08         [ 4]  788 	call	_I2C_CheckEvent
      0093A3 85               [ 2]  789 	popw	x
                                    790 ; genIfx
      0093A4 4D               [ 1]  791 	tnz	a
                                    792 ; peephole j5 changed absolute to relative unconditional jump.
      0093A5 26 05            [ 1]  793 	jrne	00120$
                                    794 ; peephole j7 removed jra by using inverse jump logic
                                    795 ; peephole j30 removed unused label 00239$.
                                    796 ;	User/eric_driver.c: 213: if (--n == 0)
                                    797 ; genMinus
                                    798 ; genIfx
      0093A7 5A               [ 2]  799 	decw	x
                                    800 ; peephole 24b removed redundant tnzw.
                                    801 ; peephole j5 changed absolute to relative unconditional jump.
      0093A8 26 EE            [ 1]  802 	jrne	00118$
                                    803 ; peephole j7 removed jra by using inverse jump logic
                                    804 ; peephole j30 removed unused label 00240$.
                                    805 ;	User/eric_driver.c: 214: return;
                                    806 ; genReturn
      0093AA 20 2F            [ 2]  807 	jra	00126$
                                    808 ; peephole j5 changed absolute to relative unconditional jump.
                                    809 ; genLabel
      0093AC                        810 00120$:
                                    811 ;	User/eric_driver.c: 217: I2C_SendData(I2C1, data);//发送数据
                                    812 ; genSend
      0093AC 7B 06            [ 1]  813 	ld	a, (0x06, sp)
                                    814 ; genSend
      0093AE AE 52 10         [ 2]  815 	ldw	x, #0x5210
                                    816 ; genCall
      0093B1 CD D1 6F         [ 4]  817 	call	_I2C_SendData
                                    818 ;	User/eric_driver.c: 219: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED))
                                    819 ; genAssign
      0093B4 AE 07 D0         [ 2]  820 	ldw	x, #0x07d0
                                    821 ; genLabel
      0093B7                        822 00123$:
                                    823 ; genIPush
      0093B7 89               [ 2]  824 	pushw	x
      0093B8 4B 84            [ 1]  825 	push	#0x84
      0093BA 4B 07            [ 1]  826 	push	#0x07
                                    827 ; genSend
      0093BC AE 52 10         [ 2]  828 	ldw	x, #0x5210
                                    829 ; genCall
      0093BF CD D2 08         [ 4]  830 	call	_I2C_CheckEvent
      0093C2 85               [ 2]  831 	popw	x
                                    832 ; genIfx
      0093C3 4D               [ 1]  833 	tnz	a
                                    834 ; peephole j5 changed absolute to relative unconditional jump.
      0093C4 26 05            [ 1]  835 	jrne	00125$
                                    836 ; peephole j7 removed jra by using inverse jump logic
                                    837 ; peephole j30 removed unused label 00241$.
                                    838 ;	User/eric_driver.c: 221: if (--n == 0)
                                    839 ; genMinus
                                    840 ; genIfx
      0093C6 5A               [ 2]  841 	decw	x
                                    842 ; peephole 24b removed redundant tnzw.
                                    843 ; peephole j5 changed absolute to relative unconditional jump.
      0093C7 26 EE            [ 1]  844 	jrne	00123$
                                    845 ; peephole j7 removed jra by using inverse jump logic
                                    846 ; peephole j30 removed unused label 00242$.
                                    847 ;	User/eric_driver.c: 222: return;
                                    848 ; genReturn
      0093C9 20 10            [ 2]  849 	jra	00126$
                                    850 ; peephole j5 changed absolute to relative unconditional jump.
                                    851 ; genLabel
      0093CB                        852 00125$:
                                    853 ;	User/eric_driver.c: 224: I2C_AcknowledgeConfig(I2C1, ENABLE);
                                    854 ; genSend
      0093CB A6 01            [ 1]  855 	ld	a, #0x01
                                    856 ; genSend
      0093CD AE 52 10         [ 2]  857 	ldw	x, #0x5210
                                    858 ; genCall
      0093D0 CD D0 EC         [ 4]  859 	call	_I2C_AcknowledgeConfig
                                    860 ;	User/eric_driver.c: 226: I2C_GenerateSTOP(I2C1, ENABLE);//停止位，关闭I2C1总线
                                    861 ; genSend
      0093D3 A6 01            [ 1]  862 	ld	a, #0x01
                                    863 ; genSend
      0093D5 AE 52 10         [ 2]  864 	ldw	x, #0x5210
                                    865 ; genCall
      0093D8 CD D0 A2         [ 4]  866 	call	_I2C_GenerateSTOP
                                    867 ; genLabel
      0093DB                        868 00126$:
                                    869 ;	User/eric_driver.c: 227: }
                                    870 ; genEndFunction
      0093DB 1E 03            [ 2]  871 	ldw	x, (3, sp)
      0093DD 5B 06            [ 2]  872 	addw	sp, #6
      0093DF FC               [ 2]  873 	jp	(x)
                                    874 ;	Total I2C_WriteByte function size at codegen: 5 bytes.
                                    875 ;	User/eric_driver.c: 238: uint8_t I2C_ReadByte(uint8_t paddr, uint8_t addr)
                                    876 ; genLabel
                                    877 ;	-----------------------------------------
                                    878 ;	 function I2C_ReadByte
                                    879 ;	-----------------------------------------
                                    880 ;	Register assignment might be sub-optimal.
                                    881 ;	Stack space usage: 2 bytes.
      0093E0                        882 _I2C_ReadByte:
      0093E0 89               [ 2]  883 	pushw	x
                                    884 ; genReceive
      0093E1 6B 02            [ 1]  885 	ld	(0x02, sp), a
                                    886 ;	User/eric_driver.c: 243: while (I2C_GetFlagStatus(I2C1, I2C_FLAG_BUSY))
                                    887 ; genAssign
      0093E3 AE 07 D0         [ 2]  888 	ldw	x, #0x07d0
                                    889 ; genLabel
      0093E6                        890 00103$:
                                    891 ; genIPush
      0093E6 89               [ 2]  892 	pushw	x
      0093E7 4B 02            [ 1]  893 	push	#0x02
      0093E9 4B 03            [ 1]  894 	push	#0x03
                                    895 ; genSend
      0093EB AE 52 10         [ 2]  896 	ldw	x, #0x5210
                                    897 ; genCall
      0093EE CD D2 6E         [ 4]  898 	call	_I2C_GetFlagStatus
      0093F1 6B 03            [ 1]  899 	ld	(0x03, sp), a
      0093F3 85               [ 2]  900 	popw	x
                                    901 ; genIfx
      0093F4 0D 01            [ 1]  902 	tnz	(0x01, sp)
                                    903 ; peephole j5 changed absolute to relative unconditional jump.
      0093F6 27 07            [ 1]  904 	jreq	00105$
                                    905 ; peephole j10 removed jra by using inverse jump logic
                                    906 ; peephole j30 removed unused label 00285$.
                                    907 ;	User/eric_driver.c: 245: if (--n == 0)
                                    908 ; genMinus
                                    909 ; genIfx
      0093F8 5A               [ 2]  910 	decw	x
                                    911 ; peephole 24b removed redundant tnzw.
                                    912 ; peephole j5 changed absolute to relative unconditional jump.
      0093F9 26 EB            [ 1]  913 	jrne	00103$
                                    914 ; peephole j7 removed jra by using inverse jump logic
                                    915 ; peephole j30 removed unused label 00286$.
                                    916 ;	User/eric_driver.c: 246: return 0;
                                    917 ; genReturn
      0093FB 4F               [ 1]  918 	clr	a
      0093FC CC 94 D6         [ 2]  919 	jp	00136$
                                    920 ; genLabel
      0093FF                        921 00105$:
                                    922 ;	User/eric_driver.c: 249: I2C_GenerateSTART(I2C1, ENABLE);//开启I2C1
                                    923 ; genSend
      0093FF A6 01            [ 1]  924 	ld	a, #0x01
                                    925 ; genSend
      009401 AE 52 10         [ 2]  926 	ldw	x, #0x5210
                                    927 ; genCall
      009404 CD D0 8F         [ 4]  928 	call	_I2C_GenerateSTART
                                    929 ;	User/eric_driver.c: 251: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT)) /*EV5,主模式*/
                                    930 ; genAssign
      009407 AE 07 D0         [ 2]  931 	ldw	x, #0x07d0
                                    932 ; genLabel
      00940A                        933 00108$:
                                    934 ; genIPush
      00940A 89               [ 2]  935 	pushw	x
      00940B 4B 01            [ 1]  936 	push	#0x01
      00940D 4B 03            [ 1]  937 	push	#0x03
                                    938 ; genSend
      00940F AE 52 10         [ 2]  939 	ldw	x, #0x5210
                                    940 ; genCall
      009412 CD D2 08         [ 4]  941 	call	_I2C_CheckEvent
      009415 85               [ 2]  942 	popw	x
                                    943 ; genIfx
      009416 4D               [ 1]  944 	tnz	a
                                    945 ; peephole j5 changed absolute to relative unconditional jump.
      009417 26 07            [ 1]  946 	jrne	00110$
                                    947 ; peephole j7 removed jra by using inverse jump logic
                                    948 ; peephole j30 removed unused label 00287$.
                                    949 ;	User/eric_driver.c: 253: if (--n == 0)
                                    950 ; genMinus
                                    951 ; genIfx
      009419 5A               [ 2]  952 	decw	x
                                    953 ; peephole 24b removed redundant tnzw.
                                    954 ; peephole j5 changed absolute to relative unconditional jump.
      00941A 26 EE            [ 1]  955 	jrne	00108$
                                    956 ; peephole j7 removed jra by using inverse jump logic
                                    957 ; peephole j30 removed unused label 00288$.
                                    958 ;	User/eric_driver.c: 254: return 0;
                                    959 ; genReturn
      00941C 4F               [ 1]  960 	clr	a
      00941D CC 94 D6         [ 2]  961 	jp	00136$
                                    962 ; genLabel
      009420                        963 00110$:
                                    964 ;	User/eric_driver.c: 257: I2C_Send7bitAddress(I2C1, paddr, I2C_Direction_Transmitter);//器件地址 -- 默认0xA0
                                    965 ; genIPush
      009420 4B 00            [ 1]  966 	push	#0x00
                                    967 ; genSend
      009422 7B 03            [ 1]  968 	ld	a, (0x03, sp)
                                    969 ; genSend
      009424 AE 52 10         [ 2]  970 	ldw	x, #0x5210
                                    971 ; genCall
      009427 CD D1 5E         [ 4]  972 	call	_I2C_Send7bitAddress
                                    973 ;	User/eric_driver.c: 259: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED))
                                    974 ; genAssign
      00942A AE 07 D0         [ 2]  975 	ldw	x, #0x07d0
                                    976 ; genLabel
      00942D                        977 00113$:
                                    978 ; genIPush
      00942D 89               [ 2]  979 	pushw	x
      00942E 4B 02            [ 1]  980 	push	#0x02
      009430 4B 03            [ 1]  981 	push	#0x03
                                    982 ; genSend
      009432 AE 52 10         [ 2]  983 	ldw	x, #0x5210
                                    984 ; genCall
      009435 CD D2 08         [ 4]  985 	call	_I2C_CheckEvent
      009438 85               [ 2]  986 	popw	x
                                    987 ; genIfx
      009439 4D               [ 1]  988 	tnz	a
                                    989 ; peephole j5 changed absolute to relative unconditional jump.
      00943A 26 07            [ 1]  990 	jrne	00115$
                                    991 ; peephole j7 removed jra by using inverse jump logic
                                    992 ; peephole j30 removed unused label 00289$.
                                    993 ;	User/eric_driver.c: 261: if (--n == 0)
                                    994 ; genMinus
                                    995 ; genIfx
      00943C 5A               [ 2]  996 	decw	x
                                    997 ; peephole 24b removed redundant tnzw.
                                    998 ; peephole j5 changed absolute to relative unconditional jump.
      00943D 26 EE            [ 1]  999 	jrne	00113$
                                   1000 ; peephole j7 removed jra by using inverse jump logic
                                   1001 ; peephole j30 removed unused label 00290$.
                                   1002 ;	User/eric_driver.c: 262: return 0;
                                   1003 ; genReturn
      00943F 4F               [ 1] 1004 	clr	a
      009440 CC 94 D6         [ 2] 1005 	jp	00136$
                                   1006 ; genLabel
      009443                       1007 00115$:
                                   1008 ;	User/eric_driver.c: 265: I2C_SendData(I2C1, addr);//寄存器地址
                                   1009 ; genSend
      009443 7B 05            [ 1] 1010 	ld	a, (0x05, sp)
                                   1011 ; genSend
      009445 AE 52 10         [ 2] 1012 	ldw	x, #0x5210
                                   1013 ; genCall
      009448 CD D1 6F         [ 4] 1014 	call	_I2C_SendData
                                   1015 ;	User/eric_driver.c: 267: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED))
                                   1016 ; genAssign
      00944B AE 07 D0         [ 2] 1017 	ldw	x, #0x07d0
                                   1018 ; genLabel
      00944E                       1019 00118$:
                                   1020 ; genIPush
      00944E 89               [ 2] 1021 	pushw	x
      00944F 4B 84            [ 1] 1022 	push	#0x84
      009451 4B 07            [ 1] 1023 	push	#0x07
                                   1024 ; genSend
      009453 AE 52 10         [ 2] 1025 	ldw	x, #0x5210
                                   1026 ; genCall
      009456 CD D2 08         [ 4] 1027 	call	_I2C_CheckEvent
      009459 85               [ 2] 1028 	popw	x
                                   1029 ; genIfx
      00945A 4D               [ 1] 1030 	tnz	a
                                   1031 ; peephole j5 changed absolute to relative unconditional jump.
      00945B 26 06            [ 1] 1032 	jrne	00120$
                                   1033 ; peephole j7 removed jra by using inverse jump logic
                                   1034 ; peephole j30 removed unused label 00291$.
                                   1035 ;	User/eric_driver.c: 269: if (--n == 0)
                                   1036 ; genMinus
                                   1037 ; genIfx
      00945D 5A               [ 2] 1038 	decw	x
                                   1039 ; peephole 24b removed redundant tnzw.
                                   1040 ; peephole j5 changed absolute to relative unconditional jump.
      00945E 26 EE            [ 1] 1041 	jrne	00118$
                                   1042 ; peephole j7 removed jra by using inverse jump logic
                                   1043 ; peephole j30 removed unused label 00292$.
                                   1044 ;	User/eric_driver.c: 270: return 0;
                                   1045 ; genReturn
      009460 4F               [ 1] 1046 	clr	a
      009461 20 73            [ 2] 1047 	jra	00136$
                                   1048 ; peephole j5 changed absolute to relative unconditional jump.
                                   1049 ; genLabel
      009463                       1050 00120$:
                                   1051 ;	User/eric_driver.c: 275: I2C_GenerateSTART(I2C1, ENABLE);//开启I2C1
                                   1052 ; genSend
      009463 A6 01            [ 1] 1053 	ld	a, #0x01
                                   1054 ; genSend
      009465 AE 52 10         [ 2] 1055 	ldw	x, #0x5210
                                   1056 ; genCall
      009468 CD D0 8F         [ 4] 1057 	call	_I2C_GenerateSTART
                                   1058 ;	User/eric_driver.c: 277: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT)) /*EV5,主模式*/
                                   1059 ; genAssign
      00946B AE 07 D0         [ 2] 1060 	ldw	x, #0x07d0
                                   1061 ; genLabel
      00946E                       1062 00123$:
                                   1063 ; genIPush
      00946E 89               [ 2] 1064 	pushw	x
      00946F 4B 01            [ 1] 1065 	push	#0x01
      009471 4B 03            [ 1] 1066 	push	#0x03
                                   1067 ; genSend
      009473 AE 52 10         [ 2] 1068 	ldw	x, #0x5210
                                   1069 ; genCall
      009476 CD D2 08         [ 4] 1070 	call	_I2C_CheckEvent
      009479 85               [ 2] 1071 	popw	x
                                   1072 ; genIfx
      00947A 4D               [ 1] 1073 	tnz	a
                                   1074 ; peephole j5 changed absolute to relative unconditional jump.
      00947B 26 06            [ 1] 1075 	jrne	00125$
                                   1076 ; peephole j7 removed jra by using inverse jump logic
                                   1077 ; peephole j30 removed unused label 00293$.
                                   1078 ;	User/eric_driver.c: 279: if (--n == 0)
                                   1079 ; genMinus
                                   1080 ; genIfx
      00947D 5A               [ 2] 1081 	decw	x
                                   1082 ; peephole 24b removed redundant tnzw.
                                   1083 ; peephole j5 changed absolute to relative unconditional jump.
      00947E 26 EE            [ 1] 1084 	jrne	00123$
                                   1085 ; peephole j7 removed jra by using inverse jump logic
                                   1086 ; peephole j30 removed unused label 00294$.
                                   1087 ;	User/eric_driver.c: 280: return 0;
                                   1088 ; genReturn
      009480 4F               [ 1] 1089 	clr	a
      009481 20 53            [ 2] 1090 	jra	00136$
                                   1091 ; peephole j5 changed absolute to relative unconditional jump.
                                   1092 ; genLabel
      009483                       1093 00125$:
                                   1094 ;	User/eric_driver.c: 283: I2C_Send7bitAddress(I2C1, paddr, I2C_Direction_Receiver);//器件地址 -- 默认0xA0
                                   1095 ; genIPush
      009483 4B 01            [ 1] 1096 	push	#0x01
                                   1097 ; genSend
      009485 7B 03            [ 1] 1098 	ld	a, (0x03, sp)
                                   1099 ; genSend
      009487 AE 52 10         [ 2] 1100 	ldw	x, #0x5210
                                   1101 ; genCall
      00948A CD D1 5E         [ 4] 1102 	call	_I2C_Send7bitAddress
                                   1103 ;	User/eric_driver.c: 285: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED))
                                   1104 ; genAssign
      00948D AE 07 D0         [ 2] 1105 	ldw	x, #0x07d0
                                   1106 ; genLabel
      009490                       1107 00128$:
                                   1108 ; genIPush
      009490 89               [ 2] 1109 	pushw	x
      009491 4B 02            [ 1] 1110 	push	#0x02
      009493 4B 03            [ 1] 1111 	push	#0x03
                                   1112 ; genSend
      009495 AE 52 10         [ 2] 1113 	ldw	x, #0x5210
                                   1114 ; genCall
      009498 CD D2 08         [ 4] 1115 	call	_I2C_CheckEvent
      00949B 85               [ 2] 1116 	popw	x
                                   1117 ; genIfx
      00949C 4D               [ 1] 1118 	tnz	a
                                   1119 ; peephole j5 changed absolute to relative unconditional jump.
      00949D 26 06            [ 1] 1120 	jrne	00157$
                                   1121 ; peephole j7 removed jra by using inverse jump logic
                                   1122 ; peephole j30 removed unused label 00295$.
                                   1123 ;	User/eric_driver.c: 287: if (--n == 0)
                                   1124 ; genMinus
                                   1125 ; genIfx
      00949F 5A               [ 2] 1126 	decw	x
                                   1127 ; peephole 24b removed redundant tnzw.
                                   1128 ; peephole j5 changed absolute to relative unconditional jump.
      0094A0 26 EE            [ 1] 1129 	jrne	00128$
                                   1130 ; peephole j7 removed jra by using inverse jump logic
                                   1131 ; peephole j30 removed unused label 00296$.
                                   1132 ;	User/eric_driver.c: 288: return 0;
                                   1133 ; genReturn
      0094A2 4F               [ 1] 1134 	clr	a
      0094A3 20 31            [ 2] 1135 	jra	00136$
                                   1136 ; peephole j5 changed absolute to relative unconditional jump.
                                   1137 ;	User/eric_driver.c: 292: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_RECEIVED))
                                   1138 ; genLabel
      0094A5                       1139 00157$:
                                   1140 ; genAssign
      0094A5 AE 07 D0         [ 2] 1141 	ldw	x, #0x07d0
                                   1142 ; genLabel
      0094A8                       1143 00133$:
                                   1144 ; genIPush
      0094A8 89               [ 2] 1145 	pushw	x
      0094A9 4B 40            [ 1] 1146 	push	#0x40
      0094AB 4B 03            [ 1] 1147 	push	#0x03
                                   1148 ; genSend
      0094AD AE 52 10         [ 2] 1149 	ldw	x, #0x5210
                                   1150 ; genCall
      0094B0 CD D2 08         [ 4] 1151 	call	_I2C_CheckEvent
      0094B3 85               [ 2] 1152 	popw	x
                                   1153 ; genIfx
      0094B4 4D               [ 1] 1154 	tnz	a
                                   1155 ; peephole j5 changed absolute to relative unconditional jump.
      0094B5 26 06            [ 1] 1156 	jrne	00135$
                                   1157 ; peephole j7 removed jra by using inverse jump logic
                                   1158 ; peephole j30 removed unused label 00297$.
                                   1159 ;	User/eric_driver.c: 294: if (--n == 0)
                                   1160 ; genMinus
                                   1161 ; genIfx
      0094B7 5A               [ 2] 1162 	decw	x
                                   1163 ; peephole 24b removed redundant tnzw.
                                   1164 ; peephole j5 changed absolute to relative unconditional jump.
      0094B8 26 EE            [ 1] 1165 	jrne	00133$
                                   1166 ; peephole j7 removed jra by using inverse jump logic
                                   1167 ; peephole j30 removed unused label 00298$.
                                   1168 ;	User/eric_driver.c: 295: return 0;
                                   1169 ; genReturn
      0094BA 4F               [ 1] 1170 	clr	a
      0094BB 20 19            [ 2] 1171 	jra	00136$
                                   1172 ; peephole j5 changed absolute to relative unconditional jump.
                                   1173 ; genLabel
      0094BD                       1174 00135$:
                                   1175 ;	User/eric_driver.c: 298: i = I2C_ReceiveData(I2C1); //读取数据
                                   1176 ; genSend
      0094BD AE 52 10         [ 2] 1177 	ldw	x, #0x5210
                                   1178 ; genCall
      0094C0 CD D1 74         [ 4] 1179 	call	_I2C_ReceiveData
      0094C3 6B 01            [ 1] 1180 	ld	(0x01, sp), a
                                   1181 ;	User/eric_driver.c: 300: I2C_AcknowledgeConfig(I2C1, DISABLE);
                                   1182 ; genSend
      0094C5 4F               [ 1] 1183 	clr	a
                                   1184 ; genSend
      0094C6 AE 52 10         [ 2] 1185 	ldw	x, #0x5210
                                   1186 ; genCall
      0094C9 CD D0 EC         [ 4] 1187 	call	_I2C_AcknowledgeConfig
                                   1188 ;	User/eric_driver.c: 302: I2C_GenerateSTOP(I2C1, ENABLE);//关闭I2C1总线
                                   1189 ; genSend
      0094CC A6 01            [ 1] 1190 	ld	a, #0x01
                                   1191 ; genSend
      0094CE AE 52 10         [ 2] 1192 	ldw	x, #0x5210
                                   1193 ; genCall
      0094D1 CD D0 A2         [ 4] 1194 	call	_I2C_GenerateSTOP
                                   1195 ;	User/eric_driver.c: 305: return i;
                                   1196 ; genReturn
      0094D4 7B 01            [ 1] 1197 	ld	a, (0x01, sp)
                                   1198 ; genLabel
      0094D6                       1199 00136$:
                                   1200 ;	User/eric_driver.c: 307: }
                                   1201 ; genEndFunction
      0094D6 85               [ 2] 1202 	popw	x
      0094D7 85               [ 2] 1203 	popw	x
      0094D8 5B 01            [ 2] 1204 	addw	sp, #1
      0094DA FC               [ 2] 1205 	jp	(x)
                                   1206 ;	Total I2C_ReadByte function size at codegen: 5 bytes.
                                   1207 ;	User/eric_driver.c: 310: void Save_Stat(uint8_t *p)//保存统计数据
                                   1208 ; genLabel
                                   1209 ;	-----------------------------------------
                                   1210 ;	 function Save_Stat
                                   1211 ;	-----------------------------------------
                                   1212 ;	Register assignment might be sub-optimal.
                                   1213 ;	Stack space usage: 3 bytes.
      0094DB                       1214 _Save_Stat:
      0094DB 52 03            [ 2] 1215 	sub	sp, #3
                                   1216 ; genReceive
      0094DD 1F 01            [ 2] 1217 	ldw	(0x01, sp), x
                                   1218 ;	User/eric_driver.c: 314: Delay(IIC_TIMEOUT);
                                   1219 ; genSend
      0094DF AE 07 D0         [ 2] 1220 	ldw	x, #0x07d0
                                   1221 ; genCall
      0094E2 CD 91 EB         [ 4] 1222 	call	_Delay
                                   1223 ;	User/eric_driver.c: 315: for (i = 0; i < 70; i++)
                                   1224 ; genAssign
      0094E5 0F 03            [ 1] 1225 	clr	(0x03, sp)
                                   1226 ; genLabel
      0094E7                       1227 00102$:
                                   1228 ;	User/eric_driver.c: 317: I2C_WriteByte(0xa0, i, *(p + i));
                                   1229 ; genPlus
      0094E7 5F               [ 1] 1230 	clrw	x
      0094E8 7B 03            [ 1] 1231 	ld	a, (0x03, sp)
      0094EA 97               [ 1] 1232 	ld	xl, a
      0094EB 72 FB 01         [ 2] 1233 	addw	x, (0x01, sp)
                                   1234 ; genPointerGet
      0094EE F6               [ 1] 1235 	ld	a, (x)
                                   1236 ; genIPush
      0094EF 88               [ 1] 1237 	push	a
                                   1238 ; genIPush
      0094F0 7B 04            [ 1] 1239 	ld	a, (0x04, sp)
      0094F2 88               [ 1] 1240 	push	a
                                   1241 ; genSend
      0094F3 A6 A0            [ 1] 1242 	ld	a, #0xa0
                                   1243 ; genCall
      0094F5 CD 93 2F         [ 4] 1244 	call	_I2C_WriteByte
                                   1245 ;	User/eric_driver.c: 318: Delay(IIC_TIMEOUT);
                                   1246 ; genSend
      0094F8 AE 07 D0         [ 2] 1247 	ldw	x, #0x07d0
                                   1248 ; genCall
      0094FB CD 91 EB         [ 4] 1249 	call	_Delay
                                   1250 ;	User/eric_driver.c: 315: for (i = 0; i < 70; i++)
                                   1251 ; genPlus
      0094FE 0C 03            [ 1] 1252 	inc	(0x03, sp)
                                   1253 ; genCmp
                                   1254 ; genCmpTnz
      009500 7B 03            [ 1] 1255 	ld	a, (0x03, sp)
      009502 A1 46            [ 1] 1256 	cp	a, #0x46
                                   1257 ; peephole j5 changed absolute to relative unconditional jump.
      009504 25 E1            [ 1] 1258 	jrc	00102$
                                   1259 ; peephole j9 removed jra by using inverse jump logic
                                   1260 ; peephole j30 removed unused label 00114$.
                                   1261 ; skipping generated iCode
                                   1262 ; genLabel
                                   1263 ; peephole j30 removed unused label 00104$.
                                   1264 ;	User/eric_driver.c: 320: }
                                   1265 ; genEndFunction
      009506 5B 03            [ 2] 1266 	addw	sp, #3
      009508 81               [ 4] 1267 	ret
                                   1268 ;	Total Save_Stat function size at codegen: 3 bytes.
                                   1269 ;	User/eric_driver.c: 322: void Load_Stat(uint8_t *p)//读取统计数据
                                   1270 ; genLabel
                                   1271 ;	-----------------------------------------
                                   1272 ;	 function Load_Stat
                                   1273 ;	-----------------------------------------
                                   1274 ;	Register assignment might be sub-optimal.
                                   1275 ;	Stack space usage: 3 bytes.
      009509                       1276 _Load_Stat:
      009509 52 03            [ 2] 1277 	sub	sp, #3
                                   1278 ; genReceive
      00950B 1F 01            [ 2] 1279 	ldw	(0x01, sp), x
                                   1280 ;	User/eric_driver.c: 326: for (i = 0; i < 70; i++)
                                   1281 ; genAssign
      00950D 0F 03            [ 1] 1282 	clr	(0x03, sp)
                                   1283 ; genLabel
      00950F                       1284 00102$:
                                   1285 ;	User/eric_driver.c: 328: *(p + i) = I2C_ReadByte(0xa0, i);
                                   1286 ; genPlus
      00950F 5F               [ 1] 1287 	clrw	x
      009510 7B 03            [ 1] 1288 	ld	a, (0x03, sp)
      009512 97               [ 1] 1289 	ld	xl, a
      009513 72 FB 01         [ 2] 1290 	addw	x, (0x01, sp)
                                   1291 ; genIPush
      009516 89               [ 2] 1292 	pushw	x
      009517 7B 05            [ 1] 1293 	ld	a, (0x05, sp)
      009519 88               [ 1] 1294 	push	a
                                   1295 ; genSend
      00951A A6 A0            [ 1] 1296 	ld	a, #0xa0
                                   1297 ; genCall
      00951C CD 93 E0         [ 4] 1298 	call	_I2C_ReadByte
      00951F 85               [ 2] 1299 	popw	x
                                   1300 ; genPointerSet
      009520 F7               [ 1] 1301 	ld	(x), a
                                   1302 ;	User/eric_driver.c: 329: Delay(IIC_TIMEOUT);
                                   1303 ; genSend
      009521 AE 07 D0         [ 2] 1304 	ldw	x, #0x07d0
                                   1305 ; genCall
      009524 CD 91 EB         [ 4] 1306 	call	_Delay
                                   1307 ;	User/eric_driver.c: 326: for (i = 0; i < 70; i++)
                                   1308 ; genPlus
      009527 0C 03            [ 1] 1309 	inc	(0x03, sp)
                                   1310 ; genCmp
                                   1311 ; genCmpTnz
      009529 7B 03            [ 1] 1312 	ld	a, (0x03, sp)
      00952B A1 46            [ 1] 1313 	cp	a, #0x46
                                   1314 ; peephole j5 changed absolute to relative unconditional jump.
      00952D 25 E0            [ 1] 1315 	jrc	00102$
                                   1316 ; peephole j9 removed jra by using inverse jump logic
                                   1317 ; peephole j30 removed unused label 00114$.
                                   1318 ; skipping generated iCode
                                   1319 ; genLabel
                                   1320 ; peephole j30 removed unused label 00104$.
                                   1321 ;	User/eric_driver.c: 331: }
                                   1322 ; genEndFunction
      00952F 5B 03            [ 2] 1323 	addw	sp, #3
      009531 81               [ 4] 1324 	ret
                                   1325 ;	Total Load_Stat function size at codegen: 3 bytes.
                                   1326 ;	User/eric_driver.c: 333: void IIC_Init(void)//当A2为底电平时，4页的设备地址(页地址，查找页)分别为a0H，a2H，a4H，a6H
                                   1327 ; genLabel
                                   1328 ;	-----------------------------------------
                                   1329 ;	 function IIC_Init
                                   1330 ;	-----------------------------------------
                                   1331 ;	Register assignment is optimal.
                                   1332 ;	Stack space usage: 0 bytes.
      009532                       1333 _IIC_Init:
                                   1334 ;	User/eric_driver.c: 335: CLK_PeripheralClockConfig(CLK_Peripheral_I2C1, ENABLE);
                                   1335 ; genIPush
      009532 4B 01            [ 1] 1336 	push	#0x01
                                   1337 ; genSend
      009534 A6 03            [ 1] 1338 	ld	a, #0x03
                                   1339 ; genCall
      009536 CD C5 89         [ 4] 1340 	call	_CLK_PeripheralClockConfig
                                   1341 ;	User/eric_driver.c: 336: I2C_DeInit(I2C1);
                                   1342 ; genSend
      009539 AE 52 10         [ 2] 1343 	ldw	x, #0x5210
                                   1344 ; genCall
      00953C CD CE D2         [ 4] 1345 	call	_I2C_DeInit
                                   1346 ;	User/eric_driver.c: 337: I2C_Init(I2C1, I2C_MAX_STANDARD_FREQ, 0x30, I2C_Mode_I2C, I2C_DutyCycle_2, I2C_Ack_Enable,
                                   1347 ; genIPush
      00953F 4B 00            [ 1] 1348 	push	#0x00
                                   1349 ; genIPush
      009541 4B 04            [ 1] 1350 	push	#0x04
                                   1351 ; genIPush
      009543 4B 00            [ 1] 1352 	push	#0x00
                                   1353 ; genIPush
      009545 4B 00            [ 1] 1354 	push	#0x00
                                   1355 ; genIPush
      009547 4B 30            [ 1] 1356 	push	#0x30
      009549 4B 00            [ 1] 1357 	push	#0x00
                                   1358 ; genIPush
      00954B 4B A0            [ 1] 1359 	push	#0xa0
      00954D 4B 86            [ 1] 1360 	push	#0x86
      00954F 4B 01            [ 1] 1361 	push	#0x01
      009551 4B 00            [ 1] 1362 	push	#0x00
                                   1363 ; genSend
      009553 AE 52 10         [ 2] 1364 	ldw	x, #0x5210
                                   1365 ; genCall
      009556 CD CE F3         [ 4] 1366 	call	_I2C_Init
                                   1367 ;	User/eric_driver.c: 339: I2C_Cmd(I2C1, ENABLE);
                                   1368 ; genSend
      009559 A6 01            [ 1] 1369 	ld	a, #0x01
                                   1370 ; genSend
      00955B AE 52 10         [ 2] 1371 	ldw	x, #0x5210
                                   1372 ; genCall
      00955E CD D0 6B         [ 4] 1373 	call	_I2C_Cmd
                                   1374 ;	User/eric_driver.c: 340: I2C_AcknowledgeConfig(I2C1, ENABLE);
                                   1375 ; genSend
      009561 A6 01            [ 1] 1376 	ld	a, #0x01
                                   1377 ; genSend
      009563 AE 52 10         [ 2] 1378 	ldw	x, #0x5210
                                   1379 ; genCall
                                   1380 ; genLabel
                                   1381 ; peephole j30 removed unused label 00101$.
                                   1382 ;	User/eric_driver.c: 342: }
                                   1383 ; genEndFunction
      009566 CC D0 EC         [ 2] 1384 	jp	_I2C_AcknowledgeConfig
                                   1385 ; peephole 52 removed unreachable ret.
                                   1386 ;	Total IIC_Init function size at codegen: 1 bytes.
                                   1387 ;	User/eric_driver.c: 344: void Save_Data(uint8_t *p)
                                   1388 ; genLabel
                                   1389 ;	-----------------------------------------
                                   1390 ;	 function Save_Data
                                   1391 ;	-----------------------------------------
                                   1392 ;	Register assignment might be sub-optimal.
                                   1393 ;	Stack space usage: 4 bytes.
      009569                       1394 _Save_Data:
      009569 52 04            [ 2] 1395 	sub	sp, #4
                                   1396 ; genReceive
                                   1397 ;	User/eric_driver.c: 348: if (p == 0)
                                   1398 ; genIfx
      00956B 1F 02            [ 2] 1399 	ldw	(0x02, sp), x
                                   1400 ; peephole 4w removed redundant load from (0x02, sp) into x.
                                   1401 ; peephole j5 changed absolute to relative unconditional jump.
                                   1402 ; peephole j7 removed jra by using inverse jump logic
                                   1403 ; peephole j30 removed unused label 00139$.
                                   1404 ;	User/eric_driver.c: 349: return;
                                   1405 ; genReturn
                                   1406 ; peephole j5 changed absolute to relative unconditional jump.
                                   1407 ;	User/eric_driver.c: 351: for (i = 0; i < 10; i++)
                                   1408 ; genLabel
      00956D 27 51            [ 1] 1409 	jreq	00108$
                                   1410 ; peephole j10 removed jra by using inverse jump logic
                                   1411 ; peephole j30 removed unused label 00111$.
                                   1412 ; skipping iCode since result will be rematerialized
                                   1413 ; skipping iCode since result will be rematerialized
                                   1414 ; skipping iCode since result will be rematerialized
                                   1415 ; genAssign
      00956F 0F 04            [ 1] 1416 	clr	(0x04, sp)
                                   1417 ; genLabel
      009571                       1418 00106$:
                                   1419 ;	User/eric_driver.c: 353: I2C_WriteByte(dindex[data_index.w].paddr, dindex[data_index.w].daddr + i, *(p + i));
                                   1420 ; genPlus
      009571 5F               [ 1] 1421 	clrw	x
      009572 7B 04            [ 1] 1422 	ld	a, (0x04, sp)
      009574 97               [ 1] 1423 	ld	xl, a
      009575 72 FB 02         [ 2] 1424 	addw	x, (0x02, sp)
                                   1425 ; genPointerGet
      009578 F6               [ 1] 1426 	ld	a, (x)
      009579 6B 01            [ 1] 1427 	ld	(0x01, sp), a
                                   1428 ; genPointerGet
      00957B C6 04 9E         [ 1] 1429 	ld	a, _data_index+1
                                   1430 ; genCast
                                   1431 ; genAssign
      00957E 5F               [ 1] 1432 	clrw	x
                                   1433 ; genLeftShiftLiteral
      00957F 97               [ 1] 1434 	ld	xl, a
      009580 58               [ 2] 1435 	sllw	x
                                   1436 ; genPlus
      009581 1C 81 A5         [ 2] 1437 	addw	x, #(_dindex+0)
                                   1438 ; genAssign
                                   1439 ; peephole 5w replaced exgw-ldw by ldw.
      009584 90 93            [ 1] 1440 	ldw	y, x
                                   1441 ; genPointerGet
      009586 E6 01            [ 1] 1442 	ld	a, (0x1, x)
                                   1443 ; genPlus
      009588 1B 04            [ 1] 1444 	add	a, (0x04, sp)
      00958A 97               [ 1] 1445 	ld	xl, a
                                   1446 ; genPointerGet
      00958B 90 F6            [ 1] 1447 	ld	a, (y)
      00958D 95               [ 1] 1448 	ld	xh, a
                                   1449 ; genIPush
      00958E 7B 01            [ 1] 1450 	ld	a, (0x01, sp)
      009590 88               [ 1] 1451 	push	a
                                   1452 ; genIPush
      009591 9F               [ 1] 1453 	ld	a, xl
      009592 88               [ 1] 1454 	push	a
                                   1455 ; genSend
      009593 9E               [ 1] 1456 	ld	a, xh
                                   1457 ; genCall
      009594 CD 93 2F         [ 4] 1458 	call	_I2C_WriteByte
                                   1459 ;	User/eric_driver.c: 354: Delay(IIC_TIMEOUT);
                                   1460 ; genSend
      009597 AE 07 D0         [ 2] 1461 	ldw	x, #0x07d0
                                   1462 ; genCall
      00959A CD 91 EB         [ 4] 1463 	call	_Delay
                                   1464 ;	User/eric_driver.c: 351: for (i = 0; i < 10; i++)
                                   1465 ; genPlus
      00959D 0C 04            [ 1] 1466 	inc	(0x04, sp)
                                   1467 ; genCmp
                                   1468 ; genCmpTnz
      00959F 7B 04            [ 1] 1469 	ld	a, (0x04, sp)
      0095A1 A1 0A            [ 1] 1470 	cp	a, #0x0a
                                   1471 ; peephole j5 changed absolute to relative unconditional jump.
      0095A3 25 CC            [ 1] 1472 	jrc	00106$
                                   1473 ; peephole j9 removed jra by using inverse jump logic
                                   1474 ; peephole j30 removed unused label 00140$.
                                   1475 ; skipping generated iCode
                                   1476 ;	User/eric_driver.c: 356: data_index.w = (data_index.w + 1) % 90;
                                   1477 ; genPointerGet
      0095A5 C6 04 9E         [ 1] 1478 	ld	a, _data_index+1
                                   1479 ; genCast
                                   1480 ; genAssign
      0095A8 5F               [ 1] 1481 	clrw	x
                                   1482 ; genPlus
      0095A9 97               [ 1] 1483 	ld	xl, a
      0095AA 5C               [ 1] 1484 	incw	x
                                   1485 ; genIPush
      0095AB 4B 5A            [ 1] 1486 	push	#0x5a
      0095AD 4B 00            [ 1] 1487 	push	#0x00
                                   1488 ; genSend
                                   1489 ; genCall
      0095AF CD EE 9C         [ 4] 1490 	call	__modsint
      0095B2 9F               [ 1] 1491 	ld	a, xl
                                   1492 ; genCast
                                   1493 ; genAssign
                                   1494 ; genPointerSet
      0095B3 C7 04 9E         [ 1] 1495 	ld	_data_index+1, a
                                   1496 ;	User/eric_driver.c: 357: if (data_index.used < 90)
                                   1497 ; genPlus
      0095B6 AE 04 9F         [ 2] 1498 	ldw	x, #(_data_index+0)+2
                                   1499 ; genPointerGet
      0095B9 F6               [ 1] 1500 	ld	a, (x)
                                   1501 ; genCmp
                                   1502 ; genCmpTnz
      0095BA A1 5A            [ 1] 1503 	cp	a, #0x5a
                                   1504 ; peephole j5 changed absolute to relative unconditional jump.
      0095BC 24 02            [ 1] 1505 	jrnc	00108$
                                   1506 ; peephole j6 removed jra by using inverse jump logic
                                   1507 ; peephole j30 removed unused label 00141$.
                                   1508 ; skipping generated iCode
                                   1509 ;	User/eric_driver.c: 358: data_index.used++;
                                   1510 ; genPlus
      0095BE 4C               [ 1] 1511 	inc	a
                                   1512 ; genPointerSet
      0095BF F7               [ 1] 1513 	ld	(x), a
                                   1514 ; genLabel
      0095C0                       1515 00108$:
                                   1516 ;	User/eric_driver.c: 359: }
                                   1517 ; genEndFunction
      0095C0 5B 04            [ 2] 1518 	addw	sp, #4
      0095C2 81               [ 4] 1519 	ret
                                   1520 ;	Total Save_Data function size at codegen: 3 bytes.
                                   1521 ;	User/eric_driver.c: 361: uint8_t Load_Data(uint8_t lr, uint8_t *p)
                                   1522 ; genLabel
                                   1523 ;	-----------------------------------------
                                   1524 ;	 function Load_Data
                                   1525 ;	-----------------------------------------
                                   1526 ;	Register assignment might be sub-optimal.
                                   1527 ;	Stack space usage: 8 bytes.
      0095C3                       1528 _Load_Data:
      0095C3 52 08            [ 2] 1529 	sub	sp, #8
                                   1530 ; genReceive
      0095C5 6B 07            [ 1] 1531 	ld	(0x07, sp), a
                                   1532 ; genReceive
      0095C7 1F 05            [ 2] 1533 	ldw	(0x05, sp), x
                                   1534 ;	User/eric_driver.c: 365: if (1 == lr) //增减标识+
                                   1535 ; genCmpEQorNE
      0095C9 7B 07            [ 1] 1536 	ld	a, (0x07, sp)
      0095CB 4A               [ 1] 1537 	dec	a
                                   1538 ; peephole j5 changed absolute to relative unconditional jump.
      0095CC 27 03            [ 1] 1539 	jreq	00263$
                                   1540 ; peephole j10 removed jra by using inverse jump logic
                                   1541 ; peephole j30 removed unused label 00262$.
      0095CE CC 96 4E         [ 2] 1542 	jp	00129$
      0095D1                       1543 00263$:
                                   1544 ; skipping generated iCode
                                   1545 ;	User/eric_driver.c: 367: if (data_index.used) //有效数据
                                   1546 ; skipping iCode since result will be rematerialized
                                   1547 ; skipping iCode since result will be rematerialized
                                   1548 ; genPointerGet
                                   1549 ; genIfx
      0095D1 C6 04 9F         [ 1] 1550 	ld	a, _data_index+2
                                   1551 ; peephole 30 removed redundant tnz.
      0095D4 26 03            [ 1] 1552 	jrne	00264$
      0095D6 CC 97 21         [ 2] 1553 	jp	00130$
      0095D9                       1554 00264$:
                                   1555 ;	User/eric_driver.c: 369: if (data_index.r != data_index.w - 1)
                                   1556 ; genCast
                                   1557 ; genAssign
      0095D9 AE 04 9D         [ 2] 1558 	ldw	x, #(_data_index+0)
                                   1559 ; genPointerGet
      0095DC 1F 01            [ 2] 1560 	ldw	(0x01, sp), x
                                   1561 ; peephole 4w removed redundant load from (0x01, sp) into x.
      0095DE F6               [ 1] 1562 	ld	a, (x)
      0095DF 6B 08            [ 1] 1563 	ld	(0x08, sp), a
                                   1564 ; skipping iCode since result will be rematerialized
                                   1565 ; genPointerGet
      0095E1 C6 04 9E         [ 1] 1566 	ld	a, _data_index+1
                                   1567 ; genCast
                                   1568 ; genAssign
      0095E4 5F               [ 1] 1569 	clrw	x
                                   1570 ; genMinus
      0095E5 97               [ 1] 1571 	ld	xl, a
      0095E6 5A               [ 2] 1572 	decw	x
                                   1573 ; genCast
                                   1574 ; genAssign
      0095E7 7B 08            [ 1] 1575 	ld	a, (0x08, sp)
      0095E9 6B 04            [ 1] 1576 	ld	(0x04, sp), a
      0095EB 0F 03            [ 1] 1577 	clr	(0x03, sp)
                                   1578 ; genCmpEQorNE
      0095ED 13 03            [ 2] 1579 	cpw	x, (0x03, sp)
                                   1580 ; peephole j5 changed absolute to relative unconditional jump.
      0095EF 27 10            [ 1] 1581 	jreq	00102$
                                   1582 ; peephole j10 removed jra by using inverse jump logic
                                   1583 ; peephole j30 removed unused label 00266$.
                                   1584 ; skipping generated iCode
                                   1585 ;	User/eric_driver.c: 371: data_index.r = (data_index.r + 1) % 90;
                                   1586 ; genPlus
      0095F1 1E 03            [ 2] 1587 	ldw	x, (0x03, sp)
      0095F3 5C               [ 1] 1588 	incw	x
                                   1589 ; genIPush
      0095F4 4B 5A            [ 1] 1590 	push	#0x5a
      0095F6 4B 00            [ 1] 1591 	push	#0x00
                                   1592 ; genSend
                                   1593 ; genCall
      0095F8 CD EE 9C         [ 4] 1594 	call	__modsint
      0095FB 9F               [ 1] 1595 	ld	a, xl
                                   1596 ; genCast
                                   1597 ; genAssign
                                   1598 ; genPointerSet
      0095FC 1E 01            [ 2] 1599 	ldw	x, (0x01, sp)
      0095FE F7               [ 1] 1600 	ld	(x), a
                                   1601 ; genGoto
      0095FF 20 03            [ 2] 1602 	jra	00103$
                                   1603 ; peephole j5 changed absolute to relative unconditional jump.
                                   1604 ; genLabel
      009601                       1605 00102$:
                                   1606 ;	User/eric_driver.c: 375: data_index.r = 0;
                                   1607 ; genPointerSet
      009601 1E 01            [ 2] 1608 	ldw	x, (0x01, sp)
      009603 7F               [ 1] 1609 	clr	(x)
                                   1610 ; genLabel
      009604                       1611 00103$:
                                   1612 ;	User/eric_driver.c: 378: if (data_index.r != data_index.w)
                                   1613 ; genPointerGet
      009604 1E 01            [ 2] 1614 	ldw	x, (0x01, sp)
      009606 F6               [ 1] 1615 	ld	a, (x)
      009607 6B 08            [ 1] 1616 	ld	(0x08, sp), a
                                   1617 ; genPointerGet
      009609 C6 04 9E         [ 1] 1618 	ld	a, _data_index+1
                                   1619 ; genCmpEQorNE
      00960C 11 08            [ 1] 1620 	cp	a, (0x08, sp)
      00960E 26 03            [ 1] 1621 	jrne	00269$
      009610 CC 97 21         [ 2] 1622 	jp	00130$
      009613                       1623 00269$:
                                   1624 ; skipping generated iCode
                                   1625 ;	User/eric_driver.c: 380: for (i = 0; i < 10; i++)
                                   1626 ; skipping iCode since result will be rematerialized
                                   1627 ; genAssign
      009613 0F 08            [ 1] 1628 	clr	(0x08, sp)
                                   1629 ; genLabel
      009615                       1630 00131$:
                                   1631 ;	User/eric_driver.c: 382: *(p + i) = I2C_ReadByte(dindex[data_index.r].paddr, dindex[data_index.r].daddr + i);
                                   1632 ; genPlus
      009615 5F               [ 1] 1633 	clrw	x
      009616 7B 08            [ 1] 1634 	ld	a, (0x08, sp)
      009618 97               [ 1] 1635 	ld	xl, a
      009619 72 FB 05         [ 2] 1636 	addw	x, (0x05, sp)
      00961C 1F 03            [ 2] 1637 	ldw	(0x03, sp), x
                                   1638 ;	User/eric_driver.c: 369: if (data_index.r != data_index.w - 1)
                                   1639 ; genPointerGet
      00961E 1E 01            [ 2] 1640 	ldw	x, (0x01, sp)
      009620 F6               [ 1] 1641 	ld	a, (x)
                                   1642 ;	User/eric_driver.c: 382: *(p + i) = I2C_ReadByte(dindex[data_index.r].paddr, dindex[data_index.r].daddr + i);
                                   1643 ; genCast
                                   1644 ; genAssign
      009621 5F               [ 1] 1645 	clrw	x
      009622 97               [ 1] 1646 	ld	xl, a
                                   1647 ; genLeftShiftLiteral
      009623 58               [ 2] 1648 	sllw	x
                                   1649 ; genPlus
                                   1650 ; peephole 5w replaced exgw-ldw by ldw.
      009624 90 93            [ 1] 1651 	ldw	y, x
      009626 1C 81 A5         [ 2] 1652 	addw	x, #(_dindex+0)
                                   1653 ; genPointerGet
      009629 E6 01            [ 1] 1654 	ld	a, (0x1, x)
                                   1655 ; genPlus
      00962B 1B 08            [ 1] 1656 	add	a, (0x08, sp)
      00962D 97               [ 1] 1657 	ld	xl, a
                                   1658 ; genPlus
                                   1659 ; genPointerGet
                                   1660 ; peephole 10b moved addition of offset into storage instruction
      00962E 90 D6 81 A5      [ 1] 1661 	ld	a, (_dindex+0, y)
                                   1662 ; genIPush
      009632 89               [ 2] 1663 	pushw	x
      009633 5B 01            [ 2] 1664 	addw	sp, #1
                                   1665 ; genSend
                                   1666 ; genCall
      009635 CD 93 E0         [ 4] 1667 	call	_I2C_ReadByte
                                   1668 ; genPointerSet
      009638 1E 03            [ 2] 1669 	ldw	x, (0x03, sp)
      00963A F7               [ 1] 1670 	ld	(x), a
                                   1671 ;	User/eric_driver.c: 383: Delay(IIC_TIMEOUT);
                                   1672 ; genSend
      00963B AE 07 D0         [ 2] 1673 	ldw	x, #0x07d0
                                   1674 ; genCall
      00963E CD 91 EB         [ 4] 1675 	call	_Delay
                                   1676 ;	User/eric_driver.c: 380: for (i = 0; i < 10; i++)
                                   1677 ; genPlus
      009641 0C 08            [ 1] 1678 	inc	(0x08, sp)
                                   1679 ; genCmp
                                   1680 ; genCmpTnz
      009643 7B 08            [ 1] 1681 	ld	a, (0x08, sp)
      009645 A1 0A            [ 1] 1682 	cp	a, #0x0a
                                   1683 ; peephole j5 changed absolute to relative unconditional jump.
      009647 25 CC            [ 1] 1684 	jrc	00131$
                                   1685 ; peephole j9 removed jra by using inverse jump logic
                                   1686 ; peephole j30 removed unused label 00271$.
                                   1687 ; skipping generated iCode
                                   1688 ;	User/eric_driver.c: 386: return 1;
                                   1689 ; genReturn
      009649 A6 01            [ 1] 1690 	ld	a, #0x01
      00964B CC 97 22         [ 2] 1691 	jp	00137$
                                   1692 ; genLabel
      00964E                       1693 00129$:
                                   1694 ;	User/eric_driver.c: 390: else if (0 == lr) //-
                                   1695 ; genIfx
      00964E 0D 07            [ 1] 1696 	tnz	(0x07, sp)
      009650 27 03            [ 1] 1697 	jreq	00272$
      009652 CC 96 D4         [ 2] 1698 	jp	00126$
      009655                       1699 00272$:
                                   1700 ;	User/eric_driver.c: 392: if (data_index.used) //有效数据
                                   1701 ; skipping iCode since result will be rematerialized
                                   1702 ; skipping iCode since result will be rematerialized
                                   1703 ; genPointerGet
      009655 C6 04 9F         [ 1] 1704 	ld	a, _data_index+2
                                   1705 ; genIfx
      009658 6B 08            [ 1] 1706 	ld	(0x08, sp), a
                                   1707 ; peephole 31a removed redundant tnz.
      00965A 26 03            [ 1] 1708 	jrne	00273$
      00965C CC 97 21         [ 2] 1709 	jp	00130$
      00965F                       1710 00273$:
                                   1711 ;	User/eric_driver.c: 394: if (data_index.r)
                                   1712 ; genCast
                                   1713 ; genAssign
      00965F AE 04 9D         [ 2] 1714 	ldw	x, #(_data_index+0)
                                   1715 ; genPointerGet
      009662 1F 01            [ 2] 1716 	ldw	(0x01, sp), x
                                   1717 ; peephole 4w removed redundant load from (0x01, sp) into x.
                                   1718 ;	User/eric_driver.c: 401: data_index.r = data_index.w - 1;
                                   1719 ; skipping iCode since result will be rematerialized
                                   1720 ;	User/eric_driver.c: 394: if (data_index.r)
                                   1721 ; genIfx
      009664 F6               [ 1] 1722 	ld	a, (x)
                                   1723 ; peephole 30 removed redundant tnz.
                                   1724 ; peephole j5 changed absolute to relative unconditional jump.
      009665 27 10            [ 1] 1725 	jreq	00113$
                                   1726 ; peephole j10 removed jra by using inverse jump logic
                                   1727 ; peephole j30 removed unused label 00274$.
                                   1728 ;	User/eric_driver.c: 396: data_index.r = (data_index.r - 1) % 90;
                                   1729 ; genCast
                                   1730 ; genAssign
      009667 5F               [ 1] 1731 	clrw	x
                                   1732 ; genMinus
      009668 97               [ 1] 1733 	ld	xl, a
      009669 5A               [ 2] 1734 	decw	x
                                   1735 ; genIPush
      00966A 4B 5A            [ 1] 1736 	push	#0x5a
      00966C 4B 00            [ 1] 1737 	push	#0x00
                                   1738 ; genSend
                                   1739 ; genCall
      00966E CD EE 9C         [ 4] 1740 	call	__modsint
      009671 9F               [ 1] 1741 	ld	a, xl
                                   1742 ; genCast
                                   1743 ; genAssign
                                   1744 ; genPointerSet
      009672 1E 01            [ 2] 1745 	ldw	x, (0x01, sp)
      009674 F7               [ 1] 1746 	ld	(x), a
                                   1747 ; genGoto
      009675 20 14            [ 2] 1748 	jra	00114$
                                   1749 ; peephole j5 changed absolute to relative unconditional jump.
                                   1750 ; genLabel
      009677                       1751 00113$:
                                   1752 ;	User/eric_driver.c: 400: if (data_index.used < 90)
                                   1753 ; genCmp
                                   1754 ; genCmpTnz
      009677 7B 08            [ 1] 1755 	ld	a, (0x08, sp)
      009679 A1 5A            [ 1] 1756 	cp	a, #0x5a
                                   1757 ; peephole j5 changed absolute to relative unconditional jump.
      00967B 24 09            [ 1] 1758 	jrnc	00110$
                                   1759 ; peephole j6 removed jra by using inverse jump logic
                                   1760 ; peephole j30 removed unused label 00275$.
                                   1761 ; skipping generated iCode
                                   1762 ;	User/eric_driver.c: 401: data_index.r = data_index.w - 1;
                                   1763 ; genPointerGet
      00967D C6 04 9E         [ 1] 1764 	ld	a, _data_index+1
                                   1765 ; genCast
                                   1766 ; genAssign
                                   1767 ; genMinus
      009680 4A               [ 1] 1768 	dec	a
                                   1769 ; genPointerSet
      009681 1E 01            [ 2] 1770 	ldw	x, (0x01, sp)
      009683 F7               [ 1] 1771 	ld	(x), a
                                   1772 ; genGoto
      009684 20 05            [ 2] 1773 	jra	00114$
                                   1774 ; peephole j5 changed absolute to relative unconditional jump.
                                   1775 ; genLabel
      009686                       1776 00110$:
                                   1777 ;	User/eric_driver.c: 403: data_index.r = 89;
                                   1778 ; genPointerSet
      009686 1E 01            [ 2] 1779 	ldw	x, (0x01, sp)
      009688 A6 59            [ 1] 1780 	ld	a, #0x59
      00968A F7               [ 1] 1781 	ld	(x), a
                                   1782 ; genLabel
      00968B                       1783 00114$:
                                   1784 ;	User/eric_driver.c: 406: if (data_index.r != data_index.w)
                                   1785 ; genPointerGet
      00968B 1E 01            [ 2] 1786 	ldw	x, (0x01, sp)
      00968D F6               [ 1] 1787 	ld	a, (x)
      00968E 6B 08            [ 1] 1788 	ld	(0x08, sp), a
                                   1789 ; genPointerGet
      009690 C6 04 9E         [ 1] 1790 	ld	a, _data_index+1
                                   1791 ; genCmpEQorNE
      009693 11 08            [ 1] 1792 	cp	a, (0x08, sp)
      009695 26 03            [ 1] 1793 	jrne	00277$
      009697 CC 97 21         [ 2] 1794 	jp	00130$
      00969A                       1795 00277$:
                                   1796 ; skipping generated iCode
                                   1797 ;	User/eric_driver.c: 408: for (i = 0; i < 10; i++)
                                   1798 ; skipping iCode since result will be rematerialized
                                   1799 ; genAssign
      00969A 0F 08            [ 1] 1800 	clr	(0x08, sp)
                                   1801 ; genLabel
      00969C                       1802 00133$:
                                   1803 ;	User/eric_driver.c: 410: *(p + i) = I2C_ReadByte(dindex[data_index.r].paddr, dindex[data_index.r].daddr + i);
                                   1804 ; genPlus
      00969C 5F               [ 1] 1805 	clrw	x
      00969D 7B 08            [ 1] 1806 	ld	a, (0x08, sp)
      00969F 97               [ 1] 1807 	ld	xl, a
      0096A0 72 FB 05         [ 2] 1808 	addw	x, (0x05, sp)
      0096A3 1F 03            [ 2] 1809 	ldw	(0x03, sp), x
                                   1810 ;	User/eric_driver.c: 394: if (data_index.r)
                                   1811 ; genPointerGet
      0096A5 1E 01            [ 2] 1812 	ldw	x, (0x01, sp)
      0096A7 F6               [ 1] 1813 	ld	a, (x)
                                   1814 ;	User/eric_driver.c: 410: *(p + i) = I2C_ReadByte(dindex[data_index.r].paddr, dindex[data_index.r].daddr + i);
                                   1815 ; genCast
                                   1816 ; genAssign
      0096A8 5F               [ 1] 1817 	clrw	x
      0096A9 97               [ 1] 1818 	ld	xl, a
                                   1819 ; genLeftShiftLiteral
      0096AA 58               [ 2] 1820 	sllw	x
                                   1821 ; genPlus
                                   1822 ; peephole 5w replaced exgw-ldw by ldw.
      0096AB 90 93            [ 1] 1823 	ldw	y, x
      0096AD 1C 81 A5         [ 2] 1824 	addw	x, #(_dindex+0)
                                   1825 ; genPointerGet
      0096B0 E6 01            [ 1] 1826 	ld	a, (0x1, x)
                                   1827 ; genPlus
      0096B2 1B 08            [ 1] 1828 	add	a, (0x08, sp)
      0096B4 97               [ 1] 1829 	ld	xl, a
                                   1830 ; genPlus
                                   1831 ; genPointerGet
                                   1832 ; peephole 10b moved addition of offset into storage instruction
      0096B5 90 D6 81 A5      [ 1] 1833 	ld	a, (_dindex+0, y)
                                   1834 ; genIPush
      0096B9 89               [ 2] 1835 	pushw	x
      0096BA 5B 01            [ 2] 1836 	addw	sp, #1
                                   1837 ; genSend
                                   1838 ; genCall
      0096BC CD 93 E0         [ 4] 1839 	call	_I2C_ReadByte
                                   1840 ; genPointerSet
      0096BF 1E 03            [ 2] 1841 	ldw	x, (0x03, sp)
      0096C1 F7               [ 1] 1842 	ld	(x), a
                                   1843 ;	User/eric_driver.c: 411: Delay(IIC_TIMEOUT);
                                   1844 ; genSend
      0096C2 AE 07 D0         [ 2] 1845 	ldw	x, #0x07d0
                                   1846 ; genCall
      0096C5 CD 91 EB         [ 4] 1847 	call	_Delay
                                   1848 ;	User/eric_driver.c: 408: for (i = 0; i < 10; i++)
                                   1849 ; genPlus
      0096C8 0C 08            [ 1] 1850 	inc	(0x08, sp)
                                   1851 ; genCmp
                                   1852 ; genCmpTnz
      0096CA 7B 08            [ 1] 1853 	ld	a, (0x08, sp)
      0096CC A1 0A            [ 1] 1854 	cp	a, #0x0a
                                   1855 ; peephole j5 changed absolute to relative unconditional jump.
      0096CE 25 CC            [ 1] 1856 	jrc	00133$
                                   1857 ; peephole j9 removed jra by using inverse jump logic
                                   1858 ; peephole j30 removed unused label 00279$.
                                   1859 ; skipping generated iCode
                                   1860 ;	User/eric_driver.c: 414: return 1;
                                   1861 ; genReturn
      0096D0 A6 01            [ 1] 1862 	ld	a, #0x01
      0096D2 20 4E            [ 2] 1863 	jra	00137$
                                   1864 ; peephole j5 changed absolute to relative unconditional jump.
                                   1865 ; genLabel
      0096D4                       1866 00126$:
                                   1867 ;	User/eric_driver.c: 420: if (data_index.used) //有效数据
                                   1868 ; skipping iCode since result will be rematerialized
                                   1869 ; skipping iCode since result will be rematerialized
                                   1870 ; genPointerGet
                                   1871 ; genIfx
      0096D4 C6 04 9F         [ 1] 1872 	ld	a, _data_index+2
                                   1873 ; peephole 30 removed redundant tnz.
                                   1874 ; peephole j5 changed absolute to relative unconditional jump.
      0096D7 27 48            [ 1] 1875 	jreq	00130$
                                   1876 ; peephole j10 removed jra by using inverse jump logic
                                   1877 ; peephole j30 removed unused label 00280$.
                                   1878 ;	User/eric_driver.c: 422: if (data_index.r != data_index.w)
                                   1879 ; genCast
                                   1880 ; genAssign
      0096D9 AE 04 9D         [ 2] 1881 	ldw	x, #(_data_index+0)
                                   1882 ; genPointerGet
      0096DC 1F 01            [ 2] 1883 	ldw	(0x01, sp), x
                                   1884 ; peephole 4w removed redundant load from (0x01, sp) into x.
      0096DE F6               [ 1] 1885 	ld	a, (x)
      0096DF 6B 08            [ 1] 1886 	ld	(0x08, sp), a
                                   1887 ; skipping iCode since result will be rematerialized
                                   1888 ; genPointerGet
      0096E1 C6 04 9E         [ 1] 1889 	ld	a, _data_index+1
                                   1890 ; genCmpEQorNE
      0096E4 11 08            [ 1] 1891 	cp	a, (0x08, sp)
                                   1892 ; peephole j5 changed absolute to relative unconditional jump.
      0096E6 27 39            [ 1] 1893 	jreq	00130$
                                   1894 ; peephole j10 removed jra by using inverse jump logic
                                   1895 ; peephole j30 removed unused label 00282$.
                                   1896 ; skipping generated iCode
                                   1897 ;	User/eric_driver.c: 424: for (i = 0; i < 10; i++)
                                   1898 ; skipping iCode since result will be rematerialized
                                   1899 ; genAssign
      0096E8 0F 08            [ 1] 1900 	clr	(0x08, sp)
                                   1901 ; genLabel
      0096EA                       1902 00135$:
                                   1903 ;	User/eric_driver.c: 426: *(p + i) = I2C_ReadByte(dindex[data_index.r].paddr, dindex[data_index.r].daddr + i);
                                   1904 ; genPlus
      0096EA 5F               [ 1] 1905 	clrw	x
      0096EB 7B 08            [ 1] 1906 	ld	a, (0x08, sp)
      0096ED 97               [ 1] 1907 	ld	xl, a
      0096EE 72 FB 05         [ 2] 1908 	addw	x, (0x05, sp)
      0096F1 1F 03            [ 2] 1909 	ldw	(0x03, sp), x
                                   1910 ; genPointerGet
      0096F3 1E 01            [ 2] 1911 	ldw	x, (0x01, sp)
      0096F5 F6               [ 1] 1912 	ld	a, (x)
                                   1913 ; genCast
                                   1914 ; genAssign
      0096F6 5F               [ 1] 1915 	clrw	x
      0096F7 97               [ 1] 1916 	ld	xl, a
                                   1917 ; genLeftShiftLiteral
      0096F8 58               [ 2] 1918 	sllw	x
                                   1919 ; genPlus
                                   1920 ; peephole 5w replaced exgw-ldw by ldw.
      0096F9 90 93            [ 1] 1921 	ldw	y, x
      0096FB 1C 81 A5         [ 2] 1922 	addw	x, #(_dindex+0)
                                   1923 ; genPointerGet
      0096FE E6 01            [ 1] 1924 	ld	a, (0x1, x)
                                   1925 ; genPlus
      009700 1B 08            [ 1] 1926 	add	a, (0x08, sp)
      009702 97               [ 1] 1927 	ld	xl, a
                                   1928 ; genPlus
                                   1929 ; genPointerGet
                                   1930 ; peephole 10b moved addition of offset into storage instruction
      009703 90 D6 81 A5      [ 1] 1931 	ld	a, (_dindex+0, y)
                                   1932 ; genIPush
      009707 89               [ 2] 1933 	pushw	x
      009708 5B 01            [ 2] 1934 	addw	sp, #1
                                   1935 ; genSend
                                   1936 ; genCall
      00970A CD 93 E0         [ 4] 1937 	call	_I2C_ReadByte
                                   1938 ; genPointerSet
      00970D 1E 03            [ 2] 1939 	ldw	x, (0x03, sp)
      00970F F7               [ 1] 1940 	ld	(x), a
                                   1941 ;	User/eric_driver.c: 427: Delay(IIC_TIMEOUT);
                                   1942 ; genSend
      009710 AE 07 D0         [ 2] 1943 	ldw	x, #0x07d0
                                   1944 ; genCall
      009713 CD 91 EB         [ 4] 1945 	call	_Delay
                                   1946 ;	User/eric_driver.c: 424: for (i = 0; i < 10; i++)
                                   1947 ; genPlus
      009716 0C 08            [ 1] 1948 	inc	(0x08, sp)
                                   1949 ; genCmp
                                   1950 ; genCmpTnz
      009718 7B 08            [ 1] 1951 	ld	a, (0x08, sp)
      00971A A1 0A            [ 1] 1952 	cp	a, #0x0a
                                   1953 ; peephole j5 changed absolute to relative unconditional jump.
      00971C 25 CC            [ 1] 1954 	jrc	00135$
                                   1955 ; peephole j9 removed jra by using inverse jump logic
                                   1956 ; peephole j30 removed unused label 00284$.
                                   1957 ; skipping generated iCode
                                   1958 ;	User/eric_driver.c: 429: return 1;
                                   1959 ; genReturn
      00971E A6 01            [ 1] 1960 	ld	a, #0x01
                                   1961 ; peephole j5 changed absolute to relative unconditional jump.
                                   1962 ; genLabel
                                   1963 ;	User/eric_driver.c: 434: return 0;
                                   1964 ; genReturn
                                   1965 ; genLabel
      009720 21                    1966 	.byte 0x21
                                   1967 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      009721                       1968 00130$:
      009721 4F               [ 1] 1969 	clr	a
      009722                       1970 00137$:
                                   1971 ;	User/eric_driver.c: 435: }
                                   1972 ; genEndFunction
      009722 5B 08            [ 2] 1973 	addw	sp, #8
      009724 81               [ 4] 1974 	ret
                                   1975 ;	Total Load_Data function size at codegen: 3 bytes.
                                   1976 ;	User/eric_driver.c: 438: void init_rtc(void)
                                   1977 ; genLabel
                                   1978 ;	-----------------------------------------
                                   1979 ;	 function init_rtc
                                   1980 ;	-----------------------------------------
                                   1981 ;	Register assignment might be sub-optimal.
                                   1982 ;	Stack space usage: 12 bytes.
      009725                       1983 _init_rtc:
      009725 52 0C            [ 2] 1984 	sub	sp, #12
                                   1985 ;	User/eric_driver.c: 446: FLASH_Unlock(FLASH_MemType_Data);
                                   1986 ; genSend
      009727 A6 F7            [ 1] 1987 	ld	a, #0xf7
                                   1988 ; genCall
      009729 CD CC 09         [ 4] 1989 	call	_FLASH_Unlock
                                   1990 ;	User/eric_driver.c: 448: tag = FLASH_ReadByte(0x1000);
                                   1991 ; genIPush
      00972C 4B 00            [ 1] 1992 	push	#0x00
      00972E 4B 10            [ 1] 1993 	push	#0x10
      009730 5F               [ 1] 1994 	clrw	x
      009731 89               [ 2] 1995 	pushw	x
                                   1996 ; genCall
      009732 CD CC 61         [ 4] 1997 	call	_FLASH_ReadByte
                                   1998 ; genAssign
      009735 C7 01 0B         [ 1] 1999 	ld	_init_rtc_tag_10000_765+0, a
                                   2000 ;	User/eric_driver.c: 449: FLASH_Lock(FLASH_MemType_Data);
                                   2001 ; genSend
      009738 A6 F7            [ 1] 2002 	ld	a, #0xf7
                                   2003 ; genCall
      00973A CD CC 23         [ 4] 2004 	call	_FLASH_Lock
                                   2005 ;	User/eric_driver.c: 462: CLK_LSEConfig(CLK_LSE_ON);
                                   2006 ; genSend
      00973D A6 04            [ 1] 2007 	ld	a, #0x04
                                   2008 ; genCall
      00973F CD C4 CC         [ 4] 2009 	call	_CLK_LSEConfig
                                   2010 ;	User/eric_driver.c: 463: while (CLK_GetFlagStatus(CLK_FLAG_LSERDY) == RESET);
                                   2011 ; genLabel
      009742                       2012 00101$:
                                   2013 ; genSend
      009742 A6 33            [ 1] 2014 	ld	a, #0x33
                                   2015 ; genCall
      009744 CD C6 96         [ 4] 2016 	call	_CLK_GetFlagStatus
                                   2017 ; genIfx
      009747 4D               [ 1] 2018 	tnz	a
                                   2019 ; peephole j5 changed absolute to relative unconditional jump.
      009748 27 F8            [ 1] 2020 	jreq	00101$
                                   2021 ; peephole j10 removed jra by using inverse jump logic
                                   2022 ; peephole j30 removed unused label 00122$.
                                   2023 ;	User/eric_driver.c: 464: CLK_RTCClockConfig(CLK_RTCCLKSource_LSE, CLK_RTCCLKDiv_1);
                                   2024 ; genIPush
      00974A 4B 00            [ 1] 2025 	push	#0x00
                                   2026 ; genSend
      00974C A6 10            [ 1] 2027 	ld	a, #0x10
                                   2028 ; genCall
      00974E CD C5 7D         [ 4] 2029 	call	_CLK_RTCClockConfig
                                   2030 ;	User/eric_driver.c: 465: CLK_PeripheralClockConfig(CLK_Peripheral_RTC, ENABLE);
                                   2031 ; genIPush
      009751 4B 01            [ 1] 2032 	push	#0x01
                                   2033 ; genSend
      009753 A6 12            [ 1] 2034 	ld	a, #0x12
                                   2035 ; genCall
      009755 CD C5 89         [ 4] 2036 	call	_CLK_PeripheralClockConfig
                                   2037 ;	User/eric_driver.c: 467: RTC_InitStr.RTC_HourFormat = RTC_HourFormat_24;
                                   2038 ; genAddrOf
      009758 96               [ 1] 2039 	ldw	x, sp
      009759 5C               [ 1] 2040 	incw	x
                                   2041 ; genPointerSet
      00975A 7F               [ 1] 2042 	clr	(x)
                                   2043 ;	User/eric_driver.c: 468: RTC_InitStr.RTC_AsynchPrediv = 127;
                                   2044 ; skipping iCode since result will be rematerialized
                                   2045 ; genPointerSet
      00975B A6 7F            [ 1] 2046 	ld	a, #0x7f
      00975D 6B 02            [ 1] 2047 	ld	(0x02, sp), a
                                   2048 ;	User/eric_driver.c: 469: RTC_InitStr.RTC_SynchPrediv = 255;
                                   2049 ; skipping iCode since result will be rematerialized
                                   2050 ; genPointerSet
      00975F 90 AE 00 FF      [ 2] 2051 	ldw	y, #0x00ff
      009763 17 03            [ 2] 2052 	ldw	(0x03, sp), y
                                   2053 ;	User/eric_driver.c: 470: RTC_Init(&RTC_InitStr);
                                   2054 ; genCast
                                   2055 ; genAssign
                                   2056 ; genSend
                                   2057 ; genCall
      009765 CD D6 97         [ 4] 2058 	call	_RTC_Init
                                   2059 ;	User/eric_driver.c: 474: FLASH_Unlock(FLASH_MemType_Data);
                                   2060 ; genSend
      009768 A6 F7            [ 1] 2061 	ld	a, #0xf7
                                   2062 ; genCall
      00976A CD CC 09         [ 4] 2063 	call	_FLASH_Unlock
                                   2064 ;	User/eric_driver.c: 475: FLASH_ProgramByte(0x1000, 0x55);
                                   2065 ; genIPush
      00976D 4B 55            [ 1] 2066 	push	#0x55
                                   2067 ; genIPush
      00976F 4B 00            [ 1] 2068 	push	#0x00
      009771 4B 10            [ 1] 2069 	push	#0x10
      009773 5F               [ 1] 2070 	clrw	x
      009774 89               [ 2] 2071 	pushw	x
                                   2072 ; genCall
      009775 CD CC 30         [ 4] 2073 	call	_FLASH_ProgramByte
                                   2074 ;	User/eric_driver.c: 476: FLASH_Lock(FLASH_MemType_Data);
                                   2075 ; genSend
      009778 A6 F7            [ 1] 2076 	ld	a, #0xf7
                                   2077 ; genCall
      00977A CD CC 23         [ 4] 2078 	call	_FLASH_Lock
                                   2079 ;	User/eric_driver.c: 478: RTC_TimeStructInit(&RTC_TimeStr);
                                   2080 ; skipping iCode since result will be rematerialized
                                   2081 ; genCast
                                   2082 ; genAssign
      00977D 96               [ 1] 2083 	ldw	x, sp
      00977E 1C 00 05         [ 2] 2084 	addw	x, #5
                                   2085 ; genSend
      009781 89               [ 2] 2086 	pushw	x
                                   2087 ; genCall
      009782 CD D8 27         [ 4] 2088 	call	_RTC_TimeStructInit
      009785 85               [ 2] 2089 	popw	x
                                   2090 ;	User/eric_driver.c: 479: RTC_TimeStr.RTC_Hours = 17;
                                   2091 ; genPointerSet
      009786 A6 11            [ 1] 2092 	ld	a, #0x11
      009788 6B 05            [ 1] 2093 	ld	(0x05, sp), a
                                   2094 ;	User/eric_driver.c: 480: RTC_TimeStr.RTC_Minutes = 46;
                                   2095 ; skipping iCode since result will be rematerialized
                                   2096 ; genPointerSet
      00978A A6 2E            [ 1] 2097 	ld	a, #0x2e
      00978C 6B 06            [ 1] 2098 	ld	(0x06, sp), a
                                   2099 ;	User/eric_driver.c: 481: RTC_TimeStr.RTC_Seconds = 00;
                                   2100 ; skipping iCode since result will be rematerialized
                                   2101 ; genPointerSet
      00978E 0F 07            [ 1] 2102 	clr	(0x07, sp)
                                   2103 ;	User/eric_driver.c: 482: RTC_SetTime(RTC_Format_BIN, &RTC_TimeStr);
                                   2104 ; genSend
                                   2105 ; genSend
      009790 4F               [ 1] 2106 	clr	a
                                   2107 ; genCall
      009791 CD D7 9B         [ 4] 2108 	call	_RTC_SetTime
                                   2109 ;	User/eric_driver.c: 484: RTC_DateStructInit(&RTC_DateStr);
                                   2110 ; skipping iCode since result will be rematerialized
                                   2111 ; genCast
                                   2112 ; genAssign
      009794 96               [ 1] 2113 	ldw	x, sp
      009795 1C 00 09         [ 2] 2114 	addw	x, #9
                                   2115 ; genSend
      009798 89               [ 2] 2116 	pushw	x
                                   2117 ; genCall
      009799 CD D9 3E         [ 4] 2118 	call	_RTC_DateStructInit
      00979C 85               [ 2] 2119 	popw	x
                                   2120 ;	User/eric_driver.c: 485: RTC_DateStr.RTC_WeekDay = RTC_Weekday_Thursday;
                                   2121 ; genPointerSet
      00979D A6 04            [ 1] 2122 	ld	a, #0x04
      00979F 6B 09            [ 1] 2123 	ld	(0x09, sp), a
                                   2124 ;	User/eric_driver.c: 486: RTC_DateStr.RTC_Date = 12;
                                   2125 ; skipping iCode since result will be rematerialized
                                   2126 ; genPointerSet
      0097A1 A6 0C            [ 1] 2127 	ld	a, #0x0c
      0097A3 6B 0B            [ 1] 2128 	ld	(0x0b, sp), a
                                   2129 ;	User/eric_driver.c: 487: RTC_DateStr.RTC_Month = RTC_Month_March;
                                   2130 ; skipping iCode since result will be rematerialized
                                   2131 ; genPointerSet
      0097A5 A6 03            [ 1] 2132 	ld	a, #0x03
      0097A7 6B 0A            [ 1] 2133 	ld	(0x0a, sp), a
                                   2134 ;	User/eric_driver.c: 488: RTC_DateStr.RTC_Year = 26;
                                   2135 ; skipping iCode since result will be rematerialized
                                   2136 ; genPointerSet
      0097A9 A6 1A            [ 1] 2137 	ld	a, #0x1a
      0097AB 6B 0C            [ 1] 2138 	ld	(0x0c, sp), a
                                   2139 ;	User/eric_driver.c: 489: RTC_SetDate(RTC_Format_BIN, &RTC_DateStr);
                                   2140 ; genSend
                                   2141 ; genSend
      0097AD 4F               [ 1] 2142 	clr	a
                                   2143 ; genCall
      0097AE CD D8 97         [ 4] 2144 	call	_RTC_SetDate
                                   2145 ; genLabel
                                   2146 ; peephole j30 removed unused label 00106$.
                                   2147 ;	User/eric_driver.c: 491: }
                                   2148 ; genEndFunction
      0097B1 5B 0C            [ 2] 2149 	addw	sp, #12
      0097B3 81               [ 4] 2150 	ret
                                   2151 ;	Total init_rtc function size at codegen: 3 bytes.
                                   2152 ;	User/eric_driver.c: 493: void rtc_set_datetime(void)
                                   2153 ; genLabel
                                   2154 ;	-----------------------------------------
                                   2155 ;	 function rtc_set_datetime
                                   2156 ;	-----------------------------------------
                                   2157 ;	Register assignment might be sub-optimal.
                                   2158 ;	Stack space usage: 11 bytes.
      0097B4                       2159 _rtc_set_datetime:
      0097B4 52 0B            [ 2] 2160 	sub	sp, #11
                                   2161 ;	User/eric_driver.c: 497: uint8_t tag = 0;
                                   2162 ; genAssign
      0097B6 0F 09            [ 1] 2163 	clr	(0x09, sp)
                                   2164 ;	User/eric_driver.c: 499: while (RTC_WaitForSynchro() != SUCCESS);
                                   2165 ; genLabel
      0097B8                       2166 00101$:
                                   2167 ; genCall
      0097B8 CD D7 27         [ 4] 2168 	call	_RTC_WaitForSynchro
                                   2169 ; genIfx
      0097BB 4D               [ 1] 2170 	tnz	a
                                   2171 ; peephole j5 changed absolute to relative unconditional jump.
      0097BC 27 FA            [ 1] 2172 	jreq	00101$
                                   2173 ; peephole j10 removed jra by using inverse jump logic
                                   2174 ; peephole j30 removed unused label 00191$.
                                   2175 ;	User/eric_driver.c: 500: RTC_GetDate(RTC_Format_BIN, &RTC_DateStr);//先读一次
                                   2176 ; skipping iCode since result will be rematerialized
                                   2177 ; skipping iCode since result will be rematerialized
                                   2178 ; genSend
      0097BE 96               [ 1] 2179 	ldw	x, sp
      0097BF 5C               [ 1] 2180 	incw	x
                                   2181 ; genSend
      0097C0 4F               [ 1] 2182 	clr	a
                                   2183 ; genCall
      0097C1 CD D9 52         [ 4] 2184 	call	_RTC_GetDate
                                   2185 ;	User/eric_driver.c: 501: RTC_GetTime(RTC_Format_BIN, &RTC_TimeStr);
                                   2186 ; skipping iCode since result will be rematerialized
                                   2187 ; skipping iCode since result will be rematerialized
                                   2188 ; genSend
      0097C4 96               [ 1] 2189 	ldw	x, sp
      0097C5 1C 00 05         [ 2] 2190 	addw	x, #5
                                   2191 ; genSend
      0097C8 4F               [ 1] 2192 	clr	a
                                   2193 ; genCall
      0097C9 CD D8 34         [ 4] 2194 	call	_RTC_GetTime
                                   2195 ;	User/eric_driver.c: 503: if (RTC_DateStr.RTC_Year != adjustdt.dt[0])
                                   2196 ; skipping iCode since result will be rematerialized
                                   2197 ; genPointerGet
      0097CC 7B 04            [ 1] 2198 	ld	a, (0x04, sp)
      0097CE 6B 0B            [ 1] 2199 	ld	(0x0b, sp), a
                                   2200 ; skipping iCode since result will be rematerialized
                                   2201 ; skipping iCode since result will be rematerialized
                                   2202 ; genPointerGet
      0097D0 C6 05 3F         [ 1] 2203 	ld	a, _adjustdt+1
                                   2204 ; genCmpEQorNE
      0097D3 11 0B            [ 1] 2205 	cp	a, (0x0b, sp)
                                   2206 ; peephole j5 changed absolute to relative unconditional jump.
      0097D5 27 04            [ 1] 2207 	jreq	00105$
                                   2208 ; peephole j10 removed jra by using inverse jump logic
                                   2209 ; peephole j30 removed unused label 00193$.
                                   2210 ; skipping generated iCode
                                   2211 ;	User/eric_driver.c: 504: tag = 1;
                                   2212 ; genAssign
      0097D7 A6 01            [ 1] 2213 	ld	a, #0x01
      0097D9 6B 09            [ 1] 2214 	ld	(0x09, sp), a
                                   2215 ; genLabel
      0097DB                       2216 00105$:
                                   2217 ;	User/eric_driver.c: 505: if (RTC_DateStr.RTC_Month != (RTC_Month_TypeDef)adjustdt.dt[1])
                                   2218 ; skipping iCode since result will be rematerialized
                                   2219 ; genPointerGet
      0097DB 7B 02            [ 1] 2220 	ld	a, (0x02, sp)
      0097DD 6B 0B            [ 1] 2221 	ld	(0x0b, sp), a
                                   2222 ; skipping iCode since result will be rematerialized
                                   2223 ; genPointerGet
      0097DF C6 05 40         [ 1] 2224 	ld	a, _adjustdt+2
                                   2225 ; genCmpEQorNE
      0097E2 11 0B            [ 1] 2226 	cp	a, (0x0b, sp)
                                   2227 ; peephole j5 changed absolute to relative unconditional jump.
      0097E4 27 04            [ 1] 2228 	jreq	00107$
                                   2229 ; peephole j10 removed jra by using inverse jump logic
                                   2230 ; peephole j30 removed unused label 00196$.
                                   2231 ; skipping generated iCode
                                   2232 ;	User/eric_driver.c: 506: tag = 1;
                                   2233 ; genAssign
      0097E6 A6 01            [ 1] 2234 	ld	a, #0x01
      0097E8 6B 09            [ 1] 2235 	ld	(0x09, sp), a
                                   2236 ; genLabel
      0097EA                       2237 00107$:
                                   2238 ;	User/eric_driver.c: 507: if (RTC_DateStr.RTC_Date != adjustdt.dt[2])
                                   2239 ; skipping iCode since result will be rematerialized
                                   2240 ; genPointerGet
      0097EA 7B 03            [ 1] 2241 	ld	a, (0x03, sp)
      0097EC 6B 0B            [ 1] 2242 	ld	(0x0b, sp), a
                                   2243 ; skipping iCode since result will be rematerialized
                                   2244 ; genPointerGet
      0097EE C6 05 41         [ 1] 2245 	ld	a, _adjustdt+3
                                   2246 ; genCmpEQorNE
      0097F1 11 0B            [ 1] 2247 	cp	a, (0x0b, sp)
                                   2248 ; peephole j5 changed absolute to relative unconditional jump.
      0097F3 27 04            [ 1] 2249 	jreq	00109$
                                   2250 ; peephole j10 removed jra by using inverse jump logic
                                   2251 ; peephole j30 removed unused label 00199$.
                                   2252 ; skipping generated iCode
                                   2253 ;	User/eric_driver.c: 508: tag = 1;
                                   2254 ; genAssign
      0097F5 A6 01            [ 1] 2255 	ld	a, #0x01
      0097F7 6B 09            [ 1] 2256 	ld	(0x09, sp), a
                                   2257 ; genLabel
      0097F9                       2258 00109$:
                                   2259 ;	User/eric_driver.c: 509: if (RTC_TimeStr.RTC_Hours = adjustdt.dt[3])
                                   2260 ; genCast
                                   2261 ; genAssign
      0097F9 96               [ 1] 2262 	ldw	x, sp
      0097FA 1C 00 05         [ 2] 2263 	addw	x, #5
      0097FD 1F 0A            [ 2] 2264 	ldw	(0x0a, sp), x
                                   2265 ; skipping iCode since result will be rematerialized
                                   2266 ; genPointerGet
      0097FF C6 05 42         [ 1] 2267 	ld	a, _adjustdt+4
                                   2268 ; genPointerSet
      009802 1E 0A            [ 2] 2269 	ldw	x, (0x0a, sp)
      009804 F7               [ 1] 2270 	ld	(x), a
                                   2271 ; genIfx
      009805 4D               [ 1] 2272 	tnz	a
                                   2273 ; peephole j5 changed absolute to relative unconditional jump.
      009806 27 04            [ 1] 2274 	jreq	00111$
                                   2275 ; peephole j10 removed jra by using inverse jump logic
                                   2276 ; peephole j30 removed unused label 00201$.
                                   2277 ;	User/eric_driver.c: 510: tag = 1;
                                   2278 ; genAssign
      009808 A6 01            [ 1] 2279 	ld	a, #0x01
      00980A 6B 09            [ 1] 2280 	ld	(0x09, sp), a
                                   2281 ; genLabel
      00980C                       2282 00111$:
                                   2283 ;	User/eric_driver.c: 511: if (RTC_TimeStr.RTC_Minutes = adjustdt.dt[4])
                                   2284 ; skipping iCode since result will be rematerialized
                                   2285 ; skipping iCode since result will be rematerialized
                                   2286 ; genPointerGet
      00980C C6 05 43         [ 1] 2287 	ld	a, _adjustdt+5
                                   2288 ; genPointerSet
                                   2289 ; genIfx
      00980F 6B 06            [ 1] 2290 	ld	(0x06, sp), a
                                   2291 ; peephole 31b removed redundant tnz.
                                   2292 ; peephole j5 changed absolute to relative unconditional jump.
      009811 27 04            [ 1] 2293 	jreq	00113$
                                   2294 ; peephole j10 removed jra by using inverse jump logic
                                   2295 ; peephole j30 removed unused label 00202$.
                                   2296 ;	User/eric_driver.c: 512: tag = 1;
                                   2297 ; genAssign
      009813 A6 01            [ 1] 2298 	ld	a, #0x01
      009815 6B 09            [ 1] 2299 	ld	(0x09, sp), a
                                   2300 ; genLabel
      009817                       2301 00113$:
                                   2302 ;	User/eric_driver.c: 514: if (tag)
                                   2303 ; genIfx
      009817 0D 09            [ 1] 2304 	tnz	(0x09, sp)
                                   2305 ; peephole j5 changed absolute to relative unconditional jump.
      009819 27 2F            [ 1] 2306 	jreq	00119$
                                   2307 ; peephole j10 removed jra by using inverse jump logic
                                   2308 ; peephole j30 removed unused label 00203$.
                                   2309 ;	User/eric_driver.c: 516: RTC_DateStr.RTC_Year = adjustdt.dt[0];
                                   2310 ; genPointerGet
      00981B C6 05 3F         [ 1] 2311 	ld	a, _adjustdt+1
                                   2312 ; genPointerSet
      00981E 6B 04            [ 1] 2313 	ld	(0x04, sp), a
                                   2314 ;	User/eric_driver.c: 517: RTC_DateStr.RTC_Month = (RTC_Month_TypeDef)adjustdt.dt[1];
                                   2315 ; genPointerGet
      009820 C6 05 40         [ 1] 2316 	ld	a, _adjustdt+2
                                   2317 ; genPointerSet
      009823 6B 02            [ 1] 2318 	ld	(0x02, sp), a
                                   2319 ;	User/eric_driver.c: 518: RTC_DateStr.RTC_Date = adjustdt.dt[2];
                                   2320 ; genPointerGet
      009825 C6 05 41         [ 1] 2321 	ld	a, _adjustdt+3
                                   2322 ; genPointerSet
      009828 6B 03            [ 1] 2323 	ld	(0x03, sp), a
                                   2324 ;	User/eric_driver.c: 520: RTC_TimeStr.RTC_Hours = adjustdt.dt[3];
                                   2325 ; genPointerGet
      00982A C6 05 42         [ 1] 2326 	ld	a, _adjustdt+4
                                   2327 ; genPointerSet
      00982D 1E 0A            [ 2] 2328 	ldw	x, (0x0a, sp)
      00982F F7               [ 1] 2329 	ld	(x), a
                                   2330 ;	User/eric_driver.c: 521: RTC_TimeStr.RTC_Minutes = adjustdt.dt[4];
                                   2331 ; genPointerGet
      009830 C6 05 43         [ 1] 2332 	ld	a, _adjustdt+5
                                   2333 ; genPointerSet
      009833 6B 06            [ 1] 2334 	ld	(0x06, sp), a
                                   2335 ;	User/eric_driver.c: 524: while (RTC_WaitForSynchro() != SUCCESS);
                                   2336 ; genLabel
      009835                       2337 00114$:
                                   2338 ; genCall
      009835 CD D7 27         [ 4] 2339 	call	_RTC_WaitForSynchro
                                   2340 ; genIfx
      009838 6B 0B            [ 1] 2341 	ld	(0x0b, sp), a
                                   2342 ; peephole 31a removed redundant tnz.
                                   2343 ; peephole j5 changed absolute to relative unconditional jump.
      00983A 27 F9            [ 1] 2344 	jreq	00114$
                                   2345 ; peephole j10 removed jra by using inverse jump logic
                                   2346 ; peephole j30 removed unused label 00204$.
                                   2347 ;	User/eric_driver.c: 525: RTC_SetDate(RTC_Format_BIN, &RTC_DateStr);
                                   2348 ; genSend
      00983C 96               [ 1] 2349 	ldw	x, sp
      00983D 5C               [ 1] 2350 	incw	x
                                   2351 ; genSend
      00983E 4F               [ 1] 2352 	clr	a
                                   2353 ; genCall
      00983F CD D8 97         [ 4] 2354 	call	_RTC_SetDate
                                   2355 ;	User/eric_driver.c: 526: RTC_SetTime(RTC_Format_BIN, &RTC_TimeStr);
                                   2356 ; genSend
      009842 96               [ 1] 2357 	ldw	x, sp
      009843 1C 00 05         [ 2] 2358 	addw	x, #5
                                   2359 ; genSend
      009846 4F               [ 1] 2360 	clr	a
                                   2361 ; genCall
      009847 CD D7 9B         [ 4] 2362 	call	_RTC_SetTime
                                   2363 ; genLabel
      00984A                       2364 00119$:
                                   2365 ;	User/eric_driver.c: 528: }
                                   2366 ; genEndFunction
      00984A 5B 0B            [ 2] 2367 	addw	sp, #11
      00984C 81               [ 4] 2368 	ret
                                   2369 ;	Total rtc_set_datetime function size at codegen: 3 bytes.
                                   2370 ;	User/eric_driver.c: 530: void rtc_get_datetime(void)
                                   2371 ; genLabel
                                   2372 ;	-----------------------------------------
                                   2373 ;	 function rtc_get_datetime
                                   2374 ;	-----------------------------------------
                                   2375 ;	Register assignment might be sub-optimal.
                                   2376 ;	Stack space usage: 8 bytes.
      00984D                       2377 _rtc_get_datetime:
      00984D 52 08            [ 2] 2378 	sub	sp, #8
                                   2379 ;	User/eric_driver.c: 535: while (RTC_WaitForSynchro() != SUCCESS);
                                   2380 ; genLabel
      00984F                       2381 00101$:
                                   2382 ; genCall
      00984F CD D7 27         [ 4] 2383 	call	_RTC_WaitForSynchro
                                   2384 ; genIfx
      009852 4D               [ 1] 2385 	tnz	a
                                   2386 ; peephole j5 changed absolute to relative unconditional jump.
      009853 27 FA            [ 1] 2387 	jreq	00101$
                                   2388 ; peephole j10 removed jra by using inverse jump logic
                                   2389 ; peephole j30 removed unused label 00120$.
                                   2390 ;	User/eric_driver.c: 537: RTC_GetDate(RTC_Format_BIN, &RTC_DateStr);
                                   2391 ; skipping iCode since result will be rematerialized
                                   2392 ; skipping iCode since result will be rematerialized
                                   2393 ; genSend
      009855 96               [ 1] 2394 	ldw	x, sp
      009856 5C               [ 1] 2395 	incw	x
                                   2396 ; genSend
      009857 4F               [ 1] 2397 	clr	a
                                   2398 ; genCall
      009858 CD D9 52         [ 4] 2399 	call	_RTC_GetDate
                                   2400 ;	User/eric_driver.c: 538: RTC_GetTime(RTC_Format_BIN, &RTC_TimeStr);
                                   2401 ; skipping iCode since result will be rematerialized
                                   2402 ; skipping iCode since result will be rematerialized
                                   2403 ; genSend
      00985B 96               [ 1] 2404 	ldw	x, sp
      00985C 1C 00 05         [ 2] 2405 	addw	x, #5
                                   2406 ; genSend
      00985F 4F               [ 1] 2407 	clr	a
                                   2408 ; genCall
      009860 CD D8 34         [ 4] 2409 	call	_RTC_GetTime
                                   2410 ;	User/eric_driver.c: 540: adjustdt.dt[0] = RTC_DateStr.RTC_Year & 0xff;
                                   2411 ; skipping iCode since result will be rematerialized
                                   2412 ; skipping iCode since result will be rematerialized
                                   2413 ; skipping iCode since result will be rematerialized
                                   2414 ; genPointerGet
      009863 7B 04            [ 1] 2415 	ld	a, (0x04, sp)
                                   2416 ; genPointerSet
      009865 C7 05 3F         [ 1] 2417 	ld	_adjustdt+1, a
                                   2418 ;	User/eric_driver.c: 541: adjustdt.dt[1] = RTC_DateStr.RTC_Month & 0xff;
                                   2419 ; skipping iCode since result will be rematerialized
                                   2420 ; skipping iCode since result will be rematerialized
                                   2421 ; genPointerGet
      009868 7B 02            [ 1] 2422 	ld	a, (0x02, sp)
                                   2423 ; genPointerSet
      00986A C7 05 40         [ 1] 2424 	ld	_adjustdt+2, a
                                   2425 ;	User/eric_driver.c: 542: adjustdt.dt[2] = RTC_DateStr.RTC_Date & 0xff;
                                   2426 ; skipping iCode since result will be rematerialized
                                   2427 ; skipping iCode since result will be rematerialized
                                   2428 ; genPointerGet
      00986D 7B 03            [ 1] 2429 	ld	a, (0x03, sp)
                                   2430 ; genPointerSet
      00986F C7 05 41         [ 1] 2431 	ld	_adjustdt+3, a
                                   2432 ;	User/eric_driver.c: 544: adjustdt.dt[3] = RTC_TimeStr.RTC_Hours & 0xff;
                                   2433 ; skipping iCode since result will be rematerialized
                                   2434 ; genPointerGet
      009872 7B 05            [ 1] 2435 	ld	a, (0x05, sp)
                                   2436 ; genPointerSet
      009874 C7 05 42         [ 1] 2437 	ld	_adjustdt+4, a
                                   2438 ;	User/eric_driver.c: 545: adjustdt.dt[4] = RTC_TimeStr.RTC_Minutes & 0xff;
                                   2439 ; skipping iCode since result will be rematerialized
                                   2440 ; skipping iCode since result will be rematerialized
                                   2441 ; genPointerGet
      009877 7B 06            [ 1] 2442 	ld	a, (0x06, sp)
                                   2443 ; genPointerSet
      009879 C7 05 43         [ 1] 2444 	ld	_adjustdt+5, a
                                   2445 ;	User/eric_driver.c: 546: adjustdt.dt[5] = RTC_TimeStr.RTC_Seconds & 0xff;
                                   2446 ; skipping iCode since result will be rematerialized
                                   2447 ; skipping iCode since result will be rematerialized
                                   2448 ; genPointerGet
      00987C 7B 07            [ 1] 2449 	ld	a, (0x07, sp)
                                   2450 ; genPointerSet
      00987E C7 05 44         [ 1] 2451 	ld	_adjustdt+6, a
                                   2452 ; genLabel
                                   2453 ; peephole j30 removed unused label 00104$.
                                   2454 ;	User/eric_driver.c: 547: }
                                   2455 ; genEndFunction
      009881 5B 08            [ 2] 2456 	addw	sp, #8
      009883 81               [ 4] 2457 	ret
                                   2458 ;	Total rtc_get_datetime function size at codegen: 3 bytes.
                                   2459 ;	User/eric_driver.c: 551: uint8_t Read_Key(void)
                                   2460 ; genLabel
                                   2461 ;	-----------------------------------------
                                   2462 ;	 function Read_Key
                                   2463 ;	-----------------------------------------
                                   2464 ;	Register assignment is optimal.
                                   2465 ;	Stack space usage: 1 bytes.
      009884                       2466 _Read_Key:
      009884 88               [ 1] 2467 	push	a
                                   2468 ;	User/eric_driver.c: 553: uint8_t kval = 0;
                                   2469 ; genAssign
      009885 0F 01            [ 1] 2470 	clr	(0x01, sp)
                                   2471 ;	User/eric_driver.c: 555: if (!K_UP)					//按下是低电平
                                   2472 ; genSend
      009887 A6 08            [ 1] 2473 	ld	a, #0x08
                                   2474 ; genSend
      009889 AE 50 14         [ 2] 2475 	ldw	x, #0x5014
                                   2476 ; genCall
      00988C CD CE B9         [ 4] 2477 	call	_GPIO_ReadInputDataBit
                                   2478 ; genIfx
      00988F 4D               [ 1] 2479 	tnz	a
                                   2480 ; peephole j5 changed absolute to relative unconditional jump.
      009890 26 04            [ 1] 2481 	jrne	00102$
                                   2482 ; peephole j7 removed jra by using inverse jump logic
                                   2483 ; peephole j30 removed unused label 00148$.
                                   2484 ;	User/eric_driver.c: 558: kval += KEY_UP;
                                   2485 ; genAssign
      009892 A6 01            [ 1] 2486 	ld	a, #0x01
      009894 6B 01            [ 1] 2487 	ld	(0x01, sp), a
                                   2488 ; genLabel
      009896                       2489 00102$:
                                   2490 ;	User/eric_driver.c: 561: if (!K_DOWN)				//按下是低电平
                                   2491 ; genSend
      009896 A6 10            [ 1] 2492 	ld	a, #0x10
                                   2493 ; genSend
      009898 AE 50 14         [ 2] 2494 	ldw	x, #0x5014
                                   2495 ; genCall
      00989B CD CE B9         [ 4] 2496 	call	_GPIO_ReadInputDataBit
                                   2497 ; genIfx
      00989E 4D               [ 1] 2498 	tnz	a
                                   2499 ; peephole j5 changed absolute to relative unconditional jump.
      00989F 26 06            [ 1] 2500 	jrne	00104$
                                   2501 ; peephole j7 removed jra by using inverse jump logic
                                   2502 ; peephole j30 removed unused label 00149$.
                                   2503 ;	User/eric_driver.c: 564: kval += KEY_DOWN;
                                   2504 ; genCast
                                   2505 ; genAssign
      0098A1 7B 01            [ 1] 2506 	ld	a, (0x01, sp)
                                   2507 ; genPlus
      0098A3 AB 02            [ 1] 2508 	add	a, #0x02
      0098A5 6B 01            [ 1] 2509 	ld	(0x01, sp), a
                                   2510 ; genLabel
      0098A7                       2511 00104$:
                                   2512 ;	User/eric_driver.c: 567: if (!K_LEFT)				//按下是低电平
                                   2513 ; genSend
      0098A7 A6 01            [ 1] 2514 	ld	a, #0x01
                                   2515 ; genSend
      0098A9 AE 50 14         [ 2] 2516 	ldw	x, #0x5014
                                   2517 ; genCall
      0098AC CD CE B9         [ 4] 2518 	call	_GPIO_ReadInputDataBit
                                   2519 ; genIfx
      0098AF 4D               [ 1] 2520 	tnz	a
                                   2521 ; peephole j5 changed absolute to relative unconditional jump.
      0098B0 26 06            [ 1] 2522 	jrne	00106$
                                   2523 ; peephole j7 removed jra by using inverse jump logic
                                   2524 ; peephole j30 removed unused label 00150$.
                                   2525 ;	User/eric_driver.c: 570: kval += KEY_LEFT;
                                   2526 ; genCast
                                   2527 ; genAssign
      0098B2 7B 01            [ 1] 2528 	ld	a, (0x01, sp)
                                   2529 ; genPlus
      0098B4 AB 04            [ 1] 2530 	add	a, #0x04
      0098B6 6B 01            [ 1] 2531 	ld	(0x01, sp), a
                                   2532 ; genLabel
      0098B8                       2533 00106$:
                                   2534 ;	User/eric_driver.c: 573: if (!K_RIGHT)				//按下是低电平
                                   2535 ; genSend
      0098B8 A6 02            [ 1] 2536 	ld	a, #0x02
                                   2537 ; genSend
      0098BA AE 50 14         [ 2] 2538 	ldw	x, #0x5014
                                   2539 ; genCall
      0098BD CD CE B9         [ 4] 2540 	call	_GPIO_ReadInputDataBit
                                   2541 ; genIfx
      0098C0 4D               [ 1] 2542 	tnz	a
                                   2543 ; peephole j5 changed absolute to relative unconditional jump.
      0098C1 26 06            [ 1] 2544 	jrne	00108$
                                   2545 ; peephole j7 removed jra by using inverse jump logic
                                   2546 ; peephole j30 removed unused label 00151$.
                                   2547 ;	User/eric_driver.c: 576: kval += KEY_RIGHT;
                                   2548 ; genCast
                                   2549 ; genAssign
      0098C3 7B 01            [ 1] 2550 	ld	a, (0x01, sp)
                                   2551 ; genPlus
      0098C5 AB 07            [ 1] 2552 	add	a, #0x07
      0098C7 6B 01            [ 1] 2553 	ld	(0x01, sp), a
                                   2554 ; genLabel
      0098C9                       2555 00108$:
                                   2556 ;	User/eric_driver.c: 579: if (!K_MENU)				//按下是低电平
                                   2557 ; genSend
      0098C9 A6 04            [ 1] 2558 	ld	a, #0x04
                                   2559 ; genSend
      0098CB AE 50 14         [ 2] 2560 	ldw	x, #0x5014
                                   2561 ; genCall
      0098CE CD CE B9         [ 4] 2562 	call	_GPIO_ReadInputDataBit
                                   2563 ; genIfx
      0098D1 4D               [ 1] 2564 	tnz	a
                                   2565 ; peephole j5 changed absolute to relative unconditional jump.
      0098D2 26 06            [ 1] 2566 	jrne	00110$
                                   2567 ; peephole j7 removed jra by using inverse jump logic
                                   2568 ; peephole j30 removed unused label 00152$.
                                   2569 ;	User/eric_driver.c: 582: kval += KEY_MENU;
                                   2570 ; genCast
                                   2571 ; genAssign
      0098D4 7B 01            [ 1] 2572 	ld	a, (0x01, sp)
                                   2573 ; genPlus
      0098D6 AB 0C            [ 1] 2574 	add	a, #0x0c
      0098D8 6B 01            [ 1] 2575 	ld	(0x01, sp), a
                                   2576 ; genLabel
      0098DA                       2577 00110$:
                                   2578 ;	User/eric_driver.c: 586: return kval;
                                   2579 ; genReturn
      0098DA 7B 01            [ 1] 2580 	ld	a, (0x01, sp)
                                   2581 ; genLabel
                                   2582 ; peephole j30 removed unused label 00111$.
                                   2583 ;	User/eric_driver.c: 587: }
                                   2584 ; genEndFunction
      0098DC 5B 01            [ 2] 2585 	addw	sp, #1
      0098DE 81               [ 4] 2586 	ret
                                   2587 ;	Total Read_Key function size at codegen: 3 bytes.
                                   2588 ;	User/eric_driver.c: 590: uint8_t Scan_Key(void)
                                   2589 ; genLabel
                                   2590 ;	-----------------------------------------
                                   2591 ;	 function Scan_Key
                                   2592 ;	-----------------------------------------
                                   2593 ;	Register assignment might be sub-optimal.
                                   2594 ;	Stack space usage: 6 bytes.
      0098DF                       2595 _Scan_Key:
      0098DF 52 06            [ 2] 2596 	sub	sp, #6
                                   2597 ;	User/eric_driver.c: 592: switch (key.state)
                                   2598 ; genAddrOf
      0098E1 AE 04 99         [ 2] 2599 	ldw	x, #_key+0
                                   2600 ; skipping iCode since result will be rematerialized
                                   2601 ; genPointerGet
      0098E4 C6 04 9A         [ 1] 2602 	ld	a, _key+1
                                   2603 ;	User/eric_driver.c: 595: key.val = Read_Key();
                                   2604 ; genCast
                                   2605 ; genAssign
      0098E7 1F 01            [ 2] 2606 	ldw	(0x01, sp), x
                                   2607 ;	User/eric_driver.c: 598: if (key.dly < 3) //8
                                   2608 ; skipping iCode since result will be rematerialized
                                   2609 ;	User/eric_driver.c: 592: switch (key.state)
                                   2610 ; genCmpEQorNE
      0098E9 A1 00            [ 1] 2611 	cp	a, #0x00
                                   2612 ; peephole j5 changed absolute to relative unconditional jump.
      0098EB 27 0B            [ 1] 2613 	jreq	00101$
                                   2614 ; peephole j10 removed jra by using inverse jump logic
                                   2615 ; peephole j30 removed unused label 00198$.
                                   2616 ; skipping generated iCode
                                   2617 ; genCmpEQorNE
      0098ED A1 01            [ 1] 2618 	cp	a, #0x01
                                   2619 ; peephole j5 changed absolute to relative unconditional jump.
      0098EF 27 37            [ 1] 2620 	jreq	00109$
                                   2621 ; peephole j10 removed jra by using inverse jump logic
                                   2622 ; peephole j30 removed unused label 00201$.
                                   2623 ; skipping generated iCode
                                   2624 ; genCmpEQorNE
      0098F1 A1 02            [ 1] 2625 	cp	a, #0x02
                                   2626 ; peephole j5 changed absolute to relative unconditional jump.
      0098F3 27 60            [ 1] 2627 	jreq	00116$
                                   2628 ; peephole j10 removed jra by using inverse jump logic
                                   2629 ; peephole j30 removed unused label 00204$.
                                   2630 ; skipping generated iCode
                                   2631 ; genGoto
      0098F5 CC 99 BF         [ 2] 2632 	jp	00123$
                                   2633 ;	User/eric_driver.c: 594: case 0:
                                   2634 ; genLabel
      0098F8                       2635 00101$:
                                   2636 ;	User/eric_driver.c: 595: key.val = Read_Key();
                                   2637 ; genCall
      0098F8 CD 98 84         [ 4] 2638 	call	_Read_Key
                                   2639 ; genPointerSet
      0098FB 1E 01            [ 2] 2640 	ldw	x, (0x01, sp)
      0098FD F7               [ 1] 2641 	ld	(x), a
                                   2642 ;	User/eric_driver.c: 598: if (key.dly < 3) //8
                                   2643 ; genPointerGet
      0098FE CE 04 9B         [ 2] 2644 	ldw	x, _key+2
                                   2645 ;	User/eric_driver.c: 596: if (key.val) //首次按下键
                                   2646 ; genIfx
      009901 4D               [ 1] 2647 	tnz	a
                                   2648 ; peephole j5 changed absolute to relative unconditional jump.
      009902 27 17            [ 1] 2649 	jreq	00107$
                                   2650 ; peephole j10 removed jra by using inverse jump logic
                                   2651 ; peephole j30 removed unused label 00206$.
                                   2652 ;	User/eric_driver.c: 598: if (key.dly < 3) //8
                                   2653 ; genCast
                                   2654 ; genAssign
                                   2655 ; genCmp
                                   2656 ; genCmpTnz
      009904 A3 00 03         [ 2] 2657 	cpw	x, #0x0003
      009907 25 03            [ 1] 2658 	jrc	00207$
      009909 CC 99 C3         [ 2] 2659 	jp	00124$
      00990C                       2660 00207$:
                                   2661 ; skipping generated iCode
                                   2662 ;	User/eric_driver.c: 600: key.dly = 3; //8
                                   2663 ; genPointerSet
      00990C 35 03 04 9C      [ 1] 2664 	mov	_key+3, #0x03
      009910 35 00 04 9B      [ 1] 2665 	mov	_key+2, #0x00
                                   2666 ;	User/eric_driver.c: 601: key.state = 1;
                                   2667 ; genPointerSet
      009914 35 01 04 9A      [ 1] 2668 	mov	_key+1, #0x01
                                   2669 ; genGoto
      009918 CC 99 C3         [ 2] 2670 	jp	00124$
                                   2671 ; genLabel
      00991B                       2672 00107$:
                                   2673 ;	User/eric_driver.c: 604: else if (key.dly)
                                   2674 ; genIfx
      00991B 5D               [ 2] 2675 	tnzw	x
      00991C 26 03            [ 1] 2676 	jrne	00208$
      00991E CC 99 C3         [ 2] 2677 	jp	00124$
      009921                       2678 00208$:
                                   2679 ;	User/eric_driver.c: 605: key.dly--;
                                   2680 ; genMinus
      009921 5A               [ 2] 2681 	decw	x
                                   2682 ; genPointerSet
      009922 CF 04 9B         [ 2] 2683 	ldw	_key+2, x
                                   2684 ;	User/eric_driver.c: 606: break;
                                   2685 ; genGoto
      009925 CC 99 C3         [ 2] 2686 	jp	00124$
                                   2687 ;	User/eric_driver.c: 607: case 1:
                                   2688 ; genLabel
      009928                       2689 00109$:
                                   2690 ;	User/eric_driver.c: 608: if (key.dly)
                                   2691 ; genPointerGet
      009928 CE 04 9B         [ 2] 2692 	ldw	x, _key+2
                                   2693 ; genIfx
      00992B 5D               [ 2] 2694 	tnzw	x
                                   2695 ; peephole j5 changed absolute to relative unconditional jump.
      00992C 27 07            [ 1] 2696 	jreq	00114$
                                   2697 ; peephole j10 removed jra by using inverse jump logic
                                   2698 ; peephole j30 removed unused label 00209$.
                                   2699 ;	User/eric_driver.c: 609: key.dly--;
                                   2700 ; genMinus
      00992E 5A               [ 2] 2701 	decw	x
                                   2702 ; genPointerSet
      00992F CF 04 9B         [ 2] 2703 	ldw	_key+2, x
                                   2704 ; genGoto
      009932 CC 99 C3         [ 2] 2705 	jp	00124$
                                   2706 ; genLabel
      009935                       2707 00114$:
                                   2708 ;	User/eric_driver.c: 612: if (key.val == Read_Key()) //确认按键
                                   2709 ; genPointerGet
      009935 1E 01            [ 2] 2710 	ldw	x, (0x01, sp)
      009937 F6               [ 1] 2711 	ld	a, (x)
      009938 6B 06            [ 1] 2712 	ld	(0x06, sp), a
                                   2713 ; genCall
      00993A CD 98 84         [ 4] 2714 	call	_Read_Key
                                   2715 ; genCmpEQorNE
      00993D 11 06            [ 1] 2716 	cp	a, (0x06, sp)
                                   2717 ; peephole j5 changed absolute to relative unconditional jump.
                                   2718 ; peephole j10 removed jra by using inverse jump logic
                                   2719 ; peephole j30 removed unused label 00211$.
                                   2720 ; peephole j5 changed absolute to relative unconditional jump.
      00993F 26 0E            [ 1] 2721 	jrne	00111$
                                   2722 ; peephole j7 removed jra by using inverse jump logic
                                   2723 ; peephole j30 removed unused label 00212$.
                                   2724 ; skipping generated iCode
                                   2725 ;	User/eric_driver.c: 614: key.state = 2;
                                   2726 ; genPointerSet
      009941 35 02 04 9A      [ 1] 2727 	mov	_key+1, #0x02
                                   2728 ;	User/eric_driver.c: 615: key.dly = 100;	 //用于长按计时
                                   2729 ; genPointerSet
      009945 35 64 04 9C      [ 1] 2730 	mov	_key+3, #0x64
      009949 35 00 04 9B      [ 1] 2731 	mov	_key+2, #0x00
                                   2732 ; genGoto
      00994D 20 74            [ 2] 2733 	jra	00124$
                                   2734 ; peephole j5 changed absolute to relative unconditional jump.
                                   2735 ; genLabel
      00994F                       2736 00111$:
                                   2737 ;	User/eric_driver.c: 618: key.state = 0;
                                   2738 ; genPointerSet
      00994F 35 00 04 9A      [ 1] 2739 	mov	_key+1, #0x00
                                   2740 ;	User/eric_driver.c: 620: break;
                                   2741 ; genGoto
      009953 20 6E            [ 2] 2742 	jra	00124$
                                   2743 ; peephole j5 changed absolute to relative unconditional jump.
                                   2744 ;	User/eric_driver.c: 621: case 2:
                                   2745 ; genLabel
      009955                       2746 00116$:
                                   2747 ;	User/eric_driver.c: 622: if (0 == Read_Key())		 //按键弹起，确认一次按键事件
                                   2748 ; genCall
      009955 CD 98 84         [ 4] 2749 	call	_Read_Key
                                   2750 ; genIfx
      009958 4D               [ 1] 2751 	tnz	a
                                   2752 ; peephole j5 changed absolute to relative unconditional jump.
      009959 26 27            [ 1] 2753 	jrne	00121$
                                   2754 ; peephole j7 removed jra by using inverse jump logic
                                   2755 ; peephole j30 removed unused label 00213$.
                                   2756 ;	User/eric_driver.c: 624: key.state = 0;
                                   2757 ; genPointerSet
      00995B 35 00 04 9A      [ 1] 2758 	mov	_key+1, #0x00
                                   2759 ;	User/eric_driver.c: 625: key.dly = 0;
                                   2760 ; genPointerSet
      00995F AE 04 9B         [ 2] 2761 	ldw	x, #(_key+2)
      009962 6F 01            [ 1] 2762 	clr	(0x1, x)
      009964 7F               [ 1] 2763 	clr	(x)
                                   2764 ;	User/eric_driver.c: 626: SendMsg(&MsgSystem, MSG_KEY_TIMER, key.val, 0);
                                   2765 ; genPointerGet
      009965 1E 01            [ 2] 2766 	ldw	x, (0x01, sp)
      009967 F6               [ 1] 2767 	ld	a, (x)
                                   2768 ; genCast
                                   2769 ; genAssign
      009968 90 5F            [ 1] 2770 	clrw	y
      00996A 0F 03            [ 1] 2771 	clr	(0x03, sp)
                                   2772 ; skipping iCode since result will be rematerialized
                                   2773 ; skipping iCode since result will be rematerialized
                                   2774 ; genIPush
      00996C 5F               [ 1] 2775 	clrw	x
      00996D 89               [ 2] 2776 	pushw	x
      00996E 5F               [ 1] 2777 	clrw	x
      00996F 89               [ 2] 2778 	pushw	x
                                   2779 ; genIPush
      009970 88               [ 1] 2780 	push	a
      009971 90 89            [ 2] 2781 	pushw	y
      009973 4F               [ 1] 2782 	clr	a
      009974 88               [ 1] 2783 	push	a
                                   2784 ; genSend
      009975 A6 02            [ 1] 2785 	ld	a, #0x02
                                   2786 ; genSend
      009977 AE 01 0D         [ 2] 2787 	ldw	x, #(_MsgSystem+0)
                                   2788 ; genCall
      00997A CD 9D 28         [ 4] 2789 	call	_SendMsg
                                   2790 ;	User/eric_driver.c: 627: return key.val;
                                   2791 ; genPointerGet
      00997D 1E 01            [ 2] 2792 	ldw	x, (0x01, sp)
      00997F F6               [ 1] 2793 	ld	a, (x)
                                   2794 ; genReturn
      009980 20 42            [ 2] 2795 	jra	00125$
                                   2796 ; peephole j5 changed absolute to relative unconditional jump.
                                   2797 ; genLabel
      009982                       2798 00121$:
                                   2799 ;	User/eric_driver.c: 631: if (key.dly)
                                   2800 ; genPointerGet
      009982 CE 04 9B         [ 2] 2801 	ldw	x, _key+2
                                   2802 ; genIfx
      009985 5D               [ 2] 2803 	tnzw	x
                                   2804 ; peephole j5 changed absolute to relative unconditional jump.
      009986 27 06            [ 1] 2805 	jreq	00118$
                                   2806 ; peephole j10 removed jra by using inverse jump logic
                                   2807 ; peephole j30 removed unused label 00214$.
                                   2808 ;	User/eric_driver.c: 632: key.dly--;
                                   2809 ; genMinus
      009988 5A               [ 2] 2810 	decw	x
                                   2811 ; genPointerSet
      009989 CF 04 9B         [ 2] 2812 	ldw	_key+2, x
                                   2813 ; genGoto
      00998C 20 35            [ 2] 2814 	jra	00124$
                                   2815 ; peephole j5 changed absolute to relative unconditional jump.
                                   2816 ; genLabel
      00998E                       2817 00118$:
                                   2818 ;	User/eric_driver.c: 635: key.dly = 20;
                                   2819 ; genPointerSet
      00998E 35 14 04 9C      [ 1] 2820 	mov	_key+3, #0x14
      009992 35 00 04 9B      [ 1] 2821 	mov	_key+2, #0x00
                                   2822 ;	User/eric_driver.c: 636: key.state = 0;
                                   2823 ; genPointerSet
      009996 35 00 04 9A      [ 1] 2824 	mov	_key+1, #0x00
                                   2825 ;	User/eric_driver.c: 637: key.val += 100;		 //长按，当前键值+100
                                   2826 ; genPointerGet
      00999A 1E 01            [ 2] 2827 	ldw	x, (0x01, sp)
      00999C F6               [ 1] 2828 	ld	a, (x)
                                   2829 ; genCast
                                   2830 ; genAssign
                                   2831 ; genPlus
      00999D AB 64            [ 1] 2832 	add	a, #0x64
                                   2833 ; genPointerSet
      00999F 1E 01            [ 2] 2834 	ldw	x, (0x01, sp)
      0099A1 F7               [ 1] 2835 	ld	(x), a
                                   2836 ;	User/eric_driver.c: 638: SendMsg(&MsgSystem, MSG_KEY_TIMER, key.val, 0);
                                   2837 ; genPointerGet
      0099A2 1E 01            [ 2] 2838 	ldw	x, (0x01, sp)
      0099A4 F6               [ 1] 2839 	ld	a, (x)
                                   2840 ; genCast
                                   2841 ; genAssign
      0099A5 90 5F            [ 1] 2842 	clrw	y
      0099A7 0F 03            [ 1] 2843 	clr	(0x03, sp)
                                   2844 ; skipping iCode since result will be rematerialized
                                   2845 ; skipping iCode since result will be rematerialized
                                   2846 ; genIPush
      0099A9 5F               [ 1] 2847 	clrw	x
      0099AA 89               [ 2] 2848 	pushw	x
      0099AB 5F               [ 1] 2849 	clrw	x
      0099AC 89               [ 2] 2850 	pushw	x
                                   2851 ; genIPush
      0099AD 88               [ 1] 2852 	push	a
      0099AE 90 89            [ 2] 2853 	pushw	y
      0099B0 4F               [ 1] 2854 	clr	a
      0099B1 88               [ 1] 2855 	push	a
                                   2856 ; genSend
      0099B2 A6 02            [ 1] 2857 	ld	a, #0x02
                                   2858 ; genSend
      0099B4 AE 01 0D         [ 2] 2859 	ldw	x, #(_MsgSystem+0)
                                   2860 ; genCall
      0099B7 CD 9D 28         [ 4] 2861 	call	_SendMsg
                                   2862 ;	User/eric_driver.c: 639: return key.val;
                                   2863 ; genPointerGet
      0099BA 1E 01            [ 2] 2864 	ldw	x, (0x01, sp)
      0099BC F6               [ 1] 2865 	ld	a, (x)
                                   2866 ; genReturn
      0099BD 20 05            [ 2] 2867 	jra	00125$
                                   2868 ; peephole j5 changed absolute to relative unconditional jump.
                                   2869 ;	User/eric_driver.c: 644: default :
                                   2870 ; genLabel
      0099BF                       2871 00123$:
                                   2872 ;	User/eric_driver.c: 645: key.state = 0;
                                   2873 ; genPointerSet
      0099BF 35 00 04 9A      [ 1] 2874 	mov	_key+1, #0x00
                                   2875 ;	User/eric_driver.c: 647: }
                                   2876 ; genLabel
      0099C3                       2877 00124$:
                                   2878 ;	User/eric_driver.c: 648: return 0;
                                   2879 ; genReturn
      0099C3 4F               [ 1] 2880 	clr	a
                                   2881 ; genLabel
      0099C4                       2882 00125$:
                                   2883 ;	User/eric_driver.c: 649: }
                                   2884 ; genEndFunction
      0099C4 5B 06            [ 2] 2885 	addw	sp, #6
      0099C6 81               [ 4] 2886 	ret
                                   2887 ;	Total Scan_Key function size at codegen: 3 bytes.
                                   2888 ;	User/eric_driver.c: 687: void ADC_Config(void)
                                   2889 ; genLabel
                                   2890 ;	-----------------------------------------
                                   2891 ;	 function ADC_Config
                                   2892 ;	-----------------------------------------
                                   2893 ;	Register assignment is optimal.
                                   2894 ;	Stack space usage: 0 bytes.
      0099C7                       2895 _ADC_Config:
                                   2896 ;	User/eric_driver.c: 690: CLK_PeripheralClockConfig(CLK_Peripheral_ADC1, ENABLE);
                                   2897 ; genIPush
      0099C7 4B 01            [ 1] 2898 	push	#0x01
                                   2899 ; genSend
      0099C9 A6 10            [ 1] 2900 	ld	a, #0x10
                                   2901 ; genCall
      0099CB CD C5 89         [ 4] 2902 	call	_CLK_PeripheralClockConfig
                                   2903 ;	User/eric_driver.c: 692: ADC_Init(ADC1, ADC_ConversionMode_Continuous, ADC_Resolution_12Bit, ADC_Prescaler_1);
                                   2904 ; genIPush
      0099CE 4B 00            [ 1] 2905 	push	#0x00
                                   2906 ; genIPush
      0099D0 4B 00            [ 1] 2907 	push	#0x00
                                   2908 ; genSend
      0099D2 A6 04            [ 1] 2909 	ld	a, #0x04
                                   2910 ; genSend
      0099D4 AE 53 40         [ 2] 2911 	ldw	x, #0x5340
                                   2912 ; genCall
      0099D7 CD C2 5A         [ 4] 2913 	call	_ADC_Init
                                   2914 ;	User/eric_driver.c: 693: ADC_SamplingTimeConfig(ADC1, ADC_Group_FastChannels, ADC_SamplingTime_24Cycles);
                                   2915 ; genIPush
      0099DA 4B 03            [ 1] 2916 	push	#0x03
                                   2917 ; genSend
      0099DC A6 01            [ 1] 2918 	ld	a, #0x01
                                   2919 ; genSend
      0099DE AE 53 40         [ 2] 2920 	ldw	x, #0x5340
                                   2921 ; genCall
      0099E1 CD C3 4E         [ 4] 2922 	call	_ADC_SamplingTimeConfig
                                   2923 ;	User/eric_driver.c: 696: ADC_Cmd(ADC1, ENABLE);
                                   2924 ; genSend
      0099E4 A6 01            [ 1] 2925 	ld	a, #0x01
                                   2926 ; genSend
      0099E6 AE 53 40         [ 2] 2927 	ldw	x, #0x5340
                                   2928 ; genCall
      0099E9 CD C2 7A         [ 4] 2929 	call	_ADC_Cmd
                                   2930 ;	User/eric_driver.c: 697: ADC_VrefintCmd(ENABLE);
                                   2931 ; genSend
      0099EC A6 01            [ 1] 2932 	ld	a, #0x01
                                   2933 ; genCall
      0099EE CD C3 0D         [ 4] 2934 	call	_ADC_VrefintCmd
                                   2935 ;	User/eric_driver.c: 700: ADC_ChannelCmd(ADC1, ADC_Channel_Vrefint, ENABLE); /* connected to ADC_Channel_Vrefint */
                                   2936 ; genIPush
      0099F1 4B 01            [ 1] 2937 	push	#0x01
                                   2938 ; genIPush
      0099F3 4B 10            [ 1] 2939 	push	#0x10
      0099F5 4B 00            [ 1] 2940 	push	#0x00
                                   2941 ; genSend
      0099F7 AE 53 40         [ 2] 2942 	ldw	x, #0x5340
                                   2943 ; genCall
      0099FA CD C3 25         [ 4] 2944 	call	_ADC_ChannelCmd
                                   2945 ; genLabel
                                   2946 ; peephole j30 removed unused label 00101$.
                                   2947 ;	User/eric_driver.c: 702: }
                                   2948 ; genEndFunction
      0099FD 81               [ 4] 2949 	ret
                                   2950 ;	Total ADC_Config function size at codegen: 1 bytes.
                                   2951 ;	User/eric_driver.c: 704: void DMA_Config(void)
                                   2952 ; genLabel
                                   2953 ;	-----------------------------------------
                                   2954 ;	 function DMA_Config
                                   2955 ;	-----------------------------------------
                                   2956 ;	Register assignment might be sub-optimal.
                                   2957 ;	Stack space usage: 0 bytes.
      0099FE                       2958 _DMA_Config:
                                   2959 ;	User/eric_driver.c: 707: CLK_PeripheralClockConfig(CLK_Peripheral_DMA1, ENABLE);
                                   2960 ; genIPush
      0099FE 4B 01            [ 1] 2961 	push	#0x01
                                   2962 ; genSend
      009A00 A6 14            [ 1] 2963 	ld	a, #0x14
                                   2964 ; genCall
      009A02 CD C5 89         [ 4] 2965 	call	_CLK_PeripheralClockConfig
                                   2966 ;	User/eric_driver.c: 709: SYSCFG_REMAPDMAChannelConfig(REMAP_DMA1Channel_ADC1ToChannel0);//ADC通道要remap
                                   2967 ; genSend
      009A05 4F               [ 1] 2968 	clr	a
                                   2969 ; genCall
      009A06 CD E0 C7         [ 4] 2970 	call	_SYSCFG_REMAPDMAChannelConfig
                                   2971 ;	User/eric_driver.c: 712: (uint32_t)&dmabuf,
                                   2972 ; genAddrOf
      009A09 AE 04 A0         [ 2] 2973 	ldw	x, #_dmabuf+0
                                   2974 ; genCast
                                   2975 ; genAssign
      009A0C 90 5F            [ 1] 2976 	clrw	y
                                   2977 ;	User/eric_driver.c: 711: DMA_Init(DMA1_Channel0,
                                   2978 ; genIPush
      009A0E 4B 08            [ 1] 2979 	push	#0x08
                                   2980 ; genIPush
      009A10 4B 20            [ 1] 2981 	push	#0x20
                                   2982 ; genIPush
      009A12 4B 20            [ 1] 2983 	push	#0x20
                                   2984 ; genIPush
      009A14 4B 10            [ 1] 2985 	push	#0x10
                                   2986 ; genIPush
      009A16 4B 00            [ 1] 2987 	push	#0x00
                                   2988 ; genIPush
      009A18 4B 0A            [ 1] 2989 	push	#0x0a
                                   2990 ; genIPush
      009A1A 4B 44            [ 1] 2991 	push	#0x44
      009A1C 4B 53            [ 1] 2992 	push	#0x53
                                   2993 ; genIPush
      009A1E 89               [ 2] 2994 	pushw	x
      009A1F 90 89            [ 2] 2995 	pushw	y
                                   2996 ; genSend
      009A21 AE 50 75         [ 2] 2997 	ldw	x, #0x5075
                                   2998 ; genCall
      009A24 CD C7 88         [ 4] 2999 	call	_DMA_Init
                                   3000 ;	User/eric_driver.c: 721: DMA_Cmd(DMA1_Channel0, ENABLE);
                                   3001 ; genSend
      009A27 A6 01            [ 1] 3002 	ld	a, #0x01
                                   3003 ; genSend
      009A29 AE 50 75         [ 2] 3004 	ldw	x, #0x5075
                                   3005 ; genCall
      009A2C CD C7 E8         [ 4] 3006 	call	_DMA_Cmd
                                   3007 ;	User/eric_driver.c: 723: DMA_ITConfig(DMA1_Channel0, DMA_ITx_TC, ENABLE);
                                   3008 ; genIPush
      009A2F 4B 01            [ 1] 3009 	push	#0x01
                                   3010 ; genSend
      009A31 A6 02            [ 1] 3011 	ld	a, #0x02
                                   3012 ; genSend
      009A33 AE 50 75         [ 2] 3013 	ldw	x, #0x5075
                                   3014 ; genCall
      009A36 CD C8 0B         [ 4] 3015 	call	_DMA_ITConfig
                                   3016 ;	User/eric_driver.c: 725: DMA_GlobalCmd(ENABLE);
                                   3017 ; genSend
      009A39 A6 01            [ 1] 3018 	ld	a, #0x01
                                   3019 ; genCall
      009A3B CD C7 D0         [ 4] 3020 	call	_DMA_GlobalCmd
                                   3021 ;	User/eric_driver.c: 726: ADC_DMACmd(ADC1, ENABLE);
                                   3022 ; genSend
      009A3E A6 01            [ 1] 3023 	ld	a, #0x01
                                   3024 ; genSend
      009A40 AE 53 40         [ 2] 3025 	ldw	x, #0x5340
                                   3026 ; genCall
                                   3027 ; genLabel
                                   3028 ; peephole j30 removed unused label 00101$.
                                   3029 ;	User/eric_driver.c: 727: }
                                   3030 ; genEndFunction
      009A43 CC C3 B2         [ 2] 3031 	jp	_ADC_DMACmd
                                   3032 ; peephole 52 removed unreachable ret.
                                   3033 ;	Total DMA_Config function size at codegen: 1 bytes.
                                   3034 	.area CODE
                                   3035 	.area CONST
                                   3036 	.area CONST
      0081A5                       3037 _dindex:
      0081A5 A0                    3038 	.db #0xa0	; 160
      0081A6 64                    3039 	.db #0x64	; 100	'd'
      0081A7 A0                    3040 	.db #0xa0	; 160
      0081A8 6E                    3041 	.db #0x6e	; 110	'n'
      0081A9 A0                    3042 	.db #0xa0	; 160
      0081AA 78                    3043 	.db #0x78	; 120	'x'
      0081AB A0                    3044 	.db #0xa0	; 160
      0081AC 82                    3045 	.db #0x82	; 130
      0081AD A0                    3046 	.db #0xa0	; 160
      0081AE 8C                    3047 	.db #0x8c	; 140
      0081AF A0                    3048 	.db #0xa0	; 160
      0081B0 96                    3049 	.db #0x96	; 150
      0081B1 A0                    3050 	.db #0xa0	; 160
      0081B2 A0                    3051 	.db #0xa0	; 160
      0081B3 A0                    3052 	.db #0xa0	; 160
      0081B4 AA                    3053 	.db #0xaa	; 170
      0081B5 A0                    3054 	.db #0xa0	; 160
      0081B6 B4                    3055 	.db #0xb4	; 180
      0081B7 A0                    3056 	.db #0xa0	; 160
      0081B8 BE                    3057 	.db #0xbe	; 190
      0081B9 A0                    3058 	.db #0xa0	; 160
      0081BA C8                    3059 	.db #0xc8	; 200
      0081BB A0                    3060 	.db #0xa0	; 160
      0081BC D2                    3061 	.db #0xd2	; 210
      0081BD A0                    3062 	.db #0xa0	; 160
      0081BE DC                    3063 	.db #0xdc	; 220
      0081BF A0                    3064 	.db #0xa0	; 160
      0081C0 E6                    3065 	.db #0xe6	; 230
      0081C1 A0                    3066 	.db #0xa0	; 160
      0081C2 F0                    3067 	.db #0xf0	; 240
      0081C3 A2                    3068 	.db #0xa2	; 162
      0081C4 00                    3069 	.db #0x00	; 0
      0081C5 A2                    3070 	.db #0xa2	; 162
      0081C6 0A                    3071 	.db #0x0a	; 10
      0081C7 A2                    3072 	.db #0xa2	; 162
      0081C8 14                    3073 	.db #0x14	; 20
      0081C9 A2                    3074 	.db #0xa2	; 162
      0081CA 1E                    3075 	.db #0x1e	; 30
      0081CB A2                    3076 	.db #0xa2	; 162
      0081CC 28                    3077 	.db #0x28	; 40
      0081CD A2                    3078 	.db #0xa2	; 162
      0081CE 32                    3079 	.db #0x32	; 50	'2'
      0081CF A2                    3080 	.db #0xa2	; 162
      0081D0 3C                    3081 	.db #0x3c	; 60
      0081D1 A2                    3082 	.db #0xa2	; 162
      0081D2 46                    3083 	.db #0x46	; 70	'F'
      0081D3 A2                    3084 	.db #0xa2	; 162
      0081D4 50                    3085 	.db #0x50	; 80	'P'
      0081D5 A2                    3086 	.db #0xa2	; 162
      0081D6 5A                    3087 	.db #0x5a	; 90	'Z'
      0081D7 A2                    3088 	.db #0xa2	; 162
      0081D8 64                    3089 	.db #0x64	; 100	'd'
      0081D9 A2                    3090 	.db #0xa2	; 162
      0081DA 6E                    3091 	.db #0x6e	; 110	'n'
      0081DB A2                    3092 	.db #0xa2	; 162
      0081DC 78                    3093 	.db #0x78	; 120	'x'
      0081DD A2                    3094 	.db #0xa2	; 162
      0081DE 82                    3095 	.db #0x82	; 130
      0081DF A2                    3096 	.db #0xa2	; 162
      0081E0 8C                    3097 	.db #0x8c	; 140
      0081E1 A2                    3098 	.db #0xa2	; 162
      0081E2 96                    3099 	.db #0x96	; 150
      0081E3 A2                    3100 	.db #0xa2	; 162
      0081E4 A0                    3101 	.db #0xa0	; 160
      0081E5 A2                    3102 	.db #0xa2	; 162
      0081E6 AA                    3103 	.db #0xaa	; 170
      0081E7 A2                    3104 	.db #0xa2	; 162
      0081E8 B4                    3105 	.db #0xb4	; 180
      0081E9 A2                    3106 	.db #0xa2	; 162
      0081EA BE                    3107 	.db #0xbe	; 190
      0081EB A2                    3108 	.db #0xa2	; 162
      0081EC C8                    3109 	.db #0xc8	; 200
      0081ED A2                    3110 	.db #0xa2	; 162
      0081EE D2                    3111 	.db #0xd2	; 210
      0081EF A2                    3112 	.db #0xa2	; 162
      0081F0 DC                    3113 	.db #0xdc	; 220
      0081F1 A2                    3114 	.db #0xa2	; 162
      0081F2 E6                    3115 	.db #0xe6	; 230
      0081F3 A2                    3116 	.db #0xa2	; 162
      0081F4 F0                    3117 	.db #0xf0	; 240
      0081F5 A4                    3118 	.db #0xa4	; 164
      0081F6 00                    3119 	.db #0x00	; 0
      0081F7 A4                    3120 	.db #0xa4	; 164
      0081F8 0A                    3121 	.db #0x0a	; 10
      0081F9 A4                    3122 	.db #0xa4	; 164
      0081FA 14                    3123 	.db #0x14	; 20
      0081FB A4                    3124 	.db #0xa4	; 164
      0081FC 1E                    3125 	.db #0x1e	; 30
      0081FD A4                    3126 	.db #0xa4	; 164
      0081FE 28                    3127 	.db #0x28	; 40
      0081FF A4                    3128 	.db #0xa4	; 164
      008200 32                    3129 	.db #0x32	; 50	'2'
      008201 A4                    3130 	.db #0xa4	; 164
      008202 3C                    3131 	.db #0x3c	; 60
      008203 A4                    3132 	.db #0xa4	; 164
      008204 46                    3133 	.db #0x46	; 70	'F'
      008205 A4                    3134 	.db #0xa4	; 164
      008206 50                    3135 	.db #0x50	; 80	'P'
      008207 A4                    3136 	.db #0xa4	; 164
      008208 5A                    3137 	.db #0x5a	; 90	'Z'
      008209 A4                    3138 	.db #0xa4	; 164
      00820A 64                    3139 	.db #0x64	; 100	'd'
      00820B A4                    3140 	.db #0xa4	; 164
      00820C 6E                    3141 	.db #0x6e	; 110	'n'
      00820D A4                    3142 	.db #0xa4	; 164
      00820E 78                    3143 	.db #0x78	; 120	'x'
      00820F A4                    3144 	.db #0xa4	; 164
      008210 82                    3145 	.db #0x82	; 130
      008211 A4                    3146 	.db #0xa4	; 164
      008212 8C                    3147 	.db #0x8c	; 140
      008213 A4                    3148 	.db #0xa4	; 164
      008214 96                    3149 	.db #0x96	; 150
      008215 A4                    3150 	.db #0xa4	; 164
      008216 A0                    3151 	.db #0xa0	; 160
      008217 A4                    3152 	.db #0xa4	; 164
      008218 AA                    3153 	.db #0xaa	; 170
      008219 A4                    3154 	.db #0xa4	; 164
      00821A B4                    3155 	.db #0xb4	; 180
      00821B A4                    3156 	.db #0xa4	; 164
      00821C BE                    3157 	.db #0xbe	; 190
      00821D A4                    3158 	.db #0xa4	; 164
      00821E C8                    3159 	.db #0xc8	; 200
      00821F A4                    3160 	.db #0xa4	; 164
      008220 D2                    3161 	.db #0xd2	; 210
      008221 A4                    3162 	.db #0xa4	; 164
      008222 DC                    3163 	.db #0xdc	; 220
      008223 A4                    3164 	.db #0xa4	; 164
      008224 E6                    3165 	.db #0xe6	; 230
      008225 A4                    3166 	.db #0xa4	; 164
      008226 F0                    3167 	.db #0xf0	; 240
      008227 A6                    3168 	.db #0xa6	; 166
      008228 00                    3169 	.db #0x00	; 0
      008229 A6                    3170 	.db #0xa6	; 166
      00822A 0A                    3171 	.db #0x0a	; 10
      00822B A6                    3172 	.db #0xa6	; 166
      00822C 14                    3173 	.db #0x14	; 20
      00822D A6                    3174 	.db #0xa6	; 166
      00822E 1E                    3175 	.db #0x1e	; 30
      00822F A6                    3176 	.db #0xa6	; 166
      008230 28                    3177 	.db #0x28	; 40
      008231 A6                    3178 	.db #0xa6	; 166
      008232 32                    3179 	.db #0x32	; 50	'2'
      008233 A6                    3180 	.db #0xa6	; 166
      008234 3C                    3181 	.db #0x3c	; 60
      008235 A6                    3182 	.db #0xa6	; 166
      008236 46                    3183 	.db #0x46	; 70	'F'
      008237 A6                    3184 	.db #0xa6	; 166
      008238 50                    3185 	.db #0x50	; 80	'P'
      008239 A6                    3186 	.db #0xa6	; 166
      00823A 5A                    3187 	.db #0x5a	; 90	'Z'
      00823B A6                    3188 	.db #0xa6	; 166
      00823C 64                    3189 	.db #0x64	; 100	'd'
      00823D A6                    3190 	.db #0xa6	; 166
      00823E 6E                    3191 	.db #0x6e	; 110	'n'
      00823F A6                    3192 	.db #0xa6	; 166
      008240 78                    3193 	.db #0x78	; 120	'x'
      008241 A6                    3194 	.db #0xa6	; 166
      008242 82                    3195 	.db #0x82	; 130
      008243 A6                    3196 	.db #0xa6	; 166
      008244 8C                    3197 	.db #0x8c	; 140
      008245 A6                    3198 	.db #0xa6	; 166
      008246 96                    3199 	.db #0x96	; 150
      008247 A6                    3200 	.db #0xa6	; 166
      008248 A0                    3201 	.db #0xa0	; 160
      008249 A6                    3202 	.db #0xa6	; 166
      00824A AA                    3203 	.db #0xaa	; 170
      00824B A6                    3204 	.db #0xa6	; 166
      00824C B4                    3205 	.db #0xb4	; 180
      00824D A6                    3206 	.db #0xa6	; 166
      00824E BE                    3207 	.db #0xbe	; 190
      00824F A6                    3208 	.db #0xa6	; 166
      008250 C8                    3209 	.db #0xc8	; 200
      008251 A6                    3210 	.db #0xa6	; 166
      008252 D2                    3211 	.db #0xd2	; 210
      008253 A6                    3212 	.db #0xa6	; 166
      008254 DC                    3213 	.db #0xdc	; 220
      008255 A6                    3214 	.db #0xa6	; 166
      008256 E6                    3215 	.db #0xe6	; 230
      008257 A6                    3216 	.db #0xa6	; 166
      008258 F0                    3217 	.db #0xf0	; 240
                                   3218 	.area CODE
                                   3219 	.area INITIALIZER
      00901F                       3220 __xinit__key:
      00901F 00                    3221 	.db #0x00	; 0
      009020 00                    3222 	.db #0x00	; 0
      009021 00 00                 3223 	.dw #0x0000
      009023                       3224 __xinit__data_index:
      009023 00                    3225 	.db #0x00	; 0
      009024 00                    3226 	.db #0x00	; 0
      009025 00                    3227 	.db #0x00	; 0
      009026                       3228 __xinit__dmabuf:
      009026 00 00                 3229 	.dw #0x0000
      009028 00                    3230 	.db 0x00
      009029 00                    3231 	.db 0x00
      00902A 00                    3232 	.db 0x00
      00902B 00                    3233 	.db 0x00
      00902C 00                    3234 	.db 0x00
      00902D 00                    3235 	.db 0x00
      00902E 00                    3236 	.db 0x00
      00902F 00                    3237 	.db 0x00
      009030 00                    3238 	.db 0x00
      009031 00                    3239 	.db 0x00
      009032 00                    3240 	.db 0x00
      009033 00                    3241 	.db 0x00
      009034 00                    3242 	.db 0x00
      009035 00                    3243 	.db 0x00
      009036 00                    3244 	.db 0x00
      009037 00                    3245 	.db 0x00
      009038 00                    3246 	.db 0x00
      009039 00                    3247 	.db 0x00
      00903A                       3248 __xinit__Verfin:
      00903A 00 00 00 00           3249 	.byte #0x00, #0x00, #0x00, #0x00	; 0
                                   3250 	.area CABS (ABS)
