                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8l15x_flash
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _FLASH_SetProgrammingTime
                                     11 	.globl _FLASH_GetProgrammingTime
                                     12 	.globl _FLASH_PowerWaitModeConfig
                                     13 	.globl _FLASH_DeInit
                                     14 	.globl _FLASH_Unlock
                                     15 	.globl _FLASH_Lock
                                     16 	.globl _FLASH_ProgramByte
                                     17 	.globl _FLASH_EraseByte
                                     18 	.globl _FLASH_ProgramWord
                                     19 	.globl _FLASH_ReadByte
                                     20 	.globl _FLASH_ProgramOptionByte
                                     21 	.globl _FLASH_EraseOptionByte
                                     22 	.globl _FLASH_GetReadOutProtectionStatus
                                     23 	.globl _FLASH_GetBootSize
                                     24 	.globl _FLASH_GetCodeSize
                                     25 	.globl _FLASH_ITConfig
                                     26 	.globl _FLASH_GetFlagStatus
                                     27 	.globl _FLASH_PowerRunModeConfig
                                     28 	.globl _FLASH_GetPowerStatus
                                     29 	.globl _FLASH_ProgramBlock
                                     30 	.globl _FLASH_EraseBlock
                                     31 	.globl _FLASH_WaitForLastOperation
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DATA
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area INITIALIZED
                                     40 ;--------------------------------------------------------
                                     41 ; absolute external ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area DABS (ABS)
                                     44 
                                     45 ; default segment ordering for linker
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area CONST
                                     50 	.area INITIALIZER
                                     51 	.area CODE
                                     52 
                                     53 ;--------------------------------------------------------
                                     54 ; global & static initialisations
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
                                     57 	.area GSINIT
                                     58 	.area GSFINAL
                                     59 	.area GSINIT
                                     60 ;--------------------------------------------------------
                                     61 ; Home
                                     62 ;--------------------------------------------------------
                                     63 	.area HOME
                                     64 	.area HOME
                                     65 ;--------------------------------------------------------
                                     66 ; code
                                     67 ;--------------------------------------------------------
                                     68 	.area CODE
                                     69 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 174: void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
                                     70 ; genLabel
                                     71 ;	-----------------------------------------
                                     72 ;	 function FLASH_SetProgrammingTime
                                     73 ;	-----------------------------------------
                                     74 ;	Register assignment is optimal.
                                     75 ;	Stack space usage: 0 bytes.
      00CBCB                         76 _FLASH_SetProgrammingTime:
                                     77 ; genReceive
      00CBCB 97               [ 1]   78 	ld	xl, a
                                     79 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 179: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
                                     80 ; genPointerGet
                                     81 ; genAnd
                                     82 ; genPointerSet
      00CBCC 72 11 50 50      [ 1]   83 	bres	0x5050, #0
                                     84 ; peephole 204x replaced 'and' by 'bres' ('0x5050').
                                     85 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 180: FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
                                     86 ; genPointerGet
      00CBD0 C6 50 50         [ 1]   87 	ld	a, 0x5050
                                     88 ; genCast
                                     89 ; genAssign
                                     90 ; genOr
      00CBD3 89               [ 2]   91 	pushw	x
      00CBD4 1A 02            [ 1]   92 	or	a, (2, sp)
      00CBD6 85               [ 2]   93 	popw	x
                                     94 ; genPointerSet
      00CBD7 C7 50 50         [ 1]   95 	ld	0x5050, a
                                     96 ; genLabel
                                     97 ; peephole j30 removed unused label 00101$.
                                     98 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 181: }
                                     99 ; genEndFunction
      00CBDA 81               [ 4]  100 	ret
                                    101 ;	Total FLASH_SetProgrammingTime function size at codegen: 1 bytes.
                                    102 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 188: FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
                                    103 ; genLabel
                                    104 ;	-----------------------------------------
                                    105 ;	 function FLASH_GetProgrammingTime
                                    106 ;	-----------------------------------------
                                    107 ;	Register assignment is optimal.
                                    108 ;	Stack space usage: 0 bytes.
      00CBDB                        109 _FLASH_GetProgrammingTime:
                                    110 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 190: return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
                                    111 ; genPointerGet
      00CBDB C6 50 50         [ 1]  112 	ld	a, 0x5050
                                    113 ; genGetABit
      00CBDE A4 01            [ 1]  114 	and	a, #0x01
                                    115 ; genReturn
                                    116 ; genLabel
                                    117 ; peephole j30 removed unused label 00101$.
                                    118 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 191: }
                                    119 ; genEndFunction
      00CBE0 81               [ 4]  120 	ret
                                    121 ;	Total FLASH_GetProgrammingTime function size at codegen: 1 bytes.
                                    122 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 203: void FLASH_PowerWaitModeConfig(FLASH_Power_TypeDef FLASH_Power)
                                    123 ; genLabel
                                    124 ;	-----------------------------------------
                                    125 ;	 function FLASH_PowerWaitModeConfig
                                    126 ;	-----------------------------------------
                                    127 ;	Register assignment is optimal.
                                    128 ;	Stack space usage: 1 bytes.
      00CBE1                        129 _FLASH_PowerWaitModeConfig:
      00CBE1 88               [ 1]  130 	push	a
                                    131 ; genReceive
      00CBE2 6B 01            [ 1]  132 	ld	(0x01, sp), a
                                    133 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 211: FLASH->CR1 |= (uint8_t)FLASH_CR1_WAITM;
                                    134 ; genPointerGet
      00CBE4 C6 50 50         [ 1]  135 	ld	a, 0x5050
                                    136 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 209: if(FLASH_Power != FLASH_Power_On)
                                    137 ; genIfx
      00CBE7 0D 01            [ 1]  138 	tnz	(0x01, sp)
                                    139 ; peephole j5 changed absolute to relative unconditional jump.
      00CBE9 26 07            [ 1]  140 	jrne	00102$
                                    141 ; peephole j7 removed jra by using inverse jump logic
                                    142 ; peephole j30 removed unused label 00113$.
                                    143 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 211: FLASH->CR1 |= (uint8_t)FLASH_CR1_WAITM;
                                    144 ; genOr
      00CBEB AA 04            [ 1]  145 	or	a, #0x04
                                    146 ; genPointerSet
      00CBED C7 50 50         [ 1]  147 	ld	0x5050, a
                                    148 ; genGoto
      00CBF0 20 05            [ 2]  149 	jra	00104$
                                    150 ; peephole j5 changed absolute to relative unconditional jump.
                                    151 ; genLabel
      00CBF2                        152 00102$:
                                    153 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 216: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_WAITM);
                                    154 ; genAnd
      00CBF2 A4 FB            [ 1]  155 	and	a, #0xfb
                                    156 ; genPointerSet
      00CBF4 C7 50 50         [ 1]  157 	ld	0x5050, a
                                    158 ; genLabel
      00CBF7                        159 00104$:
                                    160 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 218: }
                                    161 ; genEndFunction
      00CBF7 84               [ 1]  162 	pop	a
      00CBF8 81               [ 4]  163 	ret
                                    164 ;	Total FLASH_PowerWaitModeConfig function size at codegen: 2 bytes.
                                    165 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 259: void FLASH_DeInit(void)
                                    166 ; genLabel
                                    167 ;	-----------------------------------------
                                    168 ;	 function FLASH_DeInit
                                    169 ;	-----------------------------------------
                                    170 ;	Register assignment is optimal.
                                    171 ;	Stack space usage: 0 bytes.
      00CBF9                        172 _FLASH_DeInit:
                                    173 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 261: FLASH->CR1 = FLASH_CR1_RESET_VALUE;
                                    174 ; genPointerSet
      00CBF9 35 00 50 50      [ 1]  175 	mov	0x5050+0, #0x00
                                    176 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 262: FLASH->CR2 = FLASH_CR2_RESET_VALUE;
                                    177 ; genPointerSet
      00CBFD 35 00 50 51      [ 1]  178 	mov	0x5051+0, #0x00
                                    179 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 263: FLASH->IAPSR = FLASH_IAPSR_RESET_VALUE;
                                    180 ; genPointerSet
      00CC01 35 40 50 54      [ 1]  181 	mov	0x5054+0, #0x40
                                    182 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 264: (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
                                    183 ; genPointerGet
                                    184 ; Dummy read
      00CC05 C6 50 54         [ 1]  185 	ld	a, 0x5054
                                    186 ; genLabel
                                    187 ; peephole j30 removed unused label 00101$.
                                    188 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 265: }
                                    189 ; genEndFunction
      00CC08 81               [ 4]  190 	ret
                                    191 ;	Total FLASH_DeInit function size at codegen: 1 bytes.
                                    192 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 275: void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
                                    193 ; genLabel
                                    194 ;	-----------------------------------------
                                    195 ;	 function FLASH_Unlock
                                    196 ;	-----------------------------------------
                                    197 ;	Register assignment is optimal.
                                    198 ;	Stack space usage: 0 bytes.
      00CC09                        199 _FLASH_Unlock:
                                    200 ; genReceive
                                    201 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 281: if(FLASH_MemType == FLASH_MemType_Program)
                                    202 ; genCmpEQorNE
      00CC09 A1 FD            [ 1]  203 	cp	a, #0xfd
                                    204 ; peephole j5 changed absolute to relative unconditional jump.
                                    205 ; peephole j10 removed jra by using inverse jump logic
                                    206 ; peephole j30 removed unused label 00122$.
                                    207 ; peephole j5 changed absolute to relative unconditional jump.
      00CC0B 26 08            [ 1]  208 	jrne	00102$
                                    209 ; peephole j7 removed jra by using inverse jump logic
                                    210 ; peephole j30 removed unused label 00123$.
                                    211 ; skipping generated iCode
                                    212 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 283: FLASH->PUKR = FLASH_RASS_KEY1;
                                    213 ; genPointerSet
      00CC0D 35 56 50 52      [ 1]  214 	mov	0x5052+0, #0x56
                                    215 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 284: FLASH->PUKR = FLASH_RASS_KEY2;
                                    216 ; genPointerSet
      00CC11 35 AE 50 52      [ 1]  217 	mov	0x5052+0, #0xae
                                    218 ; genLabel
      00CC15                        219 00102$:
                                    220 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 288: if(FLASH_MemType == FLASH_MemType_Data)
                                    221 ; genCmpEQorNE
      00CC15 A1 F7            [ 1]  222 	cp	a, #0xf7
                                    223 ; peephole j5 changed absolute to relative unconditional jump.
      00CC17 27 01            [ 1]  224 	jreq	00126$
                                    225 ; peephole j10 removed jra by using inverse jump logic
                                    226 ; peephole j30 removed unused label 00125$.
      00CC19 81               [ 4]  227 	ret
                                    228 ; peephole j2e replaced jump by return.
      00CC1A                        229 00126$:
                                    230 ; skipping generated iCode
                                    231 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 290: FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
                                    232 ; genPointerSet
      00CC1A 35 AE 50 53      [ 1]  233 	mov	0x5053+0, #0xae
                                    234 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 291: FLASH->DUKR = FLASH_RASS_KEY1;
                                    235 ; genPointerSet
      00CC1E 35 56 50 53      [ 1]  236 	mov	0x5053+0, #0x56
                                    237 ; genLabel
                                    238 ; peephole j30 removed unused label 00105$.
                                    239 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 293: }
                                    240 ; genEndFunction
      00CC22 81               [ 4]  241 	ret
                                    242 ;	Total FLASH_Unlock function size at codegen: 1 bytes.
                                    243 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 303: void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
                                    244 ; genLabel
                                    245 ;	-----------------------------------------
                                    246 ;	 function FLASH_Lock
                                    247 ;	-----------------------------------------
                                    248 ;	Register assignment is optimal.
                                    249 ;	Stack space usage: 1 bytes.
      00CC23                        250 _FLASH_Lock:
      00CC23 88               [ 1]  251 	push	a
                                    252 ; genReceive
      00CC24 6B 01            [ 1]  253 	ld	(0x01, sp), a
                                    254 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 309: FLASH->IAPSR &= (uint8_t)FLASH_MemType;
                                    255 ; genPointerGet
      00CC26 C6 50 54         [ 1]  256 	ld	a, 0x5054
                                    257 ; genAnd
      00CC29 14 01            [ 1]  258 	and	a, (0x01, sp)
                                    259 ; genPointerSet
      00CC2B C7 50 54         [ 1]  260 	ld	0x5054, a
                                    261 ; genLabel
                                    262 ; peephole j30 removed unused label 00101$.
                                    263 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 310: }
                                    264 ; genEndFunction
      00CC2E 84               [ 1]  265 	pop	a
      00CC2F 81               [ 4]  266 	ret
                                    267 ;	Total FLASH_Lock function size at codegen: 2 bytes.
                                    268 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 318: void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
                                    269 ; genLabel
                                    270 ;	-----------------------------------------
                                    271 ;	 function FLASH_ProgramByte
                                    272 ;	-----------------------------------------
                                    273 ;	Register assignment is optimal.
                                    274 ;	Stack space usage: 0 bytes.
      00CC30                        275 _FLASH_ProgramByte:
                                    276 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 323: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
                                    277 ; genCast
                                    278 ; genAssign
      00CC30 1E 05            [ 2]  279 	ldw	x, (0x05, sp)
                                    280 ; genCast
                                    281 ; genAssign
                                    282 ; genPointerSet
      00CC32 7B 07            [ 1]  283 	ld	a, (0x07, sp)
      00CC34 F7               [ 1]  284 	ld	(x), a
                                    285 ; genLabel
                                    286 ; peephole j30 removed unused label 00101$.
                                    287 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 324: }
                                    288 ; genEndFunction
      00CC35 1E 01            [ 2]  289 	ldw	x, (1, sp)
      00CC37 5B 07            [ 2]  290 	addw	sp, #7
      00CC39 FC               [ 2]  291 	jp	(x)
                                    292 ;	Total FLASH_ProgramByte function size at codegen: 5 bytes.
                                    293 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 331: void FLASH_EraseByte(uint32_t Address)
                                    294 ; genLabel
                                    295 ;	-----------------------------------------
                                    296 ;	 function FLASH_EraseByte
                                    297 ;	-----------------------------------------
                                    298 ;	Register assignment is optimal.
                                    299 ;	Stack space usage: 0 bytes.
      00CC3A                        300 _FLASH_EraseByte:
                                    301 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 336: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; /* Erase byte */
                                    302 ; genCast
                                    303 ; genAssign
      00CC3A 1E 05            [ 2]  304 	ldw	x, (0x05, sp)
                                    305 ; genCast
                                    306 ; genAssign
                                    307 ; genPointerSet
      00CC3C 7F               [ 1]  308 	clr	(x)
                                    309 ; genLabel
                                    310 ; peephole j30 removed unused label 00101$.
                                    311 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 337: }
                                    312 ; genEndFunction
      00CC3D 1E 01            [ 2]  313 	ldw	x, (1, sp)
      00CC3F 5B 06            [ 2]  314 	addw	sp, #6
      00CC41 FC               [ 2]  315 	jp	(x)
                                    316 ;	Total FLASH_EraseByte function size at codegen: 5 bytes.
                                    317 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 345: void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
                                    318 ; genLabel
                                    319 ;	-----------------------------------------
                                    320 ;	 function FLASH_ProgramWord
                                    321 ;	-----------------------------------------
                                    322 ;	Register assignment might be sub-optimal.
                                    323 ;	Stack space usage: 0 bytes.
      00CC42                        324 _FLASH_ProgramWord:
                                    325 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 350: FLASH->CR2 |= FLASH_CR2_WPRG;
                                    326 ; genPointerGet
                                    327 ; genOr
                                    328 ; genPointerSet
      00CC42 72 1C 50 51      [ 1]  329 	bset	0x5051, #6
                                    330 ; peephole 202x replaced 'or' by 'bset' ('0x5051').
                                    331 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 353: *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));   
                                    332 ; genCast
                                    333 ; genAssign
      00CC46 16 05            [ 2]  334 	ldw	y, (0x05, sp)
                                    335 ; genCast
                                    336 ; genAssign
                                    337 ; skipping iCode since result will be rematerialized
                                    338 ; genPointerGet
      00CC48 7B 07            [ 1]  339 	ld	a, (0x07, sp)
                                    340 ; genPointerSet
      00CC4A 90 F7            [ 1]  341 	ld	(y), a
                                    342 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 355: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data) + 1);
                                    343 ; genPlus
      00CC4C 93               [ 1]  344 	ldw	x, y
      00CC4D 5C               [ 1]  345 	incw	x
                                    346 ; skipping iCode since result will be rematerialized
                                    347 ; genPointerGet
      00CC4E 7B 08            [ 1]  348 	ld	a, (0x08, sp)
                                    349 ; genPointerSet
      00CC50 F7               [ 1]  350 	ld	(x), a
                                    351 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 357: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data) + 2); 
                                    352 ; genPlus
      00CC51 93               [ 1]  353 	ldw	x, y
      00CC52 5C               [ 1]  354 	incw	x
      00CC53 5C               [ 1]  355 	incw	x
                                    356 ; skipping iCode since result will be rematerialized
                                    357 ; genPointerGet
      00CC54 7B 09            [ 1]  358 	ld	a, (0x09, sp)
                                    359 ; genPointerSet
      00CC56 F7               [ 1]  360 	ld	(x), a
                                    361 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 359: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data) + 3); 
                                    362 ; genPlus
                                    363 ; skipping iCode since result will be rematerialized
                                    364 ; genPointerGet
                                    365 ; genPointerSet
                                    366 ; peephole 9 moved addition of offset into storage instruction
                                    367 ; peephole 14c used y directly instead of going through x.
      00CC57 7B 0A            [ 1]  368 	ld	a, (0x0a, sp)
      00CC59 90 E7 03         [ 1]  369 	ld	(0x0003, y), a
                                    370 ; genLabel
                                    371 ; peephole j30 removed unused label 00101$.
                                    372 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 360: }
                                    373 ; genEndFunction
      00CC5C 1E 01            [ 2]  374 	ldw	x, (1, sp)
      00CC5E 5B 0A            [ 2]  375 	addw	sp, #10
      00CC60 FC               [ 2]  376 	jp	(x)
                                    377 ;	Total FLASH_ProgramWord function size at codegen: 5 bytes.
                                    378 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 367: uint8_t FLASH_ReadByte(uint32_t Address)
                                    379 ; genLabel
                                    380 ;	-----------------------------------------
                                    381 ;	 function FLASH_ReadByte
                                    382 ;	-----------------------------------------
                                    383 ;	Register assignment might be sub-optimal.
                                    384 ;	Stack space usage: 0 bytes.
      00CC61                        385 _FLASH_ReadByte:
                                    386 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 370: return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address);
                                    387 ; genCast
                                    388 ; genAssign
      00CC61 1E 05            [ 2]  389 	ldw	x, (0x05, sp)
                                    390 ; genCast
                                    391 ; genAssign
                                    392 ; genPointerGet
      00CC63 F6               [ 1]  393 	ld	a, (x)
                                    394 ; genReturn
                                    395 ; genLabel
                                    396 ; peephole j30 removed unused label 00101$.
                                    397 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 371: }
                                    398 ; genEndFunction
      00CC64 1E 01            [ 2]  399 	ldw	x, (1, sp)
      00CC66 5B 06            [ 2]  400 	addw	sp, #6
      00CC68 FC               [ 2]  401 	jp	(x)
                                    402 ;	Total FLASH_ReadByte function size at codegen: 5 bytes.
                                    403 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 417: void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
                                    404 ; genLabel
                                    405 ;	-----------------------------------------
                                    406 ;	 function FLASH_ProgramOptionByte
                                    407 ;	-----------------------------------------
                                    408 ;	Register assignment might be sub-optimal.
                                    409 ;	Stack space usage: 1 bytes.
      00CC69                        410 _FLASH_ProgramOptionByte:
      00CC69 88               [ 1]  411 	push	a
                                    412 ; genReceive
                                    413 ; genReceive
      00CC6A 6B 01            [ 1]  414 	ld	(0x01, sp), a
                                    415 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 423: FLASH->CR2 |= FLASH_CR2_OPT;
                                    416 ; genPointerGet
                                    417 ; genOr
                                    418 ; genPointerSet
      00CC6C 72 1E 50 51      [ 1]  419 	bset	0x5051, #7
                                    420 ; peephole 202x replaced 'or' by 'bset' ('0x5051').
                                    421 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 426: *((PointerAttr uint8_t*)Address) = Data;
                                    422 ; genCast
                                    423 ; genAssign
                                    424 ; genPointerSet
      00CC70 7B 01            [ 1]  425 	ld	a, (0x01, sp)
      00CC72 F7               [ 1]  426 	ld	(x), a
                                    427 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 428: FLASH_WaitForLastOperation(FLASH_MemType_Program);
                                    428 ; genSend
      00CC73 A6 FD            [ 1]  429 	ld	a, #0xfd
                                    430 ; genCall
      00CC75 CD CD A7         [ 4]  431 	call	_FLASH_WaitForLastOperation
                                    432 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 431: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
                                    433 ; genPointerGet
                                    434 ; genAnd
                                    435 ; genPointerSet
      00CC78 72 1F 50 51      [ 1]  436 	bres	0x5051, #7
                                    437 ; peephole 204x replaced 'and' by 'bres' ('0x5051').
                                    438 ; genLabel
                                    439 ; peephole j30 removed unused label 00101$.
                                    440 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 432: }
                                    441 ; genEndFunction
      00CC7C 84               [ 1]  442 	pop	a
      00CC7D 81               [ 4]  443 	ret
                                    444 ;	Total FLASH_ProgramOptionByte function size at codegen: 2 bytes.
                                    445 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 439: void FLASH_EraseOptionByte(uint16_t Address)
                                    446 ; genLabel
                                    447 ;	-----------------------------------------
                                    448 ;	 function FLASH_EraseOptionByte
                                    449 ;	-----------------------------------------
                                    450 ;	Register assignment might be sub-optimal.
                                    451 ;	Stack space usage: 0 bytes.
      00CC7E                        452 _FLASH_EraseOptionByte:
                                    453 ; genReceive
                                    454 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 445: FLASH->CR2 |= FLASH_CR2_OPT;
                                    455 ; genPointerGet
                                    456 ; genOr
                                    457 ; genPointerSet
      00CC7E 72 1E 50 51      [ 1]  458 	bset	0x5051, #7
                                    459 ; peephole 202x replaced 'or' by 'bset' ('0x5051').
                                    460 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 448: *((PointerAttr uint8_t*)Address) = FLASH_CLEAR_BYTE;
                                    461 ; genCast
                                    462 ; genAssign
                                    463 ; genPointerSet
      00CC82 7F               [ 1]  464 	clr	(x)
                                    465 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 450: FLASH_WaitForLastOperation(FLASH_MemType_Program);
                                    466 ; genSend
      00CC83 A6 FD            [ 1]  467 	ld	a, #0xfd
                                    468 ; genCall
      00CC85 CD CD A7         [ 4]  469 	call	_FLASH_WaitForLastOperation
                                    470 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 453: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
                                    471 ; genPointerGet
                                    472 ; genAnd
                                    473 ; genPointerSet
      00CC88 72 1F 50 51      [ 1]  474 	bres	0x5051, #7
                                    475 ; peephole 204x replaced 'and' by 'bres' ('0x5051').
                                    476 ; genLabel
                                    477 ; peephole j30 removed unused label 00101$.
                                    478 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 454: }
                                    479 ; genEndFunction
      00CC8C 81               [ 4]  480 	ret
                                    481 ;	Total FLASH_EraseOptionByte function size at codegen: 1 bytes.
                                    482 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 462: FunctionalState FLASH_GetReadOutProtectionStatus(void)
                                    483 ; genLabel
                                    484 ;	-----------------------------------------
                                    485 ;	 function FLASH_GetReadOutProtectionStatus
                                    486 ;	-----------------------------------------
                                    487 ;	Register assignment is optimal.
                                    488 ;	Stack space usage: 0 bytes.
      00CC8D                        489 _FLASH_GetReadOutProtectionStatus:
                                    490 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 466: if(OPT->ROP == FLASH_READOUTPROTECTION_KEY)
                                    491 ; genPointerGet
      00CC8D C6 48 00         [ 1]  492 	ld	a, 0x4800
                                    493 ; genCmpEQorNE
                                    494 ; peephole j5 changed absolute to relative unconditional jump.
                                    495 ; peephole j10 removed jra by using inverse jump logic
                                    496 ; peephole j30 removed unused label 00114$.
                                    497 ; peephole j5 changed absolute to relative unconditional jump.
                                    498 ; peephole j7 removed jra by using inverse jump logic
                                    499 ; peephole j30 removed unused label 00115$.
                                    500 ; skipping generated iCode
                                    501 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 469: state =  ENABLE;
                                    502 ; genAssign
      00CC90 A0 AA            [ 1]  503 	sub	a, #0xaa
      00CC92 26 02            [ 1]  504 	jrne	00102$
      00CC94 4C               [ 1]  505 	inc	a
                                    506 ; peephole 51 used inc to get #1 into a.
                                    507 ; genGoto
      00CC95 81               [ 4]  508 	ret
                                    509 ; peephole j2e replaced jump by return.
                                    510 ; genLabel
      00CC96                        511 00102$:
                                    512 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 474: state =  DISABLE;
                                    513 ; genAssign
      00CC96 4F               [ 1]  514 	clr	a
                                    515 ; genLabel
                                    516 ; peephole j30 removed unused label 00103$.
                                    517 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 477: return state;
                                    518 ; genReturn
                                    519 ; genLabel
                                    520 ; peephole j30 removed unused label 00104$.
                                    521 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 478: }
                                    522 ; genEndFunction
      00CC97 81               [ 4]  523 	ret
                                    524 ;	Total FLASH_GetReadOutProtectionStatus function size at codegen: 1 bytes.
                                    525 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 485: uint16_t FLASH_GetBootSize(void)
                                    526 ; genLabel
                                    527 ;	-----------------------------------------
                                    528 ;	 function FLASH_GetBootSize
                                    529 ;	-----------------------------------------
                                    530 ;	Register assignment might be sub-optimal.
                                    531 ;	Stack space usage: 0 bytes.
      00CC98                        532 _FLASH_GetBootSize:
                                    533 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 490: temp = (uint16_t)((uint16_t)OPT->UBC * (uint16_t)128);
                                    534 ; genPointerGet
      00CC98 C6 48 02         [ 1]  535 	ld	a, 0x4802
                                    536 ; genCast
                                    537 ; genAssign
      00CC9B 5F               [ 1]  538 	clrw	x
      00CC9C 97               [ 1]  539 	ld	xl, a
                                    540 ; genLeftShiftLiteral
      00CC9D 58               [ 2]  541 	sllw	x
      00CC9E 58               [ 2]  542 	sllw	x
      00CC9F 58               [ 2]  543 	sllw	x
      00CCA0 58               [ 2]  544 	sllw	x
      00CCA1 58               [ 2]  545 	sllw	x
      00CCA2 58               [ 2]  546 	sllw	x
      00CCA3 58               [ 2]  547 	sllw	x
                                    548 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 493: if(OPT->UBC > 0x7F)
                                    549 ; genPointerGet
      00CCA4 C6 48 02         [ 1]  550 	ld	a, 0x4802
                                    551 ; genCmp
                                    552 ; genCmpTnz
      00CCA7 A1 7F            [ 1]  553 	cp	a, #0x7f
      00CCA9 22 01            [ 1]  554 	jrugt	00112$
      00CCAB 81               [ 4]  555 	ret
                                    556 ; peephole j2e replaced jump by return.
      00CCAC                        557 00112$:
                                    558 ; skipping generated iCode
                                    559 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 495: temp = 8192;
                                    560 ; genAssign
      00CCAC AE 20 00         [ 2]  561 	ldw	x, #0x2000
                                    562 ; genLabel
                                    563 ; peephole j30 removed unused label 00102$.
                                    564 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 499: return(temp);
                                    565 ; genReturn
                                    566 ; genLabel
                                    567 ; peephole j30 removed unused label 00103$.
                                    568 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 500: }
                                    569 ; genEndFunction
      00CCAF 81               [ 4]  570 	ret
                                    571 ;	Total FLASH_GetBootSize function size at codegen: 1 bytes.
                                    572 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 508: uint16_t FLASH_GetCodeSize(void)
                                    573 ; genLabel
                                    574 ;	-----------------------------------------
                                    575 ;	 function FLASH_GetCodeSize
                                    576 ;	-----------------------------------------
                                    577 ;	Register assignment might be sub-optimal.
                                    578 ;	Stack space usage: 0 bytes.
      00CCB0                        579 _FLASH_GetCodeSize:
                                    580 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 513: temp = (uint16_t)((uint16_t)OPT->PCODESIZE * (uint16_t)128);
                                    581 ; genPointerGet
      00CCB0 C6 48 07         [ 1]  582 	ld	a, 0x4807
                                    583 ; genCast
                                    584 ; genAssign
      00CCB3 5F               [ 1]  585 	clrw	x
      00CCB4 97               [ 1]  586 	ld	xl, a
                                    587 ; genLeftShiftLiteral
      00CCB5 58               [ 2]  588 	sllw	x
      00CCB6 58               [ 2]  589 	sllw	x
      00CCB7 58               [ 2]  590 	sllw	x
      00CCB8 58               [ 2]  591 	sllw	x
      00CCB9 58               [ 2]  592 	sllw	x
      00CCBA 58               [ 2]  593 	sllw	x
      00CCBB 58               [ 2]  594 	sllw	x
                                    595 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 516: if(OPT->PCODESIZE > 0x7F)
                                    596 ; genPointerGet
      00CCBC C6 48 07         [ 1]  597 	ld	a, 0x4807
                                    598 ; genCmp
                                    599 ; genCmpTnz
      00CCBF A1 7F            [ 1]  600 	cp	a, #0x7f
      00CCC1 22 01            [ 1]  601 	jrugt	00112$
      00CCC3 81               [ 4]  602 	ret
                                    603 ; peephole j2e replaced jump by return.
      00CCC4                        604 00112$:
                                    605 ; skipping generated iCode
                                    606 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 518: temp = 8192;
                                    607 ; genAssign
      00CCC4 AE 20 00         [ 2]  608 	ldw	x, #0x2000
                                    609 ; genLabel
                                    610 ; peephole j30 removed unused label 00102$.
                                    611 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 522: return(temp);
                                    612 ; genReturn
                                    613 ; genLabel
                                    614 ; peephole j30 removed unused label 00103$.
                                    615 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 523: }
                                    616 ; genEndFunction
      00CCC7 81               [ 4]  617 	ret
                                    618 ;	Total FLASH_GetCodeSize function size at codegen: 1 bytes.
                                    619 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 547: void FLASH_ITConfig(FunctionalState NewState)
                                    620 ; genLabel
                                    621 ;	-----------------------------------------
                                    622 ;	 function FLASH_ITConfig
                                    623 ;	-----------------------------------------
                                    624 ;	Register assignment is optimal.
                                    625 ;	Stack space usage: 1 bytes.
      00CCC8                        626 _FLASH_ITConfig:
      00CCC8 88               [ 1]  627 	push	a
                                    628 ; genReceive
      00CCC9 6B 01            [ 1]  629 	ld	(0x01, sp), a
                                    630 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 555: FLASH->CR1 |= FLASH_CR1_IE;
                                    631 ; genPointerGet
      00CCCB C6 50 50         [ 1]  632 	ld	a, 0x5050
                                    633 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 552: if(NewState != DISABLE)
                                    634 ; genIfx
      00CCCE 0D 01            [ 1]  635 	tnz	(0x01, sp)
                                    636 ; peephole j5 changed absolute to relative unconditional jump.
      00CCD0 27 07            [ 1]  637 	jreq	00102$
                                    638 ; peephole j10 removed jra by using inverse jump logic
                                    639 ; peephole j30 removed unused label 00113$.
                                    640 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 555: FLASH->CR1 |= FLASH_CR1_IE;
                                    641 ; genOr
      00CCD2 AA 02            [ 1]  642 	or	a, #0x02
                                    643 ; genPointerSet
      00CCD4 C7 50 50         [ 1]  644 	ld	0x5050, a
                                    645 ; genGoto
      00CCD7 20 05            [ 2]  646 	jra	00104$
                                    647 ; peephole j5 changed absolute to relative unconditional jump.
                                    648 ; genLabel
      00CCD9                        649 00102$:
                                    650 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 560: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE);
                                    651 ; genAnd
      00CCD9 A4 FD            [ 1]  652 	and	a, #0xfd
                                    653 ; genPointerSet
      00CCDB C7 50 50         [ 1]  654 	ld	0x5050, a
                                    655 ; genLabel
      00CCDE                        656 00104$:
                                    657 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 562: }
                                    658 ; genEndFunction
      00CCDE 84               [ 1]  659 	pop	a
      00CCDF 81               [ 4]  660 	ret
                                    661 ;	Total FLASH_ITConfig function size at codegen: 2 bytes.
                                    662 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 576: FlagStatus FLASH_GetFlagStatus(FLASH_FLAG_TypeDef FLASH_FLAG)
                                    663 ; genLabel
                                    664 ;	-----------------------------------------
                                    665 ;	 function FLASH_GetFlagStatus
                                    666 ;	-----------------------------------------
                                    667 ;	Register assignment is optimal.
                                    668 ;	Stack space usage: 1 bytes.
      00CCE0                        669 _FLASH_GetFlagStatus:
      00CCE0 88               [ 1]  670 	push	a
                                    671 ; genReceive
      00CCE1 6B 01            [ 1]  672 	ld	(0x01, sp), a
                                    673 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 582: if((FLASH->IAPSR  & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
                                    674 ; genPointerGet
      00CCE3 C6 50 54         [ 1]  675 	ld	a, 0x5054
                                    676 ; genAnd
                                    677 ; genIfx
      00CCE6 14 01            [ 1]  678 	and	a, (0x01, sp)
                                    679 ; peephole 23 removed redundant tnz.
                                    680 ; peephole j5 changed absolute to relative unconditional jump.
      00CCE8 27 03            [ 1]  681 	jreq	00102$
                                    682 ; peephole j10 removed jra by using inverse jump logic
                                    683 ; peephole j30 removed unused label 00113$.
                                    684 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 584: status = SET; /* Flash_FLAG is set*/
                                    685 ; genAssign
      00CCEA A6 01            [ 1]  686 	ld	a, #0x01
                                    687 ; genGoto
                                    688 ; peephole j5 changed absolute to relative unconditional jump.
                                    689 ; genLabel
                                    690 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 588: status = RESET; /* Flash_FLAG is reset*/
                                    691 ; genAssign
                                    692 ; genLabel
      00CCEC 21                     693 	.byte 0x21
                                    694 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00CCED                        695 00102$:
      00CCED 4F               [ 1]  696 	clr	a
      00CCEE                        697 00103$:
                                    698 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 592: return status;
                                    699 ; genReturn
                                    700 ; genLabel
                                    701 ; peephole j30 removed unused label 00104$.
                                    702 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 593: }
                                    703 ; genEndFunction
      00CCEE 5B 01            [ 2]  704 	addw	sp, #1
      00CCF0 81               [ 4]  705 	ret
                                    706 ;	Total FLASH_GetFlagStatus function size at codegen: 3 bytes.
                                    707 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 719: IN_RAM(void FLASH_PowerRunModeConfig(FLASH_Power_TypeDef FLASH_Power))
                                    708 ; genLabel
                                    709 ;	-----------------------------------------
                                    710 ;	 function FLASH_PowerRunModeConfig
                                    711 ;	-----------------------------------------
                                    712 ;	Register assignment is optimal.
                                    713 ;	Stack space usage: 1 bytes.
      00CCF1                        714 _FLASH_PowerRunModeConfig:
      00CCF1 88               [ 1]  715 	push	a
                                    716 ; genReceive
      00CCF2 6B 01            [ 1]  717 	ld	(0x01, sp), a
                                    718 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 726: FLASH->CR1 |= (uint8_t)FLASH_CR1_EEPM;
                                    719 ; genPointerGet
      00CCF4 C6 50 50         [ 1]  720 	ld	a, 0x5050
                                    721 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 724: if(FLASH_Power != FLASH_Power_On)
                                    722 ; genIfx
      00CCF7 0D 01            [ 1]  723 	tnz	(0x01, sp)
                                    724 ; peephole j5 changed absolute to relative unconditional jump.
      00CCF9 26 07            [ 1]  725 	jrne	00102$
                                    726 ; peephole j7 removed jra by using inverse jump logic
                                    727 ; peephole j30 removed unused label 00113$.
                                    728 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 726: FLASH->CR1 |= (uint8_t)FLASH_CR1_EEPM;
                                    729 ; genOr
      00CCFB AA 08            [ 1]  730 	or	a, #0x08
                                    731 ; genPointerSet
      00CCFD C7 50 50         [ 1]  732 	ld	0x5050, a
                                    733 ; genGoto
      00CD00 20 05            [ 2]  734 	jra	00104$
                                    735 ; peephole j5 changed absolute to relative unconditional jump.
                                    736 ; genLabel
      00CD02                        737 00102$:
                                    738 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 730: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_EEPM);
                                    739 ; genAnd
      00CD02 A4 F7            [ 1]  740 	and	a, #0xf7
                                    741 ; genPointerSet
      00CD04 C7 50 50         [ 1]  742 	ld	0x5050, a
                                    743 ; genLabel
      00CD07                        744 00104$:
                                    745 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 732: }
                                    746 ; genEndFunction
      00CD07 84               [ 1]  747 	pop	a
      00CD08 81               [ 4]  748 	ret
                                    749 ;	Total FLASH_PowerRunModeConfig function size at codegen: 2 bytes.
                                    750 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 745: IN_RAM(FLASH_PowerStatus_TypeDef FLASH_GetPowerStatus(void))
                                    751 ; genLabel
                                    752 ;	-----------------------------------------
                                    753 ;	 function FLASH_GetPowerStatus
                                    754 ;	-----------------------------------------
                                    755 ;	Register assignment is optimal.
                                    756 ;	Stack space usage: 0 bytes.
      00CD09                        757 _FLASH_GetPowerStatus:
                                    758 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 747: return((FLASH_PowerStatus_TypeDef)(FLASH->CR1 & (uint8_t)0x0C));
                                    759 ; genPointerGet
      00CD09 C6 50 50         [ 1]  760 	ld	a, 0x5050
                                    761 ; genAnd
      00CD0C A4 0C            [ 1]  762 	and	a, #0x0c
                                    763 ; genReturn
                                    764 ; genLabel
                                    765 ; peephole j30 removed unused label 00101$.
                                    766 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 748: }
                                    767 ; genEndFunction
      00CD0E 81               [ 4]  768 	ret
                                    769 ;	Total FLASH_GetPowerStatus function size at codegen: 1 bytes.
                                    770 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 765: IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType,
                                    771 ; genLabel
                                    772 ;	-----------------------------------------
                                    773 ;	 function FLASH_ProgramBlock
                                    774 ;	-----------------------------------------
                                    775 ;	Register assignment might be sub-optimal.
                                    776 ;	Stack space usage: 12 bytes.
      00CD0F                        777 _FLASH_ProgramBlock:
      00CD0F 52 0C            [ 2]  778 	sub	sp, #12
                                    779 ; genReceive
      00CD11 51               [ 1]  780 	exgw	x, y
                                    781 ; genReceive
                                    782 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 774: if(FLASH_MemType == FLASH_MemType_Program)
                                    783 ; genCmpEQorNE
      00CD12 A1 FD            [ 1]  784 	cp	a, #0xfd
                                    785 ; peephole j5 changed absolute to relative unconditional jump.
                                    786 ; peephole j10 removed jra by using inverse jump logic
                                    787 ; peephole j30 removed unused label 00135$.
                                    788 ; peephole j5 changed absolute to relative unconditional jump.
      00CD14 26 09            [ 1]  789 	jrne	00102$
                                    790 ; peephole j7 removed jra by using inverse jump logic
                                    791 ; peephole j30 removed unused label 00136$.
                                    792 ; skipping generated iCode
                                    793 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 777: startaddress = FLASH_PROGRAM_START_PHYSICAL_ADDRESS;
                                    794 ; genAssign
      00CD16 0F 04            [ 1]  795 	clr	(0x04, sp)
      00CD18 A6 80            [ 1]  796 	ld	a, #0x80
      00CD1A 5F               [ 1]  797 	clrw	x
      00CD1B 1F 01            [ 2]  798 	ldw	(0x01, sp), x
                                    799 ; genGoto
      00CD1D 20 07            [ 2]  800 	jra	00103$
                                    801 ; peephole j5 changed absolute to relative unconditional jump.
                                    802 ; genLabel
      00CD1F                        803 00102$:
                                    804 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 782: startaddress = FLASH_DATA_EEPROM_START_PHYSICAL_ADDRESS;
                                    805 ; genAssign
      00CD1F 0F 04            [ 1]  806 	clr	(0x04, sp)
      00CD21 A6 10            [ 1]  807 	ld	a, #0x10
      00CD23 5F               [ 1]  808 	clrw	x
      00CD24 1F 01            [ 2]  809 	ldw	(0x01, sp), x
                                    810 ; genLabel
      00CD26                        811 00103$:
                                    812 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 786: startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
                                    813 ; genCast
                                    814 ; genAssign
      00CD26 5F               [ 1]  815 	clrw	x
                                    816 ; genLeftShift
      00CD27 88               [ 1]  817 	push	a
      00CD28 A6 07            [ 1]  818 	ld	a, #0x07
      00CD2A                        819 00137$:
      00CD2A 90 58            [ 2]  820 	sllw	y
      00CD2C 59               [ 2]  821 	rlcw	x
      00CD2D 4A               [ 1]  822 	dec	a
      00CD2E 26 FA            [ 1]  823 	jrne	00137$
                                    824 ; peephole j30 removed unused label 00138$.
      00CD30 17 08            [ 2]  825 	ldw	(0x08, sp), y
                                    826 ; genPlus
                                    827 ; peephole 6 removed dead pop / push pair.
      00CD32 7B 05            [ 1]  828 	ld	a, (0x05, sp)
      00CD34 1B 09            [ 1]  829 	add	a, (0x09, sp)
      00CD36 6B 0D            [ 1]  830 	ld	(0x0d, sp), a
      00CD38 84               [ 1]  831 	pop	a
      00CD39 19 07            [ 1]  832 	adc	a, (0x07, sp)
      00CD3B 6B 0B            [ 1]  833 	ld	(0x0b, sp), a
      00CD3D 9F               [ 1]  834 	ld	a, xl
      00CD3E 19 02            [ 1]  835 	adc	a, (0x02, sp)
      00CD40 6B 0A            [ 1]  836 	ld	(0x0a, sp), a
      00CD42 9E               [ 1]  837 	ld	a, xh
      00CD43 19 01            [ 1]  838 	adc	a, (0x01, sp)
      00CD45 6B 09            [ 1]  839 	ld	(0x09, sp), a
                                    840 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 792: FLASH->CR2 |= FLASH_CR2_PRG;
                                    841 ; genPointerGet
      00CD47 C6 50 51         [ 1]  842 	ld	a, 0x5051
                                    843 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 789: if(FLASH_ProgMode == FLASH_ProgramMode_Standard)
                                    844 ; genIfx
      00CD4A 0D 0F            [ 1]  845 	tnz	(0x0f, sp)
                                    846 ; peephole j5 changed absolute to relative unconditional jump.
      00CD4C 26 07            [ 1]  847 	jrne	00105$
                                    848 ; peephole j7 removed jra by using inverse jump logic
                                    849 ; peephole j30 removed unused label 00139$.
                                    850 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 792: FLASH->CR2 |= FLASH_CR2_PRG;
                                    851 ; genOr
      00CD4E AA 01            [ 1]  852 	or	a, #0x01
                                    853 ; genPointerSet
      00CD50 C7 50 51         [ 1]  854 	ld	0x5051, a
                                    855 ; genGoto
      00CD53 20 05            [ 2]  856 	jra	00114$
                                    857 ; peephole j5 changed absolute to relative unconditional jump.
                                    858 ; genLabel
      00CD55                        859 00105$:
                                    860 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 797: FLASH->CR2 |= FLASH_CR2_FPRG;
                                    861 ; genOr
      00CD55 AA 10            [ 1]  862 	or	a, #0x10
                                    863 ; genPointerSet
      00CD57 C7 50 51         [ 1]  864 	ld	0x5051, a
                                    865 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 801: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
                                    866 ; genLabel
      00CD5A                        867 00114$:
                                    868 ; genAssign
      00CD5A 4F               [ 1]  869 	clr	a
                                    870 ; genLabel
      00CD5B                        871 00108$:
                                    872 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 803: *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
                                    873 ; genCast
                                    874 ; genAssign
      00CD5B 1E 0B            [ 2]  875 	ldw	x, (0x0b, sp)
                                    876 ; genCast
                                    877 ; genAssign
      00CD5D 1F 07            [ 2]  878 	ldw	(0x07, sp), x
                                    879 ; genPlus
      00CD5F 90 5F            [ 1]  880 	clrw	y
      00CD61 90 97            [ 1]  881 	ld	yl, a
      00CD63 72 F9 07         [ 2]  882 	addw	y, (0x07, sp)
                                    883 ; genPlus
      00CD66 5F               [ 1]  884 	clrw	x
      00CD67 97               [ 1]  885 	ld	xl, a
      00CD68 72 FB 10         [ 2]  886 	addw	x, (0x10, sp)
                                    887 ; genPointerGet
      00CD6B 88               [ 1]  888 	push	a
      00CD6C F6               [ 1]  889 	ld	a, (x)
                                    890 ; genPointerSet
                                    891 ; peephole 6 removed dead pop / push pair.
                                    892 ; peephole 0 removed dead load into xl from a.
                                    893 ; peephole 4 removed redundant load from xl into a.
      00CD6D 90 F7            [ 1]  894 	ld	(y), a
      00CD6F 84               [ 1]  895 	pop	a
                                    896 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 801: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
                                    897 ; genPlus
      00CD70 4C               [ 1]  898 	inc	a
                                    899 ; genCmp
                                    900 ; genCmpTnz
      00CD71 A1 80            [ 1]  901 	cp	a, #0x80
                                    902 ; peephole j5 changed absolute to relative unconditional jump.
      00CD73 25 E6            [ 1]  903 	jrc	00108$
                                    904 ; peephole j9 removed jra by using inverse jump logic
                                    905 ; peephole j30 removed unused label 00140$.
                                    906 ; skipping generated iCode
                                    907 ; genLabel
                                    908 ; peephole j30 removed unused label 00110$.
                                    909 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 805: }
                                    910 ; genEndFunction
      00CD75 1E 0D            [ 2]  911 	ldw	x, (13, sp)
      00CD77 5B 11            [ 2]  912 	addw	sp, #17
      00CD79 FC               [ 2]  913 	jp	(x)
                                    914 ;	Total FLASH_ProgramBlock function size at codegen: 5 bytes.
                                    915 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 817: IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
                                    916 ; genLabel
                                    917 ;	-----------------------------------------
                                    918 ;	 function FLASH_EraseBlock
                                    919 ;	-----------------------------------------
                                    920 ;	Register assignment might be sub-optimal.
                                    921 ;	Stack space usage: 4 bytes.
      00CD7A                        922 _FLASH_EraseBlock:
      00CD7A 52 04            [ 2]  923 	sub	sp, #4
                                    924 ; genReceive
      00CD7C 1F 03            [ 2]  925 	ldw	(0x03, sp), x
                                    926 ; genReceive
                                    927 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 830: if(FLASH_MemType == FLASH_MemType_Program)
                                    928 ; genCmpEQorNE
      00CD7E A1 FD            [ 1]  929 	cp	a, #0xfd
                                    930 ; peephole j5 changed absolute to relative unconditional jump.
                                    931 ; peephole j10 removed jra by using inverse jump logic
                                    932 ; peephole j30 removed unused label 00114$.
                                    933 ; peephole j5 changed absolute to relative unconditional jump.
      00CD80 26 06            [ 1]  934 	jrne	00102$
                                    935 ; peephole j7 removed jra by using inverse jump logic
                                    936 ; peephole j30 removed unused label 00115$.
                                    937 ; skipping generated iCode
                                    938 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 833: startaddress = FLASH_PROGRAM_START_PHYSICAL_ADDRESS;
                                    939 ; genAssign
      00CD82 90 AE 80 00      [ 2]  940 	ldw	y, #0x8000
                                    941 ; genGoto
      00CD86 20 04            [ 2]  942 	jra	00103$
                                    943 ; peephole j5 changed absolute to relative unconditional jump.
                                    944 ; genLabel
      00CD88                        945 00102$:
                                    946 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 838: startaddress = FLASH_DATA_EEPROM_START_PHYSICAL_ADDRESS;
                                    947 ; genAssign
      00CD88 90 AE 10 00      [ 2]  948 	ldw	y, #0x1000
                                    949 ; genLabel
      00CD8C                        950 00103$:
                                    951 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 844: pwFlash = (PointerAttr uint32_t *)(uint16_t)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
                                    952 ; genLeftShiftLiteral
      00CD8C 1E 03            [ 2]  953 	ldw	x, (0x03, sp)
      00CD8E 58               [ 2]  954 	sllw	x
      00CD8F 58               [ 2]  955 	sllw	x
      00CD90 58               [ 2]  956 	sllw	x
      00CD91 58               [ 2]  957 	sllw	x
      00CD92 58               [ 2]  958 	sllw	x
      00CD93 58               [ 2]  959 	sllw	x
      00CD94 58               [ 2]  960 	sllw	x
      00CD95 1F 01            [ 2]  961 	ldw	(0x01, sp), x
                                    962 ; genCast
                                    963 ; genAssign
      00CD97 93               [ 1]  964 	ldw	x, y
                                    965 ; genPlus
      00CD98 72 FB 01         [ 2]  966 	addw	x, (0x01, sp)
                                    967 ; genCast
                                    968 ; genAssign
                                    969 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 851: FLASH->CR2 |= FLASH_CR2_ERASE;
                                    970 ; genPointerGet
                                    971 ; genOr
                                    972 ; genPointerSet
      00CD9B 72 1A 50 51      [ 1]  973 	bset	0x5051, #5
                                    974 ; peephole 202x replaced 'or' by 'bset' ('0x5051').
                                    975 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 855: *pwFlash = (uint32_t)0;  
                                    976 ; genPointerSet
      00CD9F 90 5F            [ 1]  977 	clrw	y
      00CDA1 EF 02            [ 2]  978 	ldw	(0x2, x), y
      00CDA3 FF               [ 2]  979 	ldw	(x), y
                                    980 ; genLabel
                                    981 ; peephole j30 removed unused label 00104$.
                                    982 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 863: }
                                    983 ; genEndFunction
      00CDA4 5B 04            [ 2]  984 	addw	sp, #4
      00CDA6 81               [ 4]  985 	ret
                                    986 ;	Total FLASH_EraseBlock function size at codegen: 3 bytes.
                                    987 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 875: IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType))
                                    988 ; genLabel
                                    989 ;	-----------------------------------------
                                    990 ;	 function FLASH_WaitForLastOperation
                                    991 ;	-----------------------------------------
                                    992 ;	Register assignment might be sub-optimal.
                                    993 ;	Stack space usage: 0 bytes.
      00CDA7                        994 _FLASH_WaitForLastOperation:
                                    995 ; genReceive
      00CDA7 97               [ 1]  996 	ld	xl, a
                                    997 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 878: uint8_t flagstatus = 0x00;
                                    998 ; genAssign
      00CDA8 4F               [ 1]  999 	clr	a
                                   1000 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 881: if(FLASH_MemType == FLASH_MemType_Program)
                                   1001 ; genCmpEQorNE
      00CDA9 88               [ 1] 1002 	push	a
      00CDAA 9F               [ 1] 1003 	ld	a, xl
      00CDAB A1 FD            [ 1] 1004 	cp	a, #0xfd
      00CDAD 84               [ 1] 1005 	pop	a
                                   1006 ; peephole j5 changed absolute to relative unconditional jump.
                                   1007 ; peephole j10 removed jra by using inverse jump logic
                                   1008 ; peephole j30 removed unused label 00174$.
                                   1009 ; peephole j5 changed absolute to relative unconditional jump.
      00CDAE 26 10            [ 1] 1010 	jrne	00121$
                                   1011 ; peephole j7 removed jra by using inverse jump logic
                                   1012 ; peephole j30 removed unused label 00175$.
                                   1013 ; skipping generated iCode
                                   1014 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 883: while((flagstatus == 0x00) && (timeout != 0x00))
                                   1015 ; genAssign
      00CDB0 5F               [ 1] 1016 	clrw	x
      00CDB1 5A               [ 2] 1017 	decw	x
                                   1018 ; genLabel
      00CDB2                       1019 00102$:
                                   1020 ; genIfx
      00CDB2 4D               [ 1] 1021 	tnz	a
                                   1022 ; peephole j5 changed absolute to relative unconditional jump.
                                   1023 ; peephole j1 jumped to 00111$ directly instead of via 00123$.
      00CDB3 26 1B            [ 1] 1024 	jrne	00111$
                                   1025 ; peephole j7 removed jra by using inverse jump logic
                                   1026 ; peephole j30 removed unused label 00176$.
                                   1027 ; genIfx
      00CDB5 5D               [ 2] 1028 	tnzw	x
                                   1029 ; peephole j5 changed absolute to relative unconditional jump.
                                   1030 ; peephole j1 jumped to 00111$ directly instead of via 00123$.
      00CDB6 27 18            [ 1] 1031 	jreq	00111$
                                   1032 ; peephole j10 removed jra by using inverse jump logic
                                   1033 ; peephole j30 removed unused label 00177$.
                                   1034 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 885: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
                                   1035 ; genPointerGet
      00CDB8 C6 50 54         [ 1] 1036 	ld	a, 0x5054
                                   1037 ; genAnd
      00CDBB A4 05            [ 1] 1038 	and	a, #0x05
                                   1039 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 887: timeout--;
                                   1040 ; genMinus
      00CDBD 5A               [ 2] 1041 	decw	x
                                   1042 ; genGoto
      00CDBE 20 F2            [ 2] 1043 	jra	00102$
                                   1044 ; peephole j5 changed absolute to relative unconditional jump.
                                   1045 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 892: while((flagstatus == 0x00) && (timeout != 0x00))
                                   1046 ; genLabel
      00CDC0                       1047 00121$:
                                   1048 ; genAssign
      00CDC0 5F               [ 1] 1049 	clrw	x
      00CDC1 5A               [ 2] 1050 	decw	x
                                   1051 ; genLabel
      00CDC2                       1052 00106$:
                                   1053 ; genIfx
      00CDC2 4D               [ 1] 1054 	tnz	a
                                   1055 ; peephole j5 changed absolute to relative unconditional jump.
      00CDC3 26 0B            [ 1] 1056 	jrne	00124$
                                   1057 ; peephole j7 removed jra by using inverse jump logic
                                   1058 ; peephole j30 removed unused label 00178$.
                                   1059 ; genIfx
      00CDC5 5D               [ 2] 1060 	tnzw	x
                                   1061 ; peephole j5 changed absolute to relative unconditional jump.
      00CDC6 27 08            [ 1] 1062 	jreq	00124$
                                   1063 ; peephole j10 removed jra by using inverse jump logic
                                   1064 ; peephole j30 removed unused label 00179$.
                                   1065 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 894: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
                                   1066 ; genPointerGet
      00CDC8 C6 50 54         [ 1] 1067 	ld	a, 0x5054
                                   1068 ; genAnd
      00CDCB A4 41            [ 1] 1069 	and	a, #0x41
                                   1070 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 896: timeout--;
                                   1071 ; genMinus
      00CDCD 5A               [ 2] 1072 	decw	x
                                   1073 ; genGoto
      00CDCE 20 F2            [ 2] 1074 	jra	00106$
                                   1075 ; peephole j5 changed absolute to relative unconditional jump.
                                   1076 ; genLabel
                                   1077 ; peephole j30 removed unused label 00123$.
                                   1078 ; genAssign
                                   1079 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 905: return((FLASH_Status_TypeDef)flagstatus);
                                   1080 ; genGoto
                                   1081 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 896: timeout--;
                                   1082 ; genLabel
                                   1083 ; genAssign
                                   1084 ; genLabel
      00CDD0                       1085 00124$:
      00CDD0                       1086 00111$:
                                   1087 ; peephole j1d removed redundant jump.
                                   1088 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 900: if(timeout == 0x00)
                                   1089 ; genIfx
      00CDD0 5D               [ 2] 1090 	tnzw	x
      00CDD1 27 01            [ 1] 1091 	jreq	00180$
      00CDD3 81               [ 4] 1092 	ret
                                   1093 ; peephole j2e replaced jump by return.
      00CDD4                       1094 00180$:
                                   1095 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 902: flagstatus = FLASH_Status_TimeOut;
                                   1096 ; genAssign
      00CDD4 A6 02            [ 1] 1097 	ld	a, #0x02
                                   1098 ; genLabel
                                   1099 ; peephole j30 removed unused label 00113$.
                                   1100 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 905: return((FLASH_Status_TypeDef)flagstatus);
                                   1101 ; genReturn
                                   1102 ; genLabel
                                   1103 ; peephole j30 removed unused label 00114$.
                                   1104 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_flash.c: 906: }
                                   1105 ; genEndFunction
      00CDD6 81               [ 4] 1106 	ret
                                   1107 ;	Total FLASH_WaitForLastOperation function size at codegen: 1 bytes.
                                   1108 	.area CODE
                                   1109 	.area CONST
                                   1110 	.area INITIALIZER
                                   1111 	.area CABS (ABS)
