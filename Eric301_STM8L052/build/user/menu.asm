;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module menu
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _MenuTab
	.globl _memset
	.globl _mini_sprintf
	.globl _Record_LoadHistory
	.globl _Record_SaveNew
	.globl _Storage_SaveAllStats
	.globl _Record_GetLRecd
	.globl _Record_GetStat
	.globl _System_GetMode
	.globl _Storage_FactoryReset
	.globl _Storage_ClearHistory
	.globl _Storage_SaveSettings
	.globl _rtc_get_datetime
	.globl _rtc_set_datetime
	.globl _Delay
	.globl _lcd_init
	.globl _show_hz_12x12
	.globl _show_str_8x12
	.globl _show_str_7x8
	.globl _clear_screen
	.globl _GPIO_ResetBits
	.globl _GPIO_Init
	.globl _ADC_DMACmd
	.globl _ADC_SoftwareStartConv
	.globl _ADC_Cmd
	.globl _language
	.globl _delay_halt
	.globl _adjustdt
	.globl _menu_index
	.globl _tempstr
	.globl _timestr
	.globl _datestr
	.globl _Menu_Proc
	.globl _DspOne
	.globl _DspOne_Plus
	.globl _DspTwo
	.globl _DspTwo_Plus
	.globl _DspThree
	.globl _Show_Phase_Rec
	.globl _DspFour
	.globl _Left_Four
	.globl _Right_Four
	.globl _show_datetime
	.globl _DspFive
	.globl _Up_Five
	.globl _Down_Five
	.globl _Left_Five
	.globl _Right_Five
	.globl _Menu_Five
	.globl _DspSix
	.globl _Menu_Four
	.globl _Sys_Reset
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_datestr::
	.ds 16
_timestr::
	.ds 16
_tempstr::
	.ds 16
_Menu_Proc_i_10000_701:
	.ds 1
_Menu_Proc_last_menu_10000_701:
	.ds 1
_Menu_Proc_disp_tag_10000_701:
	.ds 1
_Menu_Proc_key_val_10000_701:
	.ds 1
_show_datetime_flag_10000_755:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_menu_index::
	.ds 1
_adjustdt::
	.ds 37
_delay_halt::
	.ds 1
_language::
	.ds 1
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
;	User/menu.c: 60: static uint8_t i,last_menu=99;
; genAssign
	mov	_Menu_Proc_last_menu_10000_701+0, #0x63
;	User/menu.c: 61: static uint8_t disp_tag=0,key_val=0;
; genAssign
	clr	_Menu_Proc_disp_tag_10000_701+0
; genAssign
	clr	_Menu_Proc_key_val_10000_701+0
;	User/menu.c: 497: static uint8_t flag=1;
; genAssign
	mov	_show_datetime_flag_10000_755+0, #0x01
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	User/menu.c: 58: void Menu_Proc(uint8_t Keyvalue,uint32_t phalen)
; genLabel
;	-----------------------------------------
;	 function Menu_Proc
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_Menu_Proc:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	User/menu.c: 63: if(disp_tag)
; genIfx
	ld	a, _Menu_Proc_disp_tag_10000_701+0
; peephole 625a changed tnz by ld
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00400$.
;	User/menu.c: 65: disp_tag--;
; genMinus
;	User/menu.c: 66: if(disp_tag==0)
; genIfx
	dec	_Menu_Proc_disp_tag_10000_701+0
; peephole 24 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00105$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00401$.
;	User/menu.c: 68: delay_halt=HALT_TIMEOUT;
; genAssign
	mov	_delay_halt+0, #0xff
;	User/menu.c: 69: GPIO_Init(GPIOB,GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|GPIO_Pin_5|GPIO_Pin_6|GPIO_Pin_7,GPIO_Mode_Out_PP_High_Fast);//LCD
; genIPush
	push	#0xf0
; genSend
	ld	a, #0xfe
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_Init
;	User/menu.c: 70: LCD_BKLIGHT_0;//背光关
; genSend
	ld	a, #0x02
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_ResetBits
;	User/menu.c: 71: lcd_init();
; genCall
	call	_lcd_init
;	User/menu.c: 72: last_menu=0;
; genAssign
	clr	_Menu_Proc_last_menu_10000_701+0
;	User/menu.c: 73: menu_index=0;
; genAssign
	clr	_menu_index+0
;	User/menu.c: 75: for(i=0; i<10; i++)
; genAssign
	clr	_Menu_Proc_i_10000_701+0
; genLabel
00158$:
;	User/menu.c: 76: Delay(0xffff);
; genSend
	clrw	x
	decw	x
; genCall
	call	_Delay
;	User/menu.c: 75: for(i=0; i<10; i++)
; genPlus
	inc	_Menu_Proc_i_10000_701+0
; genCmp
; genCmpTnz
	ld	a, _Menu_Proc_i_10000_701+0
	cp	a, #0x0a
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00158$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00402$.
; skipping generated iCode
;	User/menu.c: 78: clear_screen();
; genCall
	call	_clear_screen
;	User/menu.c: 79: DspOne();
; genCall
	call	_DspOne
;	User/menu.c: 81: ADC_Cmd(ADC1, ENABLE);
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #0x5340
; genCall
	call	_ADC_Cmd
;	User/menu.c: 82: ADC_DMACmd(ADC1, ENABLE);
; genSend
	ld	a, #0x01
; genSend
	ldw	x, #0x5340
; genCall
	call	_ADC_DMACmd
;	User/menu.c: 83: Delay(10000);
; genSend
	ldw	x, #0x2710
; genCall
	call	_Delay
;	User/menu.c: 84: ADC_SoftwareStartConv(ADC1); //开启软件转换
; genSend
	ldw	x, #0x5340
; genCall
	call	_ADC_SoftwareStartConv
;	User/menu.c: 86: return;
; genReturn
	jp	00160$
; genLabel
00105$:
;	User/menu.c: 90: switch(Keyvalue)
; genCmpEQorNE
	ld	a, (0x02, sp)
	dec	a
	jrne	00404$
	ld	a, #0x01
	ld	(0x01, sp), a
; peephole j5 changed absolute to relative unconditional jump.
	.byte 0xc5
; peephole jrf7 used bcp opcode to jump over 2-byte instruction.
00404$:
	clr	(0x01, sp)
00405$:
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00107$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00406$.
; genCmpEQorNE
	ld	a, (0x02, sp)
	cp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00408$.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x02, sp)
	cp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00109$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00411$.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x02, sp)
	cp	a, #0x07
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00110$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00414$.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x02, sp)
	cp	a, #0x0c
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00111$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00417$.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x02, sp)
	cp	a, #0x62
	jrne	00420$
	jp	00115$
00420$:
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x02, sp)
	cp	a, #0x63
	jrne	00423$
	jp	00118$
00423$:
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x02, sp)
	cp	a, #0x6a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00427$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00426$.
	jp	00134$
00427$:
; skipping generated iCode
;	User/menu.c: 93: Sys_Reset();
; genCall
	call	_Sys_Reset
;	User/menu.c: 94: return;
; genReturn
	jp	00160$
;	User/menu.c: 96: case KEY_UP:                         //上, 找出新的菜单状态编号
; genLabel
00107$:
;	User/menu.c: 97: menu_index=MenuTab[menu_index].keyup;
; skipping iCode since result will be rematerialized
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
	ld	a, (0x1, x)
	ld	_menu_index+0, a
;	User/menu.c: 98: delay_halt=HALT_TIMEOUT;
; genAssign
	mov	_delay_halt+0, #0xff
;	User/menu.c: 99: break;
; genGoto
	jp	00135$
;	User/menu.c: 101: case KEY_DOWN:                       //下, 找出新的菜单状态编号
; genLabel
00108$:
;	User/menu.c: 102: menu_index=MenuTab[menu_index].keydown;
; skipping iCode since result will be rematerialized
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
	ld	a, (0x2, x)
	ld	_menu_index+0, a
;	User/menu.c: 103: delay_halt=HALT_TIMEOUT;
; genAssign
	mov	_delay_halt+0, #0xff
;	User/menu.c: 104: break;
; genGoto
	jp	00135$
;	User/menu.c: 106: case KEY_LEFT:                       //左
; genLabel
00109$:
;	User/menu.c: 107: menu_index=MenuTab[menu_index].keyleft;
; skipping iCode since result will be rematerialized
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
	ld	a, (0x3, x)
	ld	_menu_index+0, a
;	User/menu.c: 108: delay_halt=HALT_TIMEOUT;
; genAssign
	mov	_delay_halt+0, #0xff
;	User/menu.c: 109: break;
; genGoto
	jp	00135$
;	User/menu.c: 111: case KEY_RIGHT:                      //右
; genLabel
00110$:
;	User/menu.c: 112: menu_index=MenuTab[menu_index].keyright;
; skipping iCode since result will be rematerialized
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
	ld	a, (0x4, x)
	ld	_menu_index+0, a
;	User/menu.c: 113: delay_halt=HALT_TIMEOUT;
; genAssign
	mov	_delay_halt+0, #0xff
;	User/menu.c: 114: break;
; genGoto
	jp	00135$
;	User/menu.c: 116: case KEY_MENU:                       //回车键,找出新的菜单状态编号
; genLabel
00111$:
;	User/menu.c: 117: menu_index=MenuTab[menu_index].keymenu;
; skipping iCode since result will be rematerialized
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
	ld	a, (0x5, x)
	ld	_menu_index+0, a
;	User/menu.c: 118: delay_halt=HALT_TIMEOUT;
; genAssign
	mov	_delay_halt+0, #0xff
;	User/menu.c: 119: break;
; genGoto
	jp	00135$
;	User/menu.c: 122: if((menu_index>=0) && (menu_index<=3))
; genLabel
00115$:
; genCmp
; genCmpTnz
	ld	a, _menu_index+0
	cp	a, #0x03
; peephole j5 changed absolute to relative unconditional jump.
	jrugt	00114$
; peephole j17 removed jp by using inverse jump logic
; peephole j30 removed unused label 00428$.
; skipping generated iCode
;	User/menu.c: 124: MenuTab[menu_index].OnShow();
; skipping iCode since result will be rematerialized
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
	ldw	x, (0x6, x)
; genCall
	call	(x)
; genLabel
00114$:
;	User/menu.c: 126: delay_halt=HALT_TIMEOUT;
; genAssign
	mov	_delay_halt+0, #0xff
;	User/menu.c: 127: if(phalen)
; genIfx
	ldw	x, (0x07, sp)
	jrne	00429$
	ldw	x, (0x05, sp)
	jrne	00429$
	jp	00160$
; peephole j1 jumped to 00160$ directly instead of via 00117$.
00429$:
;	User/menu.c: 129: rtc_get_datetime();
; genCall
	call	_rtc_get_datetime
;	User/menu.c: 130: Record_SaveNew((uint8_t *)adjustdt.dt, phalen);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
; genSend
	ldw	x, #(_adjustdt+1)
; genCall
	call	_Record_SaveNew
; genLabel
; peephole j30 removed unused label 00117$.
;	User/menu.c: 134: return;
; genReturn
	jp	00160$
;	User/menu.c: 136: case FRESH_TIME:					//时间刷新，需重新显示
; genLabel
00118$:
;	User/menu.c: 137: if(menu_index==4||menu_index==6)
; genCmpEQorNE
	ld	a, _menu_index+0
	cp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00119$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00431$.
; skipping generated iCode
; genCmpEQorNE
	ld	a, _menu_index+0
	cp	a, #0x06
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00434$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00120$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00435$.
; skipping generated iCode
; genLabel
00119$:
;	User/menu.c: 138: MenuTab[menu_index].OnShow();
; skipping iCode since result will be rematerialized
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
	ldw	x, (0x6, x)
; genCall
	call	(x)
; genLabel
00120$:
;	User/menu.c: 139: if(delay_halt--)//按键动作、雷击事件显示完成，延时HALT_TIMEOUT秒后进入省电状态
; genAssign
	ld	a, _delay_halt+0
; genMinus
	dec	_delay_halt+0
; genIfx
	tnz	a
	jrne	00436$
	jp	00160$
; peephole j1 jumped to 00160$ directly instead of via 00133$.
00436$:
;	User/menu.c: 141: if(0==delay_halt)
; genIfx
	tnz	_delay_halt+0
	jreq	00437$
	jp	00160$
; peephole j1 jumped to 00160$ directly instead of via 00133$.
00437$:
;	User/menu.c: 143: if((strokeA.tim_trg>0)&&(strokeB.tim_trg>0)&&(strokeC.tim_trg>0))//三相雷击停止设备进入休眠状态，等待外部中断唤醒
; skipping iCode since result will be rematerialized
; genPointerGet
; genIfx
	ld	a, _strokeA+0
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00126$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00438$.
; skipping iCode since result will be rematerialized
; genPointerGet
; genIfx
	ld	a, _strokeB+0
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00126$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00439$.
; skipping iCode since result will be rematerialized
; genPointerGet
; genIfx
	ld	a, _strokeC+0
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00126$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00440$.
;	User/menu.c: 146: Storage_SaveAllStats();//先保存统计数据
; genCall
	call	_Storage_SaveAllStats
;	User/menu.c: 147: if(System_GetMode())//进入省电模式
; genCall
	call	_System_GetMode
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00123$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00441$.
;	User/menu.c: 149: LCD_BKLIGHT_0;
; genSend
	ld	a, #0x02
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_ResetBits
;	User/menu.c: 150: clear_screen();
; genCall
	call	_clear_screen
;	User/menu.c: 151: GPIO_Init(GPIOB,GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|GPIO_Pin_5|GPIO_Pin_6|GPIO_Pin_7,GPIO_Mode_Out_OD_Low_Slow);//LCD 控制脚省电处理
; genIPush
	push	#0x80
; genSend
	ld	a, #0xfe
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_Init
;	User/menu.c: 153: disp_tag=2;
; genAssign
	mov	_Menu_Proc_disp_tag_10000_701+0, #0x02
;	User/menu.c: 154: halt();
;	genInline
	halt
; genGoto
	jp	00160$
; peephole j1 jumped to 00160$ directly instead of via 00133$.
; genLabel
00123$:
;	User/menu.c: 158: last_menu=0;
; genAssign
	clr	_Menu_Proc_last_menu_10000_701+0
;	User/menu.c: 159: menu_index=0;
; genAssign
	clr	_menu_index+0
;	User/menu.c: 160: clear_screen();
; genCall
	call	_clear_screen
;	User/menu.c: 161: DspOne();
; genCall
	call	_DspOne
; genGoto
	jp	00160$
; peephole j1 jumped to 00160$ directly instead of via 00133$.
; genLabel
00126$:
;	User/menu.c: 165: delay_halt=3;
; genAssign
	mov	_delay_halt+0, #0x03
; genLabel
; peephole j30 removed unused label 00133$.
;	User/menu.c: 168: return;
; genReturn
	jp	00160$
;	User/menu.c: 169: default:   		                    //按键值错误的处理
; genLabel
00134$:
;	User/menu.c: 170: key_val=Keyvalue;
; genAssign
	ld	a, (0x02, sp)
	ld	_Menu_Proc_key_val_10000_701+0, a
;	User/menu.c: 172: return;
; genReturn
	jp	00160$
;	User/menu.c: 174: }
; genLabel
00135$:
;	User/menu.c: 176: if(menu_index <= 6)
; genCmp
; genCmpTnz
	ld	a, _menu_index+0
	cp	a, #0x06
	jrule	00442$
	jp	00157$
00442$:
; skipping generated iCode
;	User/menu.c: 178: if(last_menu != menu_index)//菜单切换
; genCmpEQorNE
	ld	a, _menu_index+0
	cp	a, _Menu_Proc_last_menu_10000_701+0
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00154$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00444$.
; skipping generated iCode
;	User/menu.c: 180: if ((Keyvalue==KEY_MENU)&&(MenuTab[last_menu].OnMenu !=0))//执行菜单跳转前的保存工作
; genCmpEQorNE
	ld	a, (0x02, sp)
	cp	a, #0x0c
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00447$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00137$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00448$.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; genMult
	ld	a, _Menu_Proc_last_menu_10000_701+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
; genIfx
	ldw	x, (0x10, x)
; peephole 31w removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00137$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00449$.
;	User/menu.c: 181: MenuTab[last_menu].OnMenu();
; genAssign
; genCall
	call	(x)
; genLabel
00137$:
;	User/menu.c: 183: clear_screen();//切换屏前清屏
; genCall
	call	_clear_screen
;	User/menu.c: 185: if(MenuTab[menu_index].OnShow != 0)
; skipping iCode since result will be rematerialized
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
; genIfx
	ldw	x, (0x6, x)
; peephole 31w removed redundant tnzw.
	jrne	00450$
	jp	00157$
00450$:
;	User/menu.c: 186: MenuTab[menu_index].OnShow();
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
	ldw	x, (0x6, x)
; genCall
	call	(x)
; genGoto
	jp	00157$
; genLabel
00154$:
;	User/menu.c: 191: if ((Keyvalue==KEY_UP)&&(MenuTab[menu_index].OnUp !=0))
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00142$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00451$.
; skipping iCode since result will be rematerialized
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
; genIfx
	ldw	x, (0x8, x)
; peephole 31w removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00142$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00452$.
;	User/menu.c: 192: MenuTab[menu_index].OnUp();
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
	ldw	x, (0x8, x)
; genCall
	call	(x)
; genLabel
00142$:
;	User/menu.c: 193: if ((Keyvalue==KEY_DOWN)&&(MenuTab[menu_index].OnDown !=0))
; genCmpEQorNE
	ld	a, (0x02, sp)
	cp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00454$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00145$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00455$.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
; genIfx
	ldw	x, (0xa, x)
; peephole 31w removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00145$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00456$.
;	User/menu.c: 194: MenuTab[menu_index].OnDown();
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
	ldw	x, (0xa, x)
; genCall
	call	(x)
; genLabel
00145$:
;	User/menu.c: 195: if ((Keyvalue==KEY_LEFT)&&(MenuTab[menu_index].OnLeft !=0))
; genCmpEQorNE
	ld	a, (0x02, sp)
	cp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00458$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00148$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00459$.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
; genIfx
	ldw	x, (0xc, x)
; peephole 31w removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00148$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00460$.
;	User/menu.c: 196: MenuTab[menu_index].OnLeft();
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
	ldw	x, (0xc, x)
; genCall
	call	(x)
; genLabel
00148$:
;	User/menu.c: 197: if ((Keyvalue==KEY_RIGHT)&&(MenuTab[menu_index].OnRight !=0))
; genCmpEQorNE
	ld	a, (0x02, sp)
	cp	a, #0x07
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00462$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00157$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00463$.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
; genIfx
	ldw	x, (0xe, x)
; peephole 31w removed redundant tnzw.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00157$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00464$.
;	User/menu.c: 198: MenuTab[menu_index].OnRight();
; genMult
	ld	a, _menu_index+0
	ld	xl, a
	ld	a, #0x12
	mul	x, a
; genPlus
	addw	x, #(_MenuTab+0)
; genPointerGet
	ldw	x, (0xe, x)
; genCall
	call	(x)
; genLabel
00157$:
;	User/menu.c: 201: last_menu=menu_index;//保存上一次菜单值，用于识别菜单是否已跳转
; genAssign
	mov	_Menu_Proc_last_menu_10000_701+0, _menu_index+0
; genLabel
00160$:
;	User/menu.c: 202: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #8
	jp	(x)
;	Total Menu_Proc function size at codegen: 5 bytes.
;	User/menu.c: 205: static void Draw_Stat_Columns(uint8_t row, const char* label, uint32_t count, uint32_t val)
; genLabel
;	-----------------------------------------
;	 function Draw_Stat_Columns
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 14 bytes.
_Draw_Stat_Columns:
	sub	sp, #14
; genReceive
; genReceive
;	User/menu.c: 210: show_str_8x12(row, 2, (uint8_t *)label);
; genCast
; genAssign
	ld	(0x0e, sp), a
	clr	(0x0d, sp)
; genIPush
	pushw	x
; genIPush
	push	#0x02
	push	#0x00
; genSend
	ldw	x, (0x11, sp)
; genCall
	call	_show_str_8x12
;	User/menu.c: 213: mini_sprintf(buf, "%5ld", count);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x13, sp)
	pushw	x
	ldw	x, (0x13, sp)
	pushw	x
; genIPush
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
; genIPush
	ldw	x, sp
	addw	x, #7
	pushw	x
; genCall
	call	_mini_sprintf
	addw	sp, #8
;	User/menu.c: 214: show_str_8x12(row, 48, (uint8_t *)buf);
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
; genIPush
	push	#0x30
	push	#0x00
; genSend
	ldw	x, (0x11, sp)
; genCall
	call	_show_str_8x12
;	User/menu.c: 218: mini_sprintf(buf, "%6ld", val);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x17, sp)
	pushw	x
	ldw	x, (0x17, sp)
	pushw	x
; genIPush
	push	#<(___str_1+0)
	push	#((___str_1+0) >> 8)
; genIPush
	ldw	x, sp
	addw	x, #7
	pushw	x
; genCall
	call	_mini_sprintf
	addw	sp, #8
;	User/menu.c: 219: show_str_8x12(row, 80, (uint8_t *)buf); // 88->80以留足更长数字空间
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
; genIPush
	push	#0x50
	push	#0x00
; genSend
	ldw	x, (0x11, sp)
; genCall
	call	_show_str_8x12
; genLabel
; peephole j30 removed unused label 00101$.
;	User/menu.c: 220: }
; genEndFunction
	ldw	x, (15, sp)
	addw	sp, #24
	jp	(x)
;	Total Draw_Stat_Columns function size at codegen: 5 bytes.
;	User/menu.c: 223: static void Draw_Table_Header(const char* title, uint8_t page_num)
; genLabel
;	-----------------------------------------
;	 function Draw_Table_Header
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 5 bytes.
_Draw_Table_Header:
	sub	sp, #5
; genReceive
; genReceive
	ld	(0x05, sp), a
;	User/menu.c: 226: show_str_7x8(1, 1, "<");             // 左翻页角标
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	pushw	x
	push	#<(___str_2+0)
	push	#((___str_2+0) >> 8)
; genIPush
	push	#0x01
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_7x8
;	User/menu.c: 227: show_str_7x8(1, 10, (uint8_t *)title); // 标题
; genIPush
; peephole 6a removed dead popw / pushw pair.
; genIPush
	push	#0x0a
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_7x8
;	User/menu.c: 228: show_str_7x8(1, 120, ">");           // 右翻页角标
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_3+0)
	push	#((___str_3+0) >> 8)
; genIPush
	push	#0x78
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_7x8
;	User/menu.c: 232: uint8_t buf[4] = {'0', '/', '8', 0};
; genAddrOf
	ldw	x, sp
	incw	x
; genPointerSet
	ld	a, #0x30
	ld	(x), a
; skipping iCode since result will be rematerialized
; genPointerSet
	ld	a, #0x2f
	ld	(0x02, sp), a
; skipping iCode since result will be rematerialized
; genPointerSet
	ld	a, #0x38
	ld	(0x03, sp), a
; skipping iCode since result will be rematerialized
; genPointerSet
	clr	(0x04, sp)
;	User/menu.c: 233: buf[0] = '0' + page_num;
; genCast
; genAssign
	ld	a, (0x05, sp)
; genPlus
	add	a, #0x30
; genPointerSet
	ld	(x), a
;	User/menu.c: 234: show_str_7x8(1, 95, buf);
; genCast
; genAssign
; genIPush
	pushw	x
; genIPush
	push	#0x5f
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_7x8
;	User/menu.c: 240: show_str_7x8(2, 2,  "PHASE");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
; genIPush
	push	#0x02
	push	#0x00
; genSend
	ldw	x, #0x0002
; genCall
	call	_show_str_7x8
;	User/menu.c: 241: show_str_7x8(2, 54, "TIMES");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_5+0)
	push	#((___str_5+0) >> 8)
; genIPush
	push	#0x36
	push	#0x00
; genSend
	ldw	x, #0x0002
; genCall
	call	_show_str_7x8
;	User/menu.c: 242: show_str_7x8(2, 94, "MAX_uS");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_6+0)
	push	#((___str_6+0) >> 8)
; genIPush
	push	#0x5e
	push	#0x00
; genSend
	ldw	x, #0x0002
; genCall
	call	_show_str_7x8
; genLabel
; peephole j30 removed unused label 00101$.
;	User/menu.c: 243: }
; genEndFunction
	addw	sp, #5
	ret
;	Total Draw_Table_Header function size at codegen: 3 bytes.
;	User/menu.c: 248: static void Draw_Page_Num(uint8_t page)
; genLabel
;	-----------------------------------------
;	 function Draw_Page_Num
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_Draw_Page_Num:
	sub	sp, #4
; genReceive
	ld	yl, a
;	User/menu.c: 250: uint8_t buf[4] = {'0', '/', '8', 0};
; genAddrOf
	ldw	x, sp
	incw	x
; genPointerSet
	ld	a, #0x30
	ld	(x), a
; skipping iCode since result will be rematerialized
; genPointerSet
	ld	a, #0x2f
	ld	(0x02, sp), a
; skipping iCode since result will be rematerialized
; genPointerSet
	ld	a, #0x38
	ld	(0x03, sp), a
; skipping iCode since result will be rematerialized
; genPointerSet
	clr	(0x04, sp)
;	User/menu.c: 251: buf[0] = '0' + page;
; genCast
; genAssign
	ld	a, yl
; genPlus
	add	a, #0x30
; genPointerSet
	ld	(x), a
;	User/menu.c: 252: show_str_7x8(1, 80, buf);
; genCast
; genAssign
; genIPush
	pushw	x
; genIPush
	push	#0x50
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_7x8
; genLabel
; peephole j30 removed unused label 00101$.
;	User/menu.c: 253: }
; genEndFunction
	addw	sp, #4
	ret
;	Total Draw_Page_Num function size at codegen: 3 bytes.
;	User/menu.c: 256: void DspOne(void)
; genLabel
;	-----------------------------------------
;	 function DspOne
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 8 bytes.
_DspOne:
	sub	sp, #8
;	User/menu.c: 258: show_str_8x12(1,1,"<");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_2+0)
	push	#((___str_2+0) >> 8)
; genIPush
	push	#0x01
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 259: if(adjustdt.dt[11])
; skipping iCode since result will be rematerialized
; genPointerGet
; genIfx
	ld	a, _adjustdt+12
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	User/menu.c: 261: show_hz_12x12(1,14,"MO");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_7+0)
	push	#((___str_7+0) >> 8)
; genIPush
	push	#0x0e
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_hz_12x12
;	User/menu.c: 262: show_hz_12x12(1,44,"UW]_");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_8+0)
	push	#((___str_8+0) >> 8)
; genIPush
	push	#0x2c
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_hz_12x12
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/menu.c: 265: show_str_7x8(1,26,"_SINGLE_L");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_9+0)
	push	#((___str_9+0) >> 8)
; genIPush
	push	#0x1a
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_7x8
; genLabel
00103$:
;	User/menu.c: 266: show_str_8x12(1,120,">");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_3+0)
	push	#((___str_3+0) >> 8)
; genIPush
	push	#0x78
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 268: Draw_Stat_Columns(3, "A-D", Record_GetStat(A)->tscount, Record_GetStat(A)->tlmax);
; genSend
	ld	a, #0x01
; genCall
	call	_Record_GetStat
; genAssign
; genPointerGet
	ldw	y, x
	ldw	y, (0x4, y)
	ldw	(0x03, sp), y
	ldw	x, (0x2, x)
	ldw	(0x01, sp), x
; genSend
	ld	a, #0x01
; genCall
	call	_Record_GetStat
; genPointerGet
	ldw	x, (x)
; genCast
; genAssign
	ldw	(0x07, sp), x
	clrw	y
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
; genIPush
	ldw	x, (0x0b, sp)
	pushw	x
	pushw	y
; genSend
	ldw	x, #(___str_10+0)
; genSend
	ld	a, #0x03
; genCall
	call	_Draw_Stat_Columns
;	User/menu.c: 269: Draw_Stat_Columns(5, "B-D", Record_GetStat(B)->tscount, Record_GetStat(B)->tlmax);
; genSend
	ld	a, #0x02
; genCall
	call	_Record_GetStat
; genAssign
; genPointerGet
	ldw	y, x
	ldw	y, (0x4, y)
	ldw	(0x03, sp), y
	ldw	x, (0x2, x)
	ldw	(0x01, sp), x
; genSend
	ld	a, #0x02
; genCall
	call	_Record_GetStat
; genPointerGet
	ldw	x, (x)
; genCast
; genAssign
	ldw	(0x07, sp), x
	clrw	y
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
; genIPush
	ldw	x, (0x0b, sp)
	pushw	x
	pushw	y
; genSend
	ldw	x, #(___str_11+0)
; genSend
	ld	a, #0x05
; genCall
	call	_Draw_Stat_Columns
;	User/menu.c: 270: Draw_Stat_Columns(7, "C-D", Record_GetStat(C)->tscount, Record_GetStat(C)->tlmax);
; genSend
	ld	a, #0x04
; genCall
	call	_Record_GetStat
; genAssign
; genPointerGet
	ldw	y, x
	ldw	y, (0x4, y)
	ldw	(0x03, sp), y
	ldw	x, (0x2, x)
	ldw	(0x01, sp), x
; genSend
	ld	a, #0x04
; genCall
	call	_Record_GetStat
; genPointerGet
	ldw	x, (x)
; genCast
; genAssign
	ldw	(0x07, sp), x
	clrw	y
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
; genIPush
	ldw	x, (0x0b, sp)
	pushw	x
	pushw	y
; genSend
	ldw	x, #(___str_12+0)
; genSend
	ld	a, #0x07
; genCall
	call	_Draw_Stat_Columns
; genLabel
; peephole j30 removed unused label 00104$.
;	User/menu.c: 271: }
; genEndFunction
	addw	sp, #8
	ret
;	Total DspOne function size at codegen: 3 bytes.
;	User/menu.c: 274: void DspOne_Plus(void)
; genLabel
;	-----------------------------------------
;	 function DspOne_Plus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 8 bytes.
_DspOne_Plus:
	sub	sp, #8
;	User/menu.c: 276: show_str_8x12(1,1,"<");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_2+0)
	push	#((___str_2+0) >> 8)
; genIPush
	push	#0x01
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 277: if(adjustdt.dt[11])
; skipping iCode since result will be rematerialized
; genPointerGet
; genIfx
	ld	a, _adjustdt+12
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	User/menu.c: 279: show_hz_12x12(1,14,"MO");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_7+0)
	push	#((___str_7+0) >> 8)
; genIPush
	push	#0x0e
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_hz_12x12
;	User/menu.c: 280: show_hz_12x12(1,44,"UW]_");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_8+0)
	push	#((___str_8+0) >> 8)
; genIPush
	push	#0x2c
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_hz_12x12
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/menu.c: 283: show_str_7x8(1,26,"_SINGLE_L");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_9+0)
	push	#((___str_9+0) >> 8)
; genIPush
	push	#0x1a
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_7x8
; genLabel
00103$:
;	User/menu.c: 284: show_str_8x12(1,120,">");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_3+0)
	push	#((___str_3+0) >> 8)
; genIPush
	push	#0x78
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 286: Draw_Stat_Columns(3, "A-B", Record_GetStat(AB)->tscount, Record_GetStat(AB)->tlmax);
; genSend
	ld	a, #0x03
; genCall
	call	_Record_GetStat
; genAssign
; genPointerGet
	ldw	y, x
	ldw	y, (0x4, y)
	ldw	(0x03, sp), y
	ldw	x, (0x2, x)
	ldw	(0x01, sp), x
; genSend
	ld	a, #0x03
; genCall
	call	_Record_GetStat
; genPointerGet
	ldw	x, (x)
; genCast
; genAssign
	ldw	(0x07, sp), x
	clrw	y
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
; genIPush
	ldw	x, (0x0b, sp)
	pushw	x
	pushw	y
; genSend
	ldw	x, #(___str_13+0)
; genSend
	ld	a, #0x03
; genCall
	call	_Draw_Stat_Columns
;	User/menu.c: 287: Draw_Stat_Columns(5, "A-C", Record_GetStat(AC)->tscount, Record_GetStat(AC)->tlmax);
; genSend
	ld	a, #0x05
; genCall
	call	_Record_GetStat
; genAssign
; genPointerGet
	ldw	y, x
	ldw	y, (0x4, y)
	ldw	(0x03, sp), y
	ldw	x, (0x2, x)
	ldw	(0x01, sp), x
; genSend
	ld	a, #0x05
; genCall
	call	_Record_GetStat
; genPointerGet
	ldw	x, (x)
; genCast
; genAssign
	ldw	(0x07, sp), x
	clrw	y
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
; genIPush
	ldw	x, (0x0b, sp)
	pushw	x
	pushw	y
; genSend
	ldw	x, #(___str_14+0)
; genSend
	ld	a, #0x05
; genCall
	call	_Draw_Stat_Columns
;	User/menu.c: 288: Draw_Stat_Columns(7, "B-C", Record_GetStat(BC)->tscount, Record_GetStat(BC)->tlmax);
; genSend
	ld	a, #0x06
; genCall
	call	_Record_GetStat
; genAssign
; genPointerGet
	ldw	y, x
	ldw	y, (0x4, y)
	ldw	(0x03, sp), y
	ldw	x, (0x2, x)
	ldw	(0x01, sp), x
; genSend
	ld	a, #0x06
; genCall
	call	_Record_GetStat
; genPointerGet
	ldw	x, (x)
; genCast
; genAssign
	ldw	(0x07, sp), x
	clrw	y
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
; genIPush
	ldw	x, (0x0b, sp)
	pushw	x
	pushw	y
; genSend
	ldw	x, #(___str_15+0)
; genSend
	ld	a, #0x07
; genCall
	call	_Draw_Stat_Columns
; genLabel
; peephole j30 removed unused label 00104$.
;	User/menu.c: 289: }
; genEndFunction
	addw	sp, #8
	ret
;	Total DspOne_Plus function size at codegen: 3 bytes.
;	User/menu.c: 293: void DspTwo(void)
; genLabel
;	-----------------------------------------
;	 function DspTwo
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 8 bytes.
_DspTwo:
	sub	sp, #8
;	User/menu.c: 295: show_str_8x12(1,1,"<");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_2+0)
	push	#((___str_2+0) >> 8)
; genIPush
	push	#0x01
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 296: show_hz_12x12(1,14,"u");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_16+0)
	push	#((___str_16+0) >> 8)
; genIPush
	push	#0x0e
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_hz_12x12
;	User/menu.c: 297: if(adjustdt.dt[11])
; skipping iCode since result will be rematerialized
; genPointerGet
; genIfx
	ld	a, _adjustdt+12
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	User/menu.c: 299: show_hz_12x12(1,26,"]gM");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_17+0)
	push	#((___str_17+0) >> 8)
; genIPush
	push	#0x1a
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_hz_12x12
;	User/menu.c: 300: show_hz_12x12(1,66,"eY[");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_18+0)
	push	#((___str_18+0) >> 8)
; genIPush
	push	#0x42
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_hz_12x12
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/menu.c: 303: show_str_7x8(1,26,"_TOTAL__L");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_19+0)
	push	#((___str_19+0) >> 8)
; genIPush
	push	#0x1a
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_7x8
; genLabel
00103$:
;	User/menu.c: 304: show_str_8x12(1,102,"EG");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_20+0)
	push	#((___str_20+0) >> 8)
; genIPush
	push	#0x66
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 305: show_str_8x12(1,120,">");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_3+0)
	push	#((___str_3+0) >> 8)
; genIPush
	push	#0x78
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 307: Draw_Stat_Columns(3, "A-D", Record_GetStat(A)->tscount, Record_GetStat(A)->tltotal);
; genSend
	ld	a, #0x01
; genCall
	call	_Record_GetStat
; genAssign
; genPointerGet
	ldw	y, x
	ldw	y, (0x8, y)
	ldw	(0x03, sp), y
	ldw	x, (0x6, x)
	ldw	(0x01, sp), x
; genSend
	ld	a, #0x01
; genCall
	call	_Record_GetStat
; genPointerGet
	ldw	x, (x)
; genCast
; genAssign
	ldw	(0x07, sp), x
	clrw	y
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
; genIPush
	ldw	x, (0x0b, sp)
	pushw	x
	pushw	y
; genSend
	ldw	x, #(___str_10+0)
; genSend
	ld	a, #0x03
; genCall
	call	_Draw_Stat_Columns
;	User/menu.c: 308: Draw_Stat_Columns(5, "B-D", Record_GetStat(B)->tscount, Record_GetStat(B)->tltotal);
; genSend
	ld	a, #0x02
; genCall
	call	_Record_GetStat
; genAssign
; genPointerGet
	ldw	y, x
	ldw	y, (0x8, y)
	ldw	(0x03, sp), y
	ldw	x, (0x6, x)
	ldw	(0x01, sp), x
; genSend
	ld	a, #0x02
; genCall
	call	_Record_GetStat
; genPointerGet
	ldw	x, (x)
; genCast
; genAssign
	ldw	(0x07, sp), x
	clrw	y
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
; genIPush
	ldw	x, (0x0b, sp)
	pushw	x
	pushw	y
; genSend
	ldw	x, #(___str_11+0)
; genSend
	ld	a, #0x05
; genCall
	call	_Draw_Stat_Columns
;	User/menu.c: 309: Draw_Stat_Columns(7, "C-D", Record_GetStat(C)->tscount, Record_GetStat(C)->tltotal);
; genSend
	ld	a, #0x04
; genCall
	call	_Record_GetStat
; genAssign
; genPointerGet
	ldw	y, x
	ldw	y, (0x8, y)
	ldw	(0x03, sp), y
	ldw	x, (0x6, x)
	ldw	(0x01, sp), x
; genSend
	ld	a, #0x04
; genCall
	call	_Record_GetStat
; genPointerGet
	ldw	x, (x)
; genCast
; genAssign
	ldw	(0x07, sp), x
	clrw	y
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
; genIPush
	ldw	x, (0x0b, sp)
	pushw	x
	pushw	y
; genSend
	ldw	x, #(___str_12+0)
; genSend
	ld	a, #0x07
; genCall
	call	_Draw_Stat_Columns
; genLabel
; peephole j30 removed unused label 00104$.
;	User/menu.c: 310: }
; genEndFunction
	addw	sp, #8
	ret
;	Total DspTwo function size at codegen: 3 bytes.
;	User/menu.c: 312: void DspTwo_Plus(void)
; genLabel
;	-----------------------------------------
;	 function DspTwo_Plus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 8 bytes.
_DspTwo_Plus:
	sub	sp, #8
;	User/menu.c: 314: show_str_8x12(1,1,"<");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_2+0)
	push	#((___str_2+0) >> 8)
; genIPush
	push	#0x01
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 315: show_hz_12x12(1,14,"w");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_21+0)
	push	#((___str_21+0) >> 8)
; genIPush
	push	#0x0e
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_hz_12x12
;	User/menu.c: 316: if(adjustdt.dt[11])
; skipping iCode since result will be rematerialized
; genPointerGet
; genIfx
	ld	a, _adjustdt+12
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	User/menu.c: 318: show_hz_12x12(1,26,"]gM");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_17+0)
	push	#((___str_17+0) >> 8)
; genIPush
	push	#0x1a
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_hz_12x12
;	User/menu.c: 319: show_hz_12x12(1,66,"eY[");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_18+0)
	push	#((___str_18+0) >> 8)
; genIPush
	push	#0x42
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_hz_12x12
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/menu.c: 322: show_str_7x8(1,26,"_TOTAL__L");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_19+0)
	push	#((___str_19+0) >> 8)
; genIPush
	push	#0x1a
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_7x8
; genLabel
00103$:
;	User/menu.c: 323: show_str_8x12(1,102,"EG");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_20+0)
	push	#((___str_20+0) >> 8)
; genIPush
	push	#0x66
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 324: show_str_8x12(1,120,">");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_3+0)
	push	#((___str_3+0) >> 8)
; genIPush
	push	#0x78
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 326: Draw_Stat_Columns(3, "A-B", Record_GetStat(AB)->tscount, Record_GetStat(AB)->tltotal);
; genSend
	ld	a, #0x03
; genCall
	call	_Record_GetStat
; genAssign
; genPointerGet
	ldw	y, x
	ldw	y, (0x8, y)
	ldw	(0x03, sp), y
	ldw	x, (0x6, x)
	ldw	(0x01, sp), x
; genSend
	ld	a, #0x03
; genCall
	call	_Record_GetStat
; genPointerGet
	ldw	x, (x)
; genCast
; genAssign
	ldw	(0x07, sp), x
	clrw	y
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
; genIPush
	ldw	x, (0x0b, sp)
	pushw	x
	pushw	y
; genSend
	ldw	x, #(___str_13+0)
; genSend
	ld	a, #0x03
; genCall
	call	_Draw_Stat_Columns
;	User/menu.c: 327: Draw_Stat_Columns(5, "A-C", Record_GetStat(AC)->tscount, Record_GetStat(AC)->tltotal);
; genSend
	ld	a, #0x05
; genCall
	call	_Record_GetStat
; genAssign
; genPointerGet
	ldw	y, x
	ldw	y, (0x8, y)
	ldw	(0x03, sp), y
	ldw	x, (0x6, x)
	ldw	(0x01, sp), x
; genSend
	ld	a, #0x05
; genCall
	call	_Record_GetStat
; genPointerGet
	ldw	x, (x)
; genCast
; genAssign
	ldw	(0x07, sp), x
	clrw	y
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
; genIPush
	ldw	x, (0x0b, sp)
	pushw	x
	pushw	y
; genSend
	ldw	x, #(___str_14+0)
; genSend
	ld	a, #0x05
; genCall
	call	_Draw_Stat_Columns
;	User/menu.c: 328: Draw_Stat_Columns(7, "B-C", Record_GetStat(BC)->tscount, Record_GetStat(BC)->tltotal);
; genSend
	ld	a, #0x06
; genCall
	call	_Record_GetStat
; genAssign
; genPointerGet
	ldw	y, x
	ldw	y, (0x8, y)
	ldw	(0x03, sp), y
	ldw	x, (0x6, x)
	ldw	(0x01, sp), x
; genSend
	ld	a, #0x06
; genCall
	call	_Record_GetStat
; genPointerGet
	ldw	x, (x)
; genCast
; genAssign
	ldw	(0x07, sp), x
	clrw	y
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
; genIPush
	ldw	x, (0x0b, sp)
	pushw	x
	pushw	y
; genSend
	ldw	x, #(___str_15+0)
; genSend
	ld	a, #0x07
; genCall
	call	_Draw_Stat_Columns
; genLabel
; peephole j30 removed unused label 00104$.
;	User/menu.c: 329: }
; genEndFunction
	addw	sp, #8
	ret
;	Total DspTwo_Plus function size at codegen: 3 bytes.
;	User/menu.c: 333: void DspThree(void)
; genLabel
;	-----------------------------------------
;	 function DspThree
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 26 bytes.
_DspThree:
	sub	sp, #26
;	User/menu.c: 339: zhen=Verfin/1000;
; genIPush
	push	#0xe8
	push	#0x03
	clrw	x
	pushw	x
; genIPush
	ldw	x, _Verfin+2
	pushw	x
	ldw	x, _Verfin+0
	pushw	x
; genCall
	call	__divulong
	addw	sp, #8
; genCast
; genAssign
	ldw	(0x16, sp), x
;	User/menu.c: 340: xiao=Verfin%1000;
; genIPush
	push	#0xe8
	push	#0x03
	clrw	x
	pushw	x
; genIPush
	ldw	x, _Verfin+2
	pushw	x
	ldw	x, _Verfin+0
	pushw	x
; genCall
	call	__modulong
	addw	sp, #8
; genCast
; genAssign
;	User/menu.c: 341: xiao=xiao/10;
; genCast
; genAssign
; genDivMod
	ldw	y, #0x000a
	divw	x, y
; genCast
; genAssign
	ldw	(0x18, sp), x
;	User/menu.c: 343: memset(buf,0,20);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x14
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, sp
	addw	x, #5
; genCall
	call	_memset
;	User/menu.c: 344: show_str_8x12(1,1,UI_ICON_ARROW_L);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_2+0)
	push	#((___str_2+0) >> 8)
; genIPush
	push	#0x01
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 346: show_hz_12x12(1,14,"y");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_22+0)
	push	#((___str_22+0) >> 8)
; genIPush
	push	#0x0e
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_hz_12x12
;	User/menu.c: 347: if(adjustdt.dt[11])
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
; genIfx
	ld	a, _adjustdt+12
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00178$.
;	User/menu.c: 349: show_hz_12x12(1,26,"]m]]o");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_23+0)
	push	#((___str_23+0) >> 8)
; genIPush
	push	#0x1a
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_hz_12x12
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/menu.c: 352: show_str_7x8(1,26,UI_TITLE_CONFIG);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_24+0)
	push	#((___str_24+0) >> 8)
; genIPush
	push	#0x1a
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_7x8
; genLabel
00103$:
;	User/menu.c: 354: show_str_8x12(1,120,UI_ICON_ARROW_R);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_3+0)
	push	#((___str_3+0) >> 8)
; genIPush
	push	#0x78
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 356: if(System_GetMode())
; genCall
	call	_System_GetMode
;	User/menu.c: 367: mini_sprintf(buf,"%d;%02dV",zhen,xiao);//显示电池电压
; skipping iCode since result will be rematerialized
;	User/menu.c: 356: if(System_GetMode())
; genIfx
	tnz	a
	jrne	00179$
	jp	00118$
00179$:
;	User/menu.c: 358: if(Verfin>2800)//显示电量多少
; genCmp
; genCmpTnz
	ldw	x, #0x0af0
	cpw	x, _Verfin+2
	clr	a
	sbc	a, _Verfin+1
	clr	a
	sbc	a, _Verfin+0
	clr	a
	rlc	a
; genIfx
	ld	(0x1a, sp), a
; peephole 31a removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00115$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00180$.
;	User/menu.c: 359: show_str_8x12(3,110,UI_ICON_BATT_FULL);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_25+0)
	push	#((___str_25+0) >> 8)
; genIPush
	push	#0x6e
	push	#0x00
; genSend
	ldw	x, #0x0003
; genCall
	call	_show_str_8x12
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00115$:
;	User/menu.c: 360: else if(Verfin > 2600 && Verfin <=2800)
; genCmp
; genCmpTnz
	ldw	x, #0x0a28
	cpw	x, _Verfin+2
	clr	a
	sbc	a, _Verfin+1
	clr	a
	sbc	a, _Verfin+0
	clr	a
	rlc	a
; genIfx
	ld	yl, a
; peephole 4 removed redundant load from yl into a.
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00111$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00181$.
; genAssign
; genIfx
	ld	a, (0x1a, sp)
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00111$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00182$.
;	User/menu.c: 361: show_str_8x12(3,110,UI_ICON_BATT_HIGH);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_26+0)
	push	#((___str_26+0) >> 8)
; genIPush
	push	#0x6e
	push	#0x00
; genSend
	ldw	x, #0x0003
; genCall
	call	_show_str_8x12
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00111$:
;	User/menu.c: 362: else if(Verfin >2400 && Verfin <=2600)
; genCmp
; genCmpTnz
	ldw	x, #0x0960
	cpw	x, _Verfin+2
	clr	a
	sbc	a, _Verfin+1
	clr	a
	sbc	a, _Verfin+0
	clr	a
; genIfx
	rlc	a
; peephole 24 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00107$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00183$.
; genAssign
; genIfx
	exg	a, yl
	tnz	a
	exg	a, yl
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00107$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00184$.
;	User/menu.c: 363: show_str_8x12(3,110,UI_ICON_BATT_MID);
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, #(___str_27+0)
; genIPush
	pushw	x
; genIPush
	push	#0x6e
	push	#0x00
; genSend
	ldw	x, #0x0003
; genCall
	call	_show_str_8x12
; genGoto
	jra	00116$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00107$:
;	User/menu.c: 364: else if(Verfin <=2400 )
; genAssign
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00116$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00185$.
;	User/menu.c: 365: show_str_8x12(3,110,UI_ICON_BATT_LOW);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_28+0)
	push	#((___str_28+0) >> 8)
; genIPush
	push	#0x6e
	push	#0x00
; genSend
	ldw	x, #0x0003
; genCall
	call	_show_str_8x12
; genLabel
00116$:
;	User/menu.c: 367: mini_sprintf(buf,"%d;%02dV",zhen,xiao);//显示电池电压
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x18, sp)
	pushw	x
; genIPush
	ldw	x, (0x18, sp)
	pushw	x
; genIPush
	push	#<(___str_29+0)
	push	#((___str_29+0) >> 8)
; genIPush
	ldw	x, sp
	addw	x, #7
	pushw	x
; genCall
	call	_mini_sprintf
	addw	sp, #8
;	User/menu.c: 368: show_str_8x12(5,96,(uint8_t *)buf);
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
; genIPush
	push	#0x60
	push	#0x00
; genSend
	ldw	x, #0x0005
; genCall
	call	_show_str_8x12
; genGoto
	jra	00119$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00118$:
;	User/menu.c: 372: show_str_8x12(3,98,UI_ICON_LANG_CN);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_30+0)
	push	#((___str_30+0) >> 8)
; genIPush
	push	#0x62
	push	#0x00
; genSend
	ldw	x, #0x0003
; genCall
	call	_show_str_8x12
;	User/menu.c: 373: mini_sprintf(buf,"     ");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_31+0)
	push	#((___str_31+0) >> 8)
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
; genCall
	call	_mini_sprintf
	addw	sp, #4
;	User/menu.c: 374: show_str_8x12(5,88,(uint8_t *)buf);//3,70
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
; genIPush
	push	#0x58
	push	#0x00
; genSend
	ldw	x, #0x0005
; genCall
	call	_show_str_8x12
; genLabel
00119$:
;	User/menu.c: 376: rtc_get_datetime();
; genCall
	call	_rtc_get_datetime
;	User/menu.c: 377: adjustdt.dt[10]=0;
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_adjustdt+11, #0x00
;	User/menu.c: 378: mini_sprintf(datestr, "%04d-%02d-%02d",adjustdt.dt[0]+2000,adjustdt.dt[1],adjustdt.dt[2]);
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+3
; genCast
; genAssign
	clrw	x
	ld	xl, a
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+2
; genCast
; genAssign
	ld	(0x1a, sp), a
	clr	(0x19, sp)
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+1
; genCast
; genAssign
	clrw	y
; genPlus
	ld	yl, a
	addw	y, #0x07d0
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	pushw	x
; genIPush
	ldw	x, (0x1b, sp)
	pushw	x
; genIPush
	pushw	y
; genIPush
	push	#<(___str_32+0)
	push	#((___str_32+0) >> 8)
; genIPush
	push	#<(_datestr+0)
	push	#((_datestr+0) >> 8)
; genCall
	call	_mini_sprintf
	addw	sp, #10
;	User/menu.c: 379: mini_sprintf(timestr, "%02d:%02d:%02d",adjustdt.dt[3],adjustdt.dt[4],adjustdt.dt[5]);
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+6
; genCast
; genAssign
	clrw	x
	ld	xl, a
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+5
; genCast
; genAssign
	ld	(0x18, sp), a
	clr	(0x17, sp)
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+4
; genCast
; genAssign
	clr	(0x19, sp)
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	pushw	x
; genIPush
	ldw	x, (0x19, sp)
	pushw	x
; genIPush
	push	a
	clr	a
	push	a
; genIPush
	push	#<(___str_33+0)
	push	#((___str_33+0) >> 8)
; genIPush
	push	#<(_timestr+0)
	push	#((_timestr+0) >> 8)
; genCall
	call	_mini_sprintf
	addw	sp, #10
;	User/menu.c: 380: show_str_8x12(3,8,(uint8_t *)datestr);//24
; genIPush
	push	#<(_datestr+0)
	push	#((_datestr+0) >> 8)
; genIPush
	push	#0x08
	push	#0x00
; genSend
	ldw	x, #0x0003
; genCall
	call	_show_str_8x12
;	User/menu.c: 381: show_str_8x12(5,14,(uint8_t *)timestr);//32
; genIPush
	push	#<(_timestr+0)
	push	#((_timestr+0) >> 8)
; genIPush
	push	#0x0e
	push	#0x00
; genSend
	ldw	x, #0x0005
; genCall
	call	_show_str_8x12
;	User/menu.c: 383: adjustdt.dt[6]= 0xff&(selfid/1000000);
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x40
	push	#0x42
	push	#0x0f
	push	#0x00
; genIPush
	ldw	x, _selfid+2
	pushw	x
	ldw	x, _selfid+0
	pushw	x
; genCall
	call	__divulong
	addw	sp, #8
	ld	a, xl
; genCast
; genAssign
; genPointerSet
	ld	_adjustdt+7, a
;	User/menu.c: 384: adjustdt.dt[7]= (selfid/10000)%100;
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x10
	push	#0x27
	clrw	x
	pushw	x
; genIPush
	ldw	x, _selfid+2
	pushw	x
	ldw	x, _selfid+0
	pushw	x
; genCall
	call	__divulong
	addw	sp, #8
; genIPush
	push	#0x64
	push	#0x00
	push	#0x00
	push	#0x00
; genIPush
	pushw	x
	pushw	y
; genCall
	call	__modulong
	addw	sp, #8
	ld	a, xl
; genCast
; genAssign
; genPointerSet
	ld	_adjustdt+8, a
;	User/menu.c: 385: adjustdt.dt[8]= (selfid/100)%100;
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
; genIPush
	ldw	x, _selfid+2
	pushw	x
	ldw	x, _selfid+0
	pushw	x
; genCall
	call	__divulong
	addw	sp, #8
; genIPush
	push	#0x64
	push	#0x00
	push	#0x00
	push	#0x00
; genIPush
	pushw	x
	pushw	y
; genCall
	call	__modulong
	addw	sp, #8
	ld	a, xl
; genCast
; genAssign
; genPointerSet
	ld	_adjustdt+9, a
;	User/menu.c: 386: adjustdt.dt[9]= selfid%100;
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
; genIPush
	ldw	x, _selfid+2
	pushw	x
	ldw	x, _selfid+0
	pushw	x
; genCall
	call	__modulong
	addw	sp, #8
	ld	a, xl
; genCast
; genAssign
; genPointerSet
	ld	_adjustdt+10, a
;	User/menu.c: 387: memset(tempstr,0,16);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x10
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, #(_tempstr+0)
; genCall
	call	_memset
;	User/menu.c: 388: mini_sprintf(tempstr,"ID:%02d%02d%02d%02d",adjustdt.dt[6],adjustdt.dt[7],adjustdt.dt[8],adjustdt.dt[9]);
; genPointerGet
	ld	a, _adjustdt+10
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genPointerGet
	ld	a, _adjustdt+9
; genCast
; genAssign
	ld	(0x16, sp), a
	clr	(0x15, sp)
; genPointerGet
	ld	a, _adjustdt+8
; genCast
; genAssign
	ld	(0x18, sp), a
	clr	(0x17, sp)
; genPointerGet
	ld	a, _adjustdt+7
; genCast
; genAssign
	clr	(0x19, sp)
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	pushw	x
; genIPush
	ldw	x, (0x17, sp)
	pushw	x
; genIPush
	ldw	x, (0x1b, sp)
	pushw	x
; genIPush
	push	a
	clr	a
	push	a
; genIPush
	push	#<(___str_34+0)
	push	#((___str_34+0) >> 8)
; genIPush
	push	#<(_tempstr+0)
	push	#((_tempstr+0) >> 8)
; genCall
	call	_mini_sprintf
	addw	sp, #12
;	User/menu.c: 389: show_str_8x12(7,2,(uint8_t *)tempstr);
; genIPush
	push	#<(_tempstr+0)
	push	#((_tempstr+0) >> 8)
; genIPush
	push	#0x02
	push	#0x00
; genSend
	ldw	x, #0x0007
; genCall
	call	_show_str_8x12
;	User/menu.c: 391: show_str_7x8(8, 100, "V1.0"); // 添加固件版本
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_35+0)
	push	#((___str_35+0) >> 8)
; genIPush
	push	#0x64
	push	#0x00
; genSend
	ldw	x, #0x0008
; genCall
	call	_show_str_7x8
; genLabel
; peephole j30 removed unused label 00120$.
;	User/menu.c: 392: }
; genEndFunction
	addw	sp, #26
	ret
;	Total DspThree function size at codegen: 3 bytes.
;	User/menu.c: 395: void Show_Phase_Rec(void)
; genLabel
;	-----------------------------------------
;	 function Show_Phase_Rec
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 30 bytes.
_Show_Phase_Rec:
	sub	sp, #30
;	User/menu.c: 401: show_str_8x12(1,1,UI_ICON_ARROW_L);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_2+0)
	push	#((___str_2+0) >> 8)
; genIPush
	push	#0x01
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 402: show_str_8x12(1,120,UI_ICON_ARROW_R);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_3+0)
	push	#((___str_3+0) >> 8)
; genIPush
	push	#0x78
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 404: if(adjustdt.dt[11])
; skipping iCode since result will be rematerialized
; genPointerGet
; genIfx
	ld	a, _adjustdt+12
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00138$.
;	User/menu.c: 405: show_hz_12x12(1,24,"ACEG");//事件记录
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_36+0)
	push	#((___str_36+0) >> 8)
; genIPush
	push	#0x18
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_hz_12x12
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/menu.c: 407: show_str_7x8(1,24,UI_TITLE_RECORD);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_37+0)
	push	#((___str_37+0) >> 8)
; genIPush
	push	#0x18
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_7x8
; genLabel
00103$:
;	User/menu.c: 409: memset(buf,0,20);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x14
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, sp
	addw	x, #9
; genCall
	call	_memset
;	User/menu.c: 410: mini_sprintf(buf,"%03d",data_index.r+1);
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _data_index+0
; genCast
; genAssign
	clrw	x
; genPlus
	ld	xl, a
	incw	x
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	pushw	x
; genIPush
	push	#<(___str_38+0)
	push	#((___str_38+0) >> 8)
; genIPush
	ldw	x, sp
	addw	x, #9
	pushw	x
; genCall
	call	_mini_sprintf
	addw	sp, #6
;	User/menu.c: 411: show_str_8x12(1,88,(uint8_t *)buf);
; genIPush
	ldw	x, sp
	addw	x, #5
	pushw	x
; genIPush
	push	#0x58
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 413: memset(buf,0,20);
; genIPush
	push	#0x14
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, sp
	addw	x, #9
; genCall
	call	_memset
;	User/menu.c: 414: mini_sprintf(buf, "%04d-%02d-%02d",Record_GetLRecd()->year+2000,Record_GetLRecd()->mon,Record_GetLRecd()->day);
; genCall
	call	_Record_GetLRecd
; genAssign
; genPointerGet
	ld	a, (0x2, x)
; genCast
; genAssign
	ld	(0x1c, sp), a
	clr	(0x1b, sp)
; genCall
	call	_Record_GetLRecd
; genAssign
; genPointerGet
	ld	a, (0x1, x)
; genCast
; genAssign
	ld	(0x1e, sp), a
	clr	(0x1d, sp)
; genCall
	call	_Record_GetLRecd
; genPointerGet
	ld	a, (x)
; genCast
; genAssign
	clrw	x
; genPlus
	ld	xl, a
	addw	x, #0x07d0
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	y, (0x1b, sp)
	pushw	y
; genIPush
	ldw	y, (0x1f, sp)
	pushw	y
; genIPush
	pushw	x
; genIPush
	push	#<(___str_32+0)
	push	#((___str_32+0) >> 8)
; genIPush
	ldw	x, sp
	addw	x, #13
	pushw	x
; genCall
	call	_mini_sprintf
	addw	sp, #10
;	User/menu.c: 415: show_str_8x12(3,8,(uint8_t *)buf);
; genIPush
	ldw	x, sp
	addw	x, #5
	pushw	x
; genIPush
	push	#0x08
	push	#0x00
; genSend
	ldw	x, #0x0003
; genCall
	call	_show_str_8x12
;	User/menu.c: 417: memset(buf,0,20);
; genIPush
	push	#0x14
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, sp
	addw	x, #9
; genCall
	call	_memset
;	User/menu.c: 418: mini_sprintf(buf, "%02d:%02d:%02d",Record_GetLRecd()->hour,Record_GetLRecd()->min,Record_GetLRecd()->sec);
; genCall
	call	_Record_GetLRecd
; genAssign
; genPointerGet
	ld	a, (0x5, x)
; genCast
; genAssign
	ld	(0x1a, sp), a
	clr	(0x19, sp)
; genCall
	call	_Record_GetLRecd
; genAssign
; genPointerGet
	ld	a, (0x4, x)
; genCast
; genAssign
	ld	(0x1c, sp), a
	clr	(0x1b, sp)
; genCall
	call	_Record_GetLRecd
; genAssign
; genPointerGet
	ld	a, (0x3, x)
; genCast
; genAssign
	clr	(0x1d, sp)
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x19, sp)
	pushw	x
; genIPush
	ldw	x, (0x1d, sp)
	pushw	x
; genIPush
	push	a
	clr	a
	push	a
; genIPush
	push	#<(___str_33+0)
	push	#((___str_33+0) >> 8)
; genIPush
	ldw	x, sp
	addw	x, #13
	pushw	x
; genCall
	call	_mini_sprintf
	addw	sp, #10
;	User/menu.c: 419: show_str_8x12(5,14,(uint8_t *)buf);
; genIPush
	ldw	x, sp
	addw	x, #5
	pushw	x
; genIPush
	push	#0x0e
	push	#0x00
; genSend
	ldw	x, #0x0005
; genCall
	call	_show_str_8x12
;	User/menu.c: 421: tlen=(Record_GetLRecd()->pl & 0x00ffffff);
; genCall
	call	_Record_GetLRecd
; genAssign
; genPointerGet
	ldw	y, x
	ldw	y, (0x8, y)
	ldw	x, (0x6, x)
; genAnd
	ldw	(0x03, sp), y
	exg	a, xl
	ld	(0x02, sp), a
	exg	a, xl
	clr	(0x01, sp)
;	User/menu.c: 422: phase=(Record_GetLRecd()->pl & 0xff000000)>>24;
; genCall
	call	_Record_GetLRecd
; genAssign
; genPointerGet
; peephole 0w removed dead load into y from x.
; peephole 0w removed dead load into y from (0x8, y).
	ldw	x, (0x6, x)
; genAnd
; peephole 3 removed dead clrw of y.
	clr	(0x1c, sp)
	ld	a, xh
; genGetByte
;	User/menu.c: 424: memset(buf,0,20);
; genIPush
	push	a
	push	#0x14
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, sp
	addw	x, #10
; genCall
	call	_memset
	pop	a
;	User/menu.c: 425: switch(phase)
; genCmp
; genCmpTnz
	cp	a, #0x06
; peephole j5 changed absolute to relative unconditional jump.
	jrugt	00110$
; peephole j17 removed jp by using inverse jump logic
; peephole j30 removed unused label 00139$.
; skipping generated iCode
; genJumpTab
	clrw	x
	ld	xl, a
	sllw	x
	ldw	x, (#00140$, x)
	jp	(x)
00140$:
	.dw	#00110$
	.dw	#00104$
	.dw	#00105$
	.dw	#00106$
	.dw	#00107$
	.dw	#00108$
	.dw	#00109$
;	User/menu.c: 427: case 1: mini_sprintf(buf,"A-D"); break;
; genLabel
00104$:
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, #(___str_10+0)
; genIPush
	pushw	x
; genIPush
	ldw	x, sp
	addw	x, #7
	pushw	x
; genCall
	call	_mini_sprintf
	addw	sp, #4
; genGoto
	jra	00111$
; peephole j5 changed absolute to relative unconditional jump.
;	User/menu.c: 428: case 2: mini_sprintf(buf,"B-D"); break;
; genLabel
00105$:
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, #(___str_11+0)
; genIPush
	pushw	x
; genIPush
	ldw	x, sp
	addw	x, #7
	pushw	x
; genCall
	call	_mini_sprintf
	addw	sp, #4
; genGoto
	jra	00111$
; peephole j5 changed absolute to relative unconditional jump.
;	User/menu.c: 429: case 3: mini_sprintf(buf,"A-B"); break;
; genLabel
00106$:
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, #(___str_13+0)
; genIPush
	pushw	x
; genIPush
	ldw	x, sp
	addw	x, #7
	pushw	x
; genCall
	call	_mini_sprintf
	addw	sp, #4
; genGoto
	jra	00111$
; peephole j5 changed absolute to relative unconditional jump.
;	User/menu.c: 430: case 4: mini_sprintf(buf,"C-D"); break;
; genLabel
00107$:
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, #(___str_12+0)
; genIPush
	pushw	x
; genIPush
	ldw	x, sp
	addw	x, #7
	pushw	x
; genCall
	call	_mini_sprintf
	addw	sp, #4
; genGoto
	jra	00111$
; peephole j5 changed absolute to relative unconditional jump.
;	User/menu.c: 431: case 5: mini_sprintf(buf,"A-C"); break;
; genLabel
00108$:
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, #(___str_14+0)
; genIPush
	pushw	x
; genIPush
	ldw	x, sp
	addw	x, #7
	pushw	x
; genCall
	call	_mini_sprintf
	addw	sp, #4
; genGoto
	jra	00111$
; peephole j5 changed absolute to relative unconditional jump.
;	User/menu.c: 432: case 6: mini_sprintf(buf,"B-C"); break;
; genLabel
00109$:
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, #(___str_15+0)
; genIPush
	pushw	x
; genIPush
	ldw	x, sp
	addw	x, #7
	pushw	x
; genCall
	call	_mini_sprintf
	addw	sp, #4
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
;	User/menu.c: 433: default: buf[0] = 0; break;
; genLabel
; genPointerSet
;	User/menu.c: 434: }
; genLabel
	.byte 0xc5
; peephole jrf7 used bcp opcode to jump over 2-byte instruction.
00110$:
	clr	(0x05, sp)
00111$:
;	User/menu.c: 435: show_str_8x12(7, 2, (uint8_t *)buf);
; genIPush
	ldw	x, sp
	addw	x, #5
	pushw	x
; genIPush
	push	#0x02
	push	#0x00
; genSend
	ldw	x, #0x0007
; genCall
	call	_show_str_8x12
;	User/menu.c: 438: memset(buf,0,20);
; genIPush
	push	#0x14
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, sp
	addw	x, #9
; genCall
	call	_memset
;	User/menu.c: 439: mini_sprintf(buf,"%7ld",tlen);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
; genIPush
	push	#<(___str_39+0)
	push	#((___str_39+0) >> 8)
; genIPush
	ldw	x, sp
	addw	x, #11
	pushw	x
; genCall
	call	_mini_sprintf
	addw	sp, #8
;	User/menu.c: 440: show_str_8x12(7, 40, (uint8_t *)buf);
; genIPush
	ldw	x, sp
	addw	x, #5
	pushw	x
; genIPush
	push	#0x28
	push	#0x00
; genSend
	ldw	x, #0x0007
; genCall
	call	_show_str_8x12
;	User/menu.c: 443: if(adjustdt.dt[11])
; genPointerGet
; genIfx
	ld	a, _adjustdt+12
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00113$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00141$.
;	User/menu.c: 444: show_hz_12x12(7,100,"QS");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_40+0)
	push	#((___str_40+0) >> 8)
; genIPush
	push	#0x64
	push	#0x00
; genSend
	ldw	x, #0x0007
; genCall
	call	_show_hz_12x12
; genGoto
	jra	00114$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00113$:
;	User/menu.c: 446: show_str_7x8(7,100,UI_TITLE_COND);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_41+0)
	push	#((___str_41+0) >> 8)
; genIPush
	push	#0x64
	push	#0x00
; genSend
	ldw	x, #0x0007
; genCall
	call	_show_str_7x8
; genLabel
00114$:
;	User/menu.c: 448: Draw_Page_Num(6);
; genSend
	ld	a, #0x06
; genCall
	call	_Draw_Page_Num
; genLabel
; peephole j30 removed unused label 00115$.
;	User/menu.c: 449: }
; genEndFunction
	addw	sp, #30
	ret
;	Total Show_Phase_Rec function size at codegen: 3 bytes.
;	User/menu.c: 451: void DspFour(void)
; genLabel
;	-----------------------------------------
;	 function DspFour
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_DspFour:
;	User/menu.c: 453: if(adjustdt.dt[11])
; skipping iCode since result will be rematerialized
; genPointerGet
; genIfx
	ld	a, _adjustdt+12
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00142$.
;	User/menu.c: 454: show_hz_12x12(1,24,"ACEG");//事件记录
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_36+0)
	push	#((___str_36+0) >> 8)
; genIPush
	push	#0x18
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_hz_12x12
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/menu.c: 456: show_str_7x8(1,24,UI_TITLE_RECORD);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_37+0)
	push	#((___str_37+0) >> 8)
; genIPush
	push	#0x18
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_7x8
; genLabel
00103$:
;	User/menu.c: 459: if(data_index.used)//有效数据
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _data_index+2
;	User/menu.c: 462: data_index.r=data_index.w-1;
; genCast
; genAssign
	ldw	x, #(_data_index+0)
;	User/menu.c: 459: if(data_index.used)//有效数据
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00143$.
;	User/menu.c: 461: if(data_index.w>0)
; skipping iCode since result will be rematerialized
; genPointerGet
; genIfx
	ld	a, _data_index+1
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00144$.
;	User/menu.c: 462: data_index.r=data_index.w-1;
; genCast
; genAssign
; genMinus
	dec	a
; genPointerSet
	ld	(x), a
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	User/menu.c: 464: data_index.r=89;
; genPointerSet
	ld	a, #0x59
	ld	(x), a
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	User/menu.c: 467: data_index.r=0;
; genPointerSet
	clr	(x)
; genLabel
00109$:
;	User/menu.c: 469: if(Record_LoadHistory(2))
; genSend
	ld	a, #0x02
; genCall
	call	_Record_LoadHistory
; genIfx
	tnz	a
	jrne	00145$
	ret
; peephole j2e replaced jump by return.
00145$:
;	User/menu.c: 471: Show_Phase_Rec();
; genCall
; genLabel
; peephole j30 removed unused label 00112$.
;	User/menu.c: 473: }
; genEndFunction
	jp	_Show_Phase_Rec
; peephole 52 removed unreachable ret.
;	Total DspFour function size at codegen: 1 bytes.
;	User/menu.c: 475: void Left_Four(void)
; genLabel
;	-----------------------------------------
;	 function Left_Four
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_Left_Four:
;	User/menu.c: 477: clear_screen();
; genCall
	call	_clear_screen
;	User/menu.c: 478: if(Record_LoadHistory(0))
; genSend
	clr	a
; genCall
	call	_Record_LoadHistory
; genIfx
	tnz	a
	jrne	00112$
	ret
; peephole j2e replaced jump by return.
00112$:
;	User/menu.c: 480: Show_Phase_Rec();
; genCall
; genLabel
; peephole j30 removed unused label 00103$.
;	User/menu.c: 482: }
; genEndFunction
	jp	_Show_Phase_Rec
; peephole 52 removed unreachable ret.
;	Total Left_Four function size at codegen: 1 bytes.
;	User/menu.c: 484: void Right_Four(void)
; genLabel
;	-----------------------------------------
;	 function Right_Four
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_Right_Four:
;	User/menu.c: 486: clear_screen();
; genCall
	call	_clear_screen
;	User/menu.c: 487: if(Record_LoadHistory(1))
; genSend
	ld	a, #0x01
; genCall
	call	_Record_LoadHistory
; genIfx
	tnz	a
	jrne	00112$
	ret
; peephole j2e replaced jump by return.
00112$:
;	User/menu.c: 489: Show_Phase_Rec();
; genCall
; genLabel
; peephole j30 removed unused label 00103$.
;	User/menu.c: 492: }
; genEndFunction
	jp	_Show_Phase_Rec
; peephole 52 removed unreachable ret.
;	Total Right_Four function size at codegen: 1 bytes.
;	User/menu.c: 495: void show_datetime(void)
; genLabel
;	-----------------------------------------
;	 function show_datetime
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 6 bytes.
_show_datetime:
	sub	sp, #6
;	User/menu.c: 499: show_str_8x12(1,1,UI_ICON_ARROW_L);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_2+0)
	push	#((___str_2+0) >> 8)
; genIPush
	push	#0x01
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 500: show_str_8x12(1,120,UI_ICON_ARROW_R);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_3+0)
	push	#((___str_3+0) >> 8)
; genIPush
	push	#0x78
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 501: show_str_8x12(3,1,"R");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_42+0)
	push	#((___str_42+0) >> 8)
; genIPush
	push	#0x01
	push	#0x00
; genSend
	ldw	x, #0x0003
; genCall
	call	_show_str_8x12
;	User/menu.c: 502: show_str_8x12(7,1,"S");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_43+0)
	push	#((___str_43+0) >> 8)
; genIPush
	push	#0x01
	push	#0x00
; genSend
	ldw	x, #0x0007
; genCall
	call	_show_str_8x12
;	User/menu.c: 504: Draw_Page_Num(7);
; genSend
	ld	a, #0x07
; genCall
	call	_Draw_Page_Num
;	User/menu.c: 506: mini_sprintf(datestr, "%04d-%02d-%02d",adjustdt.dt[0]+2000,adjustdt.dt[1],adjustdt.dt[2]);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+3
; genCast
; genAssign
	clrw	x
	ld	xl, a
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+2
; genCast
; genAssign
	ld	(0x06, sp), a
	clr	(0x05, sp)
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+1
; genCast
; genAssign
	clrw	y
; genPlus
	ld	yl, a
	addw	y, #0x07d0
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	pushw	x
; genIPush
	ldw	x, (0x07, sp)
	pushw	x
; genIPush
	pushw	y
; genIPush
	push	#<(___str_32+0)
	push	#((___str_32+0) >> 8)
; genIPush
	push	#<(_datestr+0)
	push	#((_datestr+0) >> 8)
; genCall
	call	_mini_sprintf
	addw	sp, #10
;	User/menu.c: 507: mini_sprintf(timestr, "%02d:%02d:%02d",adjustdt.dt[3],adjustdt.dt[4],adjustdt.dt[5]);
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+6
; genCast
; genAssign
	clrw	x
	ld	xl, a
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+5
; genCast
; genAssign
	ld	(0x04, sp), a
	clr	(0x03, sp)
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+4
; genCast
; genAssign
	clr	(0x05, sp)
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	pushw	x
; genIPush
	ldw	x, (0x05, sp)
	pushw	x
; genIPush
	push	a
	clr	a
	push	a
; genIPush
	push	#<(___str_33+0)
	push	#((___str_33+0) >> 8)
; genIPush
	push	#<(_timestr+0)
	push	#((_timestr+0) >> 8)
; genCall
	call	_mini_sprintf
	addw	sp, #10
;	User/menu.c: 508: show_str_8x12(1,25,(uint8_t *)datestr);//3
; genIPush
	push	#<(_datestr+0)
	push	#((_datestr+0) >> 8)
; genIPush
	push	#0x19
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 509: show_str_8x12(3,25,(uint8_t *)timestr);//6
; genIPush
	push	#<(_timestr+0)
	push	#((_timestr+0) >> 8)
; genIPush
	push	#0x19
	push	#0x00
; genSend
	ldw	x, #0x0003
; genCall
	call	_show_str_8x12
;	User/menu.c: 511: memset(tempstr,0,16);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x10
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, #(_tempstr+0)
; genCall
	call	_memset
;	User/menu.c: 512: mini_sprintf(tempstr,"ID: %02d%02d%02d%02d",adjustdt.dt[6],adjustdt.dt[7],adjustdt.dt[8],adjustdt.dt[9]);
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+10
; genCast
; genAssign
	clrw	x
	ld	xl, a
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+9
; genCast
; genAssign
	ld	(0x02, sp), a
	clr	(0x01, sp)
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+8
; genCast
; genAssign
	ld	(0x04, sp), a
	clr	(0x03, sp)
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+7
; genCast
; genAssign
	clr	(0x05, sp)
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	pushw	x
; genIPush
	ldw	x, (0x03, sp)
	pushw	x
; genIPush
	ldw	x, (0x07, sp)
	pushw	x
; genIPush
	push	a
	clr	a
	push	a
; genIPush
	push	#<(___str_44+0)
	push	#((___str_44+0) >> 8)
; genIPush
	push	#<(_tempstr+0)
	push	#((_tempstr+0) >> 8)
; genCall
	call	_mini_sprintf
	addw	sp, #12
;	User/menu.c: 513: show_str_8x12(5,25,(uint8_t *)tempstr);
; genIPush
	push	#<(_tempstr+0)
	push	#((_tempstr+0) >> 8)
; genIPush
	push	#0x19
	push	#0x00
; genSend
	ldw	x, #0x0005
; genCall
	call	_show_str_8x12
;	User/menu.c: 516: if(adjustdt.dt[10])//出厂设置
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+11
	ld	(0x02, sp), a
;	User/menu.c: 517: show_str_8x12(adjustdt.pos[10].y,adjustdt.pos[10].x,"J");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+34
	ld	xl, a
; genPointerGet
	ld	a, _adjustdt+33
; genCast
; genAssign
	exg	a, xl
	ld	(0x04, sp), a
	exg	a, xl
	clr	(0x03, sp)
; genCast
; genAssign
	ld	(0x06, sp), a
	clr	(0x05, sp)
;	User/menu.c: 516: if(adjustdt.dt[10])//出厂设置
; genIfx
	tnz	(0x02, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00133$.
;	User/menu.c: 517: show_str_8x12(adjustdt.pos[10].y,adjustdt.pos[10].x,"J");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_45+0)
	push	#((___str_45+0) >> 8)
; genIPush
	ldw	x, (0x05, sp)
	pushw	x
; genSend
	ldw	x, (0x09, sp)
; genCall
	call	_show_str_8x12
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/menu.c: 519: show_str_8x12(adjustdt.pos[10].y,adjustdt.pos[10].x,"K");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_46+0)
	push	#((___str_46+0) >> 8)
; genIPush
	ldw	x, (0x05, sp)
	pushw	x
; genSend
	ldw	x, (0x09, sp)
; genCall
	call	_show_str_8x12
; genLabel
00103$:
;	User/menu.c: 521: if(adjustdt.dt[11])//中文界面下显示 “EN”
; skipping iCode since result will be rematerialized
; genPointerGet
;	User/menu.c: 524: show_str_8x12(adjustdt.pos[11].y,adjustdt.pos[11].x,"WK");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
;	User/menu.c: 521: if(adjustdt.dt[11])//中文界面下显示 “EN”
; genIfx
	ld	a, _adjustdt+12
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00134$.
;	User/menu.c: 523: show_hz_12x12(7,25,"ikmo]");//"出厂设置"
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_47+0)
	push	#((___str_47+0) >> 8)
; genIPush
	push	#0x19
	push	#0x00
; genSend
	ldw	x, #0x0007
; genCall
	call	_show_hz_12x12
;	User/menu.c: 524: show_str_8x12(adjustdt.pos[11].y,adjustdt.pos[11].x,"WK");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+36
; genCast
; genAssign
	clrw	y
	ld	yl, a
; genPointerGet
	ld	a, _adjustdt+35
; genCast
; genAssign
	clrw	x
; genIPush
	push	#<(___str_48+0)
	push	#((___str_48+0) >> 8)
; genIPush
	pushw	y
; genSend
	ld	xl, a
; genCall
	call	_show_str_8x12
; genGoto
	jra	00106$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	User/menu.c: 528: show_hz_12x12(7,25,"]]]]]");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_49+0)
	push	#((___str_49+0) >> 8)
; genIPush
	push	#0x19
	push	#0x00
; genSend
	ldw	x, #0x0007
; genCall
	call	_show_hz_12x12
;	User/menu.c: 529: show_str_7x8(7,25,"DEFAULT");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_50+0)
	push	#((___str_50+0) >> 8)
; genIPush
	push	#0x19
	push	#0x00
; genSend
	ldw	x, #0x0007
; genCall
	call	_show_str_7x8
;	User/menu.c: 530: show_hz_12x12(adjustdt.pos[11].y,adjustdt.pos[11].x,"a");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+36
; genCast
; genAssign
	clrw	y
	ld	yl, a
; genPointerGet
	ld	a, _adjustdt+35
; genCast
; genAssign
	clrw	x
; genIPush
	push	#<(___str_51+0)
	push	#((___str_51+0) >> 8)
; genIPush
	pushw	y
; genSend
	ld	xl, a
; genCall
	call	_show_hz_12x12
; genLabel
00106$:
;	User/menu.c: 535: memset(tempstr,0,16);
; genIPush
	push	#0x10
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, #(_tempstr+0)
; genCall
	call	_memset
;	User/menu.c: 536: if(flag)
; genIfx
	ld	a, _show_datetime_flag_10000_755+0
; peephole 625a changed tnz by ld
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00108$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00135$.
;	User/menu.c: 538: flag=0;
; genAssign
	clr	_show_datetime_flag_10000_755+0
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	User/menu.c: 542: flag=1;
; genAssign
	mov	_show_datetime_flag_10000_755+0, #0x01
;	User/menu.c: 543: tempstr[0]=0x20;
; genPointerSet
	mov	_tempstr+0, #0x20
;	User/menu.c: 544: tempstr[1]=0x20;
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_tempstr+1, #0x20
; genLabel
00109$:
;	User/menu.c: 546: show_str_8x12(adjustdt.pos[adjustdt.index].y,adjustdt.pos[adjustdt.index].x,(uint8_t *)tempstr);
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+0
; genLeftShiftLiteral
	sll	a
; genPlus
	clrw	x
	ld	xl, a
	addw	x, #(_adjustdt+13)
; genPointerGet
	push	a
	ld	a, (0x1, x)
	ld	xl, a
	pop	a
; genCast
; genAssign
	clrw	y
	exg	a, yl
	ld	a, xl
	exg	a, yl
; genPlus
	clrw	x
	ld	xl, a
; genPointerGet
; peephole 10b moved addition of offset into storage instruction
	ld	a, (_adjustdt+13, x)
; genCast
; genAssign
	clrw	x
; genIPush
	push	#<(_tempstr+0)
	push	#((_tempstr+0) >> 8)
; genIPush
	pushw	y
; genSend
	ld	xl, a
; genCall
	call	_show_str_8x12
; genLabel
; peephole j30 removed unused label 00110$.
;	User/menu.c: 547: }
; genEndFunction
	addw	sp, #6
	ret
;	Total show_datetime function size at codegen: 3 bytes.
;	User/menu.c: 550: void DspFive(void)
; genLabel
;	-----------------------------------------
;	 function DspFive
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_DspFive:
;	User/menu.c: 552: show_datetime();
; genCall
; genLabel
; peephole j30 removed unused label 00101$.
;	User/menu.c: 554: }
; genEndFunction
	jp	_show_datetime
; peephole 52 removed unreachable ret.
;	Total DspFive function size at codegen: 1 bytes.
;	User/menu.c: 556: void Up_Five(void)
; genLabel
;	-----------------------------------------
;	 function Up_Five
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_Up_Five:
	pushw	x
;	User/menu.c: 558: if(adjustdt.index==10)//Y/N 恢复出厂设置
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	y, #(_adjustdt+0)
; genPointerGet
	ld	a, (y)
;	User/menu.c: 560: if(adjustdt.dt[adjustdt.index])
; skipping iCode since result will be rematerialized
; genPlus
	push	a
	ld	a, (1, sp)
	add	a, #<(_adjustdt+1)
	ld	(0x03, sp), a
	clr	a
	adc	a, #((_adjustdt+1) >> 8)
	ld	(0x02, sp), a
	pop	a
; genPointerGet
	ldw	x, (0x01, sp)
	push	a
	ld	a, (x)
	ld	xl, a
	pop	a
;	User/menu.c: 558: if(adjustdt.index==10)//Y/N 恢复出厂设置
; genCmpEQorNE
	cp	a, #0x0a
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00265$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00141$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00266$.
; skipping generated iCode
;	User/menu.c: 560: if(adjustdt.dt[adjustdt.index])
; genIfx
	ld	a, xl
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00267$.
;	User/menu.c: 561: adjustdt.dt[adjustdt.index]=0;
; genPointerSet
	ldw	x, (0x01, sp)
	clr	(x)
; genGoto
	jra	00142$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/menu.c: 563: adjustdt.dt[adjustdt.index]=1;
; genPointerSet
	ldw	x, (0x01, sp)
	ld	a, #0x01
	ld	(x), a
; genGoto
	jra	00142$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00141$:
;	User/menu.c: 565: else if(adjustdt.index==11)//中/英 
; genCmpEQorNE
	cp	a, #0x0b
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00269$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00138$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00270$.
; skipping generated iCode
;	User/menu.c: 567: if(adjustdt.dt[adjustdt.index])
; genIfx
	ld	a, xl
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00271$.
;	User/menu.c: 568: adjustdt.dt[adjustdt.index]=0;
; genPointerSet
	ldw	x, (0x01, sp)
	clr	(x)
; genGoto
	jra	00142$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	User/menu.c: 570: adjustdt.dt[adjustdt.index]=1;
; genPointerSet
	ldw	x, (0x01, sp)
	ld	a, #0x01
	ld	(x), a
; genGoto
	jra	00142$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00138$:
;	User/menu.c: 574: adjustdt.dt[adjustdt.index]++;
; genPlus
	ld	a, xl
	inc	a
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
;	User/menu.c: 575: if(adjustdt.index==1)//月份
; genPointerGet
	ld	a, (y)
;	User/menu.c: 577: if(adjustdt.dt[adjustdt.index]>12)
; genPlus
	clrw	x
	ld	xl, a
	addw	x, #(_adjustdt+1)
;	User/menu.c: 575: if(adjustdt.index==1)//月份
; genCmpEQorNE
	cp	a, #0x01
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00273$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00135$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00274$.
; skipping generated iCode
;	User/menu.c: 577: if(adjustdt.dt[adjustdt.index]>12)
; genPointerGet
	ld	a, (x)
; genCmp
; genCmpTnz
	cp	a, #0x0c
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00142$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00275$.
; skipping generated iCode
;	User/menu.c: 578: adjustdt.dt[adjustdt.index]=1;
; genPointerSet
	ld	a, #0x01
	ld	(x), a
; genGoto
	jra	00142$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00135$:
;	User/menu.c: 580: else if(adjustdt.index==2)//日
; genCmpEQorNE
	cp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00277$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00132$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00278$.
; skipping generated iCode
;	User/menu.c: 582: if(adjustdt.dt[adjustdt.index]>31)
; genPointerGet
	ld	a, (x)
; genCmp
; genCmpTnz
	cp	a, #0x1f
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00142$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00279$.
; skipping generated iCode
;	User/menu.c: 583: adjustdt.dt[adjustdt.index]=1;
; genPointerSet
	ld	a, #0x01
	ld	(x), a
; genGoto
	jra	00142$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00132$:
;	User/menu.c: 585: else if(adjustdt.index==3)//24小时制
; genCmpEQorNE
	cp	a, #0x03
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00281$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00129$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00282$.
; skipping generated iCode
;	User/menu.c: 587: if(adjustdt.dt[adjustdt.index]>23)
; genPointerGet
	ld	a, (x)
; genCmp
; genCmpTnz
	cp	a, #0x17
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00142$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00283$.
; skipping generated iCode
;	User/menu.c: 588: adjustdt.dt[adjustdt.index]=0;
; genPointerSet
	clr	(x)
; genGoto
	jra	00142$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00129$:
;	User/menu.c: 590: else if(adjustdt.index==4)//分
; genCmpEQorNE
	cp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00285$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00126$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00286$.
; skipping generated iCode
;	User/menu.c: 592: if(adjustdt.dt[adjustdt.index]>59)
; genPointerGet
	ld	a, (x)
; genCmp
; genCmpTnz
	cp	a, #0x3b
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00142$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00287$.
; skipping generated iCode
;	User/menu.c: 593: adjustdt.dt[adjustdt.index]=0;
; genPointerSet
	clr	(x)
; genGoto
	jra	00142$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00126$:
;	User/menu.c: 595: else if(adjustdt.index==5)//秒
; genCmpEQorNE
	cp	a, #0x05
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00289$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00123$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00290$.
; skipping generated iCode
;	User/menu.c: 597: if(adjustdt.dt[adjustdt.index]>59)
; genPointerGet
	ld	a, (x)
; genCmp
; genCmpTnz
	cp	a, #0x3b
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00142$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00291$.
; skipping generated iCode
;	User/menu.c: 598: adjustdt.dt[adjustdt.index]=0;
; genPointerSet
	clr	(x)
; genGoto
	jra	00142$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00123$:
;	User/menu.c: 600: else if(adjustdt.index>5 && adjustdt.index<10 )//ID 6 ~ 9
; genCmp
; genCmpTnz
	cp	a, #0x05
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00142$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00292$.
; skipping generated iCode
; genCmp
; genCmpTnz
	cp	a, #0x0a
; peephole j5 changed absolute to relative unconditional jump.
	jrnc	00142$
; peephole j6 removed jra by using inverse jump logic
; peephole j30 removed unused label 00293$.
; skipping generated iCode
;	User/menu.c: 602: if(adjustdt.dt[adjustdt.index]>99)
; genPointerGet
	ld	a, (x)
; genCmp
; genCmpTnz
	cp	a, #0x63
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00142$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00294$.
; skipping generated iCode
;	User/menu.c: 603: adjustdt.dt[adjustdt.index]=0;
; genPointerSet
	clr	(x)
; genLabel
00142$:
;	User/menu.c: 607: show_datetime();
; genCall
	popw	x
; genLabel
; peephole j30 removed unused label 00143$.
;	User/menu.c: 608: }
; genEndFunction
; peephole 53b removed unreachable popw.
	jp	_show_datetime
; peephole 52 removed unreachable ret.
;	Total Up_Five function size at codegen: 2 bytes.
;	User/menu.c: 610: void Down_Five(void)
; genLabel
;	-----------------------------------------
;	 function Down_Five
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_Down_Five:
	pushw	x
;	User/menu.c: 612: if(adjustdt.index==0)//年
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, #(_adjustdt+0)
; genPointerGet
	ldw	(0x01, sp), x
; peephole 4w removed redundant load from (0x01, sp) into x.
	ld	a, (x)
;	User/menu.c: 614: if(adjustdt.dt[adjustdt.index]>0)
; skipping iCode since result will be rematerialized
; genPlus
	clrw	x
	ld	xl, a
	addw	x, #(_adjustdt+1)
;	User/menu.c: 612: if(adjustdt.index==0)//年
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00162$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00341$.
;	User/menu.c: 614: if(adjustdt.dt[adjustdt.index]>0)
; genPointerGet
; genIfx
	ld	a, (x)
; peephole 30 removed redundant tnz.
	jrne	00342$
	jp	00163$
00342$:
;	User/menu.c: 615: adjustdt.dt[adjustdt.index]--;
; genMinus
	dec	a
; genPointerSet
	ld	(x), a
; genGoto
	jp	00163$
; genLabel
00162$:
;	User/menu.c: 617: else if(adjustdt.index==1)//月份
; genCmpEQorNE
	cp	a, #0x01
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00344$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00159$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00345$.
; skipping generated iCode
;	User/menu.c: 619: if(adjustdt.dt[adjustdt.index]>=1)
; genPointerGet
	ld	a, (x)
; genCmp
; genCmpTnz
	cp	a, #0x01
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00104$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00346$.
; skipping generated iCode
;	User/menu.c: 620: adjustdt.dt[adjustdt.index]--;
; genMinus
	dec	a
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	User/menu.c: 621: if(adjustdt.dt[adjustdt.index]==0)
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genPlus
	clrw	x
	ld	xl, a
	addw	x, #(_adjustdt+1)
; genPointerGet
; genIfx
	ld	a, (x)
; peephole 30 removed redundant tnz.
	jreq	00347$
	jp	00163$
00347$:
;	User/menu.c: 622: adjustdt.dt[adjustdt.index]=12;
; genPointerSet
	ld	a, #0x0c
	ld	(x), a
; genGoto
	jp	00163$
; genLabel
00159$:
;	User/menu.c: 624: else if(adjustdt.index==2)//日
; genCmpEQorNE
	cp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00349$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00156$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00350$.
; skipping generated iCode
;	User/menu.c: 627: if(adjustdt.dt[adjustdt.index]>=1)
; genPointerGet
	ld	a, (x)
; genCmp
; genCmpTnz
	cp	a, #0x01
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00108$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00351$.
; skipping generated iCode
;	User/menu.c: 628: adjustdt.dt[adjustdt.index]--;
; genMinus
	dec	a
; genPointerSet
	ld	(x), a
; genLabel
00108$:
;	User/menu.c: 629: if(adjustdt.dt[adjustdt.index]==0)
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genPlus
	clrw	x
	ld	xl, a
	addw	x, #(_adjustdt+1)
; genPointerGet
; genIfx
	ld	a, (x)
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00163$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00352$.
;	User/menu.c: 630: adjustdt.dt[adjustdt.index]=31;
; genPointerSet
	ld	a, #0x1f
	ld	(x), a
; genGoto
	jra	00163$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00156$:
;	User/menu.c: 632: else if(adjustdt.index==3)//24小时制
; genCmpEQorNE
	cp	a, #0x03
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00354$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00153$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00355$.
; skipping generated iCode
;	User/menu.c: 634: if(adjustdt.dt[adjustdt.index]>0)
; genPointerGet
; genIfx
	ld	a, (x)
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00114$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00356$.
;	User/menu.c: 635: adjustdt.dt[adjustdt.index]--;
; genMinus
	dec	a
; genPointerSet
	ld	(x), a
; genGoto
	jra	00163$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00114$:
;	User/menu.c: 636: else if(adjustdt.dt[adjustdt.index]==0)
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00163$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00357$.
;	User/menu.c: 637: adjustdt.dt[adjustdt.index]=23;
; genPointerSet
	ld	a, #0x17
	ld	(x), a
; genGoto
	jra	00163$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00153$:
;	User/menu.c: 639: else if(adjustdt.index==4)//分
; genCmpEQorNE
	cp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00359$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00150$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00360$.
; skipping generated iCode
;	User/menu.c: 641: if(adjustdt.dt[adjustdt.index]>0)
; genPointerGet
; genIfx
	ld	a, (x)
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00119$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00361$.
;	User/menu.c: 642: adjustdt.dt[adjustdt.index]--;
; genMinus
	dec	a
; genPointerSet
	ld	(x), a
; genGoto
	jra	00163$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00119$:
;	User/menu.c: 643: else if(adjustdt.dt[adjustdt.index]==0)
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00163$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00362$.
;	User/menu.c: 644: adjustdt.dt[adjustdt.index]=59;
; genPointerSet
	ld	a, #0x3b
	ld	(x), a
; genGoto
	jra	00163$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00150$:
;	User/menu.c: 646: else if(adjustdt.index==5)//秒
; genCmpEQorNE
	cp	a, #0x05
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00364$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00147$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00365$.
; skipping generated iCode
;	User/menu.c: 648: if(adjustdt.dt[adjustdt.index]>0)
; genPointerGet
; genIfx
	ld	a, (x)
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00124$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00366$.
;	User/menu.c: 649: adjustdt.dt[adjustdt.index]--;
; genMinus
	dec	a
; genPointerSet
	ld	(x), a
; genGoto
	jra	00163$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00124$:
;	User/menu.c: 650: else if(adjustdt.dt[adjustdt.index]==0)
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00163$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00367$.
;	User/menu.c: 651: adjustdt.dt[adjustdt.index]=59;
; genPointerSet
	ld	a, #0x3b
	ld	(x), a
; genGoto
	jra	00163$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00147$:
;	User/menu.c: 653: else if(adjustdt.index>5 && adjustdt.index<10 )//ID
; genCmp
; genCmpTnz
	cp	a, #0x05
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00143$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00368$.
; skipping generated iCode
; genCmp
; genCmpTnz
	cp	a, #0x0a
; peephole j5 changed absolute to relative unconditional jump.
	jrnc	00143$
; peephole j6 removed jra by using inverse jump logic
; peephole j30 removed unused label 00369$.
; skipping generated iCode
;	User/menu.c: 655: if(adjustdt.dt[adjustdt.index]>0)
; genPointerGet
; genIfx
	ld	a, (x)
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00129$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00370$.
;	User/menu.c: 656: adjustdt.dt[adjustdt.index]--;
; genMinus
	dec	a
; genPointerSet
	ld	(x), a
; genGoto
	jra	00163$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00129$:
;	User/menu.c: 657: else if(adjustdt.dt[adjustdt.index]==0)
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00163$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00371$.
;	User/menu.c: 658: adjustdt.dt[adjustdt.index]=99;
; genPointerSet
	ld	a, #0x63
	ld	(x), a
; genGoto
	jra	00163$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00143$:
;	User/menu.c: 660: else if(adjustdt.index==10)//Y/N
; genCmpEQorNE
	cp	a, #0x0a
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00373$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00140$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00374$.
; skipping generated iCode
;	User/menu.c: 662: if(adjustdt.dt[adjustdt.index])
; genPointerGet
; genIfx
	ld	a, (x)
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00132$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00375$.
;	User/menu.c: 663: adjustdt.dt[adjustdt.index]=0;
; genPointerSet
	clr	(x)
; genGoto
	jra	00163$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00132$:
;	User/menu.c: 665: adjustdt.dt[adjustdt.index]=1;
; genPointerSet
	ld	a, #0x01
	ld	(x), a
; genGoto
	jra	00163$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00140$:
;	User/menu.c: 667: else if(adjustdt.index==11)//中/英
; genCmpEQorNE
	cp	a, #0x0b
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00377$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00163$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00378$.
; skipping generated iCode
;	User/menu.c: 669: if(adjustdt.dt[adjustdt.index])
; genPointerGet
; genIfx
	ld	a, (x)
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00135$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00379$.
;	User/menu.c: 670: adjustdt.dt[adjustdt.index]=0;
; genPointerSet
	clr	(x)
; genGoto
	jra	00163$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00135$:
;	User/menu.c: 672: adjustdt.dt[adjustdt.index]=1;
; genPointerSet
	ld	a, #0x01
	ld	(x), a
; genLabel
00163$:
;	User/menu.c: 674: show_datetime();
; genCall
	popw	x
; genLabel
; peephole j30 removed unused label 00164$.
;	User/menu.c: 676: }
; genEndFunction
; peephole 53b removed unreachable popw.
	jp	_show_datetime
; peephole 52 removed unreachable ret.
;	Total Down_Five function size at codegen: 2 bytes.
;	User/menu.c: 678: void Left_Five(void)
; genLabel
;	-----------------------------------------
;	 function Left_Five
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_Left_Five:
;	User/menu.c: 681: if(adjustdt.index)
; genAddrOf
	ldw	x, #_adjustdt+0
; genCast
; genAssign
; genPointerGet
; genIfx
	ld	a, (x)
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	User/menu.c: 682: adjustdt.index--;
; genMinus
	dec	a
; genPointerSet
	ld	(x), a
; genGoto
	ret
; peephole j2e replaced jump by return.
; genLabel
00102$:
;	User/menu.c: 684: adjustdt.index=11;
; genPointerSet
	ld	a, #0x0b
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00104$.
;	User/menu.c: 687: }
; genEndFunction
	ret
;	Total Left_Five function size at codegen: 1 bytes.
;	User/menu.c: 689: void Right_Five(void)
; genLabel
;	-----------------------------------------
;	 function Right_Five
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_Right_Five:
	pushw	x
;	User/menu.c: 692: adjustdt.index=(adjustdt.index+1)%12;
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, #(_adjustdt+0)
; genPointerGet
	ldw	(0x01, sp), x
; peephole 4w removed redundant load from (0x01, sp) into x.
	ld	a, (x)
; genCast
; genAssign
	clrw	x
; genPlus
	ld	xl, a
	incw	x
; genIPush
	push	#0x0c
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
; genLabel
; peephole j30 removed unused label 00101$.
;	User/menu.c: 694: }
; genEndFunction
	popw	x
	ret
;	Total Right_Five function size at codegen: 2 bytes.
;	User/menu.c: 696: void Menu_Five(void)
; genLabel
;	-----------------------------------------
;	 function Menu_Five
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 12 bytes.
_Menu_Five:
	sub	sp, #12
;	User/menu.c: 700: rtc_set_datetime();
; genCall
	call	_rtc_set_datetime
;	User/menu.c: 702: id=(adjustdt.dt[6]*1000000) + (adjustdt.dt[7]*10000) + (adjustdt.dt[8]*100) + adjustdt.dt[9];
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+7
; genCast
; genAssign
	clrw	x
	clr	(0x09, sp)
; genIPush
	push	a
	pushw	x
	clr	a
	push	a
; genIPush
	push	#0x40
	push	#0x42
	push	#0x0f
	push	#0x00
; genCall
	call	__mullong
	addw	sp, #8
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+8
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genIPush
	pushw	x
; genSend
	ldw	x, #0x2710
; genCall
	call	__mulint
; genCast
	ldw	(0x0b, sp), x
	ld	a, (0x0b, sp)
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x0a, sp), a
; genPlus
	ldw	x, (0x0b, sp)
	addw	x, (0x07, sp)
	ldw	(0x03, sp), x
	push	a
	ld	a, (0x0b, sp)
	adc	a, (0x07, sp)
	ld	(0x03, sp), a
	pop	a
	adc	a, (0x05, sp)
	ld	(0x01, sp), a
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+9
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genIPush
	pushw	x
; genSend
	ldw	x, #0x0064
; genCall
	call	__mulint
; genCast
	ldw	(0x07, sp), x
	ld	a, (0x07, sp)
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x06, sp), a
; genPlus
	ldw	x, (0x07, sp)
	addw	x, (0x03, sp)
	ldw	(0x0b, sp), x
	push	a
	ld	a, (0x07, sp)
	adc	a, (0x03, sp)
	ld	(0x0b, sp), a
	pop	a
	adc	a, (0x01, sp)
	ld	(0x09, sp), a
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+10
; genCast
; genAssign
; genCast
; genAssign
	clrw	x
	ldw	(0x05, sp), x
; genPlus
	ld	xl, a
	addw	x, (0x0b, sp)
	ldw	y, (0x05, sp)
	jrnc	00121$
	incw	y
00121$:
	addw	y, (0x09, sp)
;	User/menu.c: 703: if(id!=selfid)
; genCmpEQorNE
	cpw	x, _selfid+2
	jrne	00123$
	cpw	y, _selfid+0
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
00123$:
; skipping generated iCode
;	User/menu.c: 705: selfid=id;
; genAssign
	ldw	_selfid+2, x
	ldw	_selfid+0, y
;	User/menu.c: 706: r485id=(selfid&0xff);
; genCast
; genAssign
	mov	_r485id+0, _selfid+3
; genLabel
00102$:
;	User/menu.c: 710: Storage_SaveSettings(adjustdt.dt[11], adjustdt.dt[6], adjustdt.dt[7], adjustdt.dt[8], adjustdt.dt[9]);
; genPointerGet
	ld	a, _adjustdt+10
	ld	(0x08, sp), a
; genPointerGet
	ld	a, _adjustdt+9
	ld	(0x09, sp), a
; genPointerGet
	ld	a, _adjustdt+8
	ld	(0x0a, sp), a
; genPointerGet
	ld	a, _adjustdt+7
	ld	(0x0b, sp), a
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _adjustdt+12
	ld	(0x0c, sp), a
; genIPush
	ld	a, (0x08, sp)
	push	a
; genIPush
	ld	a, (0x0a, sp)
	push	a
; genIPush
	ld	a, (0x0c, sp)
	push	a
; genIPush
	ld	a, (0x0e, sp)
	push	a
; genSend
	ld	a, (0x10, sp)
; genCall
	call	_Storage_SaveSettings
;	User/menu.c: 712: if(adjustdt.dt[10])//恢复出厂设置
; skipping iCode since result will be rematerialized
; genPointerGet
; genIfx
	ld	a, _adjustdt+11
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00125$.
;	User/menu.c: 714: Sys_Reset();
; genCall
	addw	sp, #12
	jp	_Sys_Reset
; genLabel
00105$:
;	User/menu.c: 716: }
; genEndFunction
	addw	sp, #12
	ret
;	Total Menu_Five function size at codegen: 3 bytes.
;	User/menu.c: 719: void DspSix(void)
; genLabel
;	-----------------------------------------
;	 function DspSix
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_DspSix:
	sub	sp, #4
;	User/menu.c: 722: if(adjustdt.dt[11])
; skipping iCode since result will be rematerialized
; genPointerGet
; genIfx
	ld	a, _adjustdt+12
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	User/menu.c: 723: show_hz_12x12(1,24,"RS485 ]g");// RS485 通信
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_52+0)
	push	#((___str_52+0) >> 8)
; genIPush
	push	#0x18
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_hz_12x12
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/menu.c: 725: show_str_7x8(1,24,"RS485_COM");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_53+0)
	push	#((___str_53+0) >> 8)
; genIPush
	push	#0x18
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_7x8
; genLabel
00103$:
;	User/menu.c: 727: show_str_8x12(1,104,UI_ICON_TIMES); // battery mask
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_20+0)
	push	#((___str_20+0) >> 8)
; genIPush
	push	#0x68
	push	#0x00
; genSend
	clrw	x
	incw	x
; genCall
	call	_show_str_8x12
;	User/menu.c: 730: Draw_Stat_Columns(3, "ADR", r485id, 9600); // reuse format string
; genCast
; genAssign
	ld	a, _r485id+0
	clrw	x
	clr	(0x01, sp)
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x80
	push	#0x25
	push	#0x00
	push	#0x00
; genIPush
	push	a
	pushw	x
	clr	a
	push	a
; genSend
	ldw	x, #(___str_54+0)
; genSend
	ld	a, #0x03
; genCall
	call	_Draw_Stat_Columns
;	User/menu.c: 733: Draw_Stat_Columns(5, "TX", 0, 0); 
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	clrw	x
	pushw	x
	clrw	x
	pushw	x
; genIPush
	clrw	x
	pushw	x
	clrw	x
	pushw	x
; genSend
	ldw	x, #(___str_55+0)
; genSend
	ld	a, #0x05
; genCall
	call	_Draw_Stat_Columns
;	User/menu.c: 736: Draw_Stat_Columns(7, "RX", 0, 0);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	clrw	x
	pushw	x
	clrw	x
	pushw	x
; genIPush
	clrw	x
	pushw	x
	clrw	x
	pushw	x
; genSend
	ldw	x, #(___str_56+0)
; genSend
	ld	a, #0x07
; genCall
	call	_Draw_Stat_Columns
;	User/menu.c: 738: Draw_Page_Num(8);
; genSend
	ld	a, #0x08
; genCall
	addw	sp, #4
; genLabel
; peephole j30 removed unused label 00104$.
;	User/menu.c: 739: }
; genEndFunction
; peephole 53 removed unreachable addw.
	jp	_Draw_Page_Num
; peephole 52 removed unreachable ret.
;	Total DspSix function size at codegen: 3 bytes.
;	User/menu.c: 742: void Menu_Four(void)
; genLabel
;	-----------------------------------------
;	 function Menu_Four
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_Menu_Four:
;	User/menu.c: 744: Storage_ClearHistory();
; genCall
; genLabel
; peephole j30 removed unused label 00101$.
;	User/menu.c: 745: }
; genEndFunction
	jp	_Storage_ClearHistory
; peephole 52 removed unreachable ret.
;	Total Menu_Four function size at codegen: 1 bytes.
;	User/menu.c: 748: void Sys_Reset(void)
; genLabel
;	-----------------------------------------
;	 function Sys_Reset
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_Sys_Reset:
;	User/menu.c: 750: Storage_FactoryReset();
; genCall
; genLabel
; peephole j30 removed unused label 00101$.
;	User/menu.c: 751: }
; genEndFunction
	jp	_Storage_FactoryReset
; peephole 52 removed unreachable ret.
;	Total Sys_Reset function size at codegen: 1 bytes.
	.area CODE
	.area CONST
	.area CONST
_MenuTab:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x05	; 5
	.dw _DspOne
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x05	; 5
	.dw _DspOne_Plus
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x05	; 5
	.dw _DspTwo
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x05	; 5
	.dw _DspTwo_Plus
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x06	; 6
	.dw _DspThree
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.dw _DspFour
	.dw #0x0000
	.dw #0x0000
	.dw _Left_Four
	.dw _Right_Four
	.dw _Menu_Four
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x04	; 4
	.dw _DspFive
	.dw _Up_Five
	.dw _Down_Five
	.dw _Left_Five
	.dw _Right_Five
	.dw _Menu_Five
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x07	; 7
	.dw _DspSix
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.area CODE
	.area CONST
___str_0:
	.ascii "%5ld"
	.db 0x00
	.area CODE
	.area CONST
___str_1:
	.ascii "%6ld"
	.db 0x00
	.area CODE
	.area CONST
___str_2:
	.ascii "<"
	.db 0x00
	.area CODE
	.area CONST
___str_3:
	.ascii ">"
	.db 0x00
	.area CODE
	.area CONST
___str_4:
	.ascii "PHASE"
	.db 0x00
	.area CODE
	.area CONST
___str_5:
	.ascii "TIMES"
	.db 0x00
	.area CODE
	.area CONST
___str_6:
	.ascii "MAX_uS"
	.db 0x00
	.area CODE
	.area CONST
___str_7:
	.ascii "MO"
	.db 0x00
	.area CODE
	.area CONST
___str_8:
	.ascii "UW]_"
	.db 0x00
	.area CODE
	.area CONST
___str_9:
	.ascii "_SINGLE_L"
	.db 0x00
	.area CODE
	.area CONST
___str_10:
	.ascii "A-D"
	.db 0x00
	.area CODE
	.area CONST
___str_11:
	.ascii "B-D"
	.db 0x00
	.area CODE
	.area CONST
___str_12:
	.ascii "C-D"
	.db 0x00
	.area CODE
	.area CONST
___str_13:
	.ascii "A-B"
	.db 0x00
	.area CODE
	.area CONST
___str_14:
	.ascii "A-C"
	.db 0x00
	.area CODE
	.area CONST
___str_15:
	.ascii "B-C"
	.db 0x00
	.area CODE
	.area CONST
___str_16:
	.ascii "u"
	.db 0x00
	.area CODE
	.area CONST
___str_17:
	.ascii "]gM"
	.db 0x00
	.area CODE
	.area CONST
___str_18:
	.ascii "eY["
	.db 0x00
	.area CODE
	.area CONST
___str_19:
	.ascii "_TOTAL__L"
	.db 0x00
	.area CODE
	.area CONST
___str_20:
	.ascii "EG"
	.db 0x00
	.area CODE
	.area CONST
___str_21:
	.ascii "w"
	.db 0x00
	.area CODE
	.area CONST
___str_22:
	.ascii "y"
	.db 0x00
	.area CODE
	.area CONST
___str_23:
	.ascii "]m]]o"
	.db 0x00
	.area CODE
	.area CONST
___str_24:
	.ascii "___CONFIG"
	.db 0x00
	.area CODE
	.area CONST
___str_25:
	.ascii "LMN"
	.db 0x00
	.area CODE
	.area CONST
___str_26:
	.ascii "OMN"
	.db 0x00
	.area CODE
	.area CONST
___str_27:
	.ascii "OPN"
	.db 0x00
	.area CODE
	.area CONST
___str_28:
	.ascii "OPQ"
	.db 0x00
	.area CODE
	.area CONST
___str_29:
	.ascii "%d;%02dV"
	.db 0x00
	.area CODE
	.area CONST
___str_30:
	.ascii "TUV"
	.db 0x00
	.area CODE
	.area CONST
___str_31:
	.ascii "     "
	.db 0x00
	.area CODE
	.area CONST
___str_32:
	.ascii "%04d-%02d-%02d"
	.db 0x00
	.area CODE
	.area CONST
___str_33:
	.ascii "%02d:%02d:%02d"
	.db 0x00
	.area CODE
	.area CONST
___str_34:
	.ascii "ID:%02d%02d%02d%02d"
	.db 0x00
	.area CODE
	.area CONST
___str_35:
	.ascii "V1.0"
	.db 0x00
	.area CODE
	.area CONST
___str_36:
	.ascii "ACEG"
	.db 0x00
	.area CODE
	.area CONST
___str_37:
	.ascii "RECORD"
	.db 0x00
	.area CODE
	.area CONST
___str_38:
	.ascii "%03d"
	.db 0x00
	.area CODE
	.area CONST
___str_39:
	.ascii "%7ld"
	.db 0x00
	.area CODE
	.area CONST
___str_40:
	.ascii "QS"
	.db 0x00
	.area CODE
	.area CONST
___str_41:
	.ascii "COND"
	.db 0x00
	.area CODE
	.area CONST
___str_42:
	.ascii "R"
	.db 0x00
	.area CODE
	.area CONST
___str_43:
	.ascii "S"
	.db 0x00
	.area CODE
	.area CONST
___str_44:
	.ascii "ID: %02d%02d%02d%02d"
	.db 0x00
	.area CODE
	.area CONST
___str_45:
	.ascii "J"
	.db 0x00
	.area CODE
	.area CONST
___str_46:
	.ascii "K"
	.db 0x00
	.area CODE
	.area CONST
___str_47:
	.ascii "ikmo]"
	.db 0x00
	.area CODE
	.area CONST
___str_48:
	.ascii "WK"
	.db 0x00
	.area CODE
	.area CONST
___str_49:
	.ascii "]]]]]"
	.db 0x00
	.area CODE
	.area CONST
___str_50:
	.ascii "DEFAULT"
	.db 0x00
	.area CODE
	.area CONST
___str_51:
	.ascii "a"
	.db 0x00
	.area CODE
	.area CONST
___str_52:
	.ascii "RS485 ]g"
	.db 0x00
	.area CODE
	.area CONST
___str_53:
	.ascii "RS485_COM"
	.db 0x00
	.area CODE
	.area CONST
___str_54:
	.ascii "ADR"
	.db 0x00
	.area CODE
	.area CONST
___str_55:
	.ascii "TX"
	.db 0x00
	.area CODE
	.area CONST
___str_56:
	.ascii "RX"
	.db 0x00
	.area CODE
	.area INITIALIZER
__xinit__menu_index:
	.db #0x04	; 4
__xinit__adjustdt:
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0x01	; 1
	.db #0x41	; 65	'A'
	.db #0x01	; 1
	.db #0x59	; 89	'Y'
	.db #0x03	; 3
	.db #0x19	; 25
	.db #0x03	; 3
	.db #0x31	; 49	'1'
	.db #0x03	; 3
	.db #0x49	; 73	'I'
	.db #0x05	; 5
	.db #0x39	; 57	'9'
	.db #0x05	; 5
	.db #0x49	; 73	'I'
	.db #0x05	; 5
	.db #0x59	; 89	'Y'
	.db #0x05	; 5
	.db #0x69	; 105	'i'
	.db #0x07	; 7
	.db #0x5e	; 94
	.db #0x03	; 3
	.db #0x69	; 105	'i'
__xinit__delay_halt:
	.db #0xff	; 255
__xinit__language:
	.db #0x00	; 0
	.area CABS (ABS)
