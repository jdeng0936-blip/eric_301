;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module main
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _DMA_Config
	.globl _ADC_Config
	.globl _init_rtc
	.globl _IIC_Init
	.globl _Uart1_Send
	.globl _Uart1_Init
	.globl _TIM4_Init
	.globl _TIM2_Init
	.globl _CLK_Config
	.globl _Delay
	.globl _Menu_Proc
	.globl _lcd_init
	.globl _Storage_SaveAllStats
	.globl _Record_GetStat
	.globl _System_InitMode
	.globl _System_GetMode
	.globl _Storage_Init
	.globl _C_Fxn
	.globl _B_Fxn
	.globl _A_Fxn
	.globl _Chk_State
	.globl _Rs485_Proc
	.globl _RevMsg
	.globl _SendMsg
	.globl _WWDG_Init
	.globl _PWR_UltraLowPowerCmd
	.globl _PWR_FastWakeUpCmd
	.globl _ITC_SetSoftwarePriority
	.globl _GPIO_Init
	.globl _EXTI_SetPinSensitivity
	.globl _EXTI_DeInit
	.globl _ADC_SoftwareStartConv
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_main_last_ph_10000_693:
	.ds 1
_main_last_t_10000_693:
	.ds 4
_main_version_10000_693:
	.ds 32
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

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
; interrupt vector
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
	call	___sdcc_external_startup
	tnz	a
	jreq	__sdcc_init_data
	jp	__sdcc_program_startup
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
;	User/main.c: 23: static uint8_t last_ph = 0; //上一次的相位
; genAssign
	clr	_main_last_ph_10000_693+0
;	User/main.c: 24: static uint32_t last_t = 0; //相邻上一次触发的时间，用于比较两次是不是相邻两项（如AB）同时导通
; genAssign
	clrw	x
	ldw	_main_last_t_10000_693+2, x
	ldw	_main_last_t_10000_693+0, x
;	User/main.c: 25: static char version[32] = "Eric301 V1.2\r\n2024-4-10";
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+0, #0x45
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+1, #0x72
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+2, #0x69
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+3, #0x63
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+4, #0x33
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+5, #0x30
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+6, #0x31
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+7, #0x20
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+8, #0x56
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+9, #0x31
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+10, #0x2e
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+11, #0x32
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+12, #0x0d
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+13, #0x0a
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+14, #0x32
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+15, #0x30
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+16, #0x32
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+17, #0x34
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+18, #0x2d
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+19, #0x34
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+20, #0x2d
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+21, #0x31
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+22, #0x30
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+23, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+24, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+25, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+26, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+27, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+28, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+29, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+30, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_main_version_10000_693+31, #0x00
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	User/main.c: 18: int main(void)
; genLabel
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 19 bytes.
_main:
	sub	sp, #19
;	User/main.c: 27: Delay(30000);
; genSend
	ldw	x, #0x7530
; genCall
	call	_Delay
;	User/main.c: 28: CLK_Config();
; genCall
	call	_CLK_Config
;	User/main.c: 29: Delay(30000);
; genSend
	ldw	x, #0x7530
; genCall
	call	_Delay
;	User/main.c: 30: init_rtc();
; genCall
	call	_init_rtc
;	User/main.c: 31: Delay(30000);
; genSend
	ldw	x, #0x7530
; genCall
	call	_Delay
;	User/main.c: 35: GPIO_Init(GPIOC, GPIO_Pin_4, GPIO_Mode_In_PU_IT); //输入上拉
; genIPush
	push	#0x60
; genSend
	ld	a, #0x10
; genSend
	ldw	x, #0x500a
; genCall
	call	_GPIO_Init
;	User/main.c: 36: System_InitMode(); //读取AC_DEL(PC4)以决定是电池供电还是AC供电
; genCall
	call	_System_InitMode
;	User/main.c: 37: Delay(30000);
; genSend
	ldw	x, #0x7530
; genCall
	call	_Delay
;	User/main.c: 40: GPIO_Init(GPIOA, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
; genIPush
	push	#0xc0
; genSend
	ld	a, #0xff
; genSend
	ldw	x, #0x5000
; genCall
	call	_GPIO_Init
;	User/main.c: 41: GPIO_Init(GPIOB, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
; genIPush
	push	#0xc0
; genSend
	ld	a, #0xff
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_Init
;	User/main.c: 42: GPIO_Init(GPIOC, 0xEC, GPIO_Mode_Out_PP_Low_Slow);//除PC0，PC1(I2C1)，PC4
; genIPush
	push	#0xc0
; genSend
	ld	a, #0xec
; genSend
	ldw	x, #0x500a
; genCall
	call	_GPIO_Init
;	User/main.c: 43: GPIO_Init(GPIOD, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
; genIPush
	push	#0xc0
; genSend
	ld	a, #0xff
; genSend
	ldw	x, #0x500f
; genCall
	call	_GPIO_Init
;	User/main.c: 44: GPIO_Init(GPIOE, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
; genIPush
	push	#0xc0
; genSend
	ld	a, #0xff
; genSend
	ldw	x, #0x5014
; genCall
	call	_GPIO_Init
;	User/main.c: 45: GPIO_Init(GPIOF, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
; genIPush
	push	#0xc0
; genSend
	ld	a, #0xff
; genSend
	ldw	x, #0x5019
; genCall
	call	_GPIO_Init
;	User/main.c: 47: GPIO_Init(KEY_PORT, KEY_PINS, GPIO_Mode_In_PU_IT);//初始化按键,PE0~4
; genIPush
	push	#0x60
; genSend
	ld	a, #0x1f
; genSend
	ldw	x, #0x5014
; genCall
	call	_GPIO_Init
;	User/main.c: 48: GPIO_Init(GPIOB, GPIO_Pin_1 | GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_6 | GPIO_Pin_7,
; genIPush
	push	#0xf0
; genSend
	ld	a, #0xfe
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_Init
;	User/main.c: 50: GPIO_Init(GPIOD, GPIO_Pin_5 | GPIO_Pin_6 | GPIO_Pin_7, GPIO_Mode_In_PU_IT); //phase A、B、C
; genIPush
	push	#0x60
; genSend
	ld	a, #0xe0
; genSend
	ldw	x, #0x500f
; genCall
	call	_GPIO_Init
;	User/main.c: 52: lcd_init();
; genCall
	call	_lcd_init
;	User/main.c: 55: for (i = 0; i < 200; i++)
; genAssign
	clr	a
; genLabel
00136$:
;	User/main.c: 57: Delay(0xffff);
; genSend
	push	a
	clrw	x
	decw	x
; genCall
	call	_Delay
	pop	a
;	User/main.c: 55: for (i = 0; i < 200; i++)
; genPlus
	inc	a
; genCmp
; genCmpTnz
	cp	a, #0xc8
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00136$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00262$.
; skipping generated iCode
;	User/main.c: 60: EXTI_DeInit(); //恢复中断的所有设置
; genCall
	call	_EXTI_DeInit
;	User/main.c: 62: ITC_SetSoftwarePriority(TIM2_UPD_OVF_TRG_BRK_IRQn, ITC_PriorityLevel_3);
; genIPush
	push	#0x03
; genSend
	ld	a, #0x13
; genCall
	call	_ITC_SetSoftwarePriority
;	User/main.c: 63: ITC_SetSoftwarePriority(EXTI0_IRQn, ITC_PriorityLevel_1);
; genIPush
	push	#0x01
; genSend
	ld	a, #0x08
; genCall
	call	_ITC_SetSoftwarePriority
;	User/main.c: 64: ITC_SetSoftwarePriority(EXTI1_IRQn, ITC_PriorityLevel_1);
; genIPush
	push	#0x01
; genSend
	ld	a, #0x09
; genCall
	call	_ITC_SetSoftwarePriority
;	User/main.c: 65: ITC_SetSoftwarePriority(EXTI2_IRQn, ITC_PriorityLevel_1);
; genIPush
	push	#0x01
; genSend
	ld	a, #0x0a
; genCall
	call	_ITC_SetSoftwarePriority
;	User/main.c: 66: ITC_SetSoftwarePriority(EXTI3_IRQn, ITC_PriorityLevel_1);
; genIPush
	push	#0x01
; genSend
	ld	a, #0x0b
; genCall
	call	_ITC_SetSoftwarePriority
;	User/main.c: 67: ITC_SetSoftwarePriority(EXTI4_IRQn, ITC_PriorityLevel_1);
; genIPush
	push	#0x01
; genSend
	ld	a, #0x0c
; genCall
	call	_ITC_SetSoftwarePriority
;	User/main.c: 69: ITC_SetSoftwarePriority(EXTI5_IRQn, ITC_PriorityLevel_1);
; genIPush
	push	#0x01
; genSend
	ld	a, #0x0d
; genCall
	call	_ITC_SetSoftwarePriority
;	User/main.c: 70: ITC_SetSoftwarePriority(EXTI6_IRQn, ITC_PriorityLevel_1);
; genIPush
	push	#0x01
; genSend
	ld	a, #0x0e
; genCall
	call	_ITC_SetSoftwarePriority
;	User/main.c: 71: ITC_SetSoftwarePriority(EXTI7_IRQn, ITC_PriorityLevel_1);
; genIPush
	push	#0x01
; genSend
	ld	a, #0x0f
; genCall
	call	_ITC_SetSoftwarePriority
;	User/main.c: 73: EXTI_SetPinSensitivity(EXTI_Pin_0, EXTI_Trigger_Rising); //外部中断0，上沿触发，PE0，用于唤醒设备
; genIPush
	push	#0x01
; genSend
	clr	a
; genCall
	call	_EXTI_SetPinSensitivity
;	User/main.c: 74: EXTI_SetPinSensitivity(EXTI_Pin_1, EXTI_Trigger_Rising); //外部中断1，上沿触发，PE1
; genIPush
	push	#0x01
; genSend
	ld	a, #0x02
; genCall
	call	_EXTI_SetPinSensitivity
;	User/main.c: 75: EXTI_SetPinSensitivity(EXTI_Pin_2, EXTI_Trigger_Rising); //外部中断2，上沿触发，PE2
; genIPush
	push	#0x01
; genSend
	ld	a, #0x04
; genCall
	call	_EXTI_SetPinSensitivity
;	User/main.c: 76: EXTI_SetPinSensitivity(EXTI_Pin_3, EXTI_Trigger_Rising); //外部中断3，上沿触发，PE3
; genIPush
	push	#0x01
; genSend
	ld	a, #0x06
; genCall
	call	_EXTI_SetPinSensitivity
;	User/main.c: 77: EXTI_SetPinSensitivity(EXTI_Pin_4, EXTI_Trigger_Rising_Falling); //外部中断4，上沿触发，PE4,PC4
; genIPush
	push	#0x03
; genSend
	ld	a, #0x10
; genCall
	call	_EXTI_SetPinSensitivity
;	User/main.c: 79: EXTI_SetPinSensitivity(EXTI_Pin_5, EXTI_Trigger_Rising_Falling);//外部中断5，上下沿触发，PD5
; genIPush
	push	#0x03
; genSend
	ld	a, #0x12
; genCall
	call	_EXTI_SetPinSensitivity
;	User/main.c: 80: EXTI_SetPinSensitivity(EXTI_Pin_6, EXTI_Trigger_Rising_Falling);//外部中断6，上下沿触发，PD6
; genIPush
	push	#0x03
; genSend
	ld	a, #0x14
; genCall
	call	_EXTI_SetPinSensitivity
;	User/main.c: 81: EXTI_SetPinSensitivity(EXTI_Pin_7, EXTI_Trigger_Rising_Falling);//外部中断7，上下沿触发，PD7
; genIPush
	push	#0x03
; genSend
	ld	a, #0x16
; genCall
	call	_EXTI_SetPinSensitivity
;	User/main.c: 83: if (System_GetMode() == 0)
; genCall
	call	_System_GetMode
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00103$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00263$.
;	User/main.c: 85: Uart1_Init();
; genCall
	call	_Uart1_Init
;	User/main.c: 86: Uart1_Send((uint8_t *)version, 32);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x20
	push	#0x00
; genSend
	ldw	x, #(_main_version_10000_693+0)
; genCall
	call	_Uart1_Send
; genLabel
00103$:
;	User/main.c: 89: TIM2_Init();
; genCall
	call	_TIM2_Init
;	User/main.c: 90: TIM4_Init();
; genCall
	call	_TIM4_Init
;	User/main.c: 91: IIC_Init();//数据记录库初始化
; genCall
	call	_IIC_Init
;	User/main.c: 92: Storage_Init(); //加载系统设置和系统统计数据
; genCall
	call	_Storage_Init
;	User/main.c: 94: ADC_Config();
; genCall
	call	_ADC_Config
;	User/main.c: 95: DMA_Config();
; genCall
	call	_DMA_Config
;	User/main.c: 97: PWR_FastWakeUpCmd(ENABLE);  //快速唤醒使能
; genSend
	ld	a, #0x01
; genCall
	call	_PWR_FastWakeUpCmd
;	User/main.c: 98: PWR_UltraLowPowerCmd(ENABLE);//超低功耗
; genSend
	ld	a, #0x01
; genCall
	call	_PWR_UltraLowPowerCmd
;	User/main.c: 99: enableInterrupts();//使能中断
;	genInline
	rim
;	User/main.c: 101: SendMsg(&MsgSystem, MSG_KEY_TIMER, KEY_RIGHT,  0); //开机显示第一个菜单
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	clrw	x
	pushw	x
	clrw	x
	pushw	x
; genIPush
	push	#0x07
	clrw	x
	pushw	x
	push	#0x00
; genSend
	ld	a, #0x02
; genSend
	ldw	x, #(_MsgSystem+0)
; genCall
	call	_SendMsg
;	User/main.c: 102: ADC_SoftwareStartConv(ADC1); //开启软件转换
; genSend
	ldw	x, #0x5340
; genCall
	call	_ADC_SoftwareStartConv
;	User/main.c: 104: WWDG_Init(0x7f, 0x7f);
; genIPush
	push	#0x7f
; genSend
	ld	a, #0x7f
; genCall
	call	_WWDG_Init
;	User/main.c: 105: while (1)
; genLabel
00134$:
;	User/main.c: 107: msg = RevMsg(&MsgSystem);  //由消息触发
; genSend
	ldw	x, #(_MsgSystem+0)
; genCall
	call	_RevMsg
;	User/main.c: 108: if (msg == 0)
; genIfx
	tnzw	x
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00134$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00264$.
;	User/main.c: 113: if (msg->msgtype == MSG_TIMER)
; genPointerGet
	ld	a, (x)
; genCmpEQorNE
	ld	(0x13, sp), a
; peephole 4 removed redundant load from (0x13, sp) into a.
	dec	a
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00266$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00131$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00267$.
; skipping generated iCode
;	User/main.c: 115: A_Fxn();
; genCall
	call	_A_Fxn
;	User/main.c: 116: B_Fxn();
; genCall
	call	_B_Fxn
;	User/main.c: 117: C_Fxn();
; genCall
	call	_C_Fxn
;	User/main.c: 119: if (System_GetMode() == 0) //AC
; genCall
	call	_System_GetMode
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00107$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00268$.
;	User/main.c: 121: Rs485_Proc();    //rs485通信处理
; genCall
	call	_Rs485_Proc
; genLabel
00107$:
;	User/main.c: 123: Chk_State();
; genCall
	call	_Chk_State
; genGoto
	jra	00134$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00131$:
;	User/main.c: 128: Menu_Proc(msg->msgval1, msg->msgval2);
; genPlus
	ld	a, xl
	add	a, #0x05
	ld	(0x02, sp), a
	ld	a, xh
	adc	a, #0x00
	ld	(0x01, sp), a
; genPlus
	incw	x
	ldw	(0x0d, sp), x
;	User/main.c: 126: else if (msg->msgtype == MSG_KEY_TIMER)
; genCmpEQorNE
	ld	a, (0x13, sp)
	cp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00270$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00128$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00271$.
; skipping generated iCode
;	User/main.c: 128: Menu_Proc(msg->msgval1, msg->msgval2);
; genPointerGet
	ldw	x, (0x01, sp)
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	x, (x)
	ldw	(0x10, sp), x
; genPointerGet
	ldw	x, (0x0d, sp)
	ld	a, (0x3, x)
; genIPush
	pushw	y
	ldw	x, (0x12, sp)
	pushw	x
; genSend
; genCall
	call	_Menu_Proc
; genGoto
	jra	00134$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00128$:
;	User/main.c: 130: else if (msg->msgtype == MSG_COUNT)
; genCmpEQorNE
	ld	a, (0x13, sp)
	cp	a, #0x03
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00274$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00273$.
	jp	00125$
00274$:
; skipping generated iCode
;	User/main.c: 132: phase = (msg->msgval1 >> 24) & 0xff;
; genPointerGet
	ldw	x, (0x0d, sp)
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	(0x11, sp), y
	ldw	x, (x)
	ldw	(0x0f, sp), x
; genGetByte
	ld	a, (0x0f, sp)
;	User/main.c: 133: if (phase == A || phase == B || phase == C)
; genCmpEQorNE
	ld	(0x13, sp), a
; peephole 4 removed redundant load from (0x13, sp) into a.
	dec	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00113$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00276$.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x13, sp)
	cp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00113$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00279$.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x13, sp)
	cp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00282$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00134$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00283$.
; skipping generated iCode
; genLabel
00113$:
;	User/main.c: 135: tlen = (msg->msgval1 & 0x00ffffff); //时长
; genAnd
	ldw	y, (0x11, sp)
	ldw	(0x05, sp), y
	ld	a, (0x10, sp)
	ld	(0x04, sp), a
	clr	(0x03, sp)
;	User/main.c: 136: interval = msg->msgval2 > last_t ? msg->msgval2 - last_t : last_t - msg->msgval2;
; genPointerGet
	ldw	x, (0x01, sp)
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	(0x0d, sp), y
	ldw	x, (x)
	ldw	(0x0b, sp), x
; genCmp
; genCmpTnz
	ldw	x, _main_last_t_10000_693+2
	cpw	x, (0x0d, sp)
	ld	a, _main_last_t_10000_693+1
	sbc	a, (0x0c, sp)
	ld	a, _main_last_t_10000_693+0
	sbc	a, (0x0b, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrnc	00140$
; peephole j6 removed jra by using inverse jump logic
; peephole j30 removed unused label 00284$.
; skipping generated iCode
; genMinus
	ldw	x, (0x0d, sp)
	subw	x, _main_last_t_10000_693+2
	ldw	(0x11, sp), x
	ld	a, (0x0c, sp)
	sbc	a, _main_last_t_10000_693+1
	ld	xl, a
	ld	a, (0x0b, sp)
	sbc	a, _main_last_t_10000_693+0
; genGoto
	jra	00141$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00140$:
; genMinus
	ldw	x, _main_last_t_10000_693+2
	subw	x, (0x0d, sp)
	ldw	(0x11, sp), x
	ld	a, _main_last_t_10000_693+1
	sbc	a, (0x0c, sp)
	ld	xl, a
	ld	a, _main_last_t_10000_693+0
	sbc	a, (0x0b, sp)
; genLabel
00141$:
; genAssign
	exg	a, xl
	ld	(0x10, sp), a
	exg	a, xl
	ld	(0x0f, sp), a
;	User/main.c: 144: SendMsg(&MsgSystem, MSG_KEY_TIMER, FRESH_DATA, (0x00ffffff & tlen) | (phase32 << 24));
; genAnd
	ldw	y, (0x05, sp)
	ldw	(0x09, sp), y
	ld	a, (0x04, sp)
	ld	(0x08, sp), a
	clr	(0x07, sp)
;	User/main.c: 137: if (interval <= 5) //间隔小于5ms判定为两相同时雷击
; genCmp
; genCmpTnz
	ldw	x, #0x0005
	cpw	x, (0x11, sp)
	clr	a
	sbc	a, (0x10, sp)
	clr	a
	sbc	a, (0x0f, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00111$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00285$.
; skipping generated iCode
;	User/main.c: 139: Record_GetStat(phase + last_ph)->tscount += 1; //两相总次数统计
; genPlus
	ld	a, (0x13, sp)
	add	a, _main_last_ph_10000_693+0
; genSend
; genCall
	call	_Record_GetStat
; genCast
; genAssign
; genPointerGet
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
	ldw	x, (x)
; genCast
; genAssign
; genPlus
	incw	x
; genCast
; genAssign
; genPointerSet
	ldw	(y), x
;	User/main.c: 140: Record_GetStat(phase + last_ph)->tltotal += tlen; //两相总时长统计
; genPlus
	ld	a, (0x13, sp)
	add	a, _main_last_ph_10000_693+0
; genSend
; genCall
	call	_Record_GetStat
; genPlus
	addw	x, #0x0006
; genPointerGet
	ldw	y, x
	ldw	y, (0x2, y)
	ld	a, (0x1, x)
	push	a
	ld	a, (x)
	ld	(0x0c, sp), a
	pop	a
; genPlus
	addw	y, (0x05, sp)
	adc	a, (0x04, sp)
	ld	(0x10, sp), a
	ld	a, (0x0b, sp)
	adc	a, (0x03, sp)
	ld	(0x0f, sp), a
; genPointerSet
	ldw	(0x2, x), y
	ldw	y, (0x0f, sp)
	ldw	(x), y
;	User/main.c: 141: Record_GetStat(phase + last_ph)->tlmax = tlen;
; genPlus
	ld	a, (0x13, sp)
	add	a, _main_last_ph_10000_693+0
; genSend
; genCall
	call	_Record_GetStat
; genPlus
	incw	x
	incw	x
; genPointerSet
	ldw	y, (0x05, sp)
	ldw	(0x2, x), y
	ldw	y, (0x03, sp)
	ldw	(x), y
;	User/main.c: 142: phase += last_ph;
; genPlus
	ld	a, (0x13, sp)
	add	a, _main_last_ph_10000_693+0
;	User/main.c: 143: phase32 = phase;
; genCast
; genAssign
	ld	(0x13, sp), a
; peephole 4 removed redundant load from (0x13, sp) into a.
; peephole 3 removed dead clrw of x.
; peephole 3 removed dead clrw of y.
;	User/main.c: 144: SendMsg(&MsgSystem, MSG_KEY_TIMER, FRESH_DATA, (0x00ffffff & tlen) | (phase32 << 24));
; genLeftShiftLiteral
; peephole 3 removed dead clrw of x.
	clr	(0x10, sp)
; genOr
	ld	yh, a
	ldw	x, (0x09, sp)
	ld	a, (0x08, sp)
	ld	yl, a
; genIPush
	pushw	x
	pushw	y
; genIPush
	push	#0x62
	clrw	x
	pushw	x
	push	#0x00
; genSend
	ld	a, #0x02
; genSend
	ldw	x, #(_MsgSystem+0)
; genCall
	call	_SendMsg
;	User/main.c: 145: Storage_SaveAllStats(); //掉电保护：立即保存统计数据
; genCall
	call	_Storage_SaveAllStats
; genGoto
	jra	00112$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00111$:
;	User/main.c: 149: if (single_trg == 1)
; genCmpEQorNE
	ld	a, _single_trg+0
	dec	a
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00287$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00112$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00288$.
; skipping generated iCode
;	User/main.c: 151: Record_GetStat(phase)->tscount += 1; //A相总次数统计
; genSend
	ld	a, (0x13, sp)
; genCall
	call	_Record_GetStat
; genCast
; genAssign
; genPointerGet
; peephole 5w replaced exgw-ldw by ldw.
	ldw	y, x
	ldw	x, (x)
; genCast
; genAssign
; genPlus
	incw	x
; genCast
; genAssign
; genPointerSet
	ldw	(y), x
;	User/main.c: 152: Record_GetStat(phase)->tltotal += tlen; //A相总时长统计
; genSend
	ld	a, (0x13, sp)
; genCall
	call	_Record_GetStat
; genPlus
	addw	x, #0x0006
; genPointerGet
	ldw	y, x
	ldw	y, (0x2, y)
	ld	a, (0x1, x)
	ld	(0x0c, sp), a
	ld	a, (x)
; genPlus
	addw	y, (0x05, sp)
	push	a
	ld	a, (0x0d, sp)
	adc	a, (0x05, sp)
	ld	(0x11, sp), a
	pop	a
	adc	a, (0x03, sp)
	ld	(0x0f, sp), a
; genPointerSet
	ldw	(0x2, x), y
	ldw	y, (0x0f, sp)
	ldw	(x), y
;	User/main.c: 153: Record_GetStat(phase)->tlmax = tlen;
; genSend
	ld	a, (0x13, sp)
; genCall
	call	_Record_GetStat
; genPlus
	incw	x
	incw	x
; genPointerSet
	ldw	y, (0x05, sp)
	ldw	(0x2, x), y
	ldw	y, (0x03, sp)
	ldw	(x), y
;	User/main.c: 154: phase32 = phase;
; genCast
; genAssign
	ld	a, (0x13, sp)
; peephole 3 removed dead clrw of x.
; peephole 3 removed dead clrw of y.
;	User/main.c: 155: SendMsg(&MsgSystem, MSG_KEY_TIMER, FRESH_DATA, (0x00ffffff & tlen) | (phase32 << 24));
; genLeftShiftLiteral
; peephole 3 removed dead clrw of x.
	clr	(0x10, sp)
; genOr
	ld	yh, a
	ldw	x, (0x09, sp)
	ld	a, (0x08, sp)
	ld	yl, a
; genIPush
	pushw	x
	pushw	y
; genIPush
	push	#0x62
	clrw	x
	pushw	x
	push	#0x00
; genSend
	ld	a, #0x02
; genSend
	ldw	x, #(_MsgSystem+0)
; genCall
	call	_SendMsg
;	User/main.c: 156: Storage_SaveAllStats(); //掉电保护：立即保存统计数据
; genCall
	call	_Storage_SaveAllStats
; genLabel
00112$:
;	User/main.c: 159: single_trg = 0;
; genAssign
	clr	_single_trg+0
;	User/main.c: 161: last_ph = phase;
; genAssign
	ld	a, (0x13, sp)
	ld	_main_last_ph_10000_693+0, a
;	User/main.c: 162: last_t = msg->msgval2; //保存上一次触发时间
; genPointerGet
	ldw	x, (0x01, sp)
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	x, (x)
; genAssign
	ldw	_main_last_t_10000_693+2, y
	ldw	_main_last_t_10000_693+0, x
; genGoto
	jp	00134$
; genLabel
00125$:
;	User/main.c: 165: else if (msg->msgtype == MSG_ADC) //检测电池电压
; genCmpEQorNE
	ld	a, (0x13, sp)
	cp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00291$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00290$.
	jp	00134$
00291$:
; skipping generated iCode
;	User/main.c: 167: if (msg->msgval1)
; genPointerGet
	ldw	x, (0x0d, sp)
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	x, (x)
; genIfx
	tnzw	y
	jrne	00292$
	tnzw	x
	jrne	00292$
	jp	00134$
00292$:
;	User/main.c: 169: val = msg->msgval1 / 10;
; genIPush
	push	#0x0a
	push	#0x00
	push	#0x00
	push	#0x00
; genIPush
	pushw	y
	pushw	x
;	User/main.c: 170: uint32_t new_v = (uint32_t)(5017600 / val);
; genCall
	call	__divulong
	addw	sp, #8
; genIPush
	pushw	x
	pushw	y
; genIPush
	push	#0x00
	push	#0x90
	push	#0x4c
	push	#0x00
;	User/main.c: 171: if (Verfin == 0) {
; genCall
	call	__divulong
	addw	sp, #8
	ldw	(0x12, sp), x
	ldw	(0x10, sp), y
; genIfx
	ldw	x, _Verfin+2
	jrne	00118$
; peephole j22 jumped to 00118$ directly instead of via 00293$.
	ldw	x, _Verfin+0
; peephole j30 removed unused label 00293$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00118$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00294$.
;	User/main.c: 172: Verfin = new_v;
; genAssign
	ldw	x, (0x12, sp)
	ldw	_Verfin+2, x
	ldw	x, (0x10, sp)
	ldw	_Verfin+0, x
; genGoto
	jp	00134$
; genLabel
00118$:
;	User/main.c: 174: Verfin = (Verfin * 7 + new_v) >> 3; // IIR 平滑滤波 (避免图标频繁跳动)
; genIPush
	ldw	x, _Verfin+2
	pushw	x
	ldw	x, _Verfin+0
	pushw	x
; genIPush
	push	#0x07
	clrw	x
	pushw	x
	push	#0x00
; genCall
	call	__mullong
	addw	sp, #8
	exgw	x, y
; genPlus
	addw	y, (0x12, sp)
	ld	a, xl
	adc	a, (0x11, sp)
	rlwa	x
; peephole r1 used rlwa.
	adc	a, (0x10, sp)
	ld	xh, a
; genRightShiftLiteral
	srlw	x
	rrcw	y
	srlw	x
	rrcw	y
	srlw	x
	rrcw	y
; genAssign
	ldw	_Verfin+2, y
	ldw	_Verfin+0, x
; genGoto
; genLabel
; peephole j30 removed unused label 00138$.
;	User/main.c: 180: }
; genEndFunction
; peephole 53 removed unreachable addw.
	jp	00134$
; peephole 52 removed unreachable ret.
;	Total main function size at codegen: 3 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
