;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module eric_proc
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Rs485_GetCfg
	.globl _Get_Record
	.globl _crc_verify
	.globl _Rev16
	.globl _Load_Stat
	.globl _Save_Stat
	.globl _Load_Data
	.globl _Save_Data
	.globl _rtc_set_datetime
	.globl _I2C_WriteByte
	.globl _I2C_ReadByte
	.globl _Uart1_Send
	.globl _Uart1_Init
	.globl _Delay
	.globl ___memcpy
	.globl _memset
	.globl _WWDG_SWReset
	.globl _USART_DeInit
	.globl _GPIO_ReadInputDataBit
	.globl _GPIO_Init
	.globl _r485rlt
	.globl _r485id
	.globl _selfid
	.globl _ticks
	.globl _strokeC
	.globl _strokeB
	.globl _strokeA
	.globl _pkt1
	.globl _rsUbuf
	.globl _c_ackquery
	.globl _m_query
	.globl _c_ackcfg
	.globl _m_cfg
	.globl _lrecd
	.globl _recd
	.globl _MsgSystem
	.globl _single_trg
	.globl _mini_sprintf
	.globl _System_GetMode
	.globl _System_InitMode
	.globl _Record_GetStat
	.globl _Record_GetRecd
	.globl _Record_GetLRecd
	.globl _Storage_SaveAllStats
	.globl _Record_SaveNew
	.globl _Record_LoadHistory
	.globl _CRC_GetModbus16
	.globl _InitMsg
	.globl _SendMsg
	.globl _RevMsg
	.globl _A_Fxn
	.globl _B_Fxn
	.globl _C_Fxn
	.globl _Pkt_485ackquery
	.globl _Rs485_Proc
	.globl _Chk_State
	.globl _Storage_SaveSettings
	.globl _Storage_ClearHistory
	.globl _Storage_FactoryReset
	.globl _Storage_Init
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_single_trg::
	.ds 1
_MsgSystem::
	.ds 290
_recd::
	.ds 10
_lrecd::
	.ds 10
_m_cfg::
	.ds 88
_c_ackcfg::
	.ds 8
_m_query::
	.ds 8
_c_ackquery::
	.ds 128
_rsUbuf::
	.ds 128
_pkt1::
	.ds 128
_A_Fxn_psta_10000_740:
	.ds 4
_B_Fxn_pstb_10000_747:
	.ds 4
_C_Fxn_pstc_10000_754:
	.ds 4
_Rs485_Proc_temp1_10000_793:
	.ds 1
_Rs485_Proc_temp2_10000_793:
	.ds 1
_Rs485_Proc_stateU_10000_793:
	.ds 1
_Rs485_Proc_timeout_10000_793:
	.ds 1
_Chk_State_last_10000_810:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_strokeA::
	.ds 13
_strokeB::
	.ds 13
_strokeC::
	.ds 13
_ticks::
	.ds 4
_stt:
	.ds 70
_selfid::
	.ds 4
_r485id::
	.ds 1
_r485rlt::
	.ds 14
_sysmode:
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
;	User/eric_proc.c: 275: static uint8_t  psta[4] = {0};
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_A_Fxn_psta_10000_740+0, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_A_Fxn_psta_10000_740+1, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_A_Fxn_psta_10000_740+2, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_A_Fxn_psta_10000_740+3, #0x00
;	User/eric_proc.c: 314: static uint8_t  pstb[4] = {0};
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_B_Fxn_pstb_10000_747+0, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_B_Fxn_pstb_10000_747+1, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_B_Fxn_pstb_10000_747+2, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_B_Fxn_pstb_10000_747+3, #0x00
;	User/eric_proc.c: 352: static uint8_t  pstc[4] = {0};
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_C_Fxn_pstc_10000_754+0, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_C_Fxn_pstc_10000_754+1, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_C_Fxn_pstc_10000_754+2, #0x00
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_C_Fxn_pstc_10000_754+3, #0x00
;	User/eric_proc.c: 578: static uint8_t temp1 = 0, temp2 = 0, stateU = 0, timeout = 10;
; genAssign
	clr	_Rs485_Proc_temp1_10000_793+0
; genAssign
	clr	_Rs485_Proc_temp2_10000_793+0
; genAssign
	clr	_Rs485_Proc_stateU_10000_793+0
; genAssign
	mov	_Rs485_Proc_timeout_10000_793+0, #0x0a
;	User/eric_proc.c: 695: static uint8_t last = 0;
; genAssign
	clr	_Chk_State_last_10000_810+0
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	User/eric_proc.c: 6: static void itoa_pad(char **buf, uint32_t val, int width, char pad, int is_signed) {
; genLabel
;	-----------------------------------------
;	 function itoa_pad
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 22 bytes.
_itoa_pad:
	sub	sp, #22
; genReceive
	ldw	(0x13, sp), x
;	User/eric_proc.c: 11: if (is_signed && (int32_t)val < 0) {
; genIfx
	ldw	x, (0x20, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00184$.
; genCast
; genAssign
	ldw	y, (0x1b, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x19, sp)
	ldw	(0x01, sp), y
; genCmp
; genCmpTnz
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrpl	00102$
; peephole j8 removed jra by using inverse jump logic
; peephole j30 removed unused label 00185$.
; skipping generated iCode
;	User/eric_proc.c: 12: *(*buf)++ = '-';
; genPointerGet
	ldw	x, (0x13, sp)
	ldw	x, (x)
; genPlus
	ldw	(0x15, sp), x
; peephole 4w removed redundant load from (0x15, sp) into x.
	incw	x
; genPointerSet
	ldw	y, (0x13, sp)
	ldw	(y), x
; genPointerSet
	ldw	x, (0x15, sp)
	ld	a, #0x2d
	ld	(x), a
;	User/eric_proc.c: 13: val = (uint32_t)(-(int32_t)val);
; genUminus
	ldw	y, (0x03, sp)
	negw	y
	ldw	x, (0x01, sp)
	jrnc	00186$
	incw	x
00186$:
	negw	x
; genCast
; genAssign
; genAssign
	ldw	(0x1b, sp), y
	ldw	(0x19, sp), x
;	User/eric_proc.c: 14: width--;
; genMinus
	ldw	x, (0x1d, sp)
	decw	x
; genAssign
	ldw	(0x1d, sp), x
; genLabel
00102$:
;	User/eric_proc.c: 17: if (val == 0) {
; genIfx
	ldw	x, (0x1b, sp)
	jrne	00122$
; peephole j22 jumped to 00122$ directly instead of via 00187$.
; peephole j30 removed unused label 00187$.
; peephole j5 changed absolute to relative unconditional jump.
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00188$.
;	User/eric_proc.c: 18: temp[i++] = '0';
; skipping iCode since result will be rematerialized
; genAssign
	ldw	x, (0x19, sp)
	jrne	00122$
; peephole 22d removed redundant clrw x.
	incw	x
	ldw	(0x11, sp), x
; genPointerSet
	ld	a, #0x30
	ld	(0x05, sp), a
; genGoto
	jra	00124$
; peephole j5 changed absolute to relative unconditional jump.
;	User/eric_proc.c: 20: while (val > 0) {
; genLabel
00122$:
; skipping iCode since result will be rematerialized
; genAssign
	clrw	x
	ldw	(0x15, sp), x
; genLabel
00104$:
; genIfx
	ldw	x, (0x1b, sp)
	jrne	00189$
	ldw	x, (0x19, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00127$
; peephole j10 removed jra by using inverse jump logic
00189$:
;	User/eric_proc.c: 21: temp[i++] = (val % 10) + '0';
; genPlus
	ldw	x, sp
	addw	x, #5
	addw	x, (0x15, sp)
	ldw	(0x11, sp), x
; genPlus
	ldw	x, (0x15, sp)
	incw	x
	ldw	(0x15, sp), x
; peephole j30 removed unused label 00190$.
; genIPush
	push	#0x0a
	clrw	x
	pushw	x
	push	#0x00
; genIPush
	ldw	x, (0x1f, sp)
	pushw	x
	ldw	x, (0x1f, sp)
	pushw	x
; genCall
	call	__modulong
	addw	sp, #8
; genCast
; genAssign
	ld	a, xl
; genCast
; genAssign
; genPlus
	add	a, #0x30
; genPointerSet
	ldw	x, (0x11, sp)
	ld	(x), a
;	User/eric_proc.c: 22: val /= 10;
; genIPush
	push	#0x0a
	clrw	x
	pushw	x
	push	#0x00
; genIPush
	ldw	x, (0x1f, sp)
	pushw	x
	ldw	x, (0x1f, sp)
	pushw	x
; genCall
	call	__divulong
	addw	sp, #8
; genAssign
	ldw	(0x1b, sp), x
	ldw	(0x19, sp), y
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
;	User/eric_proc.c: 26: while (width > i) {
; genLabel
00127$:
; genAssign
	ldw	y, (0x15, sp)
	ldw	(0x11, sp), y
; genLabel
00124$:
; genAssign
	ldw	y, (0x1d, sp)
	ldw	(0x15, sp), y
; genLabel
00110$:
; genCmp
; genCmpTnz
	ldw	x, (0x15, sp)
	cpw	x, (0x11, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrsle	00126$
; peephole j13 removed jra by using inverse jump logic
; peephole j30 removed unused label 00191$.
; skipping generated iCode
;	User/eric_proc.c: 27: *(*buf)++ = pad;
; genPointerGet
	ldw	x, (0x13, sp)
	ldw	x, (x)
; genPlus
	ldw	(0x03, sp), x
; peephole 4w removed redundant load from (0x03, sp) into x.
	incw	x
; genPointerSet
	ldw	y, (0x13, sp)
	ldw	(y), x
; genPointerSet
	ldw	x, (0x03, sp)
	ld	a, (0x1f, sp)
	ld	(x), a
;	User/eric_proc.c: 28: width--;
; genMinus
	ldw	x, (0x15, sp)
	decw	x
	ldw	(0x15, sp), x
; genGoto
	jra	00110$
; peephole j5 changed absolute to relative unconditional jump.
;	User/eric_proc.c: 31: while (i > 0) {
; genLabel
00126$:
; skipping iCode since result will be rematerialized
; genAssign
	ldw	y, (0x11, sp)
	ldw	(0x15, sp), y
; genLabel
00113$:
; genCmp
; genCmpTnz
	ldw	x, (0x15, sp)
	cpw	x, #0x0000
; peephole j5 changed absolute to relative unconditional jump.
	jrsle	00116$
; peephole j13 removed jra by using inverse jump logic
; peephole j30 removed unused label 00192$.
; skipping generated iCode
;	User/eric_proc.c: 32: *(*buf)++ = temp[--i];
; genPointerGet
	ldw	x, (0x13, sp)
	ldw	x, (x)
; genPlus
	ldw	(0x11, sp), x
; peephole 4w removed redundant load from (0x11, sp) into x.
	incw	x
; genPointerSet
	ldw	y, (0x13, sp)
	ldw	(y), x
; genMinus
	ldw	x, (0x15, sp)
	decw	x
	ldw	(0x15, sp), x
; genPlus
	ldw	x, sp
	addw	x, #5
	addw	x, (0x15, sp)
; genPointerGet
	ld	a, (x)
; genPointerSet
	ldw	x, (0x11, sp)
	ld	(x), a
; genGoto
	jra	00113$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00116$:
;	User/eric_proc.c: 34: }
; genEndFunction
	ldw	x, (23, sp)
	addw	sp, #33
	jp	(x)
;	Total itoa_pad function size at codegen: 5 bytes.
;	User/eric_proc.c: 37: void mini_sprintf(char *buffer, const char *format, ...) {
; genLabel
;	-----------------------------------------
;	 function mini_sprintf
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 12 bytes.
_mini_sprintf:
	sub	sp, #12
;	User/eric_proc.c: 39: va_start(args, format);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPlus
	ldw	x, sp
	addw	x, #19
	ldw	(0x01, sp), x
;	User/eric_proc.c: 46: while (*format) {
; genLabel
00124$:
; genAssign
	ldw	y, (0x11, sp)
; genPointerGet
	ldw	(0x0b, sp), y
	ldw	x, y
; peephole 15 replaced load from (0x0b, sp) into x by load from y into x.
	ld	a, (x)
;	User/eric_proc.c: 82: *buffer++ = *format;
; genAssign
	ldw	y, (0x0f, sp)
	ldw	(0x03, sp), y
;	User/eric_proc.c: 46: while (*format) {
; genIfx
	tnz	a
	jrne	00222$
	jp	00126$
00222$:
;	User/eric_proc.c: 47: if (*format == '%') {
; genCmpEQorNE
	cp	a, #0x25
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00225$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00224$.
	jp	00122$
00225$:
; skipping generated iCode
;	User/eric_proc.c: 48: format++;
; genPlus
	ldw	x, (0x0b, sp)
	incw	x
; genAssign
	ldw	(0x11, sp), x
;	User/eric_proc.c: 49: is_long = 0;
; genAssign
	clr	(0x05, sp)
;	User/eric_proc.c: 50: width = 0;
; genAssign
	clrw	x
	ldw	(0x06, sp), x
;	User/eric_proc.c: 51: pad = ' ';
; genAssign
	ld	a, #0x20
	ld	(0x08, sp), a
;	User/eric_proc.c: 53: if (*format == '0') {
; genAssign
	ldw	y, (0x11, sp)
; genPointerGet
	ldw	(0x09, sp), y
	ldw	x, y
; peephole 15 replaced load from (0x09, sp) into x by load from y into x.
	ld	a, (x)
; genCmpEQorNE
	cp	a, #0x30
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00227$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00134$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00228$.
; skipping generated iCode
;	User/eric_proc.c: 54: pad = '0';
; genAssign
	ld	a, #0x30
	ld	(0x08, sp), a
;	User/eric_proc.c: 55: format++;
; genPlus
	ldw	x, (0x09, sp)
	incw	x
; genAssign
	ldw	(0x0b, sp), x
; peephole 14 replaced load from (0x0b, sp) into y by load from x into y.
	ldw	(0x11, sp), x
; peephole 14a loaded (0x11, sp) directly from x instead of going through y.
;	User/eric_proc.c: 58: while (*format >= '0' && *format <= '9') {
; genLabel
00134$:
; genAssign
	ldw	y, (0x11, sp)
	ldw	(0x0b, sp), y
; genLabel
00104$:
; genPointerGet
	ldw	x, (0x0b, sp)
	ld	a, (x)
;	User/eric_proc.c: 60: format++;
; genPlus
	ldw	y, (0x0b, sp)
	incw	y
;	User/eric_proc.c: 58: while (*format >= '0' && *format <= '9') {
; genCmp
; genCmpTnz
	cp	a, #0x30
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00142$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00229$.
; skipping generated iCode
; genCmp
; genCmpTnz
	cp	a, #0x39
; peephole j5 changed absolute to relative unconditional jump.
	jrugt	00142$
; peephole j17 removed jp by using inverse jump logic
; peephole j30 removed unused label 00230$.
; skipping generated iCode
;	User/eric_proc.c: 59: width = width * 10 + (*format - '0');
; genMult
; genMultLit
	ldw	x, (0x06, sp)
	sllw	x
	sllw	x
	addw	x, (0x06, sp)
	sllw	x
	ldw	(0x0b, sp), x
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genMinus
	subw	x, #0x0030
; genPlus
	addw	x, (0x0b, sp)
	ldw	(0x06, sp), x
;	User/eric_proc.c: 60: format++;
; genAssign
	ldw	(0x0b, sp), y
; genAssign
	ldw	(0x11, sp), y
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00142$:
; genAssign
	ldw	x, (0x0b, sp)
	ldw	(0x11, sp), x
;	User/eric_proc.c: 63: if (*format == 'l') {
; genPointerGet
	ldw	x, (0x0b, sp)
	ld	a, (x)
; genCmpEQorNE
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00232$.
; peephole j5 changed absolute to relative unconditional jump.
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00233$.
; skipping generated iCode
;	User/eric_proc.c: 64: is_long = 1;
; genAssign
	sub	a, #0x6c
	jrne	00108$
	inc	a
; peephole 51 used inc to get #1 into a.
	ld	(0x05, sp), a
;	User/eric_proc.c: 65: format++;
; genAssign
	ldw	(0x11, sp), y
; genLabel
00108$:
;	User/eric_proc.c: 68: if (*format == 'd') {
; genAssign
	ldw	x, (0x11, sp)
; genPointerGet
	ld	a, (x)
;	User/eric_proc.c: 73: int ival = va_arg(args, int);
; genPlus
	ldw	y, (0x01, sp)
	addw	y, #0x0002
; genMinus
	ldw	x, y
	decw	x
	decw	x
;	User/eric_proc.c: 68: if (*format == 'd') {
; genCmpEQorNE
	cp	a, #0x64
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00235$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00119$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00236$.
; skipping generated iCode
;	User/eric_proc.c: 69: if (is_long) {
; genIfx
	tnz	(0x05, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00110$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00237$.
;	User/eric_proc.c: 70: val = va_arg(args, uint32_t);
; genPlus
	ldw	x, (0x01, sp)
	addw	x, #0x0004
; genAssign
	ldw	(0x01, sp), x
; genMinus
	subw	x, #0x0004
; genPointerGet
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	x, (x)
	ldw	(0x09, sp), x
;	User/eric_proc.c: 71: itoa_pad(&buffer, val, width, pad, 1);
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, sp
	addw	x, #15
; genIPush
	push	#0x01
	push	#0x00
; genIPush
	ld	a, (0x0a, sp)
	push	a
; genIPush
	ld	a, (0x0a, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
; genIPush
	pushw	y
	ldw	y, (0x10, sp)
	pushw	y
; genSend
; genCall
	call	_itoa_pad
; genGoto
	jra	00123$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00110$:
;	User/eric_proc.c: 73: int ival = va_arg(args, int);
; genAssign
	ldw	(0x01, sp), y
; genPointerGet
	ldw	x, (x)
;	User/eric_proc.c: 74: itoa_pad(&buffer, (uint32_t)(ival), width, pad, 1);
; genCast
	exgw	x, y
	ld	a, yh
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x0a, sp), a
	ld	(0x09, sp), a
; genAddrOf
	ldw	x, sp
	addw	x, #15
; genCast
; genAssign
; genIPush
	push	#0x01
	push	#0x00
; genIPush
	ld	a, (0x0a, sp)
	push	a
; genIPush
	ld	a, (0x0a, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
; genIPush
	pushw	y
	ldw	y, (0x10, sp)
	pushw	y
; genSend
; genCall
	call	_itoa_pad
; genGoto
	jra	00123$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00119$:
;	User/eric_proc.c: 76: } else if (*format == 's') {
; genCmpEQorNE
	cp	a, #0x73
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00239$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00116$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00240$.
; skipping generated iCode
;	User/eric_proc.c: 77: s = va_arg(args, char*);
; genAssign
	ldw	(0x01, sp), y
; genPointerGet
	ldw	x, (x)
;	User/eric_proc.c: 78: while (*s) {
; genAssign
	ldw	y, (0x03, sp)
; genLabel
00112$:
; genPointerGet
; genIfx
	ld	a, (x)
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00143$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00241$.
;	User/eric_proc.c: 79: *buffer++ = *s++;
; genAssign
; genPlus
	incw	x
; genPointerSet
	ld	(y), a
; genPlus
	incw	y
; genAssign
	ldw	(0x0f, sp), y
; genGoto
	jra	00112$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00116$:
;	User/eric_proc.c: 82: *buffer++ = *format;
; genPointerSet
	ldw	x, (0x03, sp)
	ld	(x), a
; genPlus
	ldw	x, (0x0f, sp)
	incw	x
; genAssign
	ldw	(0x0f, sp), x
; genGoto
	jra	00123$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00122$:
;	User/eric_proc.c: 85: *buffer++ = *format;
; genPointerSet
	ldw	x, (0x03, sp)
	ld	(x), a
; genPlus
	ldw	x, (0x0f, sp)
	incw	x
; genAssign
	ldw	(0x0f, sp), x
;	User/eric_proc.c: 89: *buffer = '
; genGoto
	jra	00123$
; peephole j5 changed absolute to relative unconditional jump.
;	User/eric_proc.c: 85: *buffer++ = *format;
; genLabel
00143$:
; genAssign
	ldw	(0x0f, sp), y
; genLabel
00123$:
;	User/eric_proc.c: 87: format++;
; genPlus
	ldw	x, (0x11, sp)
	incw	x
; genAssign
	ldw	(0x11, sp), x
; genGoto
	jp	00124$
; genLabel
00126$:
;	User/eric_proc.c: 89: *buffer = '
; genPointerSet
	ldw	x, (0x03, sp)
	clr	(x)
;	User/eric_proc.c: 90: va_end(args);
; genLabel
; peephole j30 removed unused label 00127$.
;	User/eric_proc.c: 91: }
; genEndFunction
	addw	sp, #12
	ret
;	Total mini_sprintf function size at codegen: 3 bytes.
;	User/eric_proc.c: 144: uint8_t System_GetMode(void)
; genLabel
;	-----------------------------------------
;	 function System_GetMode
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_System_GetMode:
;	User/eric_proc.c: 146: return sysmode;
; genReturn
	ld	a, _sysmode+0
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_proc.c: 147: }
; genEndFunction
	ret
;	Total System_GetMode function size at codegen: 1 bytes.
;	User/eric_proc.c: 150: void System_InitMode(void)
; genLabel
;	-----------------------------------------
;	 function System_InitMode
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_System_InitMode:
;	User/eric_proc.c: 152: sysmode = GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_4);
; genSend
	ld	a, #0x10
; genSend
	ldw	x, #0x500a
; genCall
	call	_GPIO_ReadInputDataBit
; genCast
; genAssign
	ld	_sysmode+0, a
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_proc.c: 153: }
; genEndFunction
	ret
;	Total System_InitMode function size at codegen: 1 bytes.
;	User/eric_proc.c: 156: Tstat* Record_GetStat(uint8_t phase)
; genLabel
;	-----------------------------------------
;	 function Record_GetStat
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_Record_GetStat:
; genReceive
;	User/eric_proc.c: 158: if (phase > 6) phase = 0;
; genCmp
; genCmpTnz
	cp	a, #0x06
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00102$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00112$.
; skipping generated iCode
; genAssign
	clr	a
; genLabel
00102$:
;	User/eric_proc.c: 159: return &stt[phase];
; skipping iCode since result will be rematerialized
; genMult
	exg	a, xl
	ld	a, #0x0a
	exg	a, xl
	mul	x, a
; genPlus
	addw	x, #(_stt+0)
; genCast
; genAssign
; genReturn
; genLabel
; peephole j30 removed unused label 00103$.
;	User/eric_proc.c: 160: }
; genEndFunction
	ret
;	Total Record_GetStat function size at codegen: 1 bytes.
;	User/eric_proc.c: 162: Trecord* Record_GetRecd(void)
; genLabel
;	-----------------------------------------
;	 function Record_GetRecd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_Record_GetRecd:
;	User/eric_proc.c: 164: return &recd;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genReturn
	ldw	x, #(_recd+0)
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_proc.c: 165: }
; genEndFunction
	ret
;	Total Record_GetRecd function size at codegen: 1 bytes.
;	User/eric_proc.c: 168: Trecord* Record_GetLRecd(void)
; genLabel
;	-----------------------------------------
;	 function Record_GetLRecd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_Record_GetLRecd:
;	User/eric_proc.c: 170: return &lrecd;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genReturn
	ldw	x, #(_lrecd+0)
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_proc.c: 171: }
; genEndFunction
	ret
;	Total Record_GetLRecd function size at codegen: 1 bytes.
;	User/eric_proc.c: 174: void Storage_SaveAllStats(void)
; genLabel
;	-----------------------------------------
;	 function Storage_SaveAllStats
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_Storage_SaveAllStats:
;	User/eric_proc.c: 176: Save_Stat((uint8_t *)&stt);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genSend
	ldw	x, #(_stt+0)
; genCall
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_proc.c: 177: }
; genEndFunction
	jp	_Save_Stat
; peephole 52 removed unreachable ret.
;	Total Storage_SaveAllStats function size at codegen: 1 bytes.
;	User/eric_proc.c: 180: void Record_SaveNew(uint8_t* timeData, uint32_t phalen)
; genLabel
;	-----------------------------------------
;	 function Record_SaveNew
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_Record_SaveNew:
; genReceive
;	User/eric_proc.c: 182: memcpy((uint8_t *)&recd, timeData, 6);
; genCast
; genAssign
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x06
	push	#0x00
; genIPush
	pushw	x
; genSend
	ldw	x, #(_recd+0)
; genCall
	call	___memcpy
;	User/eric_proc.c: 183: recd.pl = phalen;
; skipping iCode since result will be rematerialized
; genPointerSet
	ldw	x, #(_recd+6)
	ldw	y, (0x05, sp)
	ldw	(0x2, x), y
	ldw	y, (0x03, sp)
	ldw	(x), y
;	User/eric_proc.c: 184: Save_Data((uint8_t *)&recd);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genSend
	ldw	x, #(_recd+0)
; genCall
	call	_Save_Data
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_proc.c: 185: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #6
	jp	(x)
;	Total Record_SaveNew function size at codegen: 5 bytes.
;	User/eric_proc.c: 188: uint8_t Record_LoadHistory(uint8_t mode)
; genLabel
;	-----------------------------------------
;	 function Record_LoadHistory
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_Record_LoadHistory:
; genReceive
;	User/eric_proc.c: 190: return Load_Data(mode, (uint8_t *)&lrecd);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genSend
	ldw	x, #(_lrecd+0)
; genSend
; genCall
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_proc.c: 191: }
; genEndFunction
	jp	_Load_Data
; peephole 52 removed unreachable ret.
;	Total Record_LoadHistory function size at codegen: 1 bytes.
;	User/eric_proc.c: 203: uint16_t CRC_GetModbus16(uint8_t *pdata, int len)
; genLabel
;	-----------------------------------------
;	 function CRC_GetModbus16
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 7 bytes.
_CRC_GetModbus16:
	sub	sp, #7
; genReceive
	exgw	x, y
;	User/eric_proc.c: 205: uint16_t crc = 0xFFFF;
; genAssign
	clrw	x
	decw	x
	ldw	(0x03, sp), x
;	User/eric_proc.c: 208: while (len--)
; genAssign
	ldw	(0x05, sp), y
; genAssign
; genLabel
00105$:
; genAssign
	ldw	y, (0x0a, sp)
	ldw	(0x01, sp), y
; genMinus
	ldw	x, (0x0a, sp)
	decw	x
	ldw	(0x0a, sp), x
; genIfx
	ldw	x, (0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00107$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00149$.
;	User/eric_proc.c: 210: crc ^= *pdata++;
; genPointerGet
	ldw	x, (0x05, sp)
	ld	a, (x)
; genPlus
	ldw	x, (0x05, sp)
	incw	x
	ldw	(0x05, sp), x
; peephole j30 removed unused label 00150$.
; genCast
; genAssign
; peephole 3 removed dead clrw of x.
; genXor
	xor	a, (0x04, sp)
	ld	(0x04, sp), a
	clr	a
	xor	a, (0x03, sp)
	ld	(0x03, sp), a
;	User/eric_proc.c: 211: for (i = 0; i < 8; i++)
; genAssign
	clr	(0x07, sp)
; genLabel
00108$:
;	User/eric_proc.c: 214: crc = (crc >> 1) ^ 0xA001;
; genRightShiftLiteral
	ldw	x, (0x03, sp)
	srlw	x
	ldw	(0x01, sp), x
;	User/eric_proc.c: 213: if (crc & 1)
; genAnd
	ld	a, (0x04, sp)
	srl	a
; peephole j5 changed absolute to relative unconditional jump.
	jrnc	00102$
; peephole j6 removed jra by using inverse jump logic
; peephole j30 removed unused label 00151$.
; skipping generated iCode
;	User/eric_proc.c: 214: crc = (crc >> 1) ^ 0xA001;
; genCast
; genAssign
	ldw	x, (0x01, sp)
; genXor
	ld	a, xl
	xor	a, #0x01
	rlwa	x
; peephole r1 used rlwa.
	xor	a, #0xa0
	ld	xh, a
; genCast
; genAssign
	ldw	(0x03, sp), x
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/eric_proc.c: 216: crc = crc >> 1;
; genAssign
	ldw	y, (0x01, sp)
	ldw	(0x03, sp), y
; genLabel
00109$:
;	User/eric_proc.c: 211: for (i = 0; i < 8; i++)
; genPlus
	inc	(0x07, sp)
; genCmp
; genCmpTnz
	ld	a, (0x07, sp)
	cp	a, #0x08
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00108$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00152$.
; skipping generated iCode
; genGoto
	jra	00105$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00107$:
;	User/eric_proc.c: 219: return crc;
; genReturn
	ldw	x, (0x03, sp)
; genLabel
; peephole j30 removed unused label 00110$.
;	User/eric_proc.c: 220: }
; genEndFunction
	addw	sp, #7
	popw	y
	addw	sp, #2
	jp	(y)
;	Total CRC_GetModbus16 function size at codegen: 8 bytes.
;	User/eric_proc.c: 222: void InitMsg(MsgQue *msgq)
; genLabel
;	-----------------------------------------
;	 function InitMsg
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_InitMsg:
	pushw	x
; genReceive
;	User/eric_proc.c: 226: if (msgq == 0)
; genIfx
	tnzw	x
; peephole j5 changed absolute to relative unconditional jump.
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00123$.
;	User/eric_proc.c: 228: return;
; genReturn
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
	jreq	00106$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00102$.
;	User/eric_proc.c: 230: msgq->r = 0;
; genPlus
	ldw	y, x
	incw	y
; genPointerSet
	clr	(y)
;	User/eric_proc.c: 231: msgq->w = 0;
; genPointerSet
	clr	(x)
;	User/eric_proc.c: 232: for (i = 0; i < MSG_LEN; i++)
; genPlus
	incw	x
	incw	x
	ldw	(0x01, sp), x
; genAssign
	clr	a
; genLabel
00104$:
;	User/eric_proc.c: 234: msgq->msg[i].msgtype = 0;
; genMult
	push	a
	exg	a, yl
	ld	a, #0x09
	exg	a, yl
	mul	y, a
	pop	a
; genPlus
	addw	y, (0x01, sp)
; genPointerSet
	clr	(y)
;	User/eric_proc.c: 235: msgq->msg[i].msgval1 = 0;
; genPlus
	ldw	x, y
	incw	x
; genPointerSet
	clr	(0x3, x)
	clr	(0x2, x)
	clr	(0x1, x)
	clr	(x)
;	User/eric_proc.c: 236: msgq->msg[i].msgval2 = 0;
; genPlus
	ldw	x, y
	addw	x, #0x0005
; genPointerSet
	clrw	y
	ldw	(0x2, x), y
	ldw	(x), y
;	User/eric_proc.c: 232: for (i = 0; i < MSG_LEN; i++)
; genPlus
	inc	a
; genCmp
; genCmpTnz
	cp	a, #0x20
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00104$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00124$.
; skipping generated iCode
; genLabel
00106$:
;	User/eric_proc.c: 238: }
; genEndFunction
	popw	x
	ret
;	Total InitMsg function size at codegen: 2 bytes.
;	User/eric_proc.c: 241: void SendMsg(MsgQue *msgq, uint8_t type, uint32_t val1, uint32_t val2)
; genLabel
;	-----------------------------------------
;	 function SendMsg
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_SendMsg:
	sub	sp, #4
; genReceive
	exgw	x, y
; genReceive
;	User/eric_proc.c: 243: if (msgq == 0)
; genIfx
	tnzw	y
; peephole j5 changed absolute to relative unconditional jump.
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00112$.
;	User/eric_proc.c: 245: return;
; genReturn
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
	jreq	00103$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00102$.
;	User/eric_proc.c: 247: msgq->msg[msgq->w].msgtype = type;
; genPlus
	ldw	x, y
	incw	x
	incw	x
	ldw	(0x01, sp), x
; genCast
; genAssign
; genPointerGet
	ldw	(0x03, sp), y
	ldw	x, y
; peephole 15 replaced load from (0x03, sp) into x by load from y into x.
	push	a
	ld	a, (x)
	ld	xl, a
; genMult
; peephole 6 removed dead pop / push pair.
	ld	a, #0x09
	mul	x, a
	pop	a
; genPlus
	addw	x, (0x01, sp)
; genPointerSet
	ld	(x), a
;	User/eric_proc.c: 248: msgq->msg[msgq->w].msgval1 = val1;
; genPointerGet
	ldw	x, (0x03, sp)
	ld	a, (x)
	ld	xl, a
; genMult
	ld	a, #0x09
	mul	x, a
; genPlus
	addw	x, (0x01, sp)
; genPlus
	incw	x
; genPointerSet
	ldw	y, (0x09, sp)
	ldw	(0x2, x), y
	ldw	y, (0x07, sp)
	ldw	(x), y
;	User/eric_proc.c: 249: msgq->msg[msgq->w].msgval2 = val2;
; genPointerGet
	ldw	x, (0x03, sp)
	ld	a, (x)
	ld	xl, a
; genMult
	ld	a, #0x09
	mul	x, a
; genPlus
	addw	x, (0x01, sp)
; genPlus
	addw	x, #0x0005
; genPointerSet
	ldw	y, (0x0d, sp)
	ldw	(0x2, x), y
	ldw	y, (0x0b, sp)
	ldw	(x), y
;	User/eric_proc.c: 250: msgq->w = (msgq->w + 1) % MSG_LEN;
; genPointerGet
	ldw	x, (0x03, sp)
	ld	a, (x)
; genCast
; genAssign
	clrw	x
; genPlus
	ld	xl, a
	incw	x
; genIPush
	push	#0x20
	push	#0x00
; genSend
; genCall
	call	__modsint
	ld	a, xl
; genCast
; genAssign
; genPointerSet
	ldw	x, (0x03, sp)
	ld	(x), a
; genLabel
00103$:
;	User/eric_proc.c: 251: }
; genEndFunction
	ldw	x, (5, sp)
	addw	sp, #14
	jp	(x)
;	Total SendMsg function size at codegen: 5 bytes.
;	User/eric_proc.c: 253: TMSG *RevMsg(MsgQue *msgq)
; genLabel
;	-----------------------------------------
;	 function RevMsg
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 7 bytes.
_RevMsg:
	sub	sp, #7
; genReceive
;	User/eric_proc.c: 257: if (msgq == 0)
; genIfx
; peephole j5 changed absolute to relative unconditional jump.
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00121$.
;	User/eric_proc.c: 259: return 0;
; genReturn
	tnzw	x
; peephole 22c removed redundant clrw x.
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00102$.
;	User/eric_proc.c: 262: if (msgq->r != msgq->w)
; genPlus
	ld	a, xl
	add	a, #0x01
	ld	(0x02, sp), a
	ld	a, xh
	adc	a, #0x00
	ld	(0x01, sp), a
; genPointerGet
	ldw	y, (0x01, sp)
	ld	a, (y)
	ld	(0x03, sp), a
; genPointerGet
	ld	a, (x)
; genCmpEQorNE
	cp	a, (0x03, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00104$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00123$.
; skipping generated iCode
;	User/eric_proc.c: 264: p = &msgq->msg[msgq->r];
; genPlus
	incw	x
	incw	x
	ldw	(0x04, sp), x
; genMult
	ld	a, (0x03, sp)
	ld	xl, a
	ld	a, #0x09
	mul	x, a
; genPlus
	addw	x, (0x04, sp)
	ldw	(0x06, sp), x
;	User/eric_proc.c: 265: msgq->r = (msgq->r + 1) % MSG_LEN;
; genCast
; genAssign
	ld	a, (0x03, sp)
	clrw	x
; genPlus
	ld	xl, a
	incw	x
; genIPush
	push	#0x20
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
;	User/eric_proc.c: 266: return p;
; genReturn
	ldw	x, (0x06, sp)
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	User/eric_proc.c: 269: return 0;
; genReturn
; genLabel
	.byte 0x21
; peephole jrf2 used jump-on-false opcode to shorten jump over 1-byte instruction.
00104$:
	clrw	x
00105$:
;	User/eric_proc.c: 270: }
; genEndFunction
	addw	sp, #7
	ret
;	Total RevMsg function size at codegen: 3 bytes.
;	User/eric_proc.c: 273: void A_Fxn(void)
; genLabel
;	-----------------------------------------
;	 function A_Fxn
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 14 bytes.
_A_Fxn:
	sub	sp, #14
;	User/eric_proc.c: 279: if (strokeA.tim_trg > 0)
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, #(_strokeA+0)
; genPointerGet
	ldw	(0x01, sp), x
; peephole 4w removed redundant load from (0x01, sp) into x.
	ld	a, (x)
; genIfx
	ld	(0x0e, sp), a
; peephole 31a removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00149$.
;	User/eric_proc.c: 281: return;
; genReturn
	jp	00110$
; genLabel
00102$:
;	User/eric_proc.c: 284: psta[0] = psta[1];
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
; genPointerSet
	mov	_A_Fxn_psta_10000_740+0, _A_Fxn_psta_10000_740+1
; peephole 4d replaced pair of mem-to-mem load with mov.
;	User/eric_proc.c: 285: psta[1] = psta[2];
; genPlus
	ldw	x, #(_A_Fxn_psta_10000_740+0)+2
; genPointerGet
	ld	a, (x)
; genPointerSet
	ld	_A_Fxn_psta_10000_740+1, a
;	User/eric_proc.c: 286: psta[2] = psta[3];
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _A_Fxn_psta_10000_740+3
; genPointerSet
	ld	(x), a
;	User/eric_proc.c: 287: psta[3] = GPIO_ReadInputDataBit(GPIOD, GPIO_Pin_5); //每200ms读pin状态,超过1000ms都是高电平，表示一次冲击停止
; genSend
	ld	a, #0x20
; genSend
	ldw	x, #0x500f
; genCall
	call	_GPIO_ReadInputDataBit
; genCast
; genAssign
; genPointerSet
	ld	_A_Fxn_psta_10000_740+3, a
;	User/eric_proc.c: 289: for (i = 0; i < 4; i++)
; genAssign
	clr	a
; genLabel
00108$:
;	User/eric_proc.c: 291: if (0 == (psta[i] & 0x20))
; genPlus
	clrw	x
	ld	xl, a
	addw	x, #(_A_Fxn_psta_10000_740+0)
; genPointerGet
	push	a
	ld	a, (x)
; genAnd
; peephole 6 removed dead pop / push pair.
; peephole 0 removed dead load into xl from a.
; peephole 4 removed redundant load from xl into a.
	bcp	a, #0x20
	pop	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00109$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00150$.
; skipping generated iCode
;	User/eric_proc.c: 293: i = 0xff;
; genAssign
	ld	a, #0xff
	ld	xl, a
;	User/eric_proc.c: 294: break;
; genGoto
	jra	00105$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00109$:
;	User/eric_proc.c: 289: for (i = 0; i < 4; i++)
; genPlus
	inc	a
; genAssign
	ld	xl, a
; genCmp
; genCmpTnz
	cp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00108$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00151$.
; skipping generated iCode
; genLabel
00105$:
;	User/eric_proc.c: 297: if (i != 0xff)
; genCmpEQorNE
	ld	a, xl
	inc	a
	jrne	00153$
	jp	00110$
00153$:
; skipping generated iCode
;	User/eric_proc.c: 299: memset(psta, 0, 4);
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x04
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, #(_A_Fxn_psta_10000_740+0)
; genCall
	call	_memset
;	User/eric_proc.c: 300: raw = (strokeA.tim_e >= strokeA.tim_s) ? (strokeA.tim_e - strokeA.tim_s) : 0;
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, #(_strokeA+0)
	ldw	y, x
	ldw	y, (0x7, y)
	ldw	(0x05, sp), y
	ldw	x, (0x5, x)
	ldw	(0x03, sp), x
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, #(_strokeA+1)
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	(0x09, sp), y
	ldw	x, (x)
	ldw	(0x07, sp), x
; genCmp
; genCmpTnz
	ldw	x, (0x05, sp)
	cpw	x, (0x09, sp)
	ld	a, (0x04, sp)
	sbc	a, (0x08, sp)
	ld	a, (0x03, sp)
	sbc	a, (0x07, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00112$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00155$.
; skipping generated iCode
; genMinus
	ldw	x, (0x05, sp)
	subw	x, (0x09, sp)
	ldw	(0x0d, sp), x
	ld	a, (0x04, sp)
	sbc	a, (0x08, sp)
	ld	xl, a
	ld	a, (0x03, sp)
	sbc	a, (0x07, sp)
; genGoto
	jra	00113$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00112$:
; genAssign
	clrw	x
	ldw	(0x0d, sp), x
	clrw	x
	clr	a
; genLabel
00113$:
; genAssign
	ld	xh, a
	ldw	y, (0x0d, sp)
;	User/eric_proc.c: 301: strokeA.tim_len = (uint32_t)((701UL * raw + 3500UL) / 7000UL);
; skipping iCode since result will be rematerialized
; genIPush
	pushw	y
	pushw	x
; genIPush
	push	#0xbd
	push	#0x02
	clrw	x
	pushw	x
; genCall
	call	__mullong
	addw	sp, #8
	ldw	(0x0b, sp), y
; genPlus
	addw	x, #0x0dac
	ldw	y, (0x0b, sp)
	jrnc	00156$
	incw	y
00156$:
; genIPush
	push	#0x58
	push	#0x1b
	push	#0x00
	push	#0x00
; genIPush
	pushw	x
	pushw	y
; genCall
	call	__divulong
	addw	sp, #8
	ldw	(0x0b, sp), y
; genPointerSet
	ldw	y, #(_strokeA+9)
	ldw	(0x2, y), x
	ldw	x, (0x0b, sp)
	ldw	(y), x
;	User/eric_proc.c: 302: strokeA.tim_trg = 1;
; genPointerSet
	ldw	x, (0x01, sp)
	ld	a, #0x01
	ld	(x), a
;	User/eric_proc.c: 303: single_trg += 1;
; genCast
; genAssign
; genPlus
	inc	_single_trg+0
; peephole 16 applied inc on _single_trg+0 instead of a.
;	User/eric_proc.c: 304: strokeA.tim_len = (strokeA.tim_len & 0x00ffffff) | (0x01000000); //A相+时长
; genPointerGet
	ldw	x, #(_strokeA+9)
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	x, (x)
; genAnd
	ld	a, xl
	push	a
	clr	(0x08, sp)
	pop	a
; genOr
	ld	(0x0c, sp), a
	ldw	(0x0d, sp), y
	ld	a, #0x01
	ld	(0x0b, sp), a
; genPointerSet
	ldw	x, #(_strokeA+9)
	ldw	y, (0x0d, sp)
	ldw	(0x2, x), y
	ldw	y, (0x0b, sp)
	ldw	(x), y
;	User/eric_proc.c: 305: SendMsg(&MsgSystem, MSG_COUNT, strokeA.tim_len, strokeA.tim_s); //发送相别+时长+起始时间(用于判断是否是相邻两项同时被雷击)
; genPointerGet
	ldw	x, #(_strokeA+1)
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	x, (x)
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	pushw	y
	pushw	x
; genIPush
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
; genSend
	ld	a, #0x03
; genSend
	ldw	x, #(_MsgSystem+0)
; genCall
	call	_SendMsg
; genLabel
00110$:
;	User/eric_proc.c: 309: }
; genEndFunction
	addw	sp, #14
	ret
;	Total A_Fxn function size at codegen: 3 bytes.
;	User/eric_proc.c: 312: void B_Fxn(void)
; genLabel
;	-----------------------------------------
;	 function B_Fxn
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 14 bytes.
_B_Fxn:
	sub	sp, #14
;	User/eric_proc.c: 318: if (strokeB.tim_trg > 0)
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, #(_strokeB+0)
; genPointerGet
	ldw	(0x01, sp), x
; peephole 4w removed redundant load from (0x01, sp) into x.
	ld	a, (x)
; genIfx
	ld	(0x0e, sp), a
; peephole 31a removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00149$.
;	User/eric_proc.c: 320: return;
; genReturn
	jp	00110$
; genLabel
00102$:
;	User/eric_proc.c: 323: pstb[0] = pstb[1];
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
; genPointerSet
	mov	_B_Fxn_pstb_10000_747+0, _B_Fxn_pstb_10000_747+1
; peephole 4d replaced pair of mem-to-mem load with mov.
;	User/eric_proc.c: 324: pstb[1] = pstb[2];
; genPlus
	ldw	x, #(_B_Fxn_pstb_10000_747+0)+2
; genPointerGet
	ld	a, (x)
; genPointerSet
	ld	_B_Fxn_pstb_10000_747+1, a
;	User/eric_proc.c: 325: pstb[2] = pstb[3];
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _B_Fxn_pstb_10000_747+3
; genPointerSet
	ld	(x), a
;	User/eric_proc.c: 326: pstb[3] = GPIO_ReadInputDataBit(GPIOD, GPIO_Pin_6); //每200ms读pin状态,超过1000ms都是高电平，表示一次冲击停止
; genSend
	ld	a, #0x40
; genSend
	ldw	x, #0x500f
; genCall
	call	_GPIO_ReadInputDataBit
; genCast
; genAssign
; genPointerSet
	ld	_B_Fxn_pstb_10000_747+3, a
;	User/eric_proc.c: 328: for (i = 0; i < 4; i++)
; genAssign
	clr	a
; genLabel
00108$:
;	User/eric_proc.c: 330: if (0 == (pstb[i] & 0x40))
; genPlus
	clrw	x
	ld	xl, a
	addw	x, #(_B_Fxn_pstb_10000_747+0)
; genPointerGet
	push	a
	ld	a, (x)
; genAnd
; peephole 6 removed dead pop / push pair.
; peephole 0 removed dead load into xl from a.
; peephole 4 removed redundant load from xl into a.
	bcp	a, #0x40
	pop	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00109$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00150$.
; skipping generated iCode
;	User/eric_proc.c: 332: i = 0xff;
; genAssign
	ld	a, #0xff
	ld	xl, a
;	User/eric_proc.c: 333: break;
; genGoto
	jra	00105$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00109$:
;	User/eric_proc.c: 328: for (i = 0; i < 4; i++)
; genPlus
	inc	a
; genAssign
	ld	xl, a
; genCmp
; genCmpTnz
	cp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00108$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00151$.
; skipping generated iCode
; genLabel
00105$:
;	User/eric_proc.c: 336: if (i != 0xff)
; genCmpEQorNE
	ld	a, xl
	inc	a
	jrne	00153$
	jp	00110$
00153$:
; skipping generated iCode
;	User/eric_proc.c: 338: memset(pstb, 0, 4);
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x04
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, #(_B_Fxn_pstb_10000_747+0)
; genCall
	call	_memset
;	User/eric_proc.c: 339: raw = (strokeB.tim_e >= strokeB.tim_s) ? (strokeB.tim_e - strokeB.tim_s) : 0;
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, #(_strokeB+0)
	ldw	y, x
	ldw	y, (0x7, y)
	ldw	(0x05, sp), y
	ldw	x, (0x5, x)
	ldw	(0x03, sp), x
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, #(_strokeB+1)
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	(0x09, sp), y
	ldw	x, (x)
	ldw	(0x07, sp), x
; genCmp
; genCmpTnz
	ldw	x, (0x05, sp)
	cpw	x, (0x09, sp)
	ld	a, (0x04, sp)
	sbc	a, (0x08, sp)
	ld	a, (0x03, sp)
	sbc	a, (0x07, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00112$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00155$.
; skipping generated iCode
; genMinus
	ldw	x, (0x05, sp)
	subw	x, (0x09, sp)
	ldw	(0x0d, sp), x
	ld	a, (0x04, sp)
	sbc	a, (0x08, sp)
	ld	xl, a
	ld	a, (0x03, sp)
	sbc	a, (0x07, sp)
; genGoto
	jra	00113$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00112$:
; genAssign
	clrw	x
	ldw	(0x0d, sp), x
	clrw	x
	clr	a
; genLabel
00113$:
; genAssign
	ld	xh, a
	ldw	y, (0x0d, sp)
;	User/eric_proc.c: 340: strokeB.tim_len = (uint32_t)((701UL * raw + 3500UL) / 7000UL);
; skipping iCode since result will be rematerialized
; genIPush
	pushw	y
	pushw	x
; genIPush
	push	#0xbd
	push	#0x02
	clrw	x
	pushw	x
; genCall
	call	__mullong
	addw	sp, #8
	ldw	(0x0b, sp), y
; genPlus
	addw	x, #0x0dac
	ldw	y, (0x0b, sp)
	jrnc	00156$
	incw	y
00156$:
; genIPush
	push	#0x58
	push	#0x1b
	push	#0x00
	push	#0x00
; genIPush
	pushw	x
	pushw	y
; genCall
	call	__divulong
	addw	sp, #8
	ldw	(0x0b, sp), y
; genPointerSet
	ldw	y, #(_strokeB+9)
	ldw	(0x2, y), x
	ldw	x, (0x0b, sp)
	ldw	(y), x
;	User/eric_proc.c: 341: strokeB.tim_trg = 1;
; genPointerSet
	ldw	x, (0x01, sp)
	ld	a, #0x01
	ld	(x), a
;	User/eric_proc.c: 342: single_trg += 1;
; genCast
; genAssign
; genPlus
	inc	_single_trg+0
; peephole 16 applied inc on _single_trg+0 instead of a.
;	User/eric_proc.c: 343: strokeB.tim_len = (strokeB.tim_len & 0x00ffffff) | (0x02000000);
; genPointerGet
	ldw	x, #(_strokeB+9)
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	x, (x)
; genAnd
	ld	a, xl
	push	a
	clr	(0x08, sp)
	pop	a
; genOr
	ld	(0x0c, sp), a
	ldw	(0x0d, sp), y
	ld	a, #0x02
	ld	(0x0b, sp), a
; genPointerSet
	ldw	x, #(_strokeB+9)
	ldw	y, (0x0d, sp)
	ldw	(0x2, x), y
	ldw	y, (0x0b, sp)
	ldw	(x), y
;	User/eric_proc.c: 344: SendMsg(&MsgSystem, MSG_COUNT, strokeB.tim_len, strokeB.tim_s);
; genPointerGet
	ldw	x, #(_strokeB+1)
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	x, (x)
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	pushw	y
	pushw	x
; genIPush
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
; genSend
	ld	a, #0x03
; genSend
	ldw	x, #(_MsgSystem+0)
; genCall
	call	_SendMsg
; genLabel
00110$:
;	User/eric_proc.c: 347: }
; genEndFunction
	addw	sp, #14
	ret
;	Total B_Fxn function size at codegen: 3 bytes.
;	User/eric_proc.c: 350: void C_Fxn(void)
; genLabel
;	-----------------------------------------
;	 function C_Fxn
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 14 bytes.
_C_Fxn:
	sub	sp, #14
;	User/eric_proc.c: 356: if (strokeC.tim_trg > 0)
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	x, #(_strokeC+0)
; genPointerGet
	ldw	(0x01, sp), x
; peephole 4w removed redundant load from (0x01, sp) into x.
	ld	a, (x)
; genIfx
	ld	(0x0e, sp), a
; peephole 31a removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00149$.
;	User/eric_proc.c: 358: return;
; genReturn
	jp	00110$
; genLabel
00102$:
;	User/eric_proc.c: 361: pstc[0] = pstc[1];
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
; genPointerSet
	mov	_C_Fxn_pstc_10000_754+0, _C_Fxn_pstc_10000_754+1
; peephole 4d replaced pair of mem-to-mem load with mov.
;	User/eric_proc.c: 362: pstc[1] = pstc[2];
; genPlus
	ldw	x, #(_C_Fxn_pstc_10000_754+0)+2
; genPointerGet
	ld	a, (x)
; genPointerSet
	ld	_C_Fxn_pstc_10000_754+1, a
;	User/eric_proc.c: 363: pstc[2] = pstc[3];
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _C_Fxn_pstc_10000_754+3
; genPointerSet
	ld	(x), a
;	User/eric_proc.c: 364: pstc[3] = GPIO_ReadInputDataBit(GPIOD, GPIO_Pin_7); //每200ms读pin状态,超过1000ms都是高电平，表示一次冲击停止
; genSend
	ld	a, #0x80
; genSend
	ldw	x, #0x500f
; genCall
	call	_GPIO_ReadInputDataBit
; genCast
; genAssign
; genPointerSet
	ld	_C_Fxn_pstc_10000_754+3, a
;	User/eric_proc.c: 366: for (i = 0; i < 4; i++)
; genAssign
	clr	a
; genLabel
00108$:
;	User/eric_proc.c: 368: if (0 == (pstc[i] & 0x80))
; genPlus
	clrw	x
	ld	xl, a
	addw	x, #(_C_Fxn_pstc_10000_754+0)
; genPointerGet
	push	a
	ld	a, (x)
	ld	(0x0f, sp), a
	pop	a
; genAnd
	tnz	(0x0e, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrmi	00109$
; peephole j11 removed jra by using inverse jump logic
; peephole j30 removed unused label 00150$.
; skipping generated iCode
;	User/eric_proc.c: 370: i = 0xff;
; genAssign
	ld	a, #0xff
	ld	xl, a
;	User/eric_proc.c: 371: break;
; genGoto
	jra	00105$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00109$:
;	User/eric_proc.c: 366: for (i = 0; i < 4; i++)
; genPlus
	inc	a
; genAssign
	ld	xl, a
; genCmp
; genCmpTnz
	cp	a, #0x04
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00108$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00151$.
; skipping generated iCode
; genLabel
00105$:
;	User/eric_proc.c: 375: if (i != 0xff)
; genCmpEQorNE
	ld	a, xl
	inc	a
	jrne	00153$
	jp	00110$
00153$:
; skipping generated iCode
;	User/eric_proc.c: 377: memset(pstc, 0, 4);
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x04
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, #(_C_Fxn_pstc_10000_754+0)
; genCall
	call	_memset
;	User/eric_proc.c: 378: raw = (strokeC.tim_e >= strokeC.tim_s) ? (strokeC.tim_e - strokeC.tim_s) : 0;
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, #(_strokeC+0)
	ldw	y, x
	ldw	y, (0x7, y)
	ldw	(0x05, sp), y
	ldw	x, (0x5, x)
	ldw	(0x03, sp), x
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, #(_strokeC+1)
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	(0x09, sp), y
	ldw	x, (x)
	ldw	(0x07, sp), x
; genCmp
; genCmpTnz
	ldw	x, (0x05, sp)
	cpw	x, (0x09, sp)
	ld	a, (0x04, sp)
	sbc	a, (0x08, sp)
	ld	a, (0x03, sp)
	sbc	a, (0x07, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00112$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00155$.
; skipping generated iCode
; genMinus
	ldw	x, (0x05, sp)
	subw	x, (0x09, sp)
	ldw	(0x0d, sp), x
	ld	a, (0x04, sp)
	sbc	a, (0x08, sp)
	ld	xl, a
	ld	a, (0x03, sp)
	sbc	a, (0x07, sp)
; genGoto
	jra	00113$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00112$:
; genAssign
	clrw	x
	ldw	(0x0d, sp), x
	clrw	x
	clr	a
; genLabel
00113$:
; genAssign
	ld	xh, a
	ldw	y, (0x0d, sp)
;	User/eric_proc.c: 379: strokeC.tim_len = (uint32_t)((701UL * raw + 3500UL) / 7000UL);
; skipping iCode since result will be rematerialized
; genIPush
	pushw	y
	pushw	x
; genIPush
	push	#0xbd
	push	#0x02
	clrw	x
	pushw	x
; genCall
	call	__mullong
	addw	sp, #8
	ldw	(0x0b, sp), y
; genPlus
	addw	x, #0x0dac
	ldw	y, (0x0b, sp)
	jrnc	00156$
	incw	y
00156$:
; genIPush
	push	#0x58
	push	#0x1b
	push	#0x00
	push	#0x00
; genIPush
	pushw	x
	pushw	y
; genCall
	call	__divulong
	addw	sp, #8
	ldw	(0x0b, sp), y
; genPointerSet
	ldw	y, #(_strokeC+9)
	ldw	(0x2, y), x
	ldw	x, (0x0b, sp)
	ldw	(y), x
;	User/eric_proc.c: 380: strokeC.tim_trg = 1;
; genPointerSet
	ldw	x, (0x01, sp)
	ld	a, #0x01
	ld	(x), a
;	User/eric_proc.c: 381: single_trg += 1;
; genCast
; genAssign
; genPlus
	inc	_single_trg+0
; peephole 16 applied inc on _single_trg+0 instead of a.
;	User/eric_proc.c: 382: strokeC.tim_len = (strokeC.tim_len & 0x00ffffff) | (0x04000000);
; genPointerGet
	ldw	x, #(_strokeC+9)
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	x, (x)
; genAnd
	ld	a, xl
	push	a
	clr	(0x08, sp)
	pop	a
; genOr
	ld	(0x0c, sp), a
	ldw	(0x0d, sp), y
	ld	a, #0x04
	ld	(0x0b, sp), a
; genPointerSet
	ldw	x, #(_strokeC+9)
	ldw	y, (0x0d, sp)
	ldw	(0x2, x), y
	ldw	y, (0x0b, sp)
	ldw	(x), y
;	User/eric_proc.c: 383: SendMsg(&MsgSystem, MSG_COUNT, strokeC.tim_len, strokeC.tim_s);
; genPointerGet
	ldw	x, #(_strokeC+1)
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	x, (x)
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	pushw	y
	pushw	x
; genIPush
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
; genSend
	ld	a, #0x03
; genSend
	ldw	x, #(_MsgSystem+0)
; genCall
	call	_SendMsg
; genLabel
00110$:
;	User/eric_proc.c: 387: }
; genEndFunction
	addw	sp, #14
	ret
;	Total C_Fxn function size at codegen: 3 bytes.
;	User/eric_proc.c: 390: uint16_t Rev16(uint16_t val)
; genLabel
;	-----------------------------------------
;	 function Rev16
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_Rev16:
	pushw	x
; genReceive
;	User/eric_proc.c: 395: a = (val >> 8) & 0xff;
; genGetByte
	ldw	y, x
;	User/eric_proc.c: 396: b = val & 0xff;
; genCast
; genAssign
;	User/eric_proc.c: 397: c = (b << 8) | a;
; genCast
; genAssign
; peephole 1 removed dead clear of a.
; genLeftShiftLiteral
	clr	a
	rlwa	x
; genCast
; genAssign
	clr	(0x01, sp)
; genOr
	ld	a, yh
; genCast
; genAssign
;	User/eric_proc.c: 398: return c;
; genReturn
	ld	xl, a
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_proc.c: 399: }
; genEndFunction
	addw	sp, #2
	ret
;	Total Rev16 function size at codegen: 3 bytes.
;	User/eric_proc.c: 401: uint8_t crc_verify(uint8_t *p, uint16_t len) //stm8是大端模式
; genLabel
;	-----------------------------------------
;	 function crc_verify
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_crc_verify:
	sub	sp, #4
; genReceive
	ldw	(0x03, sp), x
;	User/eric_proc.c: 403: uint16_t crc1 = 0, crc2 = 0;
; genAssign
	clrw	x
	ldw	(0x01, sp), x
;	User/eric_proc.c: 405: memcpy((uint8_t *)&crc1, p + len - 2, 2);
; genPlus
	ldw	x, (0x03, sp)
	addw	x, (0x07, sp)
; genMinus
	decw	x
	decw	x
; genCast
; genAssign
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x02
	push	#0x00
; genIPush
	pushw	x
; genSend
	ldw	x, sp
	addw	x, #5
; genCall
	call	___memcpy
;	User/eric_proc.c: 406: crc1 = Rev16(crc1);
; genSend
	ldw	x, (0x01, sp)
; genCall
	call	_Rev16
; genAssign
	ldw	(0x01, sp), x
;	User/eric_proc.c: 407: crc2 = CRC_GetModbus16(p, len - 2);
; genCast
; genAssign
	ldw	x, (0x07, sp)
; genMinus
	decw	x
	decw	x
; genIPush
	pushw	x
; genSend
	ldw	x, (0x05, sp)
; genCall
	call	_CRC_GetModbus16
;	User/eric_proc.c: 408: if (crc1 == crc2)
; genCmpEQorNE
	cpw	x, (0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00114$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00115$.
; skipping generated iCode
;	User/eric_proc.c: 410: return 1;
; genReturn
	ld	a, #0x01
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	User/eric_proc.c: 414: return 0;
; genReturn
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00102$:
	clr	a
00104$:
;	User/eric_proc.c: 416: }
; genEndFunction
	ldw	x, (5, sp)
	addw	sp, #8
	jp	(x)
;	Total crc_verify function size at codegen: 5 bytes.
;	User/eric_proc.c: 419: uint16_t Pkt_485ackquery(uint8_t addrID, uint8_t funID, uint16_t saddr, uint16_t offset, Rs485u16Rlt *rlt, uint8_t *packet)
; genLabel
;	-----------------------------------------
;	 function Pkt_485ackquery
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 25 bytes.
_Pkt_485ackquery:
	sub	sp, #25
; genReceive
	ld	(0x19, sp), a
;	User/eric_proc.c: 422: uint16_t crc16 = 0;
; genAssign
	clrw	x
	ldw	(0x01, sp), x
;	User/eric_proc.c: 425: if (rlt == NULL)
; genIfx
; peephole j5 changed absolute to relative unconditional jump.
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00149$.
;	User/eric_proc.c: 427: return 0;
; genReturn
	ldw	x, (0x21, sp)
	jrne	00102$
; peephole 22d removed redundant clrw x.
	jp	00112$
; genLabel
00102$:
;	User/eric_proc.c: 429: if (packet == NULL)
; genIfx
; peephole j5 changed absolute to relative unconditional jump.
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00150$.
;	User/eric_proc.c: 431: return 0;
; genReturn
	ldw	x, (0x23, sp)
	jrne	00104$
; peephole 22d removed redundant clrw x.
	jp	00112$
; genLabel
00104$:
;	User/eric_proc.c: 433: if (saddr > 7)
; genCast
; genAssign
	ldw	x, (0x1d, sp)
; genCmp
; genCmpTnz
	cpw	x, #0x0007
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00106$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00151$.
; skipping generated iCode
;	User/eric_proc.c: 435: return 0;
; genReturn
	clrw	x
	jp	00112$
; genLabel
00106$:
;	User/eric_proc.c: 437: if ((offset == 0) || (offset > 7))
; genIfx
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00152$.
; genCast
; genAssign
	ldw	x, (0x1f, sp)
	jreq	00107$
; peephole 50eq removed redundant load of x from (0x1f, sp).
; genCmp
; genCmpTnz
	cpw	x, #0x0007
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00108$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00153$.
; skipping generated iCode
; genLabel
00107$:
;	User/eric_proc.c: 439: return 0;
; genReturn
	clrw	x
	jp	00112$
; genLabel
00108$:
;	User/eric_proc.c: 443: if ((saddr + offset) > 7) //如果地址加偏移错误，自动修正
; genPlus
	ldw	x, (0x1d, sp)
	addw	x, (0x1f, sp)
; genCast
; genAssign
; genCmp
; genCmpTnz
	cpw	x, #0x0007
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00111$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00154$.
; skipping generated iCode
;	User/eric_proc.c: 445: offset = 7 - saddr;
; genMinus
	ldw	x, #0x0007
	subw	x, (0x1d, sp)
; genAssign
	ldw	(0x1f, sp), x
; genLabel
00111$:
;	User/eric_proc.c: 448: memset(packet, 0, 128);
; genCast
; genAssign
	ldw	y, (0x23, sp)
	ldw	(0x13, sp), y
; genIPush
	push	#0x80
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, (0x17, sp)
; genCall
	call	_memset
;	User/eric_proc.c: 449: memset((uint8_t *)&c_ackquery, 0, 128);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x80
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, #(_c_ackquery+0)
; genCall
	call	_memset
;	User/eric_proc.c: 450: c_ackquery.addrID = addrID;
; skipping iCode since result will be rematerialized
; genPointerSet
	ldw	x, #(_c_ackquery+0)
	ld	a, (0x19, sp)
	ld	(x), a
;	User/eric_proc.c: 451: c_ackquery.funID = funID;
; skipping iCode since result will be rematerialized
; genPointerSet
	ldw	x, #(_c_ackquery+1)
	ld	a, (0x1c, sp)
	ld	(x), a
;	User/eric_proc.c: 453: rlt16[0] = rlt->index;
; skipping iCode since result will be rematerialized
; genAssign
	ldw	y, (0x21, sp)
; genPointerGet
	ldw	x, y
	ldw	x, (x)
; genPointerSet
	ldw	(0x03, sp), x
;	User/eric_proc.c: 454: rlt16[1] = rlt->phase;
; skipping iCode since result will be rematerialized
; genAssign
	ldw	x, y
; genPointerGet
	ldw	x, (0x2, x)
; genPointerSet
	ldw	(0x05, sp), x
;	User/eric_proc.c: 455: rlt16[2] = rlt->tlen;
; skipping iCode since result will be rematerialized
; genAssign
	ldw	x, y
; genPointerGet
	ldw	x, (0x4, x)
; genPointerSet
	ldw	(0x07, sp), x
;	User/eric_proc.c: 456: rlt16[3] = rlt->ym;
; skipping iCode since result will be rematerialized
; genAssign
	ldw	x, y
; genPointerGet
	ldw	x, (0x6, x)
; genPointerSet
	ldw	(0x09, sp), x
;	User/eric_proc.c: 457: rlt16[4] = rlt->dh;
; skipping iCode since result will be rematerialized
; genAssign
	ldw	x, y
; genPointerGet
	ldw	x, (0x8, x)
; genPointerSet
	ldw	(0x0b, sp), x
;	User/eric_proc.c: 458: rlt16[5] = rlt->ms;
; skipping iCode since result will be rematerialized
; genAssign
	ldw	x, y
; genPointerGet
	ldw	x, (0xa, x)
; genPointerSet
	ldw	(0x0d, sp), x
;	User/eric_proc.c: 459: rlt16[6] = rlt->batt;
; skipping iCode since result will be rematerialized
; genAssign
; genPointerGet
	ldw	y, (0xc, y)
; genPointerSet
	ldw	(0x0f, sp), y
;	User/eric_proc.c: 461: c_ackquery.length = offset * 2; //偏移量从1开始计算
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ld	a, (0x20, sp)
; genLeftShiftLiteral
	sll	a
; genPointerSet
;	User/eric_proc.c: 463: memcpy(c_ackquery.buf, (uint8_t *)&rlt16[saddr], c_ackquery.length);
; genPointerGet
	ld	_c_ackquery+2, a
; peephole 4 removed redundant load from _c_ackquery+2 into a.
; genCast
; genAssign
	clr	(0x15, sp)
; genLeftShiftLiteral
	ldw	x, (0x1d, sp)
	sllw	x
	ldw	(0x17, sp), x
; genPlus
	ldw	x, sp
	addw	x, #3
	addw	x, (0x17, sp)
; genCast
; genAssign
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	a
	clr	a
	push	a
; genIPush
	pushw	x
; genSend
	ldw	x, #(_c_ackquery+3)
; genCall
	call	___memcpy
;	User/eric_proc.c: 464: len = 3 + c_ackquery.length;
; genPointerGet
	ld	a, _c_ackquery+2
; genCast
; genAssign
	clrw	x
; genPlus
	ld	xl, a
	addw	x, #0x0003
; genCast
; genAssign
;	User/eric_proc.c: 465: memcpy(packet, (uint8_t *)&c_ackquery, len);
; genCast
; genAssign
	ldw	(0x15, sp), x
; peephole 14 replaced load from (0x15, sp) into y by load from x into y.
; peephole 14a loaded (0x17, sp) directly from x instead of going through y.
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	(0x17, sp), x
; peephole 4w removed redundant load from (0x17, sp) into x.
	pushw	x
; genIPush
	push	#<(_c_ackquery+0)
	push	#((_c_ackquery+0) >> 8)
; genSend
	ldw	x, (0x17, sp)
; genCall
	call	___memcpy
;	User/eric_proc.c: 466: crc16 = CRC_GetModbus16(packet, len);
; genCast
; genAssign
	ldw	x, (0x15, sp)
; genIPush
	pushw	x
; genSend
	ldw	x, (0x25, sp)
; genCall
	call	_CRC_GetModbus16
; genAssign
	ldw	(0x01, sp), x
;	User/eric_proc.c: 467: crc16 = Rev16(crc16);
; genSend
; genCall
	call	_Rev16
; genAssign
	ldw	(0x01, sp), x
;	User/eric_proc.c: 468: memcpy((packet + len), (uint8_t *)&crc16, 2); //拷贝CRC
; genAddrOf
	ldw	x, sp
	incw	x
; genCast
; genAssign
; genPlus
	ldw	y, (0x23, sp)
	addw	y, (0x15, sp)
; genIPush
	push	#0x02
	push	#0x00
; genIPush
	pushw	x
; genSend
	ldw	x, y
; genCall
	call	___memcpy
;	User/eric_proc.c: 469: return (len + 2);
; genPlus
	ldw	x, (0x17, sp)
	incw	x
	incw	x
; genCast
; genAssign
; genReturn
; genLabel
00112$:
;	User/eric_proc.c: 471: }
; genEndFunction
	ldw	y, (26, sp)
	addw	sp, #36
	jp	(y)
;	Total Pkt_485ackquery function size at codegen: 6 bytes.
;	User/eric_proc.c: 473: void Get_Record(uint8_t tag)
; genLabel
;	-----------------------------------------
;	 function Get_Record
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_Get_Record:
	sub	sp, #4
; genReceive
;	User/eric_proc.c: 477: if (tag == 0) //如果超时从当前最新的记录开始读取，否则读取下一条记录
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00108$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00142$.
;	User/eric_proc.c: 479: if (data_index.used) //有效数据
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _data_index+2
;	User/eric_proc.c: 483: data_index.r = data_index.w - 1;
; genCast
; genAssign
	ldw	x, #(_data_index+0)
;	User/eric_proc.c: 479: if (data_index.used) //有效数据
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00105$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00143$.
;	User/eric_proc.c: 481: if (data_index.w > 0)
; skipping iCode since result will be rematerialized
; genPointerGet
; genIfx
	ld	a, _data_index+1
; peephole 30 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00144$.
;	User/eric_proc.c: 483: data_index.r = data_index.w - 1;
; genCast
; genAssign
; genMinus
	dec	a
; genPointerSet
	ld	(x), a
; genGoto
	jra	00106$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/eric_proc.c: 487: data_index.r = 89;
; genPointerSet
	ld	a, #0x59
	ld	(x), a
; genGoto
	jra	00106$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	User/eric_proc.c: 492: data_index.r = 0;
; genPointerSet
	clr	(x)
; genLabel
00106$:
;	User/eric_proc.c: 494: result = Load_Data(2, (uint8_t *)&lrecd);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genSend
	ldw	x, #(_lrecd+0)
; genSend
	ld	a, #0x02
; genCall
	call	_Load_Data
	ld	(0x04, sp), a
; genGoto
	jra	00109$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00108$:
;	User/eric_proc.c: 498: result = Load_Data(0, (uint8_t *)&lrecd);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genSend
	ldw	x, #(_lrecd+0)
; genSend
	clr	a
; genCall
	call	_Load_Data
	ld	(0x04, sp), a
; genLabel
00109$:
;	User/eric_proc.c: 501: if (result)
; genIfx
	tnz	(0x04, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00112$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00145$.
;	User/eric_proc.c: 503: r485rlt.index = data_index.r + 1;
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ldw	y, #(_r485rlt+0)
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _data_index+0
; genCast
; genAssign
	clrw	x
; genPlus
	ld	xl, a
	incw	x
; genCast
; genAssign
; genPointerSet
	ldw	(y), x
;	User/eric_proc.c: 504: r485rlt.phase = (lrecd.pl >> 24) & 0xff;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, #(_lrecd+6)
; peephole 0w removed dead load into y from x.
; peephole 0w removed dead load into y from (0x2, y).
	ldw	x, (x)
; genGetByte
	ld	a, xh
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genPointerSet
	ldw	_r485rlt+2, x
;	User/eric_proc.c: 505: r485rlt.tlen = (lrecd.pl & 0x0000ffff);
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, _lrecd+8
; genAssign
; genPointerSet
	ldw	_r485rlt+4, x
;	User/eric_proc.c: 506: r485rlt.ym = (lrecd.year << 8) | lrecd.mon;
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _lrecd+0
; genCast
; genAssign
; peephole 3 removed dead clrw of x.
; genLeftShiftLiteral
	ld	xh, a
	clr	(0x02, sp)
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _lrecd+1
; genCast
; genAssign
	clr	(0x03, sp)
; genOr
	ld	xl, a
; genCast
; genAssign
; genPointerSet
	ldw	_r485rlt+6, x
;	User/eric_proc.c: 507: r485rlt.dh = (lrecd.day << 8) | lrecd.hour;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _lrecd+2
; genCast
; genAssign
; peephole 3 removed dead clrw of x.
; genLeftShiftLiteral
	ld	xh, a
	clr	(0x02, sp)
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _lrecd+3
; genCast
; genAssign
	clr	(0x03, sp)
; genOr
	ld	xl, a
; genCast
; genAssign
; genPointerSet
	ldw	_r485rlt+8, x
;	User/eric_proc.c: 508: r485rlt.ms = (lrecd.min << 8) | lrecd.sec;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _lrecd+4
; genCast
; genAssign
; peephole 3 removed dead clrw of x.
; genLeftShiftLiteral
	ld	xh, a
	clr	(0x02, sp)
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _lrecd+5
; genCast
; genAssign
	clr	(0x03, sp)
; genOr
	ld	xl, a
; genCast
; genAssign
; genPointerSet
	ldw	_r485rlt+10, x
;	User/eric_proc.c: 509: r485rlt.batt = (uint16_t)(Verfin / 100);
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
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
; genPointerSet
	ldw	_r485rlt+12, x
; genLabel
00112$:
;	User/eric_proc.c: 511: }
; genEndFunction
	addw	sp, #4
	ret
;	Total Get_Record function size at codegen: 3 bytes.
;	User/eric_proc.c: 514: uint8_t Rs485_GetCfg(uint16_t staddr, uint16_t offset, uint8_t *pbuf)
; genLabel
;	-----------------------------------------
;	 function Rs485_GetCfg
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 10 bytes.
_Rs485_GetCfg:
	sub	sp, #10
; genReceive
	ldw	(0x05, sp), x
;	User/eric_proc.c: 516: uint16_t addr = 0, val1 = 0, val2 = 0;
; genAssign
	clrw	x
	ldw	(0x01, sp), x
;	User/eric_proc.c: 518: if (pbuf == NULL)
; genIfx
	ldw	x, (0x0f, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00183$.
;	User/eric_proc.c: 520: return 0;
; genReturn
	clr	a
	jp	00124$
; genLabel
00102$:
;	User/eric_proc.c: 522: if (staddr < 0x8000)
; genCast
; genAssign
	ldw	x, (0x05, sp)
; genCmp
; genCmpTnz
	cpw	x, #0x8000
; peephole j5 changed absolute to relative unconditional jump.
	jrnc	00104$
; peephole j6 removed jra by using inverse jump logic
; peephole j30 removed unused label 00184$.
; skipping generated iCode
;	User/eric_proc.c: 524: return 0;
; genReturn
	clr	a
	jp	00124$
; genLabel
00104$:
;	User/eric_proc.c: 526: if (staddr > 0x8005)
; genCmp
; genCmpTnz
	cpw	x, #0x8005
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00106$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00185$.
; skipping generated iCode
;	User/eric_proc.c: 528: return 0;
; genReturn
	clr	a
	jp	00124$
; genLabel
00106$:
;	User/eric_proc.c: 530: if ((offset == 0) || (offset > 6))
; genIfx
	ldw	y, (0x0d, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00107$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00186$.
; genCast
; genAssign
	ldw	y, (0x0d, sp)
; genCmp
; genCmpTnz
	cpw	y, #0x0006
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00108$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00187$.
; skipping generated iCode
; genLabel
00107$:
;	User/eric_proc.c: 532: return 0;
; genReturn
	clr	a
	jp	00124$
; genLabel
00108$:
;	User/eric_proc.c: 535: if ((staddr + offset) > 0x8006) //如果地址加偏移错误，自动修正
; genPlus
	ldw	y, (0x05, sp)
	addw	y, (0x0d, sp)
; genCast
; genAssign
; genCmp
; genCmpTnz
	cpw	y, #0x8006
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00111$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00188$.
; skipping generated iCode
;	User/eric_proc.c: 537: offset = 0x8006 - staddr;
; genMinus
	ldw	y, #0x8006
	subw	y, (0x05, sp)
; genAssign
	ldw	(0x0d, sp), y
; genLabel
00111$:
;	User/eric_proc.c: 540: for (addr = staddr - 0x8000; addr <= offset ; addr++)
; genMinus
	subw	x, #0x8000
; genCast
; genAssign
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genAssign
	ldw	y, (0x0f, sp)
	ldw	(0x07, sp), y
; genAssign
	ldw	(0x09, sp), x
; genLabel
00122$:
; genCmp
; genCmpTnz
	ldw	x, (0x09, sp)
	cpw	x, (0x0d, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrugt	00120$
; peephole j17 removed jp by using inverse jump logic
; peephole j30 removed unused label 00189$.
; skipping generated iCode
;	User/eric_proc.c: 542: memcpy((uint8_t *)&val1, pbuf, 2);
; genCast
; genAssign
	ldw	x, (0x07, sp)
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x02
	push	#0x00
; genIPush
	pushw	x
; genSend
	ldw	x, sp
	addw	x, #5
; genCall
	call	___memcpy
;	User/eric_proc.c: 543: val2 = Rev16(val1);
; genSend
	ldw	x, (0x01, sp)
; genCall
	call	_Rev16
	ldw	(0x03, sp), x
;	User/eric_proc.c: 545: switch (addr)
; genCmp
; genCmpTnz
	ldw	x, (0x09, sp)
	cpw	x, #0x0005
; peephole j5 changed absolute to relative unconditional jump.
	jrugt	00119$
; peephole j17 removed jp by using inverse jump logic
; peephole j30 removed unused label 00190$.
; skipping generated iCode
;	User/eric_proc.c: 548: adjustdt.dt[0] = (val2 & 0xff);
; genCast
; genAssign
	ld	a, (0x04, sp)
;	User/eric_proc.c: 545: switch (addr)
; genJumpTab
	ldw	x, (0x09, sp)
	sllw	x
	ldw	x, (#00191$, x)
	jp	(x)
00191$:
	.dw	#00112$
	.dw	#00113$
	.dw	#00114$
	.dw	#00115$
	.dw	#00116$
	.dw	#00117$
;	User/eric_proc.c: 547: case 0x00:
; genLabel
00112$:
;	User/eric_proc.c: 548: adjustdt.dt[0] = (val2 & 0xff);
; skipping iCode since result will be rematerialized
; genPointerSet
	ld	_adjustdt+1, a
;	User/eric_proc.c: 549: break;
; genGoto
	jra	00119$
; peephole j5 changed absolute to relative unconditional jump.
;	User/eric_proc.c: 550: case 0x01:
; genLabel
00113$:
;	User/eric_proc.c: 551: adjustdt.dt[1] = (val2 & 0xff);
; skipping iCode since result will be rematerialized
; genPointerSet
	ld	_adjustdt+2, a
;	User/eric_proc.c: 552: break;
; genGoto
	jra	00119$
; peephole j5 changed absolute to relative unconditional jump.
;	User/eric_proc.c: 553: case 0x02:
; genLabel
00114$:
;	User/eric_proc.c: 554: adjustdt.dt[2] = (val2 & 0xff);
; skipping iCode since result will be rematerialized
; genPointerSet
	ld	_adjustdt+3, a
;	User/eric_proc.c: 555: break;
; genGoto
	jra	00119$
; peephole j5 changed absolute to relative unconditional jump.
;	User/eric_proc.c: 556: case 0x03:
; genLabel
00115$:
;	User/eric_proc.c: 557: adjustdt.dt[3] = (val2 & 0xff);
; skipping iCode since result will be rematerialized
; genPointerSet
	ld	_adjustdt+4, a
;	User/eric_proc.c: 558: break;
; genGoto
	jra	00119$
; peephole j5 changed absolute to relative unconditional jump.
;	User/eric_proc.c: 559: case 0x04:
; genLabel
00116$:
;	User/eric_proc.c: 560: adjustdt.dt[4] = (val2 & 0xff);
; skipping iCode since result will be rematerialized
; genPointerSet
	ld	_adjustdt+5, a
;	User/eric_proc.c: 561: break;
; genGoto
	jra	00119$
; peephole j5 changed absolute to relative unconditional jump.
;	User/eric_proc.c: 562: case 0x05:
; genLabel
00117$:
;	User/eric_proc.c: 563: adjustdt.dt[5] = (val2 & 0xff);
; skipping iCode since result will be rematerialized
; genPointerSet
	ld	_adjustdt+6, a
;	User/eric_proc.c: 568: }
; genLabel
00119$:
;	User/eric_proc.c: 569: pbuf += 2;
; genPlus
	ldw	x, (0x07, sp)
	incw	x
	incw	x
	ldw	(0x07, sp), x
;	User/eric_proc.c: 540: for (addr = staddr - 0x8000; addr <= offset ; addr++)
; genPlus
	ldw	x, (0x09, sp)
	incw	x
	ldw	(0x09, sp), x
; peephole j30 removed unused label 00192$.
; genGoto
	jra	00122$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00120$:
;	User/eric_proc.c: 571: return 1;
; genReturn
	ld	a, #0x01
; genLabel
00124$:
;	User/eric_proc.c: 572: }
; genEndFunction
	ldw	x, (11, sp)
	addw	sp, #16
	jp	(x)
;	Total Rs485_GetCfg function size at codegen: 5 bytes.
;	User/eric_proc.c: 576: void Rs485_Proc(void)
; genLabel
;	-----------------------------------------
;	 function Rs485_Proc
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 8 bytes.
_Rs485_Proc:
	sub	sp, #8
;	User/eric_proc.c: 579: uint16_t pktlen = 0, recbyte = 0, len1 = 0, sta1 = 0, off1 = 0;
; genAssign
	clrw	x
	ldw	(0x01, sp), x
; genAssign
	clrw	x
	ldw	(0x03, sp), x
;	User/eric_proc.c: 581: if (timeout) //2s超时计数
; genIfx
	ld	a, _Rs485_Proc_timeout_10000_793+0
; peephole 625a changed tnz by ld
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00147$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00288$.
;	User/eric_proc.c: 583: timeout--;
; genMinus
	dec	_Rs485_Proc_timeout_10000_793+0
;	User/eric_proc.c: 586: while (u1buf.r != u1buf.w)
; genLabel
00147$:
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genLabel
00136$:
; genCast
; genAssign
	ldw	x, #(_u1buf+0)
; genPointerGet
	ldw	(0x05, sp), x
; peephole 4w removed redundant load from (0x05, sp) into x.
	ldw	x, (x)
	ldw	(0x07, sp), x
; genPointerGet
	ldw	x, _u1buf+2
; genCmpEQorNE
	cpw	x, (0x07, sp)
	jrne	00290$
	jp	00139$
00290$:
; skipping generated iCode
;	User/eric_proc.c: 588: temp2 = temp1;
; genAssign
	mov	_Rs485_Proc_temp2_10000_793+0, _Rs485_Proc_temp1_10000_793+0
;	User/eric_proc.c: 589: temp1 = u1buf.recbuf[u1buf.r];
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, (0x05, sp)
	ldw	x, (x)
; genPlus
; genPointerGet
; peephole 10b moved addition of offset into storage instruction
	ld	a, (_u1buf+6, x)
	ld	_Rs485_Proc_temp1_10000_793+0, a
;	User/eric_proc.c: 590: u1buf.r = (u1buf.r + 1) % UBUFLEN;
; genPointerGet
	ldw	x, (0x05, sp)
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
	ldw	y, (0x05, sp)
	ldw	(y), x
;	User/eric_proc.c: 613: memcpy((uint8_t *)&m_cfg, rsUbuf, pktlen);
; skipping iCode since result will be rematerialized
;	User/eric_proc.c: 592: switch (stateU)
; genCmpEQorNE
	ld	a, _Rs485_Proc_stateU_10000_793+0
; peephole 600a removed unneeded cp a, #0x00
	jrne	00293$
	jp	00126$
00293$:
; skipping generated iCode
;	User/eric_proc.c: 595: if (recbyte >= 128) { // 严格防止缓冲区溢出
; genCast
; genAssign
	ldw	x, (0x03, sp)
;	User/eric_proc.c: 599: rsUbuf[recbyte++] = temp1;
; genPlus
	ldw	y, (0x03, sp)
	incw	y
	ldw	(0x07, sp), y
;	User/eric_proc.c: 595: if (recbyte >= 128) { // 严格防止缓冲区溢出
; genCmp
; genCmpTnz
	cpw	x, #0x0080
	clr	a
	rlc	a
	ld	xl, a
;	User/eric_proc.c: 592: switch (stateU)
; genCmpEQorNE
	ld	a, _Rs485_Proc_stateU_10000_793+0
	dec	a
	jrne	00296$
	jp	00117$
00296$:
; skipping generated iCode
; genCmpEQorNE
	ld	a, _Rs485_Proc_stateU_10000_793+0
	cp	a, #0x02
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00300$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00299$.
	jp	00134$
00300$:
; skipping generated iCode
;	User/eric_proc.c: 595: if (recbyte >= 128) { // 严格防止缓冲区溢出
; genIfx
	ld	a, xl
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00105$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00301$.
;	User/eric_proc.c: 596: stateU = 0;
; genAssign
	clr	_Rs485_Proc_stateU_10000_793+0
;	User/eric_proc.c: 597: break;
; genGoto
	jra	00136$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	User/eric_proc.c: 599: rsUbuf[recbyte++] = temp1;
; genAssign
	ldw	x, (0x03, sp)
; genAssign
	ldw	y, (0x07, sp)
	ldw	(0x03, sp), y
; genPlus
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
	ld	a, _Rs485_Proc_temp1_10000_793+0
	ld	((_rsUbuf+0), x), a
;	User/eric_proc.c: 601: if (recbyte == 7) //数据长度
; genCast
; genAssign
	ldw	x, (0x03, sp)
; genCmpEQorNE
	cpw	x, #0x0007
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00303$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00109$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00304$.
; skipping generated iCode
;	User/eric_proc.c: 603: pktlen = temp1 + 9; //总数据长度
; genCast
; genAssign
	ld	a, _Rs485_Proc_temp1_10000_793+0
	clrw	x
; genPlus
	ld	xl, a
	addw	x, #0x0009
; genCast
; genAssign
;	User/eric_proc.c: 604: if (pktlen > 128) //错误长度
; genCast
; genAssign
	ldw	(0x01, sp), x
; peephole 4w removed redundant load from (0x01, sp) into x.
; genCmp
; genCmpTnz
	cpw	x, #0x0080
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00109$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00305$.
; skipping generated iCode
;	User/eric_proc.c: 606: stateU = 0;
; genAssign
	clr	_Rs485_Proc_stateU_10000_793+0
; genLabel
00109$:
;	User/eric_proc.c: 610: if ((pktlen > 0) && (recbyte >= pktlen)) //接收到足够包长
; genIfx
	ldw	x, (0x01, sp)
	jrne	00306$
	jp	00136$
00306$:
; genCmp
; genCmpTnz
	ldw	x, (0x03, sp)
	cpw	x, (0x01, sp)
	jrnc	00307$
	jp	00136$
00307$:
; skipping generated iCode
;	User/eric_proc.c: 612: memset((uint8_t *)&m_cfg, 0, 88);
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x58
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, #(_m_cfg+0)
; genCall
	call	_memset
;	User/eric_proc.c: 613: memcpy((uint8_t *)&m_cfg, rsUbuf, pktlen);
; genCast
; genAssign
	ldw	x, (0x01, sp)
; genIPush
	pushw	x
; genIPush
	push	#<(_rsUbuf+0)
	push	#((_rsUbuf+0) >> 8)
; genSend
	ldw	x, #(_m_cfg+0)
; genCall
	call	___memcpy
;	User/eric_proc.c: 614: if (crc_verify((uint8_t *)&m_cfg, pktlen)) //主机数据校验ok
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x01, sp)
	pushw	x
; genSend
	ldw	x, #(_m_cfg+0)
; genCall
	call	_crc_verify
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00113$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00308$.
;	User/eric_proc.c: 616: c_ackcfg.addrID = r485id;
; genPointerSet
	mov	_c_ackcfg+0, _r485id+0
;	User/eric_proc.c: 617: c_ackcfg.funID = 0x10;
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_c_ackcfg+1, #0x10
;	User/eric_proc.c: 618: c_ackcfg.staddr = m_cfg.staddr; //获取用于应答的数据包地址
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, _m_cfg+2
; genPointerSet
	ldw	_c_ackcfg+2, x
;	User/eric_proc.c: 619: c_ackcfg.offset = m_cfg.offset; //获取用于应答的数据偏移量						
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, _m_cfg+4
; genPointerSet
	ldw	_c_ackcfg+4, x
;	User/eric_proc.c: 621: sta1 = Rev16(m_cfg.staddr); //大小端转换
; genPointerGet
	ldw	x, _m_cfg+2
; genSend
; genCall
	call	_Rev16
;	User/eric_proc.c: 622: m_cfg.staddr = sta1;
; genPointerSet
	ldw	_m_cfg+2, x
;	User/eric_proc.c: 623: off1 = Rev16(m_cfg.offset);
; genPointerGet
	ldw	x, _m_cfg+4
; genSend
; genCall
	call	_Rev16
;	User/eric_proc.c: 624: m_cfg.offset = off1;
; genPointerSet
	ldw	_m_cfg+4, x
;	User/eric_proc.c: 626: if (Rs485_GetCfg(m_cfg.staddr, m_cfg.offset, m_cfg.buf) > 0)//配置时间
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	y, _m_cfg+2
; genIPush
	push	#<(_m_cfg+7)
	push	#((_m_cfg+7) >> 8)
; genIPush
	pushw	x
; genSend
	ldw	x, y
; genCall
	call	_Rs485_GetCfg
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00113$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00309$.
;	User/eric_proc.c: 628: rtc_set_datetime();
; genCall
	call	_rtc_set_datetime
;	User/eric_proc.c: 629: c_ackcfg.crc = CRC_GetModbus16((uint8_t *)&c_ackcfg, 6);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x06
	push	#0x00
; genSend
	ldw	x, #(_c_ackcfg+0)
; genCall
	call	_CRC_GetModbus16
; genPointerSet
;	User/eric_proc.c: 630: c_ackcfg.crc = Rev16(c_ackcfg.crc);//stm8是大端模式
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	_c_ackcfg+6, x
; peephole 4w removed redundant load from _c_ackcfg+6 into x.
; genSend
; genCall
	call	_Rev16
; genPointerSet
	ldw	_c_ackcfg+6, x
;	User/eric_proc.c: 631: memcpy(pkt1, (uint8_t *)&c_ackcfg, 8);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x08
	push	#0x00
; genIPush
	push	#<(_c_ackcfg+0)
	push	#((_c_ackcfg+0) >> 8)
; genSend
	ldw	x, #(_pkt1+0)
; genCall
	call	___memcpy
;	User/eric_proc.c: 632: Uart1_Send(pkt1, 10);
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x0a
	push	#0x00
; genSend
	ldw	x, #(_pkt1+0)
; genCall
	call	_Uart1_Send
; genLabel
00113$:
;	User/eric_proc.c: 635: stateU = 0;
; genAssign
	clr	_Rs485_Proc_stateU_10000_793+0
;	User/eric_proc.c: 637: break;
; genGoto
	jp	00136$
;	User/eric_proc.c: 640: case 1://下取数据,0x03
; genLabel
00117$:
;	User/eric_proc.c: 641: if (recbyte >= 128) { // 严格防止缓冲区溢出
; genIfx
	ld	a, xl
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00119$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00310$.
;	User/eric_proc.c: 642: stateU = 0;
; genAssign
	clr	_Rs485_Proc_stateU_10000_793+0
;	User/eric_proc.c: 643: break;
; genGoto
	jp	00136$
; genLabel
00119$:
;	User/eric_proc.c: 645: rsUbuf[recbyte++] = temp1;
; genAssign
	ldw	x, (0x03, sp)
; genAssign
	ldw	y, (0x07, sp)
	ldw	(0x03, sp), y
; genPlus
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
	ld	a, _Rs485_Proc_temp1_10000_793+0
	ld	((_rsUbuf+0), x), a
;	User/eric_proc.c: 646: if (recbyte >= RS485_AQ_PktLen)//一个包长 8bytes
; genCast
; genAssign
	ldw	x, (0x03, sp)
; genCmp
; genCmpTnz
	cpw	x, #0x0008
	jrnc	00311$
	jp	00136$
00311$:
; skipping generated iCode
;	User/eric_proc.c: 648: memset((uint8_t *)&m_query, 0, RS485_AQ_PktLen);
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x08
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, #(_m_query+0)
; genCall
	call	_memset
;	User/eric_proc.c: 649: memcpy((uint8_t *)&m_query, rsUbuf, RS485_AQ_PktLen);
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x08
	push	#0x00
; genIPush
	push	#<(_rsUbuf+0)
	push	#((_rsUbuf+0) >> 8)
; genSend
	ldw	x, #(_m_query+0)
; genCall
	call	___memcpy
;	User/eric_proc.c: 651: if (crc_verify((uint8_t *)&m_query, RS485_AQ_PktLen)) //主机数据校验ok
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x08
	push	#0x00
; genSend
	ldw	x, #(_m_query+0)
; genCall
	call	_crc_verify
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00123$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00312$.
;	User/eric_proc.c: 653: Get_Record(timeout);
; genSend
	ld	a, _Rs485_Proc_timeout_10000_793+0
; genCall
	call	_Get_Record
;	User/eric_proc.c: 654: timeout = 10;
; genAssign
	mov	_Rs485_Proc_timeout_10000_793+0, #0x0a
;	User/eric_proc.c: 655: len1 = Pkt_485ackquery(r485id, 0x03, m_query.staddr, m_query.offset, &r485rlt, pkt1);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	y, _m_query+4
; genPointerGet
	ldw	x, _m_query+2
; genIPush
	push	#<(_pkt1+0)
	push	#((_pkt1+0) >> 8)
; genIPush
	push	#<(_r485rlt+0)
	push	#((_r485rlt+0) >> 8)
; genIPush
	pushw	y
; genIPush
	pushw	x
; genIPush
	push	#0x03
; genSend
	ld	a, _r485id+0
; genCall
	call	_Pkt_485ackquery
;	User/eric_proc.c: 656: if (len1 > 5)
; genCast
; genAssign
	ldw	y, x
; genCmp
; genCmpTnz
	cpw	y, #0x0005
; peephole j5 changed absolute to relative unconditional jump.
	jrule	00123$
; peephole j16 removed jra by using inverse jump logic
; peephole j30 removed unused label 00313$.
; skipping generated iCode
;	User/eric_proc.c: 658: Uart1_Send(pkt1, len1);
; genIPush
	pushw	x
; genSend
	ldw	x, #(_pkt1+0)
; genCall
	call	_Uart1_Send
; genLabel
00123$:
;	User/eric_proc.c: 661: stateU = 0;
; genAssign
	clr	_Rs485_Proc_stateU_10000_793+0
;	User/eric_proc.c: 663: break;
; genGoto
	jp	00136$
;	User/eric_proc.c: 665: case 0:
; genLabel
00126$:
;	User/eric_proc.c: 666: if ((r485id == temp2) && (0x03 == temp1)) //下取数据
; genCmpEQorNE
	ld	a, _Rs485_Proc_temp2_10000_793+0
	sub	a, _r485id+0
	jrne	00315$
	inc	a
; peephole 51 used inc to get #1 into a.
	ld	(0x08, sp), a
; peephole j5 changed absolute to relative unconditional jump.
	.byte 0xc5
; peephole jrf7 used bcp opcode to jump over 2-byte instruction.
00315$:
	clr	(0x08, sp)
00316$:
;	User/eric_proc.c: 672: rsUbuf[recbyte++] = temp1;
; skipping iCode since result will be rematerialized
;	User/eric_proc.c: 666: if ((r485id == temp2) && (0x03 == temp1)) //下取数据
; genIfx
	tnz	(0x08, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00131$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00317$.
; genCmpEQorNE
	ld	a, _Rs485_Proc_temp1_10000_793+0
	cp	a, #0x03
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00319$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00131$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00320$.
; skipping generated iCode
;	User/eric_proc.c: 668: memset(rsUbuf, 0, 128);
; genIPush
	push	#0x80
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, #(_rsUbuf+0)
; genCall
	call	_memset
;	User/eric_proc.c: 670: pktlen = 0;
; genAssign
	clrw	x
	ldw	(0x01, sp), x
;	User/eric_proc.c: 671: rsUbuf[recbyte++] = temp2;
; genPointerSet
	mov	_rsUbuf+0, _Rs485_Proc_temp2_10000_793+0
;	User/eric_proc.c: 672: rsUbuf[recbyte++] = temp1;
; genAssign
	ldw	x, #0x0002
	ldw	(0x03, sp), x
; genPointerSet
	mov	_rsUbuf+1, _Rs485_Proc_temp1_10000_793+0
;	User/eric_proc.c: 673: stateU = 1;
; genAssign
	mov	_Rs485_Proc_stateU_10000_793+0, #0x01
; genGoto
	jp	00136$
; genLabel
00131$:
;	User/eric_proc.c: 675: else if ((r485id == temp2) && (0x10 == temp1)) //下发数据
; genIfx
	tnz	(0x08, sp)
	jrne	00321$
	jp	00136$
00321$:
; genCmpEQorNE
	ld	a, _Rs485_Proc_temp1_10000_793+0
	cp	a, #0x10
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00324$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00323$.
	jp	00136$
00324$:
; skipping generated iCode
;	User/eric_proc.c: 677: memset(rsUbuf, 0, 128);
; genIPush
	push	#0x80
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, #(_rsUbuf+0)
; genCall
	call	_memset
;	User/eric_proc.c: 679: pktlen = 0;
; genAssign
	clrw	x
	ldw	(0x01, sp), x
;	User/eric_proc.c: 680: rsUbuf[recbyte++] = temp2;
; genPointerSet
	mov	_rsUbuf+0, _Rs485_Proc_temp2_10000_793+0
;	User/eric_proc.c: 681: rsUbuf[recbyte++] = temp1;
; genAssign
	ldw	x, #0x0002
	ldw	(0x03, sp), x
; genPointerSet
	mov	_rsUbuf+1, _Rs485_Proc_temp1_10000_793+0
;	User/eric_proc.c: 682: stateU = 2;
; genAssign
	mov	_Rs485_Proc_stateU_10000_793+0, #0x02
;	User/eric_proc.c: 684: break;
; genGoto
	jp	00136$
;	User/eric_proc.c: 686: default:
; genLabel
00134$:
;	User/eric_proc.c: 687: stateU = 0;
; genAssign
	clr	_Rs485_Proc_stateU_10000_793+0
;	User/eric_proc.c: 689: }
; genGoto
	jp	00136$
; genLabel
00139$:
;	User/eric_proc.c: 691: }//用于检测485接口是否接收到有效数据，100ms
; genEndFunction
	addw	sp, #8
	ret
;	Total Rs485_Proc function size at codegen: 3 bytes.
;	User/eric_proc.c: 693: void Chk_State(void)
; genLabel
;	-----------------------------------------
;	 function Chk_State
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_Chk_State:
;	User/eric_proc.c: 697: last = sysmode;
; genAssign
	mov	_Chk_State_last_10000_810+0, _sysmode+0
;	User/eric_proc.c: 698: sysmode = GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_4);
; genSend
	ld	a, #0x10
; genSend
	ldw	x, #0x500a
; genCall
	call	_GPIO_ReadInputDataBit
; genCast
; genAssign
	ld	_sysmode+0, a
;	User/eric_proc.c: 699: if (last != sysmode)
; genCmpEQorNE
	ld	a, _sysmode+0
	cp	a, _Chk_State_last_10000_810+0
	jrne	00123$
	ret
; peephole j2e replaced jump by return.
00123$:
; skipping generated iCode
;	User/eric_proc.c: 701: if (sysmode) //电池
; genIfx
	ld	a, _sysmode+0
; peephole 625a changed tnz by ld
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00125$.
;	User/eric_proc.c: 703: USART_DeInit(USART1);       //复位UART1
; genSend
	ldw	x, #0x5230
; genCall
	call	_USART_DeInit
;	User/eric_proc.c: 704: GPIO_Init(GPIOC, 0xEC, GPIO_Mode_Out_PP_Low_Slow);//除PC0，PC1(I2C1)，PC4
; genIPush
	push	#0xc0
; genSend
	ld	a, #0xec
; genSend
	ldw	x, #0x500a
; genCall
	call	_GPIO_Init
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	User/eric_proc.c: 708: Uart1_Init();
; genCall
	call	_Uart1_Init
; genLabel
00103$:
;	User/eric_proc.c: 710: delay_halt = HALT_TIMEOUT;
; genAssign
	mov	_delay_halt+0, #0xff
; genLabel
; peephole j30 removed unused label 00106$.
;	User/eric_proc.c: 712: }
; genEndFunction
	ret
;	Total Chk_State function size at codegen: 1 bytes.
;	User/eric_proc.c: 721: void Storage_SaveSettings(uint8_t lang, uint8_t id_b3, uint8_t id_b2, uint8_t id_b1, uint8_t id_b0)
; genLabel
;	-----------------------------------------
;	 function Storage_SaveSettings
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_Storage_SaveSettings:
	push	a
; genReceive
	ld	(0x01, sp), a
;	User/eric_proc.c: 723: I2C_WriteByte(0xa0,252,id_b3);
; genIPush
	ld	a, (0x04, sp)
	push	a
; genIPush
	push	#0xfc
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_WriteByte
;	User/eric_proc.c: 724: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 725: I2C_WriteByte(0xa0,253,id_b2);
; genIPush
	ld	a, (0x05, sp)
	push	a
; genIPush
	push	#0xfd
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_WriteByte
;	User/eric_proc.c: 726: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 727: I2C_WriteByte(0xa0,254,id_b1);
; genIPush
	ld	a, (0x06, sp)
	push	a
; genIPush
	push	#0xfe
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_WriteByte
;	User/eric_proc.c: 728: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 729: I2C_WriteByte(0xa0,255,id_b0);
; genIPush
	ld	a, (0x07, sp)
	push	a
; genIPush
	push	#0xff
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_WriteByte
;	User/eric_proc.c: 730: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 732: I2C_WriteByte(0xa0,80,lang);
; genIPush
	ld	a, (0x01, sp)
	push	a
; genIPush
	push	#0x50
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_WriteByte
;	User/eric_proc.c: 733: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_proc.c: 734: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #7
	jp	(x)
;	Total Storage_SaveSettings function size at codegen: 5 bytes.
;	User/eric_proc.c: 737: void Storage_ClearHistory(void)
; genLabel
;	-----------------------------------------
;	 function Storage_ClearHistory
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_Storage_ClearHistory:
;	User/eric_proc.c: 739: I2C_WriteByte(0xa0,250,data_index.w);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _data_index+1
; genIPush
	push	a
; genIPush
	push	#0xfa
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_WriteByte
;	User/eric_proc.c: 740: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 741: I2C_WriteByte(0xa0,251,data_index.used);
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, _data_index+2
; genIPush
	push	a
; genIPush
	push	#0xfb
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_WriteByte
;	User/eric_proc.c: 742: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_proc.c: 743: }
; genEndFunction
	jp	_Delay
; peephole 52 removed unreachable ret.
;	Total Storage_ClearHistory function size at codegen: 1 bytes.
;	User/eric_proc.c: 747: void Storage_FactoryReset(void)
; genLabel
;	-----------------------------------------
;	 function Storage_FactoryReset
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_Storage_FactoryReset:
;	User/eric_proc.c: 749: I2C_WriteByte(0xa0,250,0);
; genIPush
	push	#0x00
; genIPush
	push	#0xfa
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_WriteByte
;	User/eric_proc.c: 750: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 751: I2C_WriteByte(0xa0,251,0);
; genIPush
	push	#0x00
; genIPush
	push	#0xfb
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_WriteByte
;	User/eric_proc.c: 752: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 753: data_index.w=0;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_data_index+1, #0x00
;	User/eric_proc.c: 754: data_index.used=0;
; skipping iCode since result will be rematerialized
; genPointerSet
	mov	_data_index+2, #0x00
;	User/eric_proc.c: 756: I2C_WriteByte(0xa0,252,0);
; genIPush
	push	#0x00
; genIPush
	push	#0xfc
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_WriteByte
;	User/eric_proc.c: 757: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 758: I2C_WriteByte(0xa0,253,0);
; genIPush
	push	#0x00
; genIPush
	push	#0xfd
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_WriteByte
;	User/eric_proc.c: 759: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 760: I2C_WriteByte(0xa0,254,0);
; genIPush
	push	#0x00
; genIPush
	push	#0xfe
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_WriteByte
;	User/eric_proc.c: 761: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 762: I2C_WriteByte(0xa0,255,1);
; genIPush
	push	#0x01
; genIPush
	push	#0xff
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_WriteByte
;	User/eric_proc.c: 763: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 765: memset((uint8_t *)&stt,0,70);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x46
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, #(_stt+0)
; genCall
	call	_memset
;	User/eric_proc.c: 766: Save_Stat((uint8_t *)&stt);
; skipping iCode since result will be rematerialized
; genSend
	ldw	x, #(_stt+0)
; genCall
	call	_Save_Stat
;	User/eric_proc.c: 768: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 769: WWDG_SWReset();
; genCall
; genLabel
; peephole j30 removed unused label 00101$.
;	User/eric_proc.c: 770: }
; genEndFunction
	jp	_WWDG_SWReset
; peephole 52 removed unreachable ret.
;	Total Storage_FactoryReset function size at codegen: 1 bytes.
;	User/eric_proc.c: 773: void Storage_Init(void)
; genLabel
;	-----------------------------------------
;	 function Storage_Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 13 bytes.
_Storage_Init:
	sub	sp, #13
;	User/eric_proc.c: 777: Load_Stat((uint8_t *)&stt);//读取统计数据
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genSend
	ldw	x, #(_stt+0)
; genCall
	call	_Load_Stat
;	User/eric_proc.c: 778: if ((stt[A].tscount == 0xffff) && (stt[B].tscount == 0xffff) && (stt[C].tscount == 0xffff)) //如果是首次读取，先初始化
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, _stt+10
; genCast
; genAssign
; genCmpEQorNE
	incw	x
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00156$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00157$.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, _stt+20
; genCast
; genAssign
; genCmpEQorNE
	incw	x
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00159$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00160$.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, _stt+40
; genCast
; genAssign
; genCmpEQorNE
	incw	x
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00162$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00163$.
; skipping generated iCode
;	User/eric_proc.c: 779: memset((uint8_t *)&stt, 0, 70);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x46
	push	#0x00
; genIPush
	clrw	x
	pushw	x
; genSend
	ldw	x, #(_stt+0)
; genCall
	call	_memset
; genLabel
00102$:
;	User/eric_proc.c: 781: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 782: adjustdt.dt[11] = I2C_ReadByte(0xa0, 80); //语言选择
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x50
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_ReadByte
; genPointerSet
	ld	_adjustdt+12, a
;	User/eric_proc.c: 783: language = adjustdt.dt[11];
; genAssign
	ld	_language+0, a
;	User/eric_proc.c: 785: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 786: data_index.w = I2C_ReadByte(0xa0, 250); //读取保存了的数据索引
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0xfa
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_ReadByte
; genPointerSet
	ld	_data_index+1, a
;	User/eric_proc.c: 787: if (data_index.w == 0xff)
; genCmpEQorNE
	inc	a
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00165$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00106$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00166$.
; skipping generated iCode
;	User/eric_proc.c: 788: data_index.w = 0;
; genPointerSet
	mov	_data_index+1, #0x00
; genLabel
00106$:
;	User/eric_proc.c: 789: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 790: data_index.used = I2C_ReadByte(0xa0, 251);
; skipping iCode since result will be rematerialized
; genIPush
	push	#0xfb
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_ReadByte
; genPointerSet
	ld	_data_index+2, a
;	User/eric_proc.c: 791: if (data_index.used == 0xff)
; genCmpEQorNE
	inc	a
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00168$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00108$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00169$.
; skipping generated iCode
;	User/eric_proc.c: 792: data_index.used = 0;
; genPointerSet
	mov	_data_index+2, #0x00
; genLabel
00108$:
;	User/eric_proc.c: 794: id[0] = I2C_ReadByte(0xa0, 252);
; skipping iCode since result will be rematerialized
; genIPush
	push	#0xfc
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_ReadByte
; genPointerSet
	ld	(0x01, sp), a
;	User/eric_proc.c: 795: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 796: id[1] = I2C_ReadByte(0xa0, 253);
; skipping iCode since result will be rematerialized
; genIPush
	push	#0xfd
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_ReadByte
; genPointerSet
	ld	(0x02, sp), a
;	User/eric_proc.c: 797: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 798: id[2] = I2C_ReadByte(0xa0, 254);
; skipping iCode since result will be rematerialized
; genIPush
	push	#0xfe
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_ReadByte
; genPointerSet
	ld	(0x03, sp), a
;	User/eric_proc.c: 799: Delay(IIC_TIMEOUT);
; genSend
	ldw	x, #0x07d0
; genCall
	call	_Delay
;	User/eric_proc.c: 800: id[3] = I2C_ReadByte(0xa0, 255);
; skipping iCode since result will be rematerialized
; genIPush
	push	#0xff
; genSend
	ld	a, #0xa0
; genCall
	call	_I2C_ReadByte
; genPointerSet
	ld	(0x05, sp), a
; peephole 4 removed redundant load from (0x05, sp) into a.
	ld	(0x04, sp), a
;	User/eric_proc.c: 802: selfid = id[0] * 1000000 + id[1] * 10000 + id[2] * 100 + id[3];
; genPointerGet
	ld	a, (0x01, sp)
; genCast
; genAssign
	clrw	x
	clr	(0x0a, sp)
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
	ldw	(0x0c, sp), x
	ldw	(0x0a, sp), y
; genPointerGet
	ld	a, (0x02, sp)
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
	exgw	x, y
	clrw	x
	tnzw	y
	jrpl	00170$
	decw	x
00170$:
; genPlus
	addw	y, (0x0c, sp)
	ldw	(0x08, sp), y
	ld	a, xl
	adc	a, (0x0b, sp)
	ld	(0x07, sp), a
	ld	a, xh
	adc	a, (0x0a, sp)
	ld	(0x06, sp), a
; genPointerGet
	ld	a, (0x03, sp)
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
	exgw	x, y
	clrw	x
	tnzw	y
	jrpl	00171$
	decw	x
00171$:
; genPlus
	addw	y, (0x08, sp)
	ld	a, xl
	adc	a, (0x07, sp)
	ld	(0x0b, sp), a
	ld	a, xh
	adc	a, (0x06, sp)
	ld	(0x0a, sp), a
; genCast
; genAssign
	ld	a, (0x05, sp)
; genCast
; genAssign
	clr	(0x08, sp)
	clrw	x
; genPlus
	pushw	y
	add	a, (2, sp)
	popw	y
	rlwa	y
; peephole r2 used rlwa.
	adc	a, (0x08, sp)
	ld	yh, a
	ld	a, xl
	adc	a, (0x0b, sp)
	rlwa	x
; peephole r1 used rlwa.
	adc	a, (0x0a, sp)
	ld	xh, a
; genAssign
	ldw	_selfid+2, y
	ldw	_selfid+0, x
;	User/eric_proc.c: 803: if (selfid > 99999999)
; genCmp
; genCmpTnz
	ldw	x, #0xe0ff
	cpw	x, _selfid+2
	ld	a, #0xf5
	sbc	a, _selfid+1
	ld	a, #0x05
	sbc	a, _selfid+0
; peephole j5 changed absolute to relative unconditional jump.
	jrnc	00110$
; peephole j6 removed jra by using inverse jump logic
; peephole j30 removed unused label 00172$.
; skipping generated iCode
;	User/eric_proc.c: 804: selfid = 1;
; genAssign
	clrw	x
	incw	x
	ldw	_selfid+2, x
	clrw	x
	ldw	_selfid+0, x
; genLabel
00110$:
;	User/eric_proc.c: 805: r485id = (selfid & 0xff);
; genCast
; genAssign
	mov	_r485id+0, _selfid+3
; genLabel
; peephole j30 removed unused label 00111$.
;	User/eric_proc.c: 806: }
; genEndFunction
	addw	sp, #13
	ret
;	Total Storage_Init function size at codegen: 3 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
__xinit__strokeA:
	.db #0x01	; 1
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__strokeB:
	.db #0x01	; 1
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__strokeC:
	.db #0x01	; 1
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__ticks:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__stt:
	.dw #0x0000
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.dw #0x0000
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.dw #0x0000
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.dw #0x0000
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.dw #0x0000
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.dw #0x0000
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.dw #0x0000
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__selfid:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__r485id:
	.db #0x00	; 0
__xinit__r485rlt:
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
__xinit__sysmode:
	.db #0x01	; 1
	.area CABS (ABS)
