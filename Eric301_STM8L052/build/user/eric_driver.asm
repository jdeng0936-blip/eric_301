;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module eric_driver
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _dindex
	.globl _Read_Key
	.globl _Check_U1buf
	.globl _Uart1_Recv
	.globl _SendMsg
	.globl _USART_ClearITPendingBit
	.globl _USART_GetFlagStatus
	.globl _USART_ITConfig
	.globl _USART_SendData8
	.globl _USART_Cmd
	.globl _USART_Init
	.globl _USART_DeInit
	.globl _TIM4_ITConfig
	.globl _TIM4_Cmd
	.globl _TIM4_ARRPreloadConfig
	.globl _TIM4_TimeBaseInit
	.globl _TIM2_ITConfig
	.globl _TIM2_Cmd
	.globl _TIM2_ARRPreloadConfig
	.globl _TIM2_TimeBaseInit
	.globl _SYSCFG_REMAPDMAChannelConfig
	.globl _RTC_GetDate
	.globl _RTC_DateStructInit
	.globl _RTC_SetDate
	.globl _RTC_GetTime
	.globl _RTC_TimeStructInit
	.globl _RTC_SetTime
	.globl _RTC_WaitForSynchro
	.globl _RTC_Init
	.globl _I2C_GetFlagStatus
	.globl _I2C_CheckEvent
	.globl _I2C_ReceiveData
	.globl _I2C_SendData
	.globl _I2C_Send7bitAddress
	.globl _I2C_AcknowledgeConfig
	.globl _I2C_GenerateSTOP
	.globl _I2C_GenerateSTART
	.globl _I2C_Cmd
	.globl _I2C_Init
	.globl _I2C_DeInit
	.globl _GPIO_ReadInputDataBit
	.globl _GPIO_Init
	.globl _FLASH_ReadByte
	.globl _FLASH_ProgramByte
	.globl _FLASH_Lock
	.globl _FLASH_Unlock
	.globl _DMA_ITConfig
	.globl _DMA_Cmd
	.globl _DMA_GlobalCmd
	.globl _DMA_Init
	.globl _CLK_GetFlagStatus
	.globl _CLK_PeripheralClockConfig
	.globl _CLK_RTCClockConfig
	.globl _CLK_SYSCLKSourceSwitchCmd
	.globl _CLK_SYSCLKDivConfig
	.globl _CLK_GetSYSCLKSource
	.globl _CLK_SYSCLKSourceConfig
	.globl _CLK_LSEConfig
	.globl _ADC_DMACmd
	.globl _ADC_SamplingTimeConfig
	.globl _ADC_ChannelCmd
	.globl _ADC_VrefintCmd
	.globl _ADC_Cmd
	.globl _ADC_Init
	.globl _Verfin
	.globl _dmabuf
	.globl _data_index
	.globl _key
	.globl _u1buf
	.globl _Delay
	.globl _CLK_Config
	.globl _TIM2_Init
	.globl _TIM4_Init
	.globl _Uart1_Init
	.globl _Uart1_Send
	.globl _I2C_WriteByte
	.globl _I2C_ReadByte
	.globl _Save_Stat
	.globl _Load_Stat
	.globl _IIC_Init
	.globl _Save_Data
	.globl _Load_Data
	.globl _init_rtc
	.globl _rtc_set_datetime
	.globl _rtc_get_datetime
	.globl _Scan_Key
	.globl _ADC_Config
	.globl _DMA_Config
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_u1buf::
	.ds 262
_Check_U1buf_r1_10000_712:
	.ds 2
_Check_U1buf_r2_10000_712:
	.ds 2
_init_rtc_tag_10000_765:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_key::
	.ds 4
_data_index::
	.ds 3
_dmabuf::
	.ds 20
_Verfin::
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;	User/eric_driver.c: 163: static uint16_t r1 = 0, r2 = 0;
; genAssign
	clrw	x
	ldw	_Check_U1buf_r1_10000_712+0, x
; genAssign
	clrw	x
	ldw	_Check_U1buf_r2_10000_712+0, x
;	User/eric_driver.c: 443: static uint8_t tag = 0;
; genAssign
	clr	_init_rtc_tag_10000_765+0
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	User/eric_driver.c: 43: void Delay(__IO uint16_t nCount)
; genLabel
;	-----------------------------------------
;	 function Delay
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_Delay:
	pushw	x
; genReceive
	ldw	(0x01, sp), x
;	User/eric_driver.c: 46: while (nCount != 0)
; genLabel
00101$:
; genIfx
	ldw	x, (0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00104$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00120$.
;	User/eric_driver.c: 48: nCount--;
; genAssign
	ldw	x, (0x01, sp)
; genMinus
	decw	x
; genAssign
	ldw	(0x01, sp), x
; genGoto
	jra	00101$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00104$:
;	User/eric_driver.c: 50: }
; genEndFunction
	popw	x
	ret
;	Total Delay function size at codegen: 2 bytes.
;	User/eric_driver.c: 56: void CLK_Config(void)
; genLabel
;	-----------------------------------------
;	 function CLK_Config
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_Config:
;	User/eric_driver.c: 69: CLK_SYSCLKSourceSwitchCmd(ENABLE);//使能时钟切换
; genSend
	ld	a, #0x01
; genCall
	call	_CLK_SYSCLKSourceSwitchCmd
;	User/eric_driver.c: 70: CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_HSI);//选择内部高速时钟作为时钟源
; genSend
	ld	a, #0x01
; genCall
	call	_CLK_SYSCLKSourceConfig
;	User/eric_driver.c: 72: CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_1);//设置系统时钟分频
; genSend
	clr	a
; genCall
	call	_CLK_SYSCLKDivConfig
;	User/eric_driver.c: 73: while (CLK_GetSYSCLKSource() != CLK_SYSCLKSource_HSI)//等待时钟稳定
; genLabel
00101$:
; genCall
	call	_CLK_GetSYSCLKSource
; genCmpEQorNE
	dec	a
	jrne	00101$
; peephole j22 jumped to 00101$ directly instead of via 00114$.
	ret
; peephole j2e replaced jump by return.
; peephole j30 removed unused label 00114$.
	jra	00101$
; peephole j5 changed absolute to relative unconditional jump.
; peephole j30 removed unused label 00115$.
; skipping generated iCode
; genLabel
; peephole j30 removed unused label 00104$.
;	User/eric_driver.c: 77: }
; genEndFunction
	ret
;	Total CLK_Config function size at codegen: 1 bytes.
;	User/eric_driver.c: 85: void TIM2_Init(void)
; genLabel
;	-----------------------------------------
;	 function TIM2_Init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_Init:
;	User/eric_driver.c: 87: CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);          	    //使能定时器2时钟
; genIPush
	push	#0x01
; genSend
	clr	a
; genCall
	call	_CLK_PeripheralClockConfig
;	User/eric_driver.c: 88: TIM2_TimeBaseInit(TIM2_Prescaler_64, TIM2_CounterMode_Up,
; genIPush
	push	#0x18
	push	#0x00
; genIPush
	push	#0x00
; genSend
	ld	a, #0x06
; genCall
	call	_TIM2_TimeBaseInit
;	User/eric_driver.c: 91: TIM2_ITConfig(TIM2_IT_Update, ENABLE);      //使能向上计数溢出中断
; genIPush
	push	#0x01
; genSend
	ld	a, #0x01
; genCall
	call	_TIM2_ITConfig
;	User/eric_driver.c: 92: TIM2_ARRPreloadConfig(ENABLE);  //使能定时器2自动重载功能
; genSend
	ld	a, #0x01
; genCall
	call	_TIM2_ARRPreloadConfig
;	User/eric_driver.c: 93: TIM2_Cmd(ENABLE);               //启动定时器2开始计数
; genSend
	ld	a, #0x01
; genCall
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_driver.c: 94: }
; genEndFunction
	jp	_TIM2_Cmd
; peephole 52 removed unreachable ret.
;	Total TIM2_Init function size at codegen: 1 bytes.
;	User/eric_driver.c: 97: void TIM4_Init(void)
; genLabel
;	-----------------------------------------
;	 function TIM4_Init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_Init:
;	User/eric_driver.c: 99: CLK_PeripheralClockConfig(CLK_Peripheral_TIM4, ENABLE); //使能定时器2时钟
; genIPush
	push	#0x01
; genSend
	ld	a, #0x02
; genCall
	call	_CLK_PeripheralClockConfig
;	User/eric_driver.c: 104: TIM4_TimeBaseInit(TIM4_Prescaler_16384, 244);   		//250ms, 16M
; genIPush
	push	#0xf4
; genSend
	ld	a, #0x0e
; genCall
	call	_TIM4_TimeBaseInit
;	User/eric_driver.c: 105: TIM4_ITConfig(TIM4_IT_Update, ENABLE);     	//使能向上计数溢出中断
; genIPush
	push	#0x01
; genSend
	ld	a, #0x01
; genCall
	call	_TIM4_ITConfig
;	User/eric_driver.c: 106: TIM4_ARRPreloadConfig(ENABLE);  				//使能定时器2自动重载功能
; genSend
	ld	a, #0x01
; genCall
	call	_TIM4_ARRPreloadConfig
;	User/eric_driver.c: 107: TIM4_Cmd(ENABLE);               				//启动定时器2开始计数
; genSend
	ld	a, #0x01
; genCall
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_driver.c: 108: }
; genEndFunction
	jp	_TIM4_Cmd
; peephole 52 removed unreachable ret.
;	Total TIM4_Init function size at codegen: 1 bytes.
;	User/eric_driver.c: 110: void Uart1_Init(void)
; genLabel
;	-----------------------------------------
;	 function Uart1_Init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_Uart1_Init:
;	User/eric_driver.c: 115: CLK_PeripheralClockConfig(CLK_Peripheral_USART1, ENABLE);
; genIPush
	push	#0x01
; genSend
	ld	a, #0x05
; genCall
	call	_CLK_PeripheralClockConfig
;	User/eric_driver.c: 116: GPIO_Init(GPIOC, GPIO_Pin_3, GPIO_Mode_Out_PP_High_Fast);//TXD
; genIPush
	push	#0xf0
; genSend
	ld	a, #0x08
; genSend
	ldw	x, #0x500a
; genCall
	call	_GPIO_Init
;	User/eric_driver.c: 117: GPIO_Init(GPIOC, GPIO_Pin_2, GPIO_Mode_In_PU_No_IT);//RXD
; genIPush
	push	#0x40
; genSend
	ld	a, #0x04
; genSend
	ldw	x, #0x500a
; genCall
	call	_GPIO_Init
;	User/eric_driver.c: 118: USART_DeInit(USART1);       //复位UART1
; genSend
	ldw	x, #0x5230
; genCall
	call	_USART_DeInit
;	User/eric_driver.c: 128: USART_Init(USART1, 9600, USART_WordLength_8b, USART_StopBits_1, USART_Parity_No, (USART_Mode_Tx | USART_Mode_Rx));
; genIPush
	push	#0x0c
; genIPush
	push	#0x00
; genIPush
	push	#0x00
; genIPush
	push	#0x00
; genIPush
	push	#0x80
	push	#0x25
	clrw	x
	pushw	x
; genSend
	ldw	x, #0x5230
; genCall
	call	_USART_Init
;	User/eric_driver.c: 129: USART_ClearITPendingBit(USART1, USART_IT_RXNE);
; genIPush
	push	#0x55
	push	#0x02
; genSend
	ldw	x, #0x5230
; genCall
	call	_USART_ClearITPendingBit
;	User/eric_driver.c: 130: USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);//开启接收中断
; genIPush
	push	#0x01
; genIPush
	push	#0x55
	push	#0x02
; genSend
	ldw	x, #0x5230
; genCall
	call	_USART_ITConfig
;	User/eric_driver.c: 131: USART_Cmd(USART1, ENABLE);  //使能UART2
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #0x5230
; genCall
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_driver.c: 132: }
; genEndFunction
	jp	_USART_Cmd
; peephole 52 removed unreachable ret.
;	Total Uart1_Init function size at codegen: 1 bytes.
;	User/eric_driver.c: 135: void Uart1_Send(uint8_t *data, uint16_t len)
; genLabel
;	-----------------------------------------
;	 function Uart1_Send
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_Uart1_Send:
	pushw	x
; genReceive
	ldw	(0x01, sp), x
;	User/eric_driver.c: 139: for (i = 0; i < len; i++)
; genAssign
	clrw	x
; genLabel
00106$:
; genCmp
; genCmpTnz
	cpw	x, (0x05, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrnc	00108$
; peephole j6 removed jra by using inverse jump logic
; peephole j30 removed unused label 00139$.
; skipping generated iCode
;	User/eric_driver.c: 141: USART_SendData8(USART1, (uint8_t)(*(data + i)));
; genPlus
	ldw	y, x
	addw	y, (0x01, sp)
; genPointerGet
	ld	a, (y)
; genSend
	pushw	x
; genSend
	ldw	x, #0x5230
; genCall
	call	_USART_SendData8
	popw	x
;	User/eric_driver.c: 143: while (USART_GetFlagStatus(USART1, USART_FLAG_TC) == RESET);
; genLabel
00101$:
; genIPush
	pushw	x
	push	#0x40
	push	#0x00
; genSend
	ldw	x, #0x5230
; genCall
	call	_USART_GetFlagStatus
	popw	x
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00101$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00140$.
;	User/eric_driver.c: 139: for (i = 0; i < len; i++)
; genPlus
	incw	x
; genGoto
	jra	00106$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	User/eric_driver.c: 145: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
;	Total Uart1_Send function size at codegen: 5 bytes.
;	User/eric_driver.c: 147: uint16_t Uart1_Recv(uint8_t *buf)
; genLabel
;	-----------------------------------------
;	 function Uart1_Recv
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 8 bytes.
_Uart1_Recv:
	sub	sp, #8
; genReceive
	ldw	(0x05, sp), x
;	User/eric_driver.c: 151: while (u1buf.r != u1buf.w)
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genAssign
	clrw	x
	ldw	(0x07, sp), x
; genLabel
00101$:
; genCast
; genAssign
	ldw	x, #(_u1buf+0)
; genPointerGet
	ldw	(0x01, sp), x
; peephole 4w removed redundant load from (0x01, sp) into x.
	ldw	x, (x)
	ldw	(0x03, sp), x
; genPointerGet
	ldw	x, _u1buf+2
; genCmpEQorNE
	cpw	x, (0x03, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00103$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00122$.
; skipping generated iCode
;	User/eric_driver.c: 153: buf[i] = u1buf.recbuf[u1buf.r];
; genPlus
	ldw	y, (0x05, sp)
	addw	y, (0x07, sp)
; skipping iCode since result will be rematerialized
; genPlus
	ldw	x, (0x03, sp)
; genPointerGet
; peephole 10b moved addition of offset into storage instruction
	ld	a, (_u1buf+6, x)
; genPointerSet
	ld	(y), a
;	User/eric_driver.c: 154: u1buf.r = (u1buf.r + 1) % UBUFLEN;
; genPointerGet
	ldw	x, (0x01, sp)
	ldw	x, (x)
; genCast
; genAssign
; genPlus
	incw	x
; peephole 0 removed dead load into a from xh.
; genAnd
	clr	a
; genCast
; genAssign
	ld	xh, a
; genPointerSet
	ldw	y, (0x01, sp)
	ldw	(y), x
;	User/eric_driver.c: 155: i++;
; genPlus
	ldw	x, (0x07, sp)
	incw	x
	ldw	(0x07, sp), x
; peephole j30 removed unused label 00124$.
; genGoto
	jra	00101$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00103$:
;	User/eric_driver.c: 157: u1buf.revn = 0;
; skipping iCode since result will be rematerialized
; genPointerSet
	ldw	x, #(_u1buf+4)
	clr	(0x1, x)
	clr	(x)
;	User/eric_driver.c: 158: return i;
; genReturn
	ldw	x, (0x07, sp)
; genLabel
; peephole j30 removed unused label 00104$.
;	User/eric_driver.c: 159: }
; genEndFunction
	addw	sp, #8
	ret
;	Total Uart1_Recv function size at codegen: 3 bytes.
;	User/eric_driver.c: 161: uint16_t Check_U1buf(void)
; genLabel
;	-----------------------------------------
;	 function Check_U1buf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_Check_U1buf:
;	User/eric_driver.c: 165: r2 = r1;
; genAssign
	ldw	x, _Check_U1buf_r1_10000_712+0
; genAssign
	ldw	_Check_U1buf_r2_10000_712+0, x
;	User/eric_driver.c: 166: r1 = u1buf.revn;
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, _u1buf+4
; genAssign
	ldw	_Check_U1buf_r1_10000_712+0, x
;	User/eric_driver.c: 167: if ((r1 == r2) && (r1 > 0))
; genCmpEQorNE
	ldw	x, _Check_U1buf_r2_10000_712+0
	cpw	x, _Check_U1buf_r1_10000_712+0
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00122$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00123$.
; skipping generated iCode
; genIfx
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00124$.
;	User/eric_driver.c: 168: return r1;
; genReturn
	ldw	x, _Check_U1buf_r1_10000_712+0
	jreq	00102$
; peephole 50eq removed redundant load of x from _Check_U1buf_r1_10000_712+0.
	ret
; peephole j2e replaced jump by return.
; genLabel
00102$:
;	User/eric_driver.c: 170: return 0;
; genReturn
	clrw	x
; genLabel
; peephole j30 removed unused label 00105$.
;	User/eric_driver.c: 171: }
; genEndFunction
	ret
;	Total Check_U1buf function size at codegen: 1 bytes.
;	User/eric_driver.c: 183: void I2C_WriteByte(uint8_t paddr, uint8_t addr, uint8_t data)
; genLabel
;	-----------------------------------------
;	 function I2C_WriteByte
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_I2C_WriteByte:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	User/eric_driver.c: 187: while (I2C_GetFlagStatus(I2C1, I2C_FLAG_BUSY)) //等待空闲
; genAssign
	ldw	x, #0x07d0
; genLabel
00103$:
; genIPush
	pushw	x
	push	#0x02
	push	#0x03
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_GetFlagStatus
	ld	(0x03, sp), a
	popw	x
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00233$.
;	User/eric_driver.c: 189: if (--n == 0)
; genMinus
; genIfx
	decw	x
; peephole 24b removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00103$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00234$.
;	User/eric_driver.c: 190: return;
; genReturn
	jp	00126$
; genLabel
00105$:
;	User/eric_driver.c: 193: I2C_GenerateSTART(I2C1, ENABLE);//开启I2C1
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_GenerateSTART
;	User/eric_driver.c: 195: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT)) /*EV5,主模式*/
; genAssign
	ldw	x, #0x07d0
; genLabel
00108$:
; genIPush
	pushw	x
	push	#0x01
	push	#0x03
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_CheckEvent
	popw	x
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00110$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00235$.
;	User/eric_driver.c: 197: if (--n == 0)
; genMinus
; genIfx
	decw	x
; peephole 24b removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00108$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00236$.
;	User/eric_driver.c: 198: return;
; genReturn
	jra	00126$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00110$:
;	User/eric_driver.c: 201: I2C_Send7bitAddress(I2C1, paddr, I2C_Direction_Transmitter);//器件地址 -- 默认0xa0
; genIPush
	push	#0x00
; genSend
	ld	a, (0x03, sp)
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_Send7bitAddress
;	User/eric_driver.c: 203: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED))
; genAssign
	ldw	x, #0x07d0
; genLabel
00113$:
; genIPush
	pushw	x
	push	#0x82
	push	#0x07
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_CheckEvent
	popw	x
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00115$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00237$.
;	User/eric_driver.c: 205: if (--n == 0)
; genMinus
; genIfx
	decw	x
; peephole 24b removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00113$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00238$.
;	User/eric_driver.c: 206: return;
; genReturn
	jra	00126$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00115$:
;	User/eric_driver.c: 209: I2C_SendData(I2C1, addr);//寄存器地址
; genSend
	ld	a, (0x05, sp)
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_SendData
;	User/eric_driver.c: 211: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED))
; genAssign
	ldw	x, #0x07d0
; genLabel
00118$:
; genIPush
	pushw	x
	push	#0x84
	push	#0x07
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_CheckEvent
	popw	x
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00120$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00239$.
;	User/eric_driver.c: 213: if (--n == 0)
; genMinus
; genIfx
	decw	x
; peephole 24b removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00118$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00240$.
;	User/eric_driver.c: 214: return;
; genReturn
	jra	00126$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00120$:
;	User/eric_driver.c: 217: I2C_SendData(I2C1, data);//发送数据
; genSend
	ld	a, (0x06, sp)
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_SendData
;	User/eric_driver.c: 219: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED))
; genAssign
	ldw	x, #0x07d0
; genLabel
00123$:
; genIPush
	pushw	x
	push	#0x84
	push	#0x07
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_CheckEvent
	popw	x
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00125$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00241$.
;	User/eric_driver.c: 221: if (--n == 0)
; genMinus
; genIfx
	decw	x
; peephole 24b removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00123$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00242$.
;	User/eric_driver.c: 222: return;
; genReturn
	jra	00126$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00125$:
;	User/eric_driver.c: 224: I2C_AcknowledgeConfig(I2C1, ENABLE);
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_AcknowledgeConfig
;	User/eric_driver.c: 226: I2C_GenerateSTOP(I2C1, ENABLE);//停止位，关闭I2C1总线
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_GenerateSTOP
; genLabel
00126$:
;	User/eric_driver.c: 227: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
;	Total I2C_WriteByte function size at codegen: 5 bytes.
;	User/eric_driver.c: 238: uint8_t I2C_ReadByte(uint8_t paddr, uint8_t addr)
; genLabel
;	-----------------------------------------
;	 function I2C_ReadByte
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_I2C_ReadByte:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	User/eric_driver.c: 243: while (I2C_GetFlagStatus(I2C1, I2C_FLAG_BUSY))
; genAssign
	ldw	x, #0x07d0
; genLabel
00103$:
; genIPush
	pushw	x
	push	#0x02
	push	#0x03
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_GetFlagStatus
	ld	(0x03, sp), a
	popw	x
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00285$.
;	User/eric_driver.c: 245: if (--n == 0)
; genMinus
; genIfx
	decw	x
; peephole 24b removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00103$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00286$.
;	User/eric_driver.c: 246: return 0;
; genReturn
	clr	a
	jp	00136$
; genLabel
00105$:
;	User/eric_driver.c: 249: I2C_GenerateSTART(I2C1, ENABLE);//开启I2C1
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_GenerateSTART
;	User/eric_driver.c: 251: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT)) /*EV5,主模式*/
; genAssign
	ldw	x, #0x07d0
; genLabel
00108$:
; genIPush
	pushw	x
	push	#0x01
	push	#0x03
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_CheckEvent
	popw	x
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00110$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00287$.
;	User/eric_driver.c: 253: if (--n == 0)
; genMinus
; genIfx
	decw	x
; peephole 24b removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00108$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00288$.
;	User/eric_driver.c: 254: return 0;
; genReturn
	clr	a
	jp	00136$
; genLabel
00110$:
;	User/eric_driver.c: 257: I2C_Send7bitAddress(I2C1, paddr, I2C_Direction_Transmitter);//器件地址 -- 默认0xA0
; genIPush
	push	#0x00
; genSend
	ld	a, (0x03, sp)
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_Send7bitAddress
;	User/eric_driver.c: 259: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED))
; genAssign
	ldw	x, #0x07d0
; genLabel
00113$:
; genIPush
	pushw	x
	push	#0x02
	push	#0x03
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_CheckEvent
	popw	x
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00115$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00289$.
;	User/eric_driver.c: 261: if (--n == 0)
; genMinus
; genIfx
	decw	x
; peephole 24b removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00113$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00290$.
;	User/eric_driver.c: 262: return 0;
; genReturn
	clr	a
	jp	00136$
; genLabel
00115$:
;	User/eric_driver.c: 265: I2C_SendData(I2C1, addr);//寄存器地址
; genSend
	ld	a, (0x05, sp)
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_SendData
;	User/eric_driver.c: 267: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED))
; genAssign
	ldw	x, #0x07d0
; genLabel
00118$:
; genIPush
	pushw	x
	push	#0x84
	push	#0x07
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_CheckEvent
	popw	x
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00120$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00291$.
;	User/eric_driver.c: 269: if (--n == 0)
; genMinus
; genIfx
	decw	x
; peephole 24b removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00118$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00292$.
;	User/eric_driver.c: 270: return 0;
; genReturn
	clr	a
	jra	00136$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00120$:
;	User/eric_driver.c: 275: I2C_GenerateSTART(I2C1, ENABLE);//开启I2C1
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_GenerateSTART
;	User/eric_driver.c: 277: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT)) /*EV5,主模式*/
; genAssign
	ldw	x, #0x07d0
; genLabel
00123$:
; genIPush
	pushw	x
	push	#0x01
	push	#0x03
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_CheckEvent
	popw	x
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00125$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00293$.
;	User/eric_driver.c: 279: if (--n == 0)
; genMinus
; genIfx
	decw	x
; peephole 24b removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00123$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00294$.
;	User/eric_driver.c: 280: return 0;
; genReturn
	clr	a
	jra	00136$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00125$:
;	User/eric_driver.c: 283: I2C_Send7bitAddress(I2C1, paddr, I2C_Direction_Receiver);//器件地址 -- 默认0xA0
; genIPush
	push	#0x01
; genSend
	ld	a, (0x03, sp)
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_Send7bitAddress
;	User/eric_driver.c: 285: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED))
; genAssign
	ldw	x, #0x07d0
; genLabel
00128$:
; genIPush
	pushw	x
	push	#0x02
	push	#0x03
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_CheckEvent
	popw	x
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00157$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00295$.
;	User/eric_driver.c: 287: if (--n == 0)
; genMinus
; genIfx
	decw	x
; peephole 24b removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00128$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00296$.
;	User/eric_driver.c: 288: return 0;
; genReturn
	clr	a
	jra	00136$
; peephole j5 changed absolute to relative unconditional jump.
;	User/eric_driver.c: 292: while (!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_RECEIVED))
; genLabel
00157$:
; genAssign
	ldw	x, #0x07d0
; genLabel
00133$:
; genIPush
	pushw	x
	push	#0x40
	push	#0x03
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_CheckEvent
	popw	x
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00135$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00297$.
;	User/eric_driver.c: 294: if (--n == 0)
; genMinus
; genIfx
	decw	x
; peephole 24b removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00133$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00298$.
;	User/eric_driver.c: 295: return 0;
; genReturn
	clr	a
	jra	00136$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00135$:
;	User/eric_driver.c: 298: i = I2C_ReceiveData(I2C1); //读取数据
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_ReceiveData
	ld	(0x01, sp), a
;	User/eric_driver.c: 300: I2C_AcknowledgeConfig(I2C1, DISABLE);
; genSend
	clr	a
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_AcknowledgeConfig
;	User/eric_driver.c: 302: I2C_GenerateSTOP(I2C1, ENABLE);//关闭I2C1总线
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_GenerateSTOP
;	User/eric_driver.c: 305: return i;
; genReturn
	ld	a, (0x01, sp)
; genLabel
00136$:
;	User/eric_driver.c: 307: }
; genEndFunction
	popw	x
	popw	x
	addw	sp, #1
	jp	(x)
;	Total I2C_ReadByte function size at codegen: 5 bytes.
;	User/eric_driver.c: 310: void Save_Stat(uint8_t *p)//保存统计数据
; genLabel
;	-----------------------------------------
;	 function Save_Stat
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_Save_Stat:
	sub	sp, #3
; genReceive
	ldw	(0x01, sp), x
;	User/eric_driver.c: 314: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_driver.c: 315: for (i = 0; i < 70; i++)
; genAssign
	clr	(0x03, sp)
; genLabel
00102$:
;	User/eric_driver.c: 317: I2C_WriteByte(0xa0, i, *(p + i));
; genPlus
	clrw	x
	ld	a, (0x03, sp)
	ld	xl, a
	addw	x, (0x01, sp)
; genPointerGet
	ld	a, (x)
; genIPush
	push	a
; genIPush
	ld	a, (0x04, sp)
	push	a
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_WriteByte
;	User/eric_driver.c: 318: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_driver.c: 315: for (i = 0; i < 70; i++)
; genPlus
	inc	(0x03, sp)
; genCmp
; genCmpTnz
	ld	a, (0x03, sp)
	cp	a, #0x46
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00102$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00114$.
; skipping generated iCode
; genLabel
; peephole j30 removed unused label 00104$.
;	User/eric_driver.c: 320: }
; genEndFunction
	addw	sp, #3
	ret
;	Total Save_Stat function size at codegen: 3 bytes.
;	User/eric_driver.c: 322: void Load_Stat(uint8_t *p)//读取统计数据
; genLabel
;	-----------------------------------------
;	 function Load_Stat
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_Load_Stat:
	sub	sp, #3
; genReceive
	ldw	(0x01, sp), x
;	User/eric_driver.c: 326: for (i = 0; i < 70; i++)
; genAssign
	clr	(0x03, sp)
; genLabel
00102$:
;	User/eric_driver.c: 328: *(p + i) = I2C_ReadByte(0xa0, i);
; genPlus
	clrw	x
	ld	a, (0x03, sp)
	ld	xl, a
	addw	x, (0x01, sp)
; genIPush
	pushw	x
	ld	a, (0x05, sp)
	push	a
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_ReadByte
	popw	x
; genPointerSet
	ld	(x), a
;	User/eric_driver.c: 329: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_driver.c: 326: for (i = 0; i < 70; i++)
; genPlus
	inc	(0x03, sp)
; genCmp
; genCmpTnz
	ld	a, (0x03, sp)
	cp	a, #0x46
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00102$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00114$.
; skipping generated iCode
; genLabel
; peephole j30 removed unused label 00104$.
;	User/eric_driver.c: 331: }
; genEndFunction
	addw	sp, #3
	ret
;	Total Load_Stat function size at codegen: 3 bytes.
;	User/eric_driver.c: 333: void IIC_Init(void)//当A2为底电平时，4页的设备地址(页地址，查找页)分别为a0H，a2H，a4H，a6H
; genLabel
;	-----------------------------------------
;	 function IIC_Init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_IIC_Init:
;	User/eric_driver.c: 335: CLK_PeripheralClockConfig(CLK_Peripheral_I2C1, ENABLE);
; genIPush
	push	#0x01
; genSend
	ld	a, #0x03
; genCall
	call	_CLK_PeripheralClockConfig
;	User/eric_driver.c: 336: I2C_DeInit(I2C1);
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_DeInit
;	User/eric_driver.c: 337: I2C_Init(I2C1, I2C_MAX_STANDARD_FREQ, 0x30, I2C_Mode_I2C, I2C_DutyCycle_2, I2C_Ack_Enable,
; genIPush
	push	#0x00
; genIPush
	push	#0x04
; genIPush
	push	#0x00
; genIPush
	push	#0x00
; genIPush
	push	#0x30
	push	#0x00
; genIPush
	push	#0xa0
	push	#0x86
	push	#0x01
	push	#0x00
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_Init
;	User/eric_driver.c: 339: I2C_Cmd(I2C1, ENABLE);
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #0x5210
; genCall
	call	_I2C_Cmd
;	User/eric_driver.c: 340: I2C_AcknowledgeConfig(I2C1, ENABLE);
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #0x5210
; genCall
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_driver.c: 342: }
; genEndFunction
	jp	_I2C_AcknowledgeConfig
; peephole 52 removed unreachable ret.
;	Total IIC_Init function size at codegen: 1 bytes.
;	User/eric_driver.c: 344: void Save_Data(uint8_t *p)
; genLabel
;	-----------------------------------------
;	 function Save_Data
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_Save_Data:
	sub	sp, #4
; genReceive
;	User/eric_driver.c: 348: if (p == 0)
; genIfx
	ldw	(0x02, sp), x
; peephole 4w removed redundant load from (0x02, sp) into x.
; peephole j5 changed absolute to relative unconditional jump.
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00139$.
;	User/eric_driver.c: 349: return;
; genReturn
; peephole j5 changed absolute to relative unconditional jump.
;	User/eric_driver.c: 351: for (i = 0; i < 10; i++)
; genLabel
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00111$.
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genAssign
	clr	(0x04, sp)
; genLabel
00106$:
;	User/eric_driver.c: 353: I2C_WriteByte(dindex[data_index.w].paddr, dindex[data_index.w].daddr + i, *(p + i));
; genPlus
	clrw	x
	ld	a, (0x04, sp)
	ld	xl, a
	addw	x, (0x02, sp)
; genPointerGet
	ld	a, (x)
	ld	(0x01, sp), a
; genPointerGet
	ld	a, _data_index+1
; genCast
; genAssign
	clrw	x
; genLeftShiftLiteral
	ld	xl, a
	sllw	x
; genPlus
	addw	x, #(_dindex+0)
; genAssign
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
; genPointerGet
	ld	a, (0x1, x)
; genPlus
	add	a, (0x04, sp)
	ld	xl, a
; genPointerGet
	ld	a, (y)
	ld	xh, a
; genIPush
	ld	a, (0x01, sp)
	push	a
; genIPush
	ld	a, xl
	push	a
; genSend
	ld	a, xh
; genCall
	call	_I2C_WriteByte
;	User/eric_driver.c: 354: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_driver.c: 351: for (i = 0; i < 10; i++)
; genPlus
	inc	(0x04, sp)
; genCmp
; genCmpTnz
	ld	a, (0x04, sp)
	cp	a, #0x0a
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00106$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00140$.
; skipping generated iCode
;	User/eric_driver.c: 356: data_index.w = (data_index.w + 1) % 90;
; genPointerGet
	ld	a, _data_index+1
; genCast
; genAssign
	clrw	x
; genPlus
	ld	xl, a
	incw	x
; genIPush
	push	#0x5a
	push	#0x00
; genSend
; genCall
	call	__modsint
	ld	a, xl
; genCast
; genAssign
; genPointerSet
	ld	_data_index+1, a
;	User/eric_driver.c: 357: if (data_index.used < 90)
; genPlus
	ldw	x, #(_data_index+0)+2
; genPointerGet
	ld	a, (x)
; genCmp
; genCmpTnz
	cp	a, #0x5a
; peephole j5 changed absolute to relative unconditional jump.
	jrnc	00108$
; peephole j6 removed jra by using inverse jump logic
; peephole j30 removed unused label 00141$.
; skipping generated iCode
;	User/eric_driver.c: 358: data_index.used++;
; genPlus
	inc	a
; genPointerSet
	ld	(x), a
; genLabel
00108$:
;	User/eric_driver.c: 359: }
; genEndFunction
	addw	sp, #4
	ret
;	Total Save_Data function size at codegen: 3 bytes.
;	User/eric_driver.c: 361: uint8_t Load_Data(uint8_t lr, uint8_t *p)
; genLabel
;	-----------------------------------------
;	 function Load_Data
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 8 bytes.
_Load_Data:
	sub	sp, #8
; genReceive
	ld	(0x07, sp), a
; genReceive
	ldw	(0x05, sp), x
;	User/eric_driver.c: 365: if (1 == lr) //增减标识+
; genCmpEQorNE
	ld	a, (0x07, sp)
	dec	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00263$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00262$.
	jp	00129$
00263$:
; skipping generated iCode
;	User/eric_driver.c: 367: if (data_index.used) //有效数据
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
; genIfx
	ld	a, _data_index+2
; peephole 30 removed redundant tnz.
	jrne	00264$
	jp	00130$
00264$:
;	User/eric_driver.c: 369: if (data_index.r != data_index.w - 1)
; genCast
; genAssign
	ldw	x, #(_data_index+0)
; genPointerGet
	ldw	(0x01, sp), x
; peephole 4w removed redundant load from (0x01, sp) into x.
	ld	a, (x)
	ld	(0x08, sp), a
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _data_index+1
; genCast
; genAssign
	clrw	x
; genMinus
	ld	xl, a
	decw	x
; genCast
; genAssign
	ld	a, (0x08, sp)
	ld	(0x04, sp), a
	clr	(0x03, sp)
; genCmpEQorNE
	cpw	x, (0x03, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00266$.
; skipping generated iCode
;	User/eric_driver.c: 371: data_index.r = (data_index.r + 1) % 90;
; genPlus
	ldw	x, (0x03, sp)
	incw	x
; genIPush
	push	#0x5a
	push	#0x00
; genSend
; genCall
	call	__modsint
	ld	a, xl
; genCast
; genAssign
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/eric_driver.c: 375: data_index.r = 0;
; genPointerSet
	ldw	x, (0x01, sp)
	clr	(x)
; genLabel
00103$:
;	User/eric_driver.c: 378: if (data_index.r != data_index.w)
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
	ld	(0x08, sp), a
; genPointerGet
	ld	a, _data_index+1
; genCmpEQorNE
	cp	a, (0x08, sp)
	jrne	00269$
	jp	00130$
00269$:
; skipping generated iCode
;	User/eric_driver.c: 380: for (i = 0; i < 10; i++)
; skipping iCode since result will be rematerialized
; genAssign
	clr	(0x08, sp)
; genLabel
00131$:
;	User/eric_driver.c: 382: *(p + i) = I2C_ReadByte(dindex[data_index.r].paddr, dindex[data_index.r].daddr + i);
; genPlus
	clrw	x
	ld	a, (0x08, sp)
	ld	xl, a
	addw	x, (0x05, sp)
	ldw	(0x03, sp), x
;	User/eric_driver.c: 369: if (data_index.r != data_index.w - 1)
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
;	User/eric_driver.c: 382: *(p + i) = I2C_ReadByte(dindex[data_index.r].paddr, dindex[data_index.r].daddr + i);
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genLeftShiftLiteral
	sllw	x
; genPlus
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
	addw	x, #(_dindex+0)
; genPointerGet
	ld	a, (0x1, x)
; genPlus
	add	a, (0x08, sp)
	ld	xl, a
; genPlus
; genPointerGet
; peephole 10b moved addition of offset into storage instruction
	ld	a, (_dindex+0, y)
; genIPush
	pushw	x
	addw	sp, #1
; genSend
; genCall
	call	_I2C_ReadByte
; genPointerSet
	ldw	x, (0x03, sp)
	ld	(x), a
;	User/eric_driver.c: 383: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_driver.c: 380: for (i = 0; i < 10; i++)
; genPlus
	inc	(0x08, sp)
; genCmp
; genCmpTnz
	ld	a, (0x08, sp)
	cp	a, #0x0a
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00131$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00271$.
; skipping generated iCode
;	User/eric_driver.c: 386: return 1;
; genReturn
	ld	a, #0x01
	jp	00137$
; genLabel
00129$:
;	User/eric_driver.c: 390: else if (0 == lr) //-
; genIfx
	tnz	(0x07, sp)
	jreq	00272$
	jp	00126$
00272$:
;	User/eric_driver.c: 392: if (data_index.used) //有效数据
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _data_index+2
; genIfx
	ld	(0x08, sp), a
; peephole 31a removed redundant tnz.
	jrne	00273$
	jp	00130$
00273$:
;	User/eric_driver.c: 394: if (data_index.r)
; genCast
; genAssign
	ldw	x, #(_data_index+0)
; genPointerGet
	ldw	(0x01, sp), x
; peephole 4w removed redundant load from (0x01, sp) into x.
;	User/eric_driver.c: 401: data_index.r = data_index.w - 1;
; skipping iCode since result will be rematerialized
;	User/eric_driver.c: 394: if (data_index.r)
; genIfx
	ld	a, (x)
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00113$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00274$.
;	User/eric_driver.c: 396: data_index.r = (data_index.r - 1) % 90;
; genCast
; genAssign
	clrw	x
; genMinus
	ld	xl, a
	decw	x
; genIPush
	push	#0x5a
	push	#0x00
; genSend
; genCall
	call	__modsint
	ld	a, xl
; genCast
; genAssign
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
; genGoto
	jra	00114$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00113$:
;	User/eric_driver.c: 400: if (data_index.used < 90)
; genCmp
; genCmpTnz
	ld	a, (0x08, sp)
	cp	a, #0x5a
; peephole j5 changed absolute to relative unconditional jump.
	jrnc	00110$
; peephole j6 removed jra by using inverse jump logic
; peephole j30 removed unused label 00275$.
; skipping generated iCode
;	User/eric_driver.c: 401: data_index.r = data_index.w - 1;
; genPointerGet
	ld	a, _data_index+1
; genCast
; genAssign
; genMinus
	dec	a
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
; genGoto
	jra	00114$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00110$:
;	User/eric_driver.c: 403: data_index.r = 89;
; genPointerSet
	ldw	x, (0x01, sp)
	ld	a, #0x59
	ld	(x), a
; genLabel
00114$:
;	User/eric_driver.c: 406: if (data_index.r != data_index.w)
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
	ld	(0x08, sp), a
; genPointerGet
	ld	a, _data_index+1
; genCmpEQorNE
	cp	a, (0x08, sp)
	jrne	00277$
	jp	00130$
00277$:
; skipping generated iCode
;	User/eric_driver.c: 408: for (i = 0; i < 10; i++)
; skipping iCode since result will be rematerialized
; genAssign
	clr	(0x08, sp)
; genLabel
00133$:
;	User/eric_driver.c: 410: *(p + i) = I2C_ReadByte(dindex[data_index.r].paddr, dindex[data_index.r].daddr + i);
; genPlus
	clrw	x
	ld	a, (0x08, sp)
	ld	xl, a
	addw	x, (0x05, sp)
	ldw	(0x03, sp), x
;	User/eric_driver.c: 394: if (data_index.r)
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
;	User/eric_driver.c: 410: *(p + i) = I2C_ReadByte(dindex[data_index.r].paddr, dindex[data_index.r].daddr + i);
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genLeftShiftLiteral
	sllw	x
; genPlus
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
	addw	x, #(_dindex+0)
; genPointerGet
	ld	a, (0x1, x)
; genPlus
	add	a, (0x08, sp)
	ld	xl, a
; genPlus
; genPointerGet
; peephole 10b moved addition of offset into storage instruction
	ld	a, (_dindex+0, y)
; genIPush
	pushw	x
	addw	sp, #1
; genSend
; genCall
	call	_I2C_ReadByte
; genPointerSet
	ldw	x, (0x03, sp)
	ld	(x), a
;	User/eric_driver.c: 411: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_driver.c: 408: for (i = 0; i < 10; i++)
; genPlus
	inc	(0x08, sp)
; genCmp
; genCmpTnz
	ld	a, (0x08, sp)
	cp	a, #0x0a
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00133$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00279$.
; skipping generated iCode
;	User/eric_driver.c: 414: return 1;
; genReturn
	ld	a, #0x01
	jra	00137$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00126$:
;	User/eric_driver.c: 420: if (data_index.used) //有效数据
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
; genIfx
	ld	a, _data_index+2
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00130$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00280$.
;	User/eric_driver.c: 422: if (data_index.r != data_index.w)
; genCast
; genAssign
	ldw	x, #(_data_index+0)
; genPointerGet
	ldw	(0x01, sp), x
; peephole 4w removed redundant load from (0x01, sp) into x.
	ld	a, (x)
	ld	(0x08, sp), a
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _data_index+1
; genCmpEQorNE
	cp	a, (0x08, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00130$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00282$.
; skipping generated iCode
;	User/eric_driver.c: 424: for (i = 0; i < 10; i++)
; skipping iCode since result will be rematerialized
; genAssign
	clr	(0x08, sp)
; genLabel
00135$:
;	User/eric_driver.c: 426: *(p + i) = I2C_ReadByte(dindex[data_index.r].paddr, dindex[data_index.r].daddr + i);
; genPlus
	clrw	x
	ld	a, (0x08, sp)
	ld	xl, a
	addw	x, (0x05, sp)
	ldw	(0x03, sp), x
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genLeftShiftLiteral
	sllw	x
; genPlus
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
	addw	x, #(_dindex+0)
; genPointerGet
	ld	a, (0x1, x)
; genPlus
	add	a, (0x08, sp)
	ld	xl, a
; genPlus
; genPointerGet
; peephole 10b moved addition of offset into storage instruction
	ld	a, (_dindex+0, y)
; genIPush
	pushw	x
	addw	sp, #1
; genSend
; genCall
	call	_I2C_ReadByte
; genPointerSet
	ldw	x, (0x03, sp)
	ld	(x), a
;	User/eric_driver.c: 427: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_driver.c: 424: for (i = 0; i < 10; i++)
; genPlus
	inc	(0x08, sp)
; genCmp
; genCmpTnz
	ld	a, (0x08, sp)
	cp	a, #0x0a
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00135$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00284$.
; skipping generated iCode
;	User/eric_driver.c: 429: return 1;
; genReturn
	ld	a, #0x01
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	User/eric_driver.c: 434: return 0;
; genReturn
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00130$:
	clr	a
00137$:
;	User/eric_driver.c: 435: }
; genEndFunction
	addw	sp, #8
	ret
;	Total Load_Data function size at codegen: 3 bytes.
;	User/eric_driver.c: 438: void init_rtc(void)
; genLabel
;	-----------------------------------------
;	 function init_rtc
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 12 bytes.
_init_rtc:
	sub	sp, #12
;	User/eric_driver.c: 446: FLASH_Unlock(FLASH_MemType_Data);
; genSend
	ld	a, #0xf7
; genCall
	call	_FLASH_Unlock
;	User/eric_driver.c: 448: tag = FLASH_ReadByte(0x1000);
; genIPush
	push	#0x00
	push	#0x10
	clrw	x
	pushw	x
; genCall
	call	_FLASH_ReadByte
; genAssign
	ld	_init_rtc_tag_10000_765+0, a
;	User/eric_driver.c: 449: FLASH_Lock(FLASH_MemType_Data);
; genSend
	ld	a, #0xf7
; genCall
	call	_FLASH_Lock
;	User/eric_driver.c: 462: CLK_LSEConfig(CLK_LSE_ON);
; genSend
	ld	a, #0x04
; genCall
	call	_CLK_LSEConfig
;	User/eric_driver.c: 463: while (CLK_GetFlagStatus(CLK_FLAG_LSERDY) == RESET);
; genLabel
00101$:
; genSend
	ld	a, #0x33
; genCall
	call	_CLK_GetFlagStatus
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00101$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00122$.
;	User/eric_driver.c: 464: CLK_RTCClockConfig(CLK_RTCCLKSource_LSE, CLK_RTCCLKDiv_1);
; genIPush
	push	#0x00
; genSend
	ld	a, #0x10
; genCall
	call	_CLK_RTCClockConfig
;	User/eric_driver.c: 465: CLK_PeripheralClockConfig(CLK_Peripheral_RTC, ENABLE);
; genIPush
	push	#0x01
; genSend
	ld	a, #0x12
; genCall
	call	_CLK_PeripheralClockConfig
;	User/eric_driver.c: 467: RTC_InitStr.RTC_HourFormat = RTC_HourFormat_24;
; genAddrOf
	ldw	x, sp
	incw	x
; genPointerSet
	clr	(x)
;	User/eric_driver.c: 468: RTC_InitStr.RTC_AsynchPrediv = 127;
; skipping iCode since result will be rematerialized
; genPointerSet
	ld	a, #0x7f
	ld	(0x02, sp), a
;	User/eric_driver.c: 469: RTC_InitStr.RTC_SynchPrediv = 255;
; skipping iCode since result will be rematerialized
; genPointerSet
	ldw	y, #0x00ff
	ldw	(0x03, sp), y
;	User/eric_driver.c: 470: RTC_Init(&RTC_InitStr);
; genCast
; genAssign
; genSend
; genCall
	call	_RTC_Init
;	User/eric_driver.c: 474: FLASH_Unlock(FLASH_MemType_Data);
; genSend
	ld	a, #0xf7
; genCall
	call	_FLASH_Unlock
;	User/eric_driver.c: 475: FLASH_ProgramByte(0x1000, 0x55);
; genIPush
	push	#0x55
; genIPush
	push	#0x00
	push	#0x10
	clrw	x
	pushw	x
; genCall
	call	_FLASH_ProgramByte
;	User/eric_driver.c: 476: FLASH_Lock(FLASH_MemType_Data);
; genSend
	ld	a, #0xf7
; genCall
	call	_FLASH_Lock
;	User/eric_driver.c: 478: RTC_TimeStructInit(&RTC_TimeStr);
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, sp
	addw	x, #5
; genSend
	pushw	x
; genCall
	call	_RTC_TimeStructInit
	popw	x
;	User/eric_driver.c: 479: RTC_TimeStr.RTC_Hours = 17;
; genPointerSet
	ld	a, #0x11
	ld	(0x05, sp), a
;	User/eric_driver.c: 480: RTC_TimeStr.RTC_Minutes = 46;
; skipping iCode since result will be rematerialized
; genPointerSet
	ld	a, #0x2e
	ld	(0x06, sp), a
;	User/eric_driver.c: 481: RTC_TimeStr.RTC_Seconds = 00;
; skipping iCode since result will be rematerialized
; genPointerSet
	clr	(0x07, sp)
;	User/eric_driver.c: 482: RTC_SetTime(RTC_Format_BIN, &RTC_TimeStr);
; genSend
; genSend
	clr	a
; genCall
	call	_RTC_SetTime
;	User/eric_driver.c: 484: RTC_DateStructInit(&RTC_DateStr);
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, sp
	addw	x, #9
; genSend
	pushw	x
; genCall
	call	_RTC_DateStructInit
	popw	x
;	User/eric_driver.c: 485: RTC_DateStr.RTC_WeekDay = RTC_Weekday_Thursday;
; genPointerSet
	ld	a, #0x04
	ld	(0x09, sp), a
;	User/eric_driver.c: 486: RTC_DateStr.RTC_Date = 12;
; skipping iCode since result will be rematerialized
; genPointerSet
	ld	a, #0x0c
	ld	(0x0b, sp), a
;	User/eric_driver.c: 487: RTC_DateStr.RTC_Month = RTC_Month_March;
; skipping iCode since result will be rematerialized
; genPointerSet
	ld	a, #0x03
	ld	(0x0a, sp), a
;	User/eric_driver.c: 488: RTC_DateStr.RTC_Year = 26;
; skipping iCode since result will be rematerialized
; genPointerSet
	ld	a, #0x1a
	ld	(0x0c, sp), a
;	User/eric_driver.c: 489: RTC_SetDate(RTC_Format_BIN, &RTC_DateStr);
; genSend
; genSend
	clr	a
; genCall
	call	_RTC_SetDate
; genLabel
; peephole j30 removed unused label 00106$.
;	User/eric_driver.c: 491: }
; genEndFunction
	addw	sp, #12
	ret
;	Total init_rtc function size at codegen: 3 bytes.
;	User/eric_driver.c: 493: void rtc_set_datetime(void)
; genLabel
;	-----------------------------------------
;	 function rtc_set_datetime
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 11 bytes.
_rtc_set_datetime:
	sub	sp, #11
;	User/eric_driver.c: 497: uint8_t tag = 0;
; genAssign
	clr	(0x09, sp)
;	User/eric_driver.c: 499: while (RTC_WaitForSynchro() != SUCCESS);
; genLabel
00101$:
; genCall
	call	_RTC_WaitForSynchro
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00101$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00191$.
;	User/eric_driver.c: 500: RTC_GetDate(RTC_Format_BIN, &RTC_DateStr);//先读一次
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genSend
	ldw	x, sp
	incw	x
; genSend
	clr	a
; genCall
	call	_RTC_GetDate
;	User/eric_driver.c: 501: RTC_GetTime(RTC_Format_BIN, &RTC_TimeStr);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genSend
	ldw	x, sp
	addw	x, #5
; genSend
	clr	a
; genCall
	call	_RTC_GetTime
;	User/eric_driver.c: 503: if (RTC_DateStr.RTC_Year != adjustdt.dt[0])
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x04, sp)
	ld	(0x0b, sp), a
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+1
; genCmpEQorNE
	cp	a, (0x0b, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00193$.
; skipping generated iCode
;	User/eric_driver.c: 504: tag = 1;
; genAssign
	ld	a, #0x01
	ld	(0x09, sp), a
; genLabel
00105$:
;	User/eric_driver.c: 505: if (RTC_DateStr.RTC_Month != (RTC_Month_TypeDef)adjustdt.dt[1])
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x02, sp)
	ld	(0x0b, sp), a
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+2
; genCmpEQorNE
	cp	a, (0x0b, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00107$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00196$.
; skipping generated iCode
;	User/eric_driver.c: 506: tag = 1;
; genAssign
	ld	a, #0x01
	ld	(0x09, sp), a
; genLabel
00107$:
;	User/eric_driver.c: 507: if (RTC_DateStr.RTC_Date != adjustdt.dt[2])
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x03, sp)
	ld	(0x0b, sp), a
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+3
; genCmpEQorNE
	cp	a, (0x0b, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00109$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00199$.
; skipping generated iCode
;	User/eric_driver.c: 508: tag = 1;
; genAssign
	ld	a, #0x01
	ld	(0x09, sp), a
; genLabel
00109$:
;	User/eric_driver.c: 509: if (RTC_TimeStr.RTC_Hours = adjustdt.dt[3])
; genCast
; genAssign
	ldw	x, sp
	addw	x, #5
	ldw	(0x0a, sp), x
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+4
; genPointerSet
	ldw	x, (0x0a, sp)
	ld	(x), a
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00111$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00201$.
;	User/eric_driver.c: 510: tag = 1;
; genAssign
	ld	a, #0x01
	ld	(0x09, sp), a
; genLabel
00111$:
;	User/eric_driver.c: 511: if (RTC_TimeStr.RTC_Minutes = adjustdt.dt[4])
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+5
; genPointerSet
; genIfx
	ld	(0x06, sp), a
; peephole 31b removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00113$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00202$.
;	User/eric_driver.c: 512: tag = 1;
; genAssign
	ld	a, #0x01
	ld	(0x09, sp), a
; genLabel
00113$:
;	User/eric_driver.c: 514: if (tag)
; genIfx
	tnz	(0x09, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00119$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00203$.
;	User/eric_driver.c: 516: RTC_DateStr.RTC_Year = adjustdt.dt[0];
; genPointerGet
	ld	a, _adjustdt+1
; genPointerSet
	ld	(0x04, sp), a
;	User/eric_driver.c: 517: RTC_DateStr.RTC_Month = (RTC_Month_TypeDef)adjustdt.dt[1];
; genPointerGet
	ld	a, _adjustdt+2
; genPointerSet
	ld	(0x02, sp), a
;	User/eric_driver.c: 518: RTC_DateStr.RTC_Date = adjustdt.dt[2];
; genPointerGet
	ld	a, _adjustdt+3
; genPointerSet
	ld	(0x03, sp), a
;	User/eric_driver.c: 520: RTC_TimeStr.RTC_Hours = adjustdt.dt[3];
; genPointerGet
	ld	a, _adjustdt+4
; genPointerSet
	ldw	x, (0x0a, sp)
	ld	(x), a
;	User/eric_driver.c: 521: RTC_TimeStr.RTC_Minutes = adjustdt.dt[4];
; genPointerGet
	ld	a, _adjustdt+5
; genPointerSet
	ld	(0x06, sp), a
;	User/eric_driver.c: 524: while (RTC_WaitForSynchro() != SUCCESS);
; genLabel
00114$:
; genCall
	call	_RTC_WaitForSynchro
; genIfx
	ld	(0x0b, sp), a
; peephole 31a removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00114$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00204$.
;	User/eric_driver.c: 525: RTC_SetDate(RTC_Format_BIN, &RTC_DateStr);
; genSend
	ldw	x, sp
	incw	x
; genSend
	clr	a
; genCall
	call	_RTC_SetDate
;	User/eric_driver.c: 526: RTC_SetTime(RTC_Format_BIN, &RTC_TimeStr);
; genSend
	ldw	x, sp
	addw	x, #5
; genSend
	clr	a
; genCall
	call	_RTC_SetTime
; genLabel
00119$:
;	User/eric_driver.c: 528: }
; genEndFunction
	addw	sp, #11
	ret
;	Total rtc_set_datetime function size at codegen: 3 bytes.
;	User/eric_driver.c: 530: void rtc_get_datetime(void)
; genLabel
;	-----------------------------------------
;	 function rtc_get_datetime
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 8 bytes.
_rtc_get_datetime:
	sub	sp, #8
;	User/eric_driver.c: 535: while (RTC_WaitForSynchro() != SUCCESS);
; genLabel
00101$:
; genCall
	call	_RTC_WaitForSynchro
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00101$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00120$.
;	User/eric_driver.c: 537: RTC_GetDate(RTC_Format_BIN, &RTC_DateStr);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genSend
	ldw	x, sp
	incw	x
; genSend
	clr	a
; genCall
	call	_RTC_GetDate
;	User/eric_driver.c: 538: RTC_GetTime(RTC_Format_BIN, &RTC_TimeStr);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genSend
	ldw	x, sp
	addw	x, #5
; genSend
	clr	a
; genCall
	call	_RTC_GetTime
;	User/eric_driver.c: 540: adjustdt.dt[0] = RTC_DateStr.RTC_Year & 0xff;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x04, sp)
; genPointerSet
	ld	_adjustdt+1, a
;	User/eric_driver.c: 541: adjustdt.dt[1] = RTC_DateStr.RTC_Month & 0xff;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x02, sp)
; genPointerSet
	ld	_adjustdt+2, a
;	User/eric_driver.c: 542: adjustdt.dt[2] = RTC_DateStr.RTC_Date & 0xff;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x03, sp)
; genPointerSet
	ld	_adjustdt+3, a
;	User/eric_driver.c: 544: adjustdt.dt[3] = RTC_TimeStr.RTC_Hours & 0xff;
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x05, sp)
; genPointerSet
	ld	_adjustdt+4, a
;	User/eric_driver.c: 545: adjustdt.dt[4] = RTC_TimeStr.RTC_Minutes & 0xff;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x06, sp)
; genPointerSet
	ld	_adjustdt+5, a
;	User/eric_driver.c: 546: adjustdt.dt[5] = RTC_TimeStr.RTC_Seconds & 0xff;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x07, sp)
; genPointerSet
	ld	_adjustdt+6, a
; genLabel
; peephole j30 removed unused label 00104$.
;	User/eric_driver.c: 547: }
; genEndFunction
	addw	sp, #8
	ret
;	Total rtc_get_datetime function size at codegen: 3 bytes.
;	User/eric_driver.c: 551: uint8_t Read_Key(void)
; genLabel
;	-----------------------------------------
;	 function Read_Key
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_Read_Key:
	push	a
;	User/eric_driver.c: 553: uint8_t kval = 0;
; genAssign
	clr	(0x01, sp)
;	User/eric_driver.c: 555: if (!K_UP)					//按下是低电平
; genSend
	ld	a, #0x08
; genSend
	ldw	x, #0x5014
; genCall
	call	_GPIO_ReadInputDataBit
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00148$.
;	User/eric_driver.c: 558: kval += KEY_UP;
; genAssign
	ld	a, #0x01
	ld	(0x01, sp), a
; genLabel
00102$:
;	User/eric_driver.c: 561: if (!K_DOWN)				//按下是低电平
; genSend
	ld	a, #0x10
; genSend
	ldw	x, #0x5014
; genCall
	call	_GPIO_ReadInputDataBit
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00104$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00149$.
;	User/eric_driver.c: 564: kval += KEY_DOWN;
; genCast
; genAssign
	ld	a, (0x01, sp)
; genPlus
	add	a, #0x02
	ld	(0x01, sp), a
; genLabel
00104$:
;	User/eric_driver.c: 567: if (!K_LEFT)				//按下是低电平
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #0x5014
; genCall
	call	_GPIO_ReadInputDataBit
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00106$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00150$.
;	User/eric_driver.c: 570: kval += KEY_LEFT;
; genCast
; genAssign
	ld	a, (0x01, sp)
; genPlus
	add	a, #0x04
	ld	(0x01, sp), a
; genLabel
00106$:
;	User/eric_driver.c: 573: if (!K_RIGHT)				//按下是低电平
; genSend
	ld	a, #0x02
; genSend
	ldw	x, #0x5014
; genCall
	call	_GPIO_ReadInputDataBit
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00108$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00151$.
;	User/eric_driver.c: 576: kval += KEY_RIGHT;
; genCast
; genAssign
	ld	a, (0x01, sp)
; genPlus
	add	a, #0x07
	ld	(0x01, sp), a
; genLabel
00108$:
;	User/eric_driver.c: 579: if (!K_MENU)				//按下是低电平
; genSend
	ld	a, #0x04
; genSend
	ldw	x, #0x5014
; genCall
	call	_GPIO_ReadInputDataBit
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00110$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00152$.
;	User/eric_driver.c: 582: kval += KEY_MENU;
; genCast
; genAssign
	ld	a, (0x01, sp)
; genPlus
	add	a, #0x0c
	ld	(0x01, sp), a
; genLabel
00110$:
;	User/eric_driver.c: 586: return kval;
; genReturn
	ld	a, (0x01, sp)
; genLabel
; peephole j30 removed unused label 00111$.
;	User/eric_driver.c: 587: }
; genEndFunction
	addw	sp, #1
	ret
;	Total Read_Key function size at codegen: 3 bytes.
;	User/eric_driver.c: 590: uint8_t Scan_Key(void)
; genLabel
;	-----------------------------------------
;	 function Scan_Key
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 6 bytes.
_Scan_Key:
	sub	sp, #6
;	User/eric_driver.c: 592: switch (key.state)
; genAddrOf
	ldw	x, #_key+0
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _key+1
;	User/eric_driver.c: 595: key.val = Read_Key();
; genCast
; genAssign
	ldw	(0x01, sp), x
;	User/eric_driver.c: 598: if (key.dly < 3) //8
; skipping iCode since result will be rematerialized
;	User/eric_driver.c: 592: switch (key.state)
; genCmpEQorNE
	cp	a, #0x00
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00101$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00198$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x01
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00109$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00201$.
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00116$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00204$.
; skipping generated iCode
; genGoto
	jp	00123$
;	User/eric_driver.c: 594: case 0:
; genLabel
00101$:
;	User/eric_driver.c: 595: key.val = Read_Key();
; genCall
	call	_Read_Key
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
;	User/eric_driver.c: 598: if (key.dly < 3) //8
; genPointerGet
	ldw	x, _key+2
;	User/eric_driver.c: 596: if (key.val) //首次按下键
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00107$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00206$.
;	User/eric_driver.c: 598: if (key.dly < 3) //8
; genCast
; genAssign
; genCmp
; genCmpTnz
	cpw	x, #0x0003
	jrc	00207$
	jp	00124$
00207$:
; skipping generated iCode
;	User/eric_driver.c: 600: key.dly = 3; //8
; genPointerSet
	mov	_key+3, #0x03
	mov	_key+2, #0x00
;	User/eric_driver.c: 601: key.state = 1;
; genPointerSet
	mov	_key+1, #0x01
; genGoto
	jp	00124$
; genLabel
00107$:
;	User/eric_driver.c: 604: else if (key.dly)
; genIfx
	tnzw	x
	jrne	00208$
	jp	00124$
00208$:
;	User/eric_driver.c: 605: key.dly--;
; genMinus
	decw	x
; genPointerSet
	ldw	_key+2, x
;	User/eric_driver.c: 606: break;
; genGoto
	jp	00124$
;	User/eric_driver.c: 607: case 1:
; genLabel
00109$:
;	User/eric_driver.c: 608: if (key.dly)
; genPointerGet
	ldw	x, _key+2
; genIfx
	tnzw	x
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00114$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00209$.
;	User/eric_driver.c: 609: key.dly--;
; genMinus
	decw	x
; genPointerSet
	ldw	_key+2, x
; genGoto
	jp	00124$
; genLabel
00114$:
;	User/eric_driver.c: 612: if (key.val == Read_Key()) //确认按键
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
	ld	(0x06, sp), a
; genCall
	call	_Read_Key
; genCmpEQorNE
	cp	a, (0x06, sp)
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00211$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00111$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00212$.
; skipping generated iCode
;	User/eric_driver.c: 614: key.state = 2;
; genPointerSet
	mov	_key+1, #0x02
;	User/eric_driver.c: 615: key.dly = 100;	 //用于长按计时
; genPointerSet
	mov	_key+3, #0x64
	mov	_key+2, #0x00
; genGoto
	jra	00124$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00111$:
;	User/eric_driver.c: 618: key.state = 0;
; genPointerSet
	mov	_key+1, #0x00
;	User/eric_driver.c: 620: break;
; genGoto
	jra	00124$
; peephole j5 changed absolute to relative unconditional jump.
;	User/eric_driver.c: 621: case 2:
; genLabel
00116$:
;	User/eric_driver.c: 622: if (0 == Read_Key())		 //按键弹起，确认一次按键事件
; genCall
	call	_Read_Key
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00121$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00213$.
;	User/eric_driver.c: 624: key.state = 0;
; genPointerSet
	mov	_key+1, #0x00
;	User/eric_driver.c: 625: key.dly = 0;
; genPointerSet
	ldw	x, #(_key+2)
	clr	(0x1, x)
	clr	(x)
;	User/eric_driver.c: 626: SendMsg(&MsgSystem, MSG_KEY_TIMER, key.val, 0);
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genCast
; genAssign
	clrw	y
	clr	(0x03, sp)
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	clrw	x
	pushw	x
	clrw	x
	pushw	x
; genIPush
	push	a
	pushw	y
	clr	a
	push	a
; genSend
	ld	a, #0x02
; genSend
	ldw	x, #(_MsgSystem+0)
; genCall
	call	_SendMsg
;	User/eric_driver.c: 627: return key.val;
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genReturn
	jra	00125$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00121$:
;	User/eric_driver.c: 631: if (key.dly)
; genPointerGet
	ldw	x, _key+2
; genIfx
	tnzw	x
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00118$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00214$.
;	User/eric_driver.c: 632: key.dly--;
; genMinus
	decw	x
; genPointerSet
	ldw	_key+2, x
; genGoto
	jra	00124$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00118$:
;	User/eric_driver.c: 635: key.dly = 20;
; genPointerSet
	mov	_key+3, #0x14
	mov	_key+2, #0x00
;	User/eric_driver.c: 636: key.state = 0;
; genPointerSet
	mov	_key+1, #0x00
;	User/eric_driver.c: 637: key.val += 100;		 //长按，当前键值+100
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genCast
; genAssign
; genPlus
	add	a, #0x64
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
;	User/eric_driver.c: 638: SendMsg(&MsgSystem, MSG_KEY_TIMER, key.val, 0);
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genCast
; genAssign
	clrw	y
	clr	(0x03, sp)
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	clrw	x
	pushw	x
	clrw	x
	pushw	x
; genIPush
	push	a
	pushw	y
	clr	a
	push	a
; genSend
	ld	a, #0x02
; genSend
	ldw	x, #(_MsgSystem+0)
; genCall
	call	_SendMsg
;	User/eric_driver.c: 639: return key.val;
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genReturn
	jra	00125$
; peephole j5 changed absolute to relative unconditional jump.
;	User/eric_driver.c: 644: default :
; genLabel
00123$:
;	User/eric_driver.c: 645: key.state = 0;
; genPointerSet
	mov	_key+1, #0x00
;	User/eric_driver.c: 647: }
; genLabel
00124$:
;	User/eric_driver.c: 648: return 0;
; genReturn
	clr	a
; genLabel
00125$:
;	User/eric_driver.c: 649: }
; genEndFunction
	addw	sp, #6
	ret
;	Total Scan_Key function size at codegen: 3 bytes.
;	User/eric_driver.c: 687: void ADC_Config(void)
; genLabel
;	-----------------------------------------
;	 function ADC_Config
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC_Config:
;	User/eric_driver.c: 690: CLK_PeripheralClockConfig(CLK_Peripheral_ADC1, ENABLE);
; genIPush
	push	#0x01
; genSend
	ld	a, #0x10
; genCall
	call	_CLK_PeripheralClockConfig
;	User/eric_driver.c: 692: ADC_Init(ADC1, ADC_ConversionMode_Continuous, ADC_Resolution_12Bit, ADC_Prescaler_1);
; genIPush
	push	#0x00
; genIPush
	push	#0x00
; genSend
	ld	a, #0x04
; genSend
	ldw	x, #0x5340
; genCall
	call	_ADC_Init
;	User/eric_driver.c: 693: ADC_SamplingTimeConfig(ADC1, ADC_Group_FastChannels, ADC_SamplingTime_24Cycles);
; genIPush
	push	#0x03
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #0x5340
; genCall
	call	_ADC_SamplingTimeConfig
;	User/eric_driver.c: 696: ADC_Cmd(ADC1, ENABLE);
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #0x5340
; genCall
	call	_ADC_Cmd
;	User/eric_driver.c: 697: ADC_VrefintCmd(ENABLE);
; genSend
	ld	a, #0x01
; genCall
	call	_ADC_VrefintCmd
;	User/eric_driver.c: 700: ADC_ChannelCmd(ADC1, ADC_Channel_Vrefint, ENABLE); /* connected to ADC_Channel_Vrefint */
; genIPush
	push	#0x01
; genIPush
	push	#0x10
	push	#0x00
; genSend
	ldw	x, #0x5340
; genCall
	call	_ADC_ChannelCmd
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_driver.c: 702: }
; genEndFunction
	ret
;	Total ADC_Config function size at codegen: 1 bytes.
;	User/eric_driver.c: 704: void DMA_Config(void)
; genLabel
;	-----------------------------------------
;	 function DMA_Config
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_DMA_Config:
;	User/eric_driver.c: 707: CLK_PeripheralClockConfig(CLK_Peripheral_DMA1, ENABLE);
; genIPush
	push	#0x01
; genSend
	ld	a, #0x14
; genCall
	call	_CLK_PeripheralClockConfig
;	User/eric_driver.c: 709: SYSCFG_REMAPDMAChannelConfig(REMAP_DMA1Channel_ADC1ToChannel0);//ADC通道要remap
; genSend
	clr	a
; genCall
	call	_SYSCFG_REMAPDMAChannelConfig
;	User/eric_driver.c: 712: (uint32_t)&dmabuf,
; genAddrOf
	ldw	x, #_dmabuf+0
; genCast
; genAssign
	clrw	y
;	User/eric_driver.c: 711: DMA_Init(DMA1_Channel0,
; genIPush
	push	#0x08
; genIPush
	push	#0x20
; genIPush
	push	#0x20
; genIPush
	push	#0x10
; genIPush
	push	#0x00
; genIPush
	push	#0x0a
; genIPush
	push	#0x44
	push	#0x53
; genIPush
	pushw	x
	pushw	y
; genSend
	ldw	x, #0x5075
; genCall
	call	_DMA_Init
;	User/eric_driver.c: 721: DMA_Cmd(DMA1_Channel0, ENABLE);
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #0x5075
; genCall
	call	_DMA_Cmd
;	User/eric_driver.c: 723: DMA_ITConfig(DMA1_Channel0, DMA_ITx_TC, ENABLE);
; genIPush
	push	#0x01
; genSend
	ld	a, #0x02
; genSend
	ldw	x, #0x5075
; genCall
	call	_DMA_ITConfig
;	User/eric_driver.c: 725: DMA_GlobalCmd(ENABLE);
; genSend
	ld	a, #0x01
; genCall
	call	_DMA_GlobalCmd
;	User/eric_driver.c: 726: ADC_DMACmd(ADC1, ENABLE);
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #0x5340
; genCall
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_driver.c: 727: }
; genEndFunction
	jp	_ADC_DMACmd
; peephole 52 removed unreachable ret.
;	Total DMA_Config function size at codegen: 1 bytes.
	.area CODE
	.area CONST
	.area CONST
_dindex:
	.db #0xa0	; 160
	.db #0x64	; 100	'd'
	.db #0xa0	; 160
	.db #0x6e	; 110	'n'
	.db #0xa0	; 160
	.db #0x78	; 120	'x'
	.db #0xa0	; 160
	.db #0x82	; 130
	.db #0xa0	; 160
	.db #0x8c	; 140
	.db #0xa0	; 160
	.db #0x96	; 150
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xaa	; 170
	.db #0xa0	; 160
	.db #0xb4	; 180
	.db #0xa0	; 160
	.db #0xbe	; 190
	.db #0xa0	; 160
	.db #0xc8	; 200
	.db #0xa0	; 160
	.db #0xd2	; 210
	.db #0xa0	; 160
	.db #0xdc	; 220
	.db #0xa0	; 160
	.db #0xe6	; 230
	.db #0xa0	; 160
	.db #0xf0	; 240
	.db #0xa2	; 162
	.db #0x00	; 0
	.db #0xa2	; 162
	.db #0x0a	; 10
	.db #0xa2	; 162
	.db #0x14	; 20
	.db #0xa2	; 162
	.db #0x1e	; 30
	.db #0xa2	; 162
	.db #0x28	; 40
	.db #0xa2	; 162
	.db #0x32	; 50	'2'
	.db #0xa2	; 162
	.db #0x3c	; 60
	.db #0xa2	; 162
	.db #0x46	; 70	'F'
	.db #0xa2	; 162
	.db #0x50	; 80	'P'
	.db #0xa2	; 162
	.db #0x5a	; 90	'Z'
	.db #0xa2	; 162
	.db #0x64	; 100	'd'
	.db #0xa2	; 162
	.db #0x6e	; 110	'n'
	.db #0xa2	; 162
	.db #0x78	; 120	'x'
	.db #0xa2	; 162
	.db #0x82	; 130
	.db #0xa2	; 162
	.db #0x8c	; 140
	.db #0xa2	; 162
	.db #0x96	; 150
	.db #0xa2	; 162
	.db #0xa0	; 160
	.db #0xa2	; 162
	.db #0xaa	; 170
	.db #0xa2	; 162
	.db #0xb4	; 180
	.db #0xa2	; 162
	.db #0xbe	; 190
	.db #0xa2	; 162
	.db #0xc8	; 200
	.db #0xa2	; 162
	.db #0xd2	; 210
	.db #0xa2	; 162
	.db #0xdc	; 220
	.db #0xa2	; 162
	.db #0xe6	; 230
	.db #0xa2	; 162
	.db #0xf0	; 240
	.db #0xa4	; 164
	.db #0x00	; 0
	.db #0xa4	; 164
	.db #0x0a	; 10
	.db #0xa4	; 164
	.db #0x14	; 20
	.db #0xa4	; 164
	.db #0x1e	; 30
	.db #0xa4	; 164
	.db #0x28	; 40
	.db #0xa4	; 164
	.db #0x32	; 50	'2'
	.db #0xa4	; 164
	.db #0x3c	; 60
	.db #0xa4	; 164
	.db #0x46	; 70	'F'
	.db #0xa4	; 164
	.db #0x50	; 80	'P'
	.db #0xa4	; 164
	.db #0x5a	; 90	'Z'
	.db #0xa4	; 164
	.db #0x64	; 100	'd'
	.db #0xa4	; 164
	.db #0x6e	; 110	'n'
	.db #0xa4	; 164
	.db #0x78	; 120	'x'
	.db #0xa4	; 164
	.db #0x82	; 130
	.db #0xa4	; 164
	.db #0x8c	; 140
	.db #0xa4	; 164
	.db #0x96	; 150
	.db #0xa4	; 164
	.db #0xa0	; 160
	.db #0xa4	; 164
	.db #0xaa	; 170
	.db #0xa4	; 164
	.db #0xb4	; 180
	.db #0xa4	; 164
	.db #0xbe	; 190
	.db #0xa4	; 164
	.db #0xc8	; 200
	.db #0xa4	; 164
	.db #0xd2	; 210
	.db #0xa4	; 164
	.db #0xdc	; 220
	.db #0xa4	; 164
	.db #0xe6	; 230
	.db #0xa4	; 164
	.db #0xf0	; 240
	.db #0xa6	; 166
	.db #0x00	; 0
	.db #0xa6	; 166
	.db #0x0a	; 10
	.db #0xa6	; 166
	.db #0x14	; 20
	.db #0xa6	; 166
	.db #0x1e	; 30
	.db #0xa6	; 166
	.db #0x28	; 40
	.db #0xa6	; 166
	.db #0x32	; 50	'2'
	.db #0xa6	; 166
	.db #0x3c	; 60
	.db #0xa6	; 166
	.db #0x46	; 70	'F'
	.db #0xa6	; 166
	.db #0x50	; 80	'P'
	.db #0xa6	; 166
	.db #0x5a	; 90	'Z'
	.db #0xa6	; 166
	.db #0x64	; 100	'd'
	.db #0xa6	; 166
	.db #0x6e	; 110	'n'
	.db #0xa6	; 166
	.db #0x78	; 120	'x'
	.db #0xa6	; 166
	.db #0x82	; 130
	.db #0xa6	; 166
	.db #0x8c	; 140
	.db #0xa6	; 166
	.db #0x96	; 150
	.db #0xa6	; 166
	.db #0xa0	; 160
	.db #0xa6	; 166
	.db #0xaa	; 170
	.db #0xa6	; 166
	.db #0xb4	; 180
	.db #0xa6	; 166
	.db #0xbe	; 190
	.db #0xa6	; 166
	.db #0xc8	; 200
	.db #0xa6	; 166
	.db #0xd2	; 210
	.db #0xa6	; 166
	.db #0xdc	; 220
	.db #0xa6	; 166
	.db #0xe6	; 230
	.db #0xa6	; 166
	.db #0xf0	; 240
	.area CODE
	.area INITIALIZER
__xinit__key:
	.db #0x00	; 0
	.db #0x00	; 0
	.dw #0x0000
__xinit__data_index:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__dmabuf:
	.dw #0x0000
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__Verfin:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.area CABS (ABS)
