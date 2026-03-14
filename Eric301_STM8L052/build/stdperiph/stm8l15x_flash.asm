;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8l15x_flash
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FLASH_SetProgrammingTime
	.globl _FLASH_GetProgrammingTime
	.globl _FLASH_PowerWaitModeConfig
	.globl _FLASH_DeInit
	.globl _FLASH_Unlock
	.globl _FLASH_Lock
	.globl _FLASH_ProgramByte
	.globl _FLASH_EraseByte
	.globl _FLASH_ProgramWord
	.globl _FLASH_ReadByte
	.globl _FLASH_ProgramOptionByte
	.globl _FLASH_EraseOptionByte
	.globl _FLASH_GetReadOutProtectionStatus
	.globl _FLASH_GetBootSize
	.globl _FLASH_GetCodeSize
	.globl _FLASH_ITConfig
	.globl _FLASH_GetFlagStatus
	.globl _FLASH_PowerRunModeConfig
	.globl _FLASH_GetPowerStatus
	.globl _FLASH_ProgramBlock
	.globl _FLASH_EraseBlock
	.globl _FLASH_WaitForLastOperation
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
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
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 174: void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
; genLabel
;	-----------------------------------------
;	 function FLASH_SetProgrammingTime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_FLASH_SetProgrammingTime:
; genReceive
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 179: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
; genPointerGet
; genAnd
; genPointerSet
	bres	0x5050, #0
; peephole 204x replaced 'and' by 'bres' ('0x5050').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 180: FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
; genPointerGet
	ld	a, 0x5050
; genCast
; genAssign
; genOr
	pushw	x
	or	a, (2, sp)
	popw	x
; genPointerSet
	ld	0x5050, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 181: }
; genEndFunction
	ret
;	Total FLASH_SetProgrammingTime function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 188: FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
; genLabel
;	-----------------------------------------
;	 function FLASH_GetProgrammingTime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_FLASH_GetProgrammingTime:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 190: return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
; genPointerGet
	ld	a, 0x5050
; genGetABit
	and	a, #0x01
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 191: }
; genEndFunction
	ret
;	Total FLASH_GetProgrammingTime function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 203: void FLASH_PowerWaitModeConfig(FLASH_Power_TypeDef FLASH_Power)
; genLabel
;	-----------------------------------------
;	 function FLASH_PowerWaitModeConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_FLASH_PowerWaitModeConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 211: FLASH->CR1 |= (uint8_t)FLASH_CR1_WAITM;
; genPointerGet
	ld	a, 0x5050
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 209: if(FLASH_Power != FLASH_Power_On)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 211: FLASH->CR1 |= (uint8_t)FLASH_CR1_WAITM;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x5050, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 216: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_WAITM);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x5050, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 218: }
; genEndFunction
	pop	a
	ret
;	Total FLASH_PowerWaitModeConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 259: void FLASH_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function FLASH_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_FLASH_DeInit:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 261: FLASH->CR1 = FLASH_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5050+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 262: FLASH->CR2 = FLASH_CR2_RESET_VALUE;
; genPointerSet
	mov	0x5051+0, #0x00
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 263: FLASH->IAPSR = FLASH_IAPSR_RESET_VALUE;
; genPointerSet
	mov	0x5054+0, #0x40
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 264: (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
; genPointerGet
; Dummy read
	ld	a, 0x5054
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 265: }
; genEndFunction
	ret
;	Total FLASH_DeInit function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 275: void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
; genLabel
;	-----------------------------------------
;	 function FLASH_Unlock
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_FLASH_Unlock:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 281: if(FLASH_MemType == FLASH_MemType_Program)
; genCmpEQorNE
	cp	a, #0xfd
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00122$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00123$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 283: FLASH->PUKR = FLASH_RASS_KEY1;
; genPointerSet
	mov	0x5052+0, #0x56
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 284: FLASH->PUKR = FLASH_RASS_KEY2;
; genPointerSet
	mov	0x5052+0, #0xae
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 288: if(FLASH_MemType == FLASH_MemType_Data)
; genCmpEQorNE
	cp	a, #0xf7
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00126$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00125$.
	ret
; peephole j2e replaced jump by return.
00126$:
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 290: FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
; genPointerSet
	mov	0x5053+0, #0xae
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 291: FLASH->DUKR = FLASH_RASS_KEY1;
; genPointerSet
	mov	0x5053+0, #0x56
; genLabel
; peephole j30 removed unused label 00105$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 293: }
; genEndFunction
	ret
;	Total FLASH_Unlock function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 303: void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
; genLabel
;	-----------------------------------------
;	 function FLASH_Lock
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_FLASH_Lock:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 309: FLASH->IAPSR &= (uint8_t)FLASH_MemType;
; genPointerGet
	ld	a, 0x5054
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5054, a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 310: }
; genEndFunction
	pop	a
	ret
;	Total FLASH_Lock function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 318: void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
; genLabel
;	-----------------------------------------
;	 function FLASH_ProgramByte
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_FLASH_ProgramByte:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 323: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
; genCast
; genAssign
	ldw	x, (0x05, sp)
; genCast
; genAssign
; genPointerSet
	ld	a, (0x07, sp)
	ld	(x), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 324: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #7
	jp	(x)
;	Total FLASH_ProgramByte function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 331: void FLASH_EraseByte(uint32_t Address)
; genLabel
;	-----------------------------------------
;	 function FLASH_EraseByte
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_FLASH_EraseByte:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 336: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; /* Erase byte */
; genCast
; genAssign
	ldw	x, (0x05, sp)
; genCast
; genAssign
; genPointerSet
	clr	(x)
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 337: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #6
	jp	(x)
;	Total FLASH_EraseByte function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 345: void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
; genLabel
;	-----------------------------------------
;	 function FLASH_ProgramWord
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_FLASH_ProgramWord:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 350: FLASH->CR2 |= FLASH_CR2_WPRG;
; genPointerGet
; genOr
; genPointerSet
	bset	0x5051, #6
; peephole 202x replaced 'or' by 'bset' ('0x5051').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 353: *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));   
; genCast
; genAssign
	ldw	y, (0x05, sp)
; genCast
; genAssign
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x07, sp)
; genPointerSet
	ld	(y), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 355: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data) + 1);
; genPlus
	ldw	x, y
	incw	x
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x08, sp)
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 357: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data) + 2); 
; genPlus
	ldw	x, y
	incw	x
	incw	x
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x09, sp)
; genPointerSet
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 359: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data) + 3); 
; genPlus
; skipping iCode since result will be rematerialized
; genPointerGet
; genPointerSet
; peephole 9 moved addition of offset into storage instruction
; peephole 14c used y directly instead of going through x.
	ld	a, (0x0a, sp)
	ld	(0x0003, y), a
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 360: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #10
	jp	(x)
;	Total FLASH_ProgramWord function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 367: uint8_t FLASH_ReadByte(uint32_t Address)
; genLabel
;	-----------------------------------------
;	 function FLASH_ReadByte
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_FLASH_ReadByte:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 370: return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address);
; genCast
; genAssign
	ldw	x, (0x05, sp)
; genCast
; genAssign
; genPointerGet
	ld	a, (x)
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 371: }
; genEndFunction
	ldw	x, (1, sp)
	addw	sp, #6
	jp	(x)
;	Total FLASH_ReadByte function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 417: void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
; genLabel
;	-----------------------------------------
;	 function FLASH_ProgramOptionByte
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_FLASH_ProgramOptionByte:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 423: FLASH->CR2 |= FLASH_CR2_OPT;
; genPointerGet
; genOr
; genPointerSet
	bset	0x5051, #7
; peephole 202x replaced 'or' by 'bset' ('0x5051').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 426: *((PointerAttr uint8_t*)Address) = Data;
; genCast
; genAssign
; genPointerSet
	ld	a, (0x01, sp)
	ld	(x), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 428: FLASH_WaitForLastOperation(FLASH_MemType_Program);
; genSend
	ld	a, #0xfd
; genCall
	call	_FLASH_WaitForLastOperation
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 431: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
; genPointerGet
; genAnd
; genPointerSet
	bres	0x5051, #7
; peephole 204x replaced 'and' by 'bres' ('0x5051').
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 432: }
; genEndFunction
	pop	a
	ret
;	Total FLASH_ProgramOptionByte function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 439: void FLASH_EraseOptionByte(uint16_t Address)
; genLabel
;	-----------------------------------------
;	 function FLASH_EraseOptionByte
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_FLASH_EraseOptionByte:
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 445: FLASH->CR2 |= FLASH_CR2_OPT;
; genPointerGet
; genOr
; genPointerSet
	bset	0x5051, #7
; peephole 202x replaced 'or' by 'bset' ('0x5051').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 448: *((PointerAttr uint8_t*)Address) = FLASH_CLEAR_BYTE;
; genCast
; genAssign
; genPointerSet
	clr	(x)
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 450: FLASH_WaitForLastOperation(FLASH_MemType_Program);
; genSend
	ld	a, #0xfd
; genCall
	call	_FLASH_WaitForLastOperation
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 453: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
; genPointerGet
; genAnd
; genPointerSet
	bres	0x5051, #7
; peephole 204x replaced 'and' by 'bres' ('0x5051').
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 454: }
; genEndFunction
	ret
;	Total FLASH_EraseOptionByte function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 462: FunctionalState FLASH_GetReadOutProtectionStatus(void)
; genLabel
;	-----------------------------------------
;	 function FLASH_GetReadOutProtectionStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_FLASH_GetReadOutProtectionStatus:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 466: if(OPT->ROP == FLASH_READOUTPROTECTION_KEY)
; genPointerGet
	ld	a, 0x4800
; genCmpEQorNE
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00114$.
; peephole j5 changed absolute to relative unconditional jump.
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00115$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 469: state =  ENABLE;
; genAssign
	sub	a, #0xaa
	jrne	00102$
	inc	a
; peephole 51 used inc to get #1 into a.
; genGoto
	ret
; peephole j2e replaced jump by return.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 474: state =  DISABLE;
; genAssign
	clr	a
; genLabel
; peephole j30 removed unused label 00103$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 477: return state;
; genReturn
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 478: }
; genEndFunction
	ret
;	Total FLASH_GetReadOutProtectionStatus function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 485: uint16_t FLASH_GetBootSize(void)
; genLabel
;	-----------------------------------------
;	 function FLASH_GetBootSize
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_FLASH_GetBootSize:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 490: temp = (uint16_t)((uint16_t)OPT->UBC * (uint16_t)128);
; genPointerGet
	ld	a, 0x4802
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genLeftShiftLiteral
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 493: if(OPT->UBC > 0x7F)
; genPointerGet
	ld	a, 0x4802
; genCmp
; genCmpTnz
	cp	a, #0x7f
	jrugt	00112$
	ret
; peephole j2e replaced jump by return.
00112$:
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 495: temp = 8192;
; genAssign
	ldw	x, #0x2000
; genLabel
; peephole j30 removed unused label 00102$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 499: return(temp);
; genReturn
; genLabel
; peephole j30 removed unused label 00103$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 500: }
; genEndFunction
	ret
;	Total FLASH_GetBootSize function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 508: uint16_t FLASH_GetCodeSize(void)
; genLabel
;	-----------------------------------------
;	 function FLASH_GetCodeSize
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_FLASH_GetCodeSize:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 513: temp = (uint16_t)((uint16_t)OPT->PCODESIZE * (uint16_t)128);
; genPointerGet
	ld	a, 0x4807
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genLeftShiftLiteral
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 516: if(OPT->PCODESIZE > 0x7F)
; genPointerGet
	ld	a, 0x4807
; genCmp
; genCmpTnz
	cp	a, #0x7f
	jrugt	00112$
	ret
; peephole j2e replaced jump by return.
00112$:
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 518: temp = 8192;
; genAssign
	ldw	x, #0x2000
; genLabel
; peephole j30 removed unused label 00102$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 522: return(temp);
; genReturn
; genLabel
; peephole j30 removed unused label 00103$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 523: }
; genEndFunction
	ret
;	Total FLASH_GetCodeSize function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 547: void FLASH_ITConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function FLASH_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_FLASH_ITConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 555: FLASH->CR1 |= FLASH_CR1_IE;
; genPointerGet
	ld	a, 0x5050
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 552: if(NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 555: FLASH->CR1 |= FLASH_CR1_IE;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5050, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 560: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5050, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 562: }
; genEndFunction
	pop	a
	ret
;	Total FLASH_ITConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 576: FlagStatus FLASH_GetFlagStatus(FLASH_FLAG_TypeDef FLASH_FLAG)
; genLabel
;	-----------------------------------------
;	 function FLASH_GetFlagStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_FLASH_GetFlagStatus:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 582: if((FLASH->IAPSR  & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
; genPointerGet
	ld	a, 0x5054
; genAnd
; genIfx
	and	a, (0x01, sp)
; peephole 23 removed redundant tnz.
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00102$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 584: status = SET; /* Flash_FLAG is set*/
; genAssign
	ld	a, #0x01
; genGoto
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 588: status = RESET; /* Flash_FLAG is reset*/
; genAssign
; genLabel
	.byte 0x21
; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
00102$:
	clr	a
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 592: return status;
; genReturn
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 593: }
; genEndFunction
	addw	sp, #1
	ret
;	Total FLASH_GetFlagStatus function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 719: IN_RAM(void FLASH_PowerRunModeConfig(FLASH_Power_TypeDef FLASH_Power))
; genLabel
;	-----------------------------------------
;	 function FLASH_PowerRunModeConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_FLASH_PowerRunModeConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 726: FLASH->CR1 |= (uint8_t)FLASH_CR1_EEPM;
; genPointerGet
	ld	a, 0x5050
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 724: if(FLASH_Power != FLASH_Power_On)
; genIfx
	tnz	(0x01, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 726: FLASH->CR1 |= (uint8_t)FLASH_CR1_EEPM;
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x5050, a
; genGoto
	jra	00104$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 730: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_EEPM);
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5050, a
; genLabel
00104$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 732: }
; genEndFunction
	pop	a
	ret
;	Total FLASH_PowerRunModeConfig function size at codegen: 2 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 745: IN_RAM(FLASH_PowerStatus_TypeDef FLASH_GetPowerStatus(void))
; genLabel
;	-----------------------------------------
;	 function FLASH_GetPowerStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_FLASH_GetPowerStatus:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 747: return((FLASH_PowerStatus_TypeDef)(FLASH->CR1 & (uint8_t)0x0C));
; genPointerGet
	ld	a, 0x5050
; genAnd
	and	a, #0x0c
; genReturn
; genLabel
; peephole j30 removed unused label 00101$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 748: }
; genEndFunction
	ret
;	Total FLASH_GetPowerStatus function size at codegen: 1 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 765: IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType,
; genLabel
;	-----------------------------------------
;	 function FLASH_ProgramBlock
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 12 bytes.
_FLASH_ProgramBlock:
	sub	sp, #12
; genReceive
	exgw	x, y
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 774: if(FLASH_MemType == FLASH_MemType_Program)
; genCmpEQorNE
	cp	a, #0xfd
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00135$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00136$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 777: startaddress = FLASH_PROGRAM_START_PHYSICAL_ADDRESS;
; genAssign
	clr	(0x04, sp)
	ld	a, #0x80
	clrw	x
	ldw	(0x01, sp), x
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 782: startaddress = FLASH_DATA_EEPROM_START_PHYSICAL_ADDRESS;
; genAssign
	clr	(0x04, sp)
	ld	a, #0x10
	clrw	x
	ldw	(0x01, sp), x
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 786: startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
; genCast
; genAssign
	clrw	x
; genLeftShift
	push	a
	ld	a, #0x07
00137$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00137$
; peephole j30 removed unused label 00138$.
	ldw	(0x08, sp), y
; genPlus
; peephole 6 removed dead pop / push pair.
	ld	a, (0x05, sp)
	add	a, (0x09, sp)
	ld	(0x0d, sp), a
	pop	a
	adc	a, (0x07, sp)
	ld	(0x0b, sp), a
	ld	a, xl
	adc	a, (0x02, sp)
	ld	(0x0a, sp), a
	ld	a, xh
	adc	a, (0x01, sp)
	ld	(0x09, sp), a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 792: FLASH->CR2 |= FLASH_CR2_PRG;
; genPointerGet
	ld	a, 0x5051
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 789: if(FLASH_ProgMode == FLASH_ProgramMode_Standard)
; genIfx
	tnz	(0x0f, sp)
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00105$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00139$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 792: FLASH->CR2 |= FLASH_CR2_PRG;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5051, a
; genGoto
	jra	00114$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00105$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 797: FLASH->CR2 |= FLASH_CR2_FPRG;
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x5051, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 801: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
; genLabel
00114$:
; genAssign
	clr	a
; genLabel
00108$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 803: *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
; genCast
; genAssign
	ldw	x, (0x0b, sp)
; genCast
; genAssign
	ldw	(0x07, sp), x
; genPlus
	clrw	y
	ld	yl, a
	addw	y, (0x07, sp)
; genPlus
	clrw	x
	ld	xl, a
	addw	x, (0x10, sp)
; genPointerGet
	push	a
	ld	a, (x)
; genPointerSet
; peephole 6 removed dead pop / push pair.
; peephole 0 removed dead load into xl from a.
; peephole 4 removed redundant load from xl into a.
	ld	(y), a
	pop	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 801: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
; genPlus
	inc	a
; genCmp
; genCmpTnz
	cp	a, #0x80
; peephole j5 changed absolute to relative unconditional jump.
	jrc	00108$
; peephole j9 removed jra by using inverse jump logic
; peephole j30 removed unused label 00140$.
; skipping generated iCode
; genLabel
; peephole j30 removed unused label 00110$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 805: }
; genEndFunction
	ldw	x, (13, sp)
	addw	sp, #17
	jp	(x)
;	Total FLASH_ProgramBlock function size at codegen: 5 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 817: IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
; genLabel
;	-----------------------------------------
;	 function FLASH_EraseBlock
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_FLASH_EraseBlock:
	sub	sp, #4
; genReceive
	ldw	(0x03, sp), x
; genReceive
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 830: if(FLASH_MemType == FLASH_MemType_Program)
; genCmpEQorNE
	cp	a, #0xfd
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00114$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00102$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00115$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 833: startaddress = FLASH_PROGRAM_START_PHYSICAL_ADDRESS;
; genAssign
	ldw	y, #0x8000
; genGoto
	jra	00103$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
00102$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 838: startaddress = FLASH_DATA_EEPROM_START_PHYSICAL_ADDRESS;
; genAssign
	ldw	y, #0x1000
; genLabel
00103$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 844: pwFlash = (PointerAttr uint32_t *)(uint16_t)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
; genLeftShiftLiteral
	ldw	x, (0x03, sp)
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x01, sp), x
; genCast
; genAssign
	ldw	x, y
; genPlus
	addw	x, (0x01, sp)
; genCast
; genAssign
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 851: FLASH->CR2 |= FLASH_CR2_ERASE;
; genPointerGet
; genOr
; genPointerSet
	bset	0x5051, #5
; peephole 202x replaced 'or' by 'bset' ('0x5051').
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 855: *pwFlash = (uint32_t)0;  
; genPointerSet
	clrw	y
	ldw	(0x2, x), y
	ldw	(x), y
; genLabel
; peephole j30 removed unused label 00104$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 863: }
; genEndFunction
	addw	sp, #4
	ret
;	Total FLASH_EraseBlock function size at codegen: 3 bytes.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 875: IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType))
; genLabel
;	-----------------------------------------
;	 function FLASH_WaitForLastOperation
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_FLASH_WaitForLastOperation:
; genReceive
	ld	xl, a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 878: uint8_t flagstatus = 0x00;
; genAssign
	clr	a
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 881: if(FLASH_MemType == FLASH_MemType_Program)
; genCmpEQorNE
	push	a
	ld	a, xl
	cp	a, #0xfd
	pop	a
; peephole j5 changed absolute to relative unconditional jump.
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00174$.
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00121$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00175$.
; skipping generated iCode
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 883: while((flagstatus == 0x00) && (timeout != 0x00))
; genAssign
	clrw	x
	decw	x
; genLabel
00102$:
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
; peephole j1 jumped to 00111$ directly instead of via 00123$.
	jrne	00111$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00176$.
; genIfx
	tnzw	x
; peephole j5 changed absolute to relative unconditional jump.
; peephole j1 jumped to 00111$ directly instead of via 00123$.
	jreq	00111$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00177$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 885: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
; genPointerGet
	ld	a, 0x5054
; genAnd
	and	a, #0x05
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 887: timeout--;
; genMinus
	decw	x
; genGoto
	jra	00102$
; peephole j5 changed absolute to relative unconditional jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 892: while((flagstatus == 0x00) && (timeout != 0x00))
; genLabel
00121$:
; genAssign
	clrw	x
	decw	x
; genLabel
00106$:
; genIfx
	tnz	a
; peephole j5 changed absolute to relative unconditional jump.
	jrne	00124$
; peephole j7 removed jra by using inverse jump logic
; peephole j30 removed unused label 00178$.
; genIfx
	tnzw	x
; peephole j5 changed absolute to relative unconditional jump.
	jreq	00124$
; peephole j10 removed jra by using inverse jump logic
; peephole j30 removed unused label 00179$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 894: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
; genPointerGet
	ld	a, 0x5054
; genAnd
	and	a, #0x41
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 896: timeout--;
; genMinus
	decw	x
; genGoto
	jra	00106$
; peephole j5 changed absolute to relative unconditional jump.
; genLabel
; peephole j30 removed unused label 00123$.
; genAssign
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 905: return((FLASH_Status_TypeDef)flagstatus);
; genGoto
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 896: timeout--;
; genLabel
; genAssign
; genLabel
00124$:
00111$:
; peephole j1d removed redundant jump.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 900: if(timeout == 0x00)
; genIfx
	tnzw	x
	jreq	00180$
	ret
; peephole j2e replaced jump by return.
00180$:
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 902: flagstatus = FLASH_Status_TimeOut;
; genAssign
	ld	a, #0x02
; genLabel
; peephole j30 removed unused label 00113$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 905: return((FLASH_Status_TypeDef)flagstatus);
; genReturn
; genLabel
; peephole j30 removed unused label 00114$.
;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 906: }
; genEndFunction
	ret
;	Total FLASH_WaitForLastOperation function size at codegen: 1 bytes.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
