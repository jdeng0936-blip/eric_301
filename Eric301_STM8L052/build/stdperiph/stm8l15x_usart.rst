                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8l15x_usart
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _CLK_GetClockFreq
                                     11 	.globl _USART_DeInit
                                     12 	.globl _USART_Init
                                     13 	.globl _USART_ClockInit
                                     14 	.globl _USART_Cmd
                                     15 	.globl _USART_SetPrescaler
                                     16 	.globl _USART_SendBreak
                                     17 	.globl _USART_ReceiveData8
                                     18 	.globl _USART_ReceiveData9
                                     19 	.globl _USART_SendData8
                                     20 	.globl _USART_SendData9
                                     21 	.globl _USART_ReceiverWakeUpCmd
                                     22 	.globl _USART_SetAddress
                                     23 	.globl _USART_WakeUpConfig
                                     24 	.globl _USART_HalfDuplexCmd
                                     25 	.globl _USART_SmartCardCmd
                                     26 	.globl _USART_SmartCardNACKCmd
                                     27 	.globl _USART_SetGuardTime
                                     28 	.globl _USART_IrDAConfig
                                     29 	.globl _USART_IrDACmd
                                     30 	.globl _USART_DMACmd
                                     31 	.globl _USART_ITConfig
                                     32 	.globl _USART_GetFlagStatus
                                     33 	.globl _USART_ClearFlag
                                     34 	.globl _USART_GetITStatus
                                     35 	.globl _USART_ClearITPendingBit
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DATA
                                     40 ;--------------------------------------------------------
                                     41 ; ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area INITIALIZED
                                     44 ;--------------------------------------------------------
                                     45 ; absolute external ram data
                                     46 ;--------------------------------------------------------
                                     47 	.area DABS (ABS)
                                     48 
                                     49 ; default segment ordering for linker
                                     50 	.area HOME
                                     51 	.area GSINIT
                                     52 	.area GSFINAL
                                     53 	.area CONST
                                     54 	.area INITIALIZER
                                     55 	.area CODE
                                     56 
                                     57 ;--------------------------------------------------------
                                     58 ; global & static initialisations
                                     59 ;--------------------------------------------------------
                                     60 	.area HOME
                                     61 	.area GSINIT
                                     62 	.area GSFINAL
                                     63 	.area GSINIT
                                     64 ;--------------------------------------------------------
                                     65 ; Home
                                     66 ;--------------------------------------------------------
                                     67 	.area HOME
                                     68 	.area HOME
                                     69 ;--------------------------------------------------------
                                     70 ; code
                                     71 ;--------------------------------------------------------
                                     72 	.area CODE
                                     73 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 148: void USART_DeInit(USART_TypeDef* USARTx)
                                     74 ; genLabel
                                     75 ;	-----------------------------------------
                                     76 ;	 function USART_DeInit
                                     77 ;	-----------------------------------------
                                     78 ;	Register assignment might be sub-optimal.
                                     79 ;	Stack space usage: 0 bytes.
      00E93F                         80 _USART_DeInit:
                                     81 ; genReceive
                                     82 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 154: (void) USARTx->DR;
                                     83 ; genAssign
                                     84 ; peephole 5w replaced exgw-ldw by ldw.
      00E93F 90 93            [ 1]   85 	ldw	y, x
                                     86 ; genPointerGet
                                     87 ; Dummy read
      00E941 E6 01            [ 1]   88 	ld	a, (0x1, x)
                                     89 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 156: USARTx->BRR2 = USART_BRR2_RESET_VALUE;  /* Set USART_BRR2 to reset value 0x00 */
                                     90 ; genPlus
      00E943 93               [ 1]   91 	ldw	x, y
                                     92 ; genPointerSet
                                     93 ; peephole 9a moved addition of offset into clear instruction
      00E944 6F 03            [ 1]   94 	clr	(0x0003, x)
                                     95 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 157: USARTx->BRR1 = USART_BRR1_RESET_VALUE;  /* Set USART_BRR1 to reset value 0x00 */
                                     96 ; genPlus
      00E946 93               [ 1]   97 	ldw	x, y
                                     98 ; genPointerSet
                                     99 ; peephole 10i moved addition of offset into instruction
      00E947 6F 02            [ 1]  100 	clr	(0x02, x)
                                    101 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 159: USARTx->CR1 = USART_CR1_RESET_VALUE;  /* Set USART_CR1 to reset value 0x00 */
                                    102 ; genPlus
      00E949 93               [ 1]  103 	ldw	x, y
                                    104 ; genPointerSet
                                    105 ; peephole 9a moved addition of offset into clear instruction
      00E94A 6F 04            [ 1]  106 	clr	(0x0004, x)
                                    107 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 160: USARTx->CR2 = USART_CR2_RESET_VALUE;  /* Set USART_CR2 to reset value 0x00 */
                                    108 ; genPlus
      00E94C 93               [ 1]  109 	ldw	x, y
                                    110 ; genPointerSet
                                    111 ; peephole 9a moved addition of offset into clear instruction
      00E94D 6F 05            [ 1]  112 	clr	(0x0005, x)
                                    113 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 161: USARTx->CR3 = USART_CR3_RESET_VALUE;  /* Set USART_CR3 to reset value 0x00 */
                                    114 ; genPlus
      00E94F 93               [ 1]  115 	ldw	x, y
                                    116 ; genPointerSet
                                    117 ; peephole 9a moved addition of offset into clear instruction
      00E950 6F 06            [ 1]  118 	clr	(0x0006, x)
                                    119 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 162: USARTx->CR4 = USART_CR4_RESET_VALUE;  /* Set USART_CR4 to reset value 0x00 */
                                    120 ; genPlus
      00E952 93               [ 1]  121 	ldw	x, y
                                    122 ; genPointerSet
                                    123 ; peephole 9a moved addition of offset into clear instruction
      00E953 6F 07            [ 1]  124 	clr	(0x0007, x)
                                    125 ; genLabel
                                    126 ; peephole j30 removed unused label 00101$.
                                    127 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 163: }
                                    128 ; genEndFunction
      00E955 81               [ 4]  129 	ret
                                    130 ;	Total USART_DeInit function size at codegen: 1 bytes.
                                    131 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 192: void USART_Init(USART_TypeDef* USARTx, uint32_t BaudRate, USART_WordLength_TypeDef
                                    132 ; genLabel
                                    133 ;	-----------------------------------------
                                    134 ;	 function USART_Init
                                    135 ;	-----------------------------------------
                                    136 ;	Register assignment might be sub-optimal.
                                    137 ;	Stack space usage: 11 bytes.
      00E956                        138 _USART_Init:
      00E956 52 0B            [ 2]  139 	sub	sp, #11
                                    140 ; genReceive
                                    141 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 210: USARTx->CR1 &= (uint8_t)(~(USART_CR1_PCEN | USART_CR1_PS | USART_CR1_M));
                                    142 ; genPlus
      00E958 1F 0A            [ 2]  143 	ldw	(0x0a, sp), x
                                    144 ; peephole 13 removed redundant load from (0x0a, sp) into x.
      00E95A 1C 00 04         [ 2]  145 	addw	x, #0x0004
                                    146 ; genPointerGet
      00E95D F6               [ 1]  147 	ld	a, (x)
                                    148 ; genAnd
      00E95E A4 E9            [ 1]  149 	and	a, #0xe9
                                    150 ; genPointerSet
      00E960 6B 09            [ 1]  151 	ld	(0x09, sp), a
                                    152 ; peephole 4a removed redundant load from (0x09, sp) into a.
      00E962 F7               [ 1]  153 	ld	(x), a
                                    154 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 213: USARTx->CR1 |= (uint8_t)((uint8_t)USART_WordLength | (uint8_t)USART_Parity);
                                    155 ; genOr
      00E963 7B 12            [ 1]  156 	ld	a, (0x12, sp)
      00E965 1A 14            [ 1]  157 	or	a, (0x14, sp)
                                    158 ; genOr
      00E967 1A 09            [ 1]  159 	or	a, (0x09, sp)
                                    160 ; genPointerSet
      00E969 F7               [ 1]  161 	ld	(x), a
                                    162 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 216: USARTx->CR3 &= (uint8_t)(~USART_CR3_STOP);
                                    163 ; genPlus
      00E96A 1E 0A            [ 2]  164 	ldw	x, (0x0a, sp)
      00E96C 1C 00 06         [ 2]  165 	addw	x, #0x0006
                                    166 ; genPointerGet
      00E96F F6               [ 1]  167 	ld	a, (x)
                                    168 ; genAnd
      00E970 A4 CF            [ 1]  169 	and	a, #0xcf
                                    170 ; genPointerSet
      00E972 F7               [ 1]  171 	ld	(x), a
                                    172 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 218: USARTx->CR3 |= (uint8_t)USART_StopBits;
                                    173 ; genOr
      00E973 1A 13            [ 1]  174 	or	a, (0x13, sp)
                                    175 ; genPointerSet
      00E975 F7               [ 1]  176 	ld	(x), a
                                    177 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 221: USARTx->BRR1 &= (uint8_t)(~USART_BRR1_DIVM);
                                    178 ; genPlus
      00E976 1E 0A            [ 2]  179 	ldw	x, (0x0a, sp)
      00E978 5C               [ 1]  180 	incw	x
      00E979 5C               [ 1]  181 	incw	x
                                    182 ; genPointerGet
                                    183 ; Dummy read
      00E97A 1F 01            [ 2]  184 	ldw	(0x01, sp), x
                                    185 ; peephole 13 removed redundant load from (0x01, sp) into x.
      00E97C F6               [ 1]  186 	ld	a, (x)
                                    187 ; genPointerSet
      00E97D 1E 01            [ 2]  188 	ldw	x, (0x01, sp)
      00E97F 7F               [ 1]  189 	clr	(x)
                                    190 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 223: USARTx->BRR2 &= (uint8_t)(~USART_BRR2_DIVM);
                                    191 ; genPlus
      00E980 1E 0A            [ 2]  192 	ldw	x, (0x0a, sp)
      00E982 1C 00 03         [ 2]  193 	addw	x, #0x0003
                                    194 ; genPointerGet
      00E985 1F 03            [ 2]  195 	ldw	(0x03, sp), x
                                    196 ; peephole 13 removed redundant load from (0x03, sp) into x.
      00E987 F6               [ 1]  197 	ld	a, (x)
                                    198 ; genAnd
      00E988 A4 0F            [ 1]  199 	and	a, #0x0f
                                    200 ; genPointerSet
      00E98A 1E 03            [ 2]  201 	ldw	x, (0x03, sp)
      00E98C F7               [ 1]  202 	ld	(x), a
                                    203 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 225: USARTx->BRR2 &= (uint8_t)(~USART_BRR2_DIVF);
                                    204 ; genPointerSet
      00E98D 1E 03            [ 2]  205 	ldw	x, (0x03, sp)
      00E98F 7F               [ 1]  206 	clr	(x)
                                    207 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 227: BaudRate_Mantissa  = (uint32_t)(CLK_GetClockFreq() / BaudRate );
                                    208 ; genCall
      00E990 CD C5 0E         [ 4]  209 	call	_CLK_GetClockFreq
      00E993 1F 08            [ 2]  210 	ldw	(0x08, sp), x
                                    211 ; genIPush
      00E995 1E 10            [ 2]  212 	ldw	x, (0x10, sp)
      00E997 89               [ 2]  213 	pushw	x
      00E998 1E 10            [ 2]  214 	ldw	x, (0x10, sp)
      00E99A 89               [ 2]  215 	pushw	x
                                    216 ; genIPush
      00E99B 1E 0C            [ 2]  217 	ldw	x, (0x0c, sp)
      00E99D 89               [ 2]  218 	pushw	x
      00E99E 90 89            [ 2]  219 	pushw	y
                                    220 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 229: USARTx->BRR2 = (uint8_t)((BaudRate_Mantissa >> (uint8_t)8) & (uint8_t)0xF0);
                                    221 ; genCall
      00E9A0 CD ED 50         [ 4]  222 	call	__divulong
      00E9A3 5B 08            [ 2]  223 	addw	sp, #8
      00E9A5 17 05            [ 2]  224 	ldw	(0x05, sp), y
                                    225 ; genGetByte
      00E9A7 9E               [ 1]  226 	ld	a, xh
                                    227 ; genAnd
      00E9A8 A4 F0            [ 1]  228 	and	a, #0xf0
      00E9AA 6B 09            [ 1]  229 	ld	(0x09, sp), a
                                    230 ; genPointerSet
      00E9AC 16 03            [ 2]  231 	ldw	y, (0x03, sp)
      00E9AE 7B 09            [ 1]  232 	ld	a, (0x09, sp)
      00E9B0 90 F7            [ 1]  233 	ld	(y), a
                                    234 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 231: USARTx->BRR2 |= (uint8_t)(BaudRate_Mantissa & (uint8_t)0x0F);
                                    235 ; genCast
                                    236 ; genAssign
      00E9B2 9F               [ 1]  237 	ld	a, xl
                                    238 ; genAnd
      00E9B3 A4 0F            [ 1]  239 	and	a, #0x0f
                                    240 ; genOr
      00E9B5 1A 09            [ 1]  241 	or	a, (0x09, sp)
                                    242 ; genPointerSet
      00E9B7 16 03            [ 2]  243 	ldw	y, (0x03, sp)
      00E9B9 90 F7            [ 1]  244 	ld	(y), a
                                    245 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 233: USARTx->BRR1 = (uint8_t)(BaudRate_Mantissa >> (uint8_t)4);
                                    246 ; genCast
                                    247 ; genAssign
                                    248 ; genRightShiftLiteral
      00E9BB A6 10            [ 1]  249 	ld	a, #0x10
      00E9BD 62               [ 2]  250 	div	x, a
                                    251 ; genCast
                                    252 ; genAssign
      00E9BE 9F               [ 1]  253 	ld	a, xl
                                    254 ; genPointerSet
      00E9BF 1E 01            [ 2]  255 	ldw	x, (0x01, sp)
      00E9C1 F7               [ 1]  256 	ld	(x), a
                                    257 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 236: USARTx->CR2 &= (uint8_t)~(USART_CR2_TEN | USART_CR2_REN);
                                    258 ; genPlus
      00E9C2 1E 0A            [ 2]  259 	ldw	x, (0x0a, sp)
      00E9C4 1C 00 05         [ 2]  260 	addw	x, #0x0005
                                    261 ; genPointerGet
      00E9C7 F6               [ 1]  262 	ld	a, (x)
                                    263 ; genAnd
      00E9C8 A4 F3            [ 1]  264 	and	a, #0xf3
                                    265 ; genPointerSet
      00E9CA F7               [ 1]  266 	ld	(x), a
                                    267 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 238: USARTx->CR2 |= (uint8_t)USART_Mode;
                                    268 ; genOr
      00E9CB 1A 15            [ 1]  269 	or	a, (0x15, sp)
                                    270 ; genPointerSet
      00E9CD F7               [ 1]  271 	ld	(x), a
                                    272 ; genLabel
                                    273 ; peephole j30 removed unused label 00101$.
                                    274 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 239: }
                                    275 ; genEndFunction
      00E9CE 1E 0C            [ 2]  276 	ldw	x, (12, sp)
      00E9D0 5B 15            [ 2]  277 	addw	sp, #21
      00E9D2 FC               [ 2]  278 	jp	(x)
                                    279 ;	Total USART_Init function size at codegen: 5 bytes.
                                    280 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 264: void USART_ClockInit(USART_TypeDef* USARTx, USART_Clock_TypeDef USART_Clock,
                                    281 ; genLabel
                                    282 ;	-----------------------------------------
                                    283 ;	 function USART_ClockInit
                                    284 ;	-----------------------------------------
                                    285 ;	Register assignment might be sub-optimal.
                                    286 ;	Stack space usage: 5 bytes.
      00E9D3                        287 _USART_ClockInit:
      00E9D3 52 05            [ 2]  288 	sub	sp, #5
                                    289 ; genReceive
                                    290 ; genReceive
      00E9D5 6B 05            [ 1]  291 	ld	(0x05, sp), a
                                    292 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 275: USARTx->CR3 &= (uint8_t)~(USART_CR3_CPOL | USART_CR3_CPHA | USART_CR3_LBCL);
                                    293 ; genPlus
      00E9D7 1C 00 06         [ 2]  294 	addw	x, #0x0006
                                    295 ; genPointerGet
      00E9DA 1F 01            [ 2]  296 	ldw	(0x01, sp), x
                                    297 ; peephole 13 removed redundant load from (0x01, sp) into x.
      00E9DC F6               [ 1]  298 	ld	a, (x)
                                    299 ; genAnd
      00E9DD A4 F8            [ 1]  300 	and	a, #0xf8
      00E9DF 6B 03            [ 1]  301 	ld	(0x03, sp), a
                                    302 ; genPointerSet
      00E9E1 1E 01            [ 2]  303 	ldw	x, (0x01, sp)
      00E9E3 7B 03            [ 1]  304 	ld	a, (0x03, sp)
      00E9E5 F7               [ 1]  305 	ld	(x), a
                                    306 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 277: USARTx->CR3 |= (uint8_t)((uint8_t)((uint8_t)(USART_CPOL | (uint8_t)USART_CPHA ) | USART_LastBit));
                                    307 ; genOr
      00E9E6 7B 08            [ 1]  308 	ld	a, (0x08, sp)
      00E9E8 1A 09            [ 1]  309 	or	a, (0x09, sp)
      00E9EA 6B 04            [ 1]  310 	ld	(0x04, sp), a
                                    311 ; genCast
                                    312 ; genAssign
      00E9EC 7B 0A            [ 1]  313 	ld	a, (0x0a, sp)
                                    314 ; genOr
      00E9EE 1A 04            [ 1]  315 	or	a, (0x04, sp)
                                    316 ; genCast
                                    317 ; genAssign
                                    318 ; genOr
      00E9F0 1A 03            [ 1]  319 	or	a, (0x03, sp)
                                    320 ; genPointerSet
      00E9F2 1E 01            [ 2]  321 	ldw	x, (0x01, sp)
      00E9F4 F7               [ 1]  322 	ld	(x), a
                                    323 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 275: USARTx->CR3 &= (uint8_t)~(USART_CR3_CPOL | USART_CR3_CPHA | USART_CR3_LBCL);
                                    324 ; genPointerGet
      00E9F5 1E 01            [ 2]  325 	ldw	x, (0x01, sp)
      00E9F7 F6               [ 1]  326 	ld	a, (x)
                                    327 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 279: if (USART_Clock != USART_Clock_Disable)
                                    328 ; genIfx
      00E9F8 0D 05            [ 1]  329 	tnz	(0x05, sp)
                                    330 ; peephole j5 changed absolute to relative unconditional jump.
      00E9FA 27 07            [ 1]  331 	jreq	00102$
                                    332 ; peephole j10 removed jra by using inverse jump logic
                                    333 ; peephole j30 removed unused label 00113$.
                                    334 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 281: USARTx->CR3 |= (uint8_t)(USART_CR3_CLKEN); /* Set the Clock Enable bit */
                                    335 ; genOr
      00E9FC AA 08            [ 1]  336 	or	a, #0x08
                                    337 ; genPointerSet
      00E9FE 1E 01            [ 2]  338 	ldw	x, (0x01, sp)
      00EA00 F7               [ 1]  339 	ld	(x), a
                                    340 ; genGoto
      00EA01 20 05            [ 2]  341 	jra	00104$
                                    342 ; peephole j5 changed absolute to relative unconditional jump.
                                    343 ; genLabel
      00EA03                        344 00102$:
                                    345 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 285: USARTx->CR3 &= (uint8_t)(~USART_CR3_CLKEN); /* Clear the Clock Enable bit */
                                    346 ; genAnd
      00EA03 A4 F7            [ 1]  347 	and	a, #0xf7
                                    348 ; genPointerSet
      00EA05 1E 01            [ 2]  349 	ldw	x, (0x01, sp)
      00EA07 F7               [ 1]  350 	ld	(x), a
                                    351 ; genLabel
      00EA08                        352 00104$:
                                    353 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 287: }
                                    354 ; genEndFunction
      00EA08 1E 06            [ 2]  355 	ldw	x, (6, sp)
      00EA0A 5B 0A            [ 2]  356 	addw	sp, #10
      00EA0C FC               [ 2]  357 	jp	(x)
                                    358 ;	Total USART_ClockInit function size at codegen: 5 bytes.
                                    359 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 296: void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState)
                                    360 ; genLabel
                                    361 ;	-----------------------------------------
                                    362 ;	 function USART_Cmd
                                    363 ;	-----------------------------------------
                                    364 ;	Register assignment might be sub-optimal.
                                    365 ;	Stack space usage: 1 bytes.
      00EA0D                        366 _USART_Cmd:
      00EA0D 88               [ 1]  367 	push	a
                                    368 ; genReceive
                                    369 ; genReceive
      00EA0E 6B 01            [ 1]  370 	ld	(0x01, sp), a
                                    371 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 300: USARTx->CR1 &= (uint8_t)(~USART_CR1_USARTD); /**< USART Enable */
                                    372 ; genPlus
      00EA10 1C 00 04         [ 2]  373 	addw	x, #0x0004
                                    374 ; genPointerGet
      00EA13 F6               [ 1]  375 	ld	a, (x)
                                    376 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 298: if (NewState != DISABLE)
                                    377 ; genIfx
      00EA14 0D 01            [ 1]  378 	tnz	(0x01, sp)
                                    379 ; peephole j5 changed absolute to relative unconditional jump.
      00EA16 27 05            [ 1]  380 	jreq	00102$
                                    381 ; peephole j10 removed jra by using inverse jump logic
                                    382 ; peephole j30 removed unused label 00113$.
                                    383 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 300: USARTx->CR1 &= (uint8_t)(~USART_CR1_USARTD); /**< USART Enable */
                                    384 ; genAnd
      00EA18 A4 DF            [ 1]  385 	and	a, #0xdf
                                    386 ; genPointerSet
      00EA1A F7               [ 1]  387 	ld	(x), a
                                    388 ; genGoto
      00EA1B 20 03            [ 2]  389 	jra	00104$
                                    390 ; peephole j5 changed absolute to relative unconditional jump.
                                    391 ; genLabel
      00EA1D                        392 00102$:
                                    393 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 304: USARTx->CR1 |= USART_CR1_USARTD;  /**< USART Disable (for low power consumption) */
                                    394 ; genOr
      00EA1D AA 20            [ 1]  395 	or	a, #0x20
                                    396 ; genPointerSet
      00EA1F F7               [ 1]  397 	ld	(x), a
                                    398 ; genLabel
      00EA20                        399 00104$:
                                    400 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 306: }
                                    401 ; genEndFunction
      00EA20 84               [ 1]  402 	pop	a
      00EA21 81               [ 4]  403 	ret
                                    404 ;	Total USART_Cmd function size at codegen: 2 bytes.
                                    405 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 329: void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler)
                                    406 ; genLabel
                                    407 ;	-----------------------------------------
                                    408 ;	 function USART_SetPrescaler
                                    409 ;	-----------------------------------------
                                    410 ;	Register assignment might be sub-optimal.
                                    411 ;	Stack space usage: 0 bytes.
      00EA22                        412 _USART_SetPrescaler:
                                    413 ; genReceive
                                    414 ; genReceive
                                    415 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 332: USARTx->PSCR = USART_Prescaler;
                                    416 ; genPlus
      00EA22 1C 00 0A         [ 2]  417 	addw	x, #0x000a
                                    418 ; genPointerSet
      00EA25 F7               [ 1]  419 	ld	(x), a
                                    420 ; genLabel
                                    421 ; peephole j30 removed unused label 00101$.
                                    422 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 333: }
                                    423 ; genEndFunction
      00EA26 81               [ 4]  424 	ret
                                    425 ;	Total USART_SetPrescaler function size at codegen: 1 bytes.
                                    426 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 340: void USART_SendBreak(USART_TypeDef* USARTx)
                                    427 ; genLabel
                                    428 ;	-----------------------------------------
                                    429 ;	 function USART_SendBreak
                                    430 ;	-----------------------------------------
                                    431 ;	Register assignment might be sub-optimal.
                                    432 ;	Stack space usage: 0 bytes.
      00EA27                        433 _USART_SendBreak:
                                    434 ; genReceive
                                    435 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 342: USARTx->CR2 |= USART_CR2_SBK;
                                    436 ; genPlus
      00EA27 1C 00 05         [ 2]  437 	addw	x, #0x0005
                                    438 ; genPointerGet
      00EA2A F6               [ 1]  439 	ld	a, (x)
                                    440 ; genOr
      00EA2B AA 01            [ 1]  441 	or	a, #0x01
                                    442 ; genPointerSet
      00EA2D F7               [ 1]  443 	ld	(x), a
                                    444 ; genLabel
                                    445 ; peephole j30 removed unused label 00101$.
                                    446 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 343: }
                                    447 ; genEndFunction
      00EA2E 81               [ 4]  448 	ret
                                    449 ;	Total USART_SendBreak function size at codegen: 1 bytes.
                                    450 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 382: uint8_t USART_ReceiveData8(USART_TypeDef* USARTx)
                                    451 ; genLabel
                                    452 ;	-----------------------------------------
                                    453 ;	 function USART_ReceiveData8
                                    454 ;	-----------------------------------------
                                    455 ;	Register assignment might be sub-optimal.
                                    456 ;	Stack space usage: 0 bytes.
      00EA2F                        457 _USART_ReceiveData8:
                                    458 ; genReceive
                                    459 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 384: return USARTx->DR;
                                    460 ; genAssign
                                    461 ; genPointerGet
      00EA2F E6 01            [ 1]  462 	ld	a, (0x1, x)
                                    463 ; genReturn
                                    464 ; genLabel
                                    465 ; peephole j30 removed unused label 00101$.
                                    466 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 385: }
                                    467 ; genEndFunction
      00EA31 81               [ 4]  468 	ret
                                    469 ;	Total USART_ReceiveData8 function size at codegen: 1 bytes.
                                    470 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 392: uint16_t USART_ReceiveData9(USART_TypeDef* USARTx)
                                    471 ; genLabel
                                    472 ;	-----------------------------------------
                                    473 ;	 function USART_ReceiveData9
                                    474 ;	-----------------------------------------
                                    475 ;	Register assignment might be sub-optimal.
                                    476 ;	Stack space usage: 2 bytes.
      00EA32                        477 _USART_ReceiveData9:
      00EA32 89               [ 2]  478 	pushw	x
                                    479 ; genReceive
                                    480 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 396: temp = ((uint16_t)(((uint16_t)((uint16_t)USARTx->CR1 & (uint16_t)USART_CR1_R8)) << 1));
                                    481 ; genAssign
                                    482 ; peephole 5w replaced exgw-ldw by ldw.
      00EA33 90 93            [ 1]  483 	ldw	y, x
                                    484 ; genPointerGet
      00EA35 E6 04            [ 1]  485 	ld	a, (0x4, x)
                                    486 ; genCast
                                    487 ; genAssign
                                    488 ; peephole 3 removed dead clrw of x.
                                    489 ; genAnd
      00EA37 A4 80            [ 1]  490 	and	a, #0x80
      00EA39 97               [ 1]  491 	ld	xl, a
      00EA3A 4F               [ 1]  492 	clr	a
      00EA3B 95               [ 1]  493 	ld	xh, a
                                    494 ; genLeftShiftLiteral
      00EA3C 58               [ 2]  495 	sllw	x
      00EA3D 1F 01            [ 2]  496 	ldw	(0x01, sp), x
                                    497 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 397: return (uint16_t)( ((uint16_t)((uint16_t)USARTx->DR) | temp) & ((uint16_t)0x01FF));
                                    498 ; genAssign
                                    499 ; genPointerGet
      00EA3F 90 E6 01         [ 1]  500 	ld	a, (0x1, y)
                                    501 ; genCast
                                    502 ; genAssign
                                    503 ; peephole 3 removed dead clrw of x.
                                    504 ; genOr
      00EA42 1A 02            [ 1]  505 	or	a, (0x02, sp)
      00EA44 97               [ 1]  506 	ld	xl, a
      00EA45 7B 01            [ 1]  507 	ld	a, (0x01, sp)
                                    508 ; genAnd
      00EA47 A4 01            [ 1]  509 	and	a, #0x01
      00EA49 95               [ 1]  510 	ld	xh, a
                                    511 ; genReturn
                                    512 ; genLabel
                                    513 ; peephole j30 removed unused label 00101$.
                                    514 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 398: }
                                    515 ; genEndFunction
      00EA4A 5B 02            [ 2]  516 	addw	sp, #2
      00EA4C 81               [ 4]  517 	ret
                                    518 ;	Total USART_ReceiveData9 function size at codegen: 3 bytes.
                                    519 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 405: void USART_SendData8(USART_TypeDef* USARTx, uint8_t Data)
                                    520 ; genLabel
                                    521 ;	-----------------------------------------
                                    522 ;	 function USART_SendData8
                                    523 ;	-----------------------------------------
                                    524 ;	Register assignment might be sub-optimal.
                                    525 ;	Stack space usage: 0 bytes.
      00EA4D                        526 _USART_SendData8:
                                    527 ; genReceive
                                    528 ; genReceive
                                    529 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 408: USARTx->DR = Data;
                                    530 ; genPlus
      00EA4D 5C               [ 1]  531 	incw	x
                                    532 ; genPointerSet
      00EA4E F7               [ 1]  533 	ld	(x), a
                                    534 ; genLabel
                                    535 ; peephole j30 removed unused label 00101$.
                                    536 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 409: }
                                    537 ; genEndFunction
      00EA4F 81               [ 4]  538 	ret
                                    539 ;	Total USART_SendData8 function size at codegen: 1 bytes.
                                    540 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 418: void USART_SendData9(USART_TypeDef* USARTx, uint16_t Data)
                                    541 ; genLabel
                                    542 ;	-----------------------------------------
                                    543 ;	 function USART_SendData9
                                    544 ;	-----------------------------------------
                                    545 ;	Register assignment might be sub-optimal.
                                    546 ;	Stack space usage: 3 bytes.
      00EA50                        547 _USART_SendData9:
      00EA50 52 03            [ 2]  548 	sub	sp, #3
                                    549 ; genReceive
                                    550 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 423: USARTx->CR1 &= ((uint8_t)~USART_CR1_T8);
                                    551 ; genPlus
      00EA52 1F 02            [ 2]  552 	ldw	(0x02, sp), x
                                    553 ; peephole 13 removed redundant load from (0x02, sp) into x.
      00EA54 1C 00 04         [ 2]  554 	addw	x, #0x0004
                                    555 ; genPointerGet
      00EA57 F6               [ 1]  556 	ld	a, (x)
                                    557 ; genAnd
      00EA58 A4 BF            [ 1]  558 	and	a, #0xbf
                                    559 ; genPointerSet
      00EA5A 6B 01            [ 1]  560 	ld	(0x01, sp), a
                                    561 ; peephole 4a removed redundant load from (0x01, sp) into a.
      00EA5C F7               [ 1]  562 	ld	(x), a
                                    563 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 426: USARTx->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & USART_CR1_T8);
                                    564 ; genRightShiftLiteral
      00EA5D 16 06            [ 2]  565 	ldw	y, (0x06, sp)
      00EA5F 90 54            [ 2]  566 	srlw	y
      00EA61 90 54            [ 2]  567 	srlw	y
                                    568 ; genCast
                                    569 ; genAssign
      00EA63 90 9F            [ 1]  570 	ld	a, yl
                                    571 ; genAnd
      00EA65 A4 40            [ 1]  572 	and	a, #0x40
                                    573 ; genOr
      00EA67 1A 01            [ 1]  574 	or	a, (0x01, sp)
                                    575 ; genPointerSet
      00EA69 F7               [ 1]  576 	ld	(x), a
                                    577 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 429: USARTx->DR   = (uint8_t)(Data);
                                    578 ; genPlus
      00EA6A 1E 02            [ 2]  579 	ldw	x, (0x02, sp)
      00EA6C 5C               [ 1]  580 	incw	x
                                    581 ; genCast
                                    582 ; genAssign
      00EA6D 7B 07            [ 1]  583 	ld	a, (0x07, sp)
                                    584 ; genPointerSet
      00EA6F F7               [ 1]  585 	ld	(x), a
                                    586 ; genLabel
                                    587 ; peephole j30 removed unused label 00101$.
                                    588 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 430: }
                                    589 ; genEndFunction
      00EA70 1E 04            [ 2]  590 	ldw	x, (4, sp)
      00EA72 5B 07            [ 2]  591 	addw	sp, #7
      00EA74 FC               [ 2]  592 	jp	(x)
                                    593 ;	Total USART_SendData9 function size at codegen: 5 bytes.
                                    594 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 473: void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState)
                                    595 ; genLabel
                                    596 ;	-----------------------------------------
                                    597 ;	 function USART_ReceiverWakeUpCmd
                                    598 ;	-----------------------------------------
                                    599 ;	Register assignment might be sub-optimal.
                                    600 ;	Stack space usage: 1 bytes.
      00EA75                        601 _USART_ReceiverWakeUpCmd:
      00EA75 88               [ 1]  602 	push	a
                                    603 ; genReceive
                                    604 ; genReceive
      00EA76 6B 01            [ 1]  605 	ld	(0x01, sp), a
                                    606 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 480: USARTx->CR2 |= USART_CR2_RWU;
                                    607 ; genPlus
      00EA78 1C 00 05         [ 2]  608 	addw	x, #0x0005
                                    609 ; genPointerGet
      00EA7B F6               [ 1]  610 	ld	a, (x)
                                    611 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 477: if (NewState != DISABLE)
                                    612 ; genIfx
      00EA7C 0D 01            [ 1]  613 	tnz	(0x01, sp)
                                    614 ; peephole j5 changed absolute to relative unconditional jump.
      00EA7E 27 05            [ 1]  615 	jreq	00102$
                                    616 ; peephole j10 removed jra by using inverse jump logic
                                    617 ; peephole j30 removed unused label 00113$.
                                    618 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 480: USARTx->CR2 |= USART_CR2_RWU;
                                    619 ; genOr
      00EA80 AA 02            [ 1]  620 	or	a, #0x02
                                    621 ; genPointerSet
      00EA82 F7               [ 1]  622 	ld	(x), a
                                    623 ; genGoto
      00EA83 20 03            [ 2]  624 	jra	00104$
                                    625 ; peephole j5 changed absolute to relative unconditional jump.
                                    626 ; genLabel
      00EA85                        627 00102$:
                                    628 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 485: USARTx->CR2 &= ((uint8_t)~USART_CR2_RWU);
                                    629 ; genAnd
      00EA85 A4 FD            [ 1]  630 	and	a, #0xfd
                                    631 ; genPointerSet
      00EA87 F7               [ 1]  632 	ld	(x), a
                                    633 ; genLabel
      00EA88                        634 00104$:
                                    635 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 487: }
                                    636 ; genEndFunction
      00EA88 84               [ 1]  637 	pop	a
      00EA89 81               [ 4]  638 	ret
                                    639 ;	Total USART_ReceiverWakeUpCmd function size at codegen: 2 bytes.
                                    640 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 496: void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address)
                                    641 ; genLabel
                                    642 ;	-----------------------------------------
                                    643 ;	 function USART_SetAddress
                                    644 ;	-----------------------------------------
                                    645 ;	Register assignment might be sub-optimal.
                                    646 ;	Stack space usage: 1 bytes.
      00EA8A                        647 _USART_SetAddress:
      00EA8A 88               [ 1]  648 	push	a
                                    649 ; genReceive
                                    650 ; genReceive
      00EA8B 6B 01            [ 1]  651 	ld	(0x01, sp), a
                                    652 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 502: USARTx->CR4 &= ((uint8_t)~USART_CR4_ADD);
                                    653 ; genPlus
      00EA8D 1C 00 07         [ 2]  654 	addw	x, #0x0007
                                    655 ; genPointerGet
      00EA90 F6               [ 1]  656 	ld	a, (x)
                                    657 ; genAnd
      00EA91 A4 F0            [ 1]  658 	and	a, #0xf0
                                    659 ; genPointerSet
      00EA93 F7               [ 1]  660 	ld	(x), a
                                    661 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 504: USARTx->CR4 |= USART_Address;
                                    662 ; genOr
      00EA94 1A 01            [ 1]  663 	or	a, (0x01, sp)
                                    664 ; genPointerSet
      00EA96 F7               [ 1]  665 	ld	(x), a
                                    666 ; genLabel
                                    667 ; peephole j30 removed unused label 00101$.
                                    668 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 505: }
                                    669 ; genEndFunction
      00EA97 84               [ 1]  670 	pop	a
      00EA98 81               [ 4]  671 	ret
                                    672 ;	Total USART_SetAddress function size at codegen: 2 bytes.
                                    673 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 515: void USART_WakeUpConfig(USART_TypeDef* USARTx, USART_WakeUp_TypeDef USART_WakeUp)
                                    674 ; genLabel
                                    675 ;	-----------------------------------------
                                    676 ;	 function USART_WakeUpConfig
                                    677 ;	-----------------------------------------
                                    678 ;	Register assignment might be sub-optimal.
                                    679 ;	Stack space usage: 1 bytes.
      00EA99                        680 _USART_WakeUpConfig:
      00EA99 88               [ 1]  681 	push	a
                                    682 ; genReceive
                                    683 ; genReceive
      00EA9A 6B 01            [ 1]  684 	ld	(0x01, sp), a
                                    685 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 519: USARTx->CR1 &= ((uint8_t)~USART_CR1_WAKE);
                                    686 ; genPlus
      00EA9C 1C 00 04         [ 2]  687 	addw	x, #0x0004
                                    688 ; genPointerGet
      00EA9F F6               [ 1]  689 	ld	a, (x)
                                    690 ; genAnd
      00EAA0 A4 F7            [ 1]  691 	and	a, #0xf7
                                    692 ; genPointerSet
      00EAA2 F7               [ 1]  693 	ld	(x), a
                                    694 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 520: USARTx->CR1 |= (uint8_t)USART_WakeUp;
                                    695 ; genOr
      00EAA3 1A 01            [ 1]  696 	or	a, (0x01, sp)
                                    697 ; genPointerSet
      00EAA5 F7               [ 1]  698 	ld	(x), a
                                    699 ; genLabel
                                    700 ; peephole j30 removed unused label 00101$.
                                    701 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 521: }
                                    702 ; genEndFunction
      00EAA6 84               [ 1]  703 	pop	a
      00EAA7 81               [ 4]  704 	ret
                                    705 ;	Total USART_WakeUpConfig function size at codegen: 2 bytes.
                                    706 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 566: void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState)
                                    707 ; genLabel
                                    708 ;	-----------------------------------------
                                    709 ;	 function USART_HalfDuplexCmd
                                    710 ;	-----------------------------------------
                                    711 ;	Register assignment might be sub-optimal.
                                    712 ;	Stack space usage: 1 bytes.
      00EAA8                        713 _USART_HalfDuplexCmd:
      00EAA8 88               [ 1]  714 	push	a
                                    715 ; genReceive
                                    716 ; genReceive
      00EAA9 6B 01            [ 1]  717 	ld	(0x01, sp), a
                                    718 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 572: USARTx->CR5 |= USART_CR5_HDSEL;  /**< USART Half Duplex Enable  */
                                    719 ; genPlus
      00EAAB 1C 00 08         [ 2]  720 	addw	x, #0x0008
                                    721 ; genPointerGet
      00EAAE F6               [ 1]  722 	ld	a, (x)
                                    723 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 570: if (NewState != DISABLE)
                                    724 ; genIfx
      00EAAF 0D 01            [ 1]  725 	tnz	(0x01, sp)
                                    726 ; peephole j5 changed absolute to relative unconditional jump.
      00EAB1 27 05            [ 1]  727 	jreq	00102$
                                    728 ; peephole j10 removed jra by using inverse jump logic
                                    729 ; peephole j30 removed unused label 00113$.
                                    730 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 572: USARTx->CR5 |= USART_CR5_HDSEL;  /**< USART Half Duplex Enable  */
                                    731 ; genOr
      00EAB3 AA 08            [ 1]  732 	or	a, #0x08
                                    733 ; genPointerSet
      00EAB5 F7               [ 1]  734 	ld	(x), a
                                    735 ; genGoto
      00EAB6 20 03            [ 2]  736 	jra	00104$
                                    737 ; peephole j5 changed absolute to relative unconditional jump.
                                    738 ; genLabel
      00EAB8                        739 00102$:
                                    740 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 576: USARTx->CR5 &= (uint8_t)~USART_CR5_HDSEL; /**< USART Half Duplex Disable */
                                    741 ; genAnd
      00EAB8 A4 F7            [ 1]  742 	and	a, #0xf7
                                    743 ; genPointerSet
      00EABA F7               [ 1]  744 	ld	(x), a
                                    745 ; genLabel
      00EABB                        746 00104$:
                                    747 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 578: }
                                    748 ; genEndFunction
      00EABB 84               [ 1]  749 	pop	a
      00EABC 81               [ 4]  750 	ret
                                    751 ;	Total USART_HalfDuplexCmd function size at codegen: 2 bytes.
                                    752 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 644: void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState)
                                    753 ; genLabel
                                    754 ;	-----------------------------------------
                                    755 ;	 function USART_SmartCardCmd
                                    756 ;	-----------------------------------------
                                    757 ;	Register assignment might be sub-optimal.
                                    758 ;	Stack space usage: 1 bytes.
      00EABD                        759 _USART_SmartCardCmd:
      00EABD 88               [ 1]  760 	push	a
                                    761 ; genReceive
                                    762 ; genReceive
      00EABE 6B 01            [ 1]  763 	ld	(0x01, sp), a
                                    764 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 651: USARTx->CR5 |= USART_CR5_SCEN;
                                    765 ; genPlus
      00EAC0 1C 00 08         [ 2]  766 	addw	x, #0x0008
                                    767 ; genPointerGet
      00EAC3 F6               [ 1]  768 	ld	a, (x)
                                    769 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 648: if (NewState != DISABLE)
                                    770 ; genIfx
      00EAC4 0D 01            [ 1]  771 	tnz	(0x01, sp)
                                    772 ; peephole j5 changed absolute to relative unconditional jump.
      00EAC6 27 05            [ 1]  773 	jreq	00102$
                                    774 ; peephole j10 removed jra by using inverse jump logic
                                    775 ; peephole j30 removed unused label 00113$.
                                    776 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 651: USARTx->CR5 |= USART_CR5_SCEN;
                                    777 ; genOr
      00EAC8 AA 20            [ 1]  778 	or	a, #0x20
                                    779 ; genPointerSet
      00EACA F7               [ 1]  780 	ld	(x), a
                                    781 ; genGoto
      00EACB 20 03            [ 2]  782 	jra	00104$
                                    783 ; peephole j5 changed absolute to relative unconditional jump.
                                    784 ; genLabel
      00EACD                        785 00102$:
                                    786 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 656: USARTx->CR5 &= ((uint8_t)(~USART_CR5_SCEN));
                                    787 ; genAnd
      00EACD A4 DF            [ 1]  788 	and	a, #0xdf
                                    789 ; genPointerSet
      00EACF F7               [ 1]  790 	ld	(x), a
                                    791 ; genLabel
      00EAD0                        792 00104$:
                                    793 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 658: }
                                    794 ; genEndFunction
      00EAD0 84               [ 1]  795 	pop	a
      00EAD1 81               [ 4]  796 	ret
                                    797 ;	Total USART_SmartCardCmd function size at codegen: 2 bytes.
                                    798 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 667: void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState)
                                    799 ; genLabel
                                    800 ;	-----------------------------------------
                                    801 ;	 function USART_SmartCardNACKCmd
                                    802 ;	-----------------------------------------
                                    803 ;	Register assignment might be sub-optimal.
                                    804 ;	Stack space usage: 1 bytes.
      00EAD2                        805 _USART_SmartCardNACKCmd:
      00EAD2 88               [ 1]  806 	push	a
                                    807 ; genReceive
                                    808 ; genReceive
      00EAD3 6B 01            [ 1]  809 	ld	(0x01, sp), a
                                    810 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 674: USARTx->CR5 |= USART_CR5_NACK;
                                    811 ; genPlus
      00EAD5 1C 00 08         [ 2]  812 	addw	x, #0x0008
                                    813 ; genPointerGet
      00EAD8 F6               [ 1]  814 	ld	a, (x)
                                    815 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 671: if (NewState != DISABLE)
                                    816 ; genIfx
      00EAD9 0D 01            [ 1]  817 	tnz	(0x01, sp)
                                    818 ; peephole j5 changed absolute to relative unconditional jump.
      00EADB 27 05            [ 1]  819 	jreq	00102$
                                    820 ; peephole j10 removed jra by using inverse jump logic
                                    821 ; peephole j30 removed unused label 00113$.
                                    822 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 674: USARTx->CR5 |= USART_CR5_NACK;
                                    823 ; genOr
      00EADD AA 10            [ 1]  824 	or	a, #0x10
                                    825 ; genPointerSet
      00EADF F7               [ 1]  826 	ld	(x), a
                                    827 ; genGoto
      00EAE0 20 03            [ 2]  828 	jra	00104$
                                    829 ; peephole j5 changed absolute to relative unconditional jump.
                                    830 ; genLabel
      00EAE2                        831 00102$:
                                    832 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 679: USARTx->CR5 &= ((uint8_t)~(USART_CR5_NACK));
                                    833 ; genAnd
      00EAE2 A4 EF            [ 1]  834 	and	a, #0xef
                                    835 ; genPointerSet
      00EAE4 F7               [ 1]  836 	ld	(x), a
                                    837 ; genLabel
      00EAE5                        838 00104$:
                                    839 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 681: }
                                    840 ; genEndFunction
      00EAE5 84               [ 1]  841 	pop	a
      00EAE6 81               [ 4]  842 	ret
                                    843 ;	Total USART_SmartCardNACKCmd function size at codegen: 2 bytes.
                                    844 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 690: void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime)
                                    845 ; genLabel
                                    846 ;	-----------------------------------------
                                    847 ;	 function USART_SetGuardTime
                                    848 ;	-----------------------------------------
                                    849 ;	Register assignment might be sub-optimal.
                                    850 ;	Stack space usage: 0 bytes.
      00EAE7                        851 _USART_SetGuardTime:
                                    852 ; genReceive
                                    853 ; genReceive
                                    854 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 693: USARTx->GTR = USART_GuardTime;
                                    855 ; genPlus
      00EAE7 1C 00 09         [ 2]  856 	addw	x, #0x0009
                                    857 ; genPointerSet
      00EAEA F7               [ 1]  858 	ld	(x), a
                                    859 ; genLabel
                                    860 ; peephole j30 removed unused label 00101$.
                                    861 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 694: }
                                    862 ; genEndFunction
      00EAEB 81               [ 4]  863 	ret
                                    864 ;	Total USART_SetGuardTime function size at codegen: 1 bytes.
                                    865 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 751: void USART_IrDAConfig(USART_TypeDef* USARTx, USART_IrDAMode_TypeDef USART_IrDAMode)
                                    866 ; genLabel
                                    867 ;	-----------------------------------------
                                    868 ;	 function USART_IrDAConfig
                                    869 ;	-----------------------------------------
                                    870 ;	Register assignment might be sub-optimal.
                                    871 ;	Stack space usage: 1 bytes.
      00EAEC                        872 _USART_IrDAConfig:
      00EAEC 88               [ 1]  873 	push	a
                                    874 ; genReceive
                                    875 ; genReceive
      00EAED 6B 01            [ 1]  876 	ld	(0x01, sp), a
                                    877 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 757: USARTx->CR5 |= USART_CR5_IRLP;
                                    878 ; genPlus
      00EAEF 1C 00 08         [ 2]  879 	addw	x, #0x0008
                                    880 ; genPointerGet
      00EAF2 F6               [ 1]  881 	ld	a, (x)
                                    882 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 755: if (USART_IrDAMode != USART_IrDAMode_Normal)
                                    883 ; genIfx
      00EAF3 0D 01            [ 1]  884 	tnz	(0x01, sp)
                                    885 ; peephole j5 changed absolute to relative unconditional jump.
      00EAF5 27 05            [ 1]  886 	jreq	00102$
                                    887 ; peephole j10 removed jra by using inverse jump logic
                                    888 ; peephole j30 removed unused label 00113$.
                                    889 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 757: USARTx->CR5 |= USART_CR5_IRLP;
                                    890 ; genOr
      00EAF7 AA 04            [ 1]  891 	or	a, #0x04
                                    892 ; genPointerSet
      00EAF9 F7               [ 1]  893 	ld	(x), a
                                    894 ; genGoto
      00EAFA 20 03            [ 2]  895 	jra	00104$
                                    896 ; peephole j5 changed absolute to relative unconditional jump.
                                    897 ; genLabel
      00EAFC                        898 00102$:
                                    899 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 761: USARTx->CR5 &= ((uint8_t)~USART_CR5_IRLP);
                                    900 ; genAnd
      00EAFC A4 FB            [ 1]  901 	and	a, #0xfb
                                    902 ; genPointerSet
      00EAFE F7               [ 1]  903 	ld	(x), a
                                    904 ; genLabel
      00EAFF                        905 00104$:
                                    906 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 763: }
                                    907 ; genEndFunction
      00EAFF 84               [ 1]  908 	pop	a
      00EB00 81               [ 4]  909 	ret
                                    910 ;	Total USART_IrDAConfig function size at codegen: 2 bytes.
                                    911 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 772: void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState)
                                    912 ; genLabel
                                    913 ;	-----------------------------------------
                                    914 ;	 function USART_IrDACmd
                                    915 ;	-----------------------------------------
                                    916 ;	Register assignment might be sub-optimal.
                                    917 ;	Stack space usage: 1 bytes.
      00EB01                        918 _USART_IrDACmd:
      00EB01 88               [ 1]  919 	push	a
                                    920 ; genReceive
                                    921 ; genReceive
      00EB02 6B 01            [ 1]  922 	ld	(0x01, sp), a
                                    923 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 781: USARTx->CR5 |= USART_CR5_IREN;
                                    924 ; genPlus
      00EB04 1C 00 08         [ 2]  925 	addw	x, #0x0008
                                    926 ; genPointerGet
      00EB07 F6               [ 1]  927 	ld	a, (x)
                                    928 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 778: if (NewState != DISABLE)
                                    929 ; genIfx
      00EB08 0D 01            [ 1]  930 	tnz	(0x01, sp)
                                    931 ; peephole j5 changed absolute to relative unconditional jump.
      00EB0A 27 05            [ 1]  932 	jreq	00102$
                                    933 ; peephole j10 removed jra by using inverse jump logic
                                    934 ; peephole j30 removed unused label 00113$.
                                    935 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 781: USARTx->CR5 |= USART_CR5_IREN;
                                    936 ; genOr
      00EB0C AA 02            [ 1]  937 	or	a, #0x02
                                    938 ; genPointerSet
      00EB0E F7               [ 1]  939 	ld	(x), a
                                    940 ; genGoto
      00EB0F 20 03            [ 2]  941 	jra	00104$
                                    942 ; peephole j5 changed absolute to relative unconditional jump.
                                    943 ; genLabel
      00EB11                        944 00102$:
                                    945 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 786: USARTx->CR5 &= ((uint8_t)~USART_CR5_IREN);
                                    946 ; genAnd
      00EB11 A4 FD            [ 1]  947 	and	a, #0xfd
                                    948 ; genPointerSet
      00EB13 F7               [ 1]  949 	ld	(x), a
                                    950 ; genLabel
      00EB14                        951 00104$:
                                    952 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 788: }
                                    953 ; genEndFunction
      00EB14 84               [ 1]  954 	pop	a
      00EB15 81               [ 4]  955 	ret
                                    956 ;	Total USART_IrDACmd function size at codegen: 2 bytes.
                                    957 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 818: void USART_DMACmd(USART_TypeDef* USARTx, USART_DMAReq_TypeDef USART_DMAReq,
                                    958 ; genLabel
                                    959 ;	-----------------------------------------
                                    960 ;	 function USART_DMACmd
                                    961 ;	-----------------------------------------
                                    962 ;	Register assignment might be sub-optimal.
                                    963 ;	Stack space usage: 1 bytes.
      00EB16                        964 _USART_DMACmd:
      00EB16 88               [ 1]  965 	push	a
                                    966 ; genReceive
                                    967 ; genReceive
                                    968 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 829: USARTx->CR5 |= (uint8_t) USART_DMAReq;
                                    969 ; genPlus
      00EB17 1C 00 08         [ 2]  970 	addw	x, #0x0008
                                    971 ; genPointerGet
      00EB1A 88               [ 1]  972 	push	a
      00EB1B F6               [ 1]  973 	ld	a, (x)
      00EB1C 6B 02            [ 1]  974 	ld	(0x02, sp), a
      00EB1E 84               [ 1]  975 	pop	a
                                    976 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 825: if (NewState != DISABLE)
                                    977 ; genIfx
      00EB1F 0D 04            [ 1]  978 	tnz	(0x04, sp)
                                    979 ; peephole j5 changed absolute to relative unconditional jump.
      00EB21 27 05            [ 1]  980 	jreq	00102$
                                    981 ; peephole j10 removed jra by using inverse jump logic
                                    982 ; peephole j30 removed unused label 00113$.
                                    983 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 829: USARTx->CR5 |= (uint8_t) USART_DMAReq;
                                    984 ; genOr
      00EB23 1A 01            [ 1]  985 	or	a, (0x01, sp)
                                    986 ; genPointerSet
      00EB25 F7               [ 1]  987 	ld	(x), a
                                    988 ; genGoto
      00EB26 20 04            [ 2]  989 	jra	00104$
                                    990 ; peephole j5 changed absolute to relative unconditional jump.
                                    991 ; genLabel
      00EB28                        992 00102$:
                                    993 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 835: USARTx->CR5 &= (uint8_t)~USART_DMAReq;
                                    994 ; genCpl
      00EB28 43               [ 1]  995 	cpl	a
                                    996 ; genAnd
      00EB29 14 01            [ 1]  997 	and	a, (0x01, sp)
                                    998 ; genPointerSet
      00EB2B F7               [ 1]  999 	ld	(x), a
                                   1000 ; genLabel
      00EB2C                       1001 00104$:
                                   1002 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 837: }
                                   1003 ; genEndFunction
      00EB2C 84               [ 1] 1004 	pop	a
      00EB2D 85               [ 2] 1005 	popw	x
      00EB2E 84               [ 1] 1006 	pop	a
      00EB2F FC               [ 2] 1007 	jp	(x)
                                   1008 ;	Total USART_DMACmd function size at codegen: 4 bytes.
                                   1009 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 939: void USART_ITConfig(USART_TypeDef* USARTx, USART_IT_TypeDef USART_IT, FunctionalState NewState)
                                   1010 ; genLabel
                                   1011 ;	-----------------------------------------
                                   1012 ;	 function USART_ITConfig
                                   1013 ;	-----------------------------------------
                                   1014 ;	Register assignment might be sub-optimal.
                                   1015 ;	Stack space usage: 9 bytes.
      00EB30                       1016 _USART_ITConfig:
      00EB30 52 09            [ 2] 1017 	sub	sp, #9
                                   1018 ; genReceive
      00EB32 1F 08            [ 2] 1019 	ldw	(0x08, sp), x
                                   1020 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 946: usartreg = (uint8_t)((uint16_t)USART_IT >> 0x08);
                                   1021 ; genCast
                                   1022 ; genAssign
      00EB34 1E 0C            [ 2] 1023 	ldw	x, (0x0c, sp)
                                   1024 ; genGetByte
                                   1025 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 948: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)USART_IT & (uint8_t)0x0F));
                                   1026 ; genCast
                                   1027 ; genAssign
      00EB36 7B 0D            [ 1] 1028 	ld	a, (0x0d, sp)
                                   1029 ; genAnd
      00EB38 A4 0F            [ 1] 1030 	and	a, #0x0f
                                   1031 ; genLeftShift
      00EB3A 88               [ 1] 1032 	push	a
      00EB3B A6 01            [ 1] 1033 	ld	a, #0x01
      00EB3D 6B 08            [ 1] 1034 	ld	(0x08, sp), a
      00EB3F 84               [ 1] 1035 	pop	a
      00EB40 4D               [ 1] 1036 	tnz	a
      00EB41 27 05            [ 1] 1037 	jreq	00154$
      00EB43                       1038 00153$:
      00EB43 08 07            [ 1] 1039 	sll	(0x07, sp)
      00EB45 4A               [ 1] 1040 	dec	a
      00EB46 26 FB            [ 1] 1041 	jrne	00153$
      00EB48                       1042 00154$:
                                   1043 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 953: if (usartreg == 0x01)
                                   1044 ; genCmpEQorNE
      00EB48 9E               [ 1] 1045 	ld	a, xh
      00EB49 4A               [ 1] 1046 	dec	a
      00EB4A 26 05            [ 1] 1047 	jrne	00156$
      00EB4C A6 01            [ 1] 1048 	ld	a, #0x01
      00EB4E 6B 01            [ 1] 1049 	ld	(0x01, sp), a
                                   1050 ; peephole j5 changed absolute to relative unconditional jump.
      00EB50 C5                    1051 	.byte 0xc5
                                   1052 ; peephole jrf7 used bcp opcode to jump over 2-byte instruction.
      00EB51                       1053 00156$:
      00EB51 0F 01            [ 1] 1054 	clr	(0x01, sp)
      00EB53                       1055 00157$:
                                   1056 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 955: USARTx->CR1 |= itpos;
                                   1057 ; genPlus
      00EB53 16 08            [ 2] 1058 	ldw	y, (0x08, sp)
      00EB55 72 A9 00 04      [ 2] 1059 	addw	y, #0x0004
      00EB59 17 02            [ 2] 1060 	ldw	(0x02, sp), y
                                   1061 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 957: else if (usartreg == 0x05)
                                   1062 ; genCmpEQorNE
      00EB5B 9E               [ 1] 1063 	ld	a, xh
      00EB5C A0 05            [ 1] 1064 	sub	a, #0x05
      00EB5E 26 04            [ 1] 1065 	jrne	00159$
      00EB60 4C               [ 1] 1066 	inc	a
                                   1067 ; peephole 51 used inc to get #1 into a.
      00EB61 6B 04            [ 1] 1068 	ld	(0x04, sp), a
                                   1069 ; peephole j5 changed absolute to relative unconditional jump.
      00EB63 C5                    1070 	.byte 0xc5
                                   1071 ; peephole jrf7 used bcp opcode to jump over 2-byte instruction.
      00EB64                       1072 00159$:
      00EB64 0F 04            [ 1] 1073 	clr	(0x04, sp)
      00EB66                       1074 00160$:
                                   1075 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 959: USARTx->CR5 |= itpos;
                                   1076 ; genPlus
      00EB66 1E 08            [ 2] 1077 	ldw	x, (0x08, sp)
      00EB68 1C 00 08         [ 2] 1078 	addw	x, #0x0008
      00EB6B 1F 05            [ 2] 1079 	ldw	(0x05, sp), x
                                   1080 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 964: USARTx->CR2 |= itpos;
                                   1081 ; genPlus
      00EB6D 1E 08            [ 2] 1082 	ldw	x, (0x08, sp)
      00EB6F 1C 00 05         [ 2] 1083 	addw	x, #0x0005
                                   1084 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 950: if (NewState != DISABLE)
                                   1085 ; genIfx
      00EB72 0D 0E            [ 1] 1086 	tnz	(0x0e, sp)
                                   1087 ; peephole j5 changed absolute to relative unconditional jump.
      00EB74 27 22            [ 1] 1088 	jreq	00114$
                                   1089 ; peephole j10 removed jra by using inverse jump logic
                                   1090 ; peephole j30 removed unused label 00161$.
                                   1091 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 953: if (usartreg == 0x01)
                                   1092 ; genIfx
      00EB76 0D 01            [ 1] 1093 	tnz	(0x01, sp)
                                   1094 ; peephole j5 changed absolute to relative unconditional jump.
      00EB78 27 0A            [ 1] 1095 	jreq	00105$
                                   1096 ; peephole j10 removed jra by using inverse jump logic
                                   1097 ; peephole j30 removed unused label 00162$.
                                   1098 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 955: USARTx->CR1 |= itpos;
                                   1099 ; genPointerGet
      00EB7A 1E 02            [ 2] 1100 	ldw	x, (0x02, sp)
      00EB7C F6               [ 1] 1101 	ld	a, (x)
                                   1102 ; genOr
      00EB7D 1A 07            [ 1] 1103 	or	a, (0x07, sp)
                                   1104 ; genPointerSet
      00EB7F 1E 02            [ 2] 1105 	ldw	x, (0x02, sp)
      00EB81 F7               [ 1] 1106 	ld	(x), a
                                   1107 ; genGoto
      00EB82 20 36            [ 2] 1108 	jra	00116$
                                   1109 ; peephole j5 changed absolute to relative unconditional jump.
                                   1110 ; genLabel
      00EB84                       1111 00105$:
                                   1112 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 957: else if (usartreg == 0x05)
                                   1113 ; genIfx
      00EB84 0D 04            [ 1] 1114 	tnz	(0x04, sp)
                                   1115 ; peephole j5 changed absolute to relative unconditional jump.
      00EB86 27 0A            [ 1] 1116 	jreq	00102$
                                   1117 ; peephole j10 removed jra by using inverse jump logic
                                   1118 ; peephole j30 removed unused label 00163$.
                                   1119 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 959: USARTx->CR5 |= itpos;
                                   1120 ; genPointerGet
      00EB88 1E 05            [ 2] 1121 	ldw	x, (0x05, sp)
      00EB8A F6               [ 1] 1122 	ld	a, (x)
                                   1123 ; genOr
      00EB8B 1A 07            [ 1] 1124 	or	a, (0x07, sp)
                                   1125 ; genPointerSet
      00EB8D 1E 05            [ 2] 1126 	ldw	x, (0x05, sp)
      00EB8F F7               [ 1] 1127 	ld	(x), a
                                   1128 ; genGoto
      00EB90 20 28            [ 2] 1129 	jra	00116$
                                   1130 ; peephole j5 changed absolute to relative unconditional jump.
                                   1131 ; genLabel
      00EB92                       1132 00102$:
                                   1133 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 964: USARTx->CR2 |= itpos;
                                   1134 ; genPointerGet
      00EB92 F6               [ 1] 1135 	ld	a, (x)
                                   1136 ; genOr
      00EB93 1A 07            [ 1] 1137 	or	a, (0x07, sp)
                                   1138 ; genPointerSet
      00EB95 F7               [ 1] 1139 	ld	(x), a
                                   1140 ; genGoto
      00EB96 20 22            [ 2] 1141 	jra	00116$
                                   1142 ; peephole j5 changed absolute to relative unconditional jump.
                                   1143 ; genLabel
      00EB98                       1144 00114$:
                                   1145 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 972: USARTx->CR1 &= (uint8_t)(~itpos);
                                   1146 ; genCpl
      00EB98 03 07            [ 1] 1147 	cpl	(0x07, sp)
                                   1148 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 970: if (usartreg == 0x01)
                                   1149 ; genIfx
      00EB9A 0D 01            [ 1] 1150 	tnz	(0x01, sp)
                                   1151 ; peephole j5 changed absolute to relative unconditional jump.
      00EB9C 27 0A            [ 1] 1152 	jreq	00111$
                                   1153 ; peephole j10 removed jra by using inverse jump logic
                                   1154 ; peephole j30 removed unused label 00164$.
                                   1155 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 972: USARTx->CR1 &= (uint8_t)(~itpos);
                                   1156 ; genPointerGet
      00EB9E 1E 02            [ 2] 1157 	ldw	x, (0x02, sp)
      00EBA0 F6               [ 1] 1158 	ld	a, (x)
                                   1159 ; genAnd
      00EBA1 14 07            [ 1] 1160 	and	a, (0x07, sp)
                                   1161 ; genPointerSet
      00EBA3 1E 02            [ 2] 1162 	ldw	x, (0x02, sp)
      00EBA5 F7               [ 1] 1163 	ld	(x), a
                                   1164 ; genGoto
      00EBA6 20 12            [ 2] 1165 	jra	00116$
                                   1166 ; peephole j5 changed absolute to relative unconditional jump.
                                   1167 ; genLabel
      00EBA8                       1168 00111$:
                                   1169 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 974: else if (usartreg == 0x05)
                                   1170 ; genIfx
      00EBA8 0D 04            [ 1] 1171 	tnz	(0x04, sp)
                                   1172 ; peephole j5 changed absolute to relative unconditional jump.
      00EBAA 27 0A            [ 1] 1173 	jreq	00108$
                                   1174 ; peephole j10 removed jra by using inverse jump logic
                                   1175 ; peephole j30 removed unused label 00165$.
                                   1176 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 976: USARTx->CR5 &= (uint8_t)(~itpos);
                                   1177 ; genPointerGet
      00EBAC 1E 05            [ 2] 1178 	ldw	x, (0x05, sp)
      00EBAE F6               [ 1] 1179 	ld	a, (x)
                                   1180 ; genAnd
      00EBAF 14 07            [ 1] 1181 	and	a, (0x07, sp)
                                   1182 ; genPointerSet
      00EBB1 1E 05            [ 2] 1183 	ldw	x, (0x05, sp)
      00EBB3 F7               [ 1] 1184 	ld	(x), a
                                   1185 ; genGoto
      00EBB4 20 04            [ 2] 1186 	jra	00116$
                                   1187 ; peephole j5 changed absolute to relative unconditional jump.
                                   1188 ; genLabel
      00EBB6                       1189 00108$:
                                   1190 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 981: USARTx->CR2 &= (uint8_t)(~itpos);
                                   1191 ; genPointerGet
      00EBB6 F6               [ 1] 1192 	ld	a, (x)
                                   1193 ; genAnd
      00EBB7 14 07            [ 1] 1194 	and	a, (0x07, sp)
                                   1195 ; genPointerSet
      00EBB9 F7               [ 1] 1196 	ld	(x), a
                                   1197 ; genLabel
      00EBBA                       1198 00116$:
                                   1199 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 984: }
                                   1200 ; genEndFunction
      00EBBA 1E 0A            [ 2] 1201 	ldw	x, (10, sp)
      00EBBC 5B 0E            [ 2] 1202 	addw	sp, #14
      00EBBE FC               [ 2] 1203 	jp	(x)
                                   1204 ;	Total USART_ITConfig function size at codegen: 5 bytes.
                                   1205 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1002: FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, USART_FLAG_TypeDef USART_FLAG)
                                   1206 ; genLabel
                                   1207 ;	-----------------------------------------
                                   1208 ;	 function USART_GetFlagStatus
                                   1209 ;	-----------------------------------------
                                   1210 ;	Register assignment might be sub-optimal.
                                   1211 ;	Stack space usage: 1 bytes.
      00EBBF                       1212 _USART_GetFlagStatus:
      00EBBF 88               [ 1] 1213 	push	a
                                   1214 ; genReceive
                                   1215 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1009: if (USART_FLAG == USART_FLAG_SBK)
                                   1216 ; genCast
                                   1217 ; genAssign
      00EBC0 16 04            [ 2] 1218 	ldw	y, (0x04, sp)
                                   1219 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1011: if ((USARTx->CR2 & (uint8_t)USART_FLAG) != (uint8_t)0x00)
                                   1220 ; genCast
                                   1221 ; genAssign
      00EBC2 7B 05            [ 1] 1222 	ld	a, (0x05, sp)
      00EBC4 6B 01            [ 1] 1223 	ld	(0x01, sp), a
                                   1224 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1009: if (USART_FLAG == USART_FLAG_SBK)
                                   1225 ; genCmpEQorNE
      00EBC6 90 A3 01 01      [ 2] 1226 	cpw	y, #0x0101
                                   1227 ; peephole j5 changed absolute to relative unconditional jump.
                                   1228 ; peephole j10 removed jra by using inverse jump logic
                                   1229 ; peephole j30 removed unused label 00134$.
                                   1230 ; peephole j5 changed absolute to relative unconditional jump.
      00EBCA 26 0D            [ 1] 1231 	jrne	00108$
                                   1232 ; peephole j7 removed jra by using inverse jump logic
                                   1233 ; peephole j30 removed unused label 00135$.
                                   1234 ; skipping generated iCode
                                   1235 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1011: if ((USARTx->CR2 & (uint8_t)USART_FLAG) != (uint8_t)0x00)
                                   1236 ; genAssign
                                   1237 ; genPointerGet
      00EBCC E6 05            [ 1] 1238 	ld	a, (0x5, x)
                                   1239 ; genAnd
                                   1240 ; genIfx
      00EBCE 14 01            [ 1] 1241 	and	a, (0x01, sp)
                                   1242 ; peephole 23 removed redundant tnz.
                                   1243 ; peephole j5 changed absolute to relative unconditional jump.
      00EBD0 27 04            [ 1] 1244 	jreq	00102$
                                   1245 ; peephole j10 removed jra by using inverse jump logic
                                   1246 ; peephole j30 removed unused label 00136$.
                                   1247 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1014: status = SET;
                                   1248 ; genAssign
      00EBD2 A6 01            [ 1] 1249 	ld	a, #0x01
                                   1250 ; genGoto
      00EBD4 20 0C            [ 2] 1251 	jra	00109$
                                   1252 ; peephole j5 changed absolute to relative unconditional jump.
                                   1253 ; genLabel
      00EBD6                       1254 00102$:
                                   1255 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1019: status = RESET;
                                   1256 ; genAssign
      00EBD6 4F               [ 1] 1257 	clr	a
                                   1258 ; genGoto
      00EBD7 20 09            [ 2] 1259 	jra	00109$
                                   1260 ; peephole j5 changed absolute to relative unconditional jump.
                                   1261 ; genLabel
      00EBD9                       1262 00108$:
                                   1263 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1024: if ((USARTx->SR & (uint8_t)USART_FLAG) != (uint8_t)0x00)
                                   1264 ; genPointerGet
      00EBD9 F6               [ 1] 1265 	ld	a, (x)
                                   1266 ; genAnd
                                   1267 ; genIfx
      00EBDA 14 01            [ 1] 1268 	and	a, (0x01, sp)
                                   1269 ; peephole 23 removed redundant tnz.
                                   1270 ; peephole j5 changed absolute to relative unconditional jump.
      00EBDC 27 03            [ 1] 1271 	jreq	00105$
                                   1272 ; peephole j10 removed jra by using inverse jump logic
                                   1273 ; peephole j30 removed unused label 00137$.
                                   1274 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1027: status = SET;
                                   1275 ; genAssign
      00EBDE A6 01            [ 1] 1276 	ld	a, #0x01
                                   1277 ; genGoto
                                   1278 ; peephole j5 changed absolute to relative unconditional jump.
                                   1279 ; genLabel
                                   1280 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1032: status = RESET;
                                   1281 ; genAssign
                                   1282 ; genLabel
      00EBE0 21                    1283 	.byte 0x21
                                   1284 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00EBE1                       1285 00105$:
      00EBE1 4F               [ 1] 1286 	clr	a
      00EBE2                       1287 00109$:
                                   1288 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1036: return status;
                                   1289 ; genReturn
                                   1290 ; genLabel
                                   1291 ; peephole j30 removed unused label 00110$.
                                   1292 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1037: }
                                   1293 ; genEndFunction
      00EBE2 1E 02            [ 2] 1294 	ldw	x, (2, sp)
      00EBE4 5B 05            [ 2] 1295 	addw	sp, #5
      00EBE6 FC               [ 2] 1296 	jp	(x)
                                   1297 ;	Total USART_GetFlagStatus function size at codegen: 5 bytes.
                                   1298 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1060: void USART_ClearFlag(USART_TypeDef* USARTx, USART_FLAG_TypeDef USART_FLAG)
                                   1299 ; genLabel
                                   1300 ;	-----------------------------------------
                                   1301 ;	 function USART_ClearFlag
                                   1302 ;	-----------------------------------------
                                   1303 ;	Register assignment might be sub-optimal.
                                   1304 ;	Stack space usage: 0 bytes.
      00EBE7                       1305 _USART_ClearFlag:
                                   1306 ; genReceive
                                   1307 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1065: USARTx->SR = (uint8_t)((uint16_t)~((uint16_t)USART_FLAG));
                                   1308 ; genCast
                                   1309 ; genAssign
                                   1310 ; genCast
                                   1311 ; genAssign
      00EBE7 16 03            [ 2] 1312 	ldw	y, (0x03, sp)
                                   1313 ; genCpl
      00EBE9 90 53            [ 2] 1314 	cplw	y
      00EBEB 90 9F            [ 1] 1315 	ld	a, yl
                                   1316 ; genCast
                                   1317 ; genAssign
                                   1318 ; genPointerSet
      00EBED F7               [ 1] 1319 	ld	(x), a
                                   1320 ; genLabel
                                   1321 ; peephole j30 removed unused label 00101$.
                                   1322 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1066: }
                                   1323 ; genEndFunction
      00EBEE 1E 01            [ 2] 1324 	ldw	x, (1, sp)
      00EBF0 5B 04            [ 2] 1325 	addw	sp, #4
      00EBF2 FC               [ 2] 1326 	jp	(x)
                                   1327 ;	Total USART_ClearFlag function size at codegen: 5 bytes.
                                   1328 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1083: ITStatus USART_GetITStatus(USART_TypeDef* USARTx, USART_IT_TypeDef USART_IT)
                                   1329 ; genLabel
                                   1330 ;	-----------------------------------------
                                   1331 ;	 function USART_GetITStatus
                                   1332 ;	-----------------------------------------
                                   1333 ;	Register assignment might be sub-optimal.
                                   1334 ;	Stack space usage: 9 bytes.
      00EBF3                       1335 _USART_GetITStatus:
      00EBF3 52 09            [ 2] 1336 	sub	sp, #9
                                   1337 ; genReceive
      00EBF5 1F 08            [ 2] 1338 	ldw	(0x08, sp), x
                                   1339 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1096: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)USART_IT & (uint8_t)0x0F));
                                   1340 ; genCast
                                   1341 ; genAssign
      00EBF7 7B 0D            [ 1] 1342 	ld	a, (0x0d, sp)
                                   1343 ; genAnd
      00EBF9 97               [ 1] 1344 	ld	xl, a
                                   1345 ; peephole 4 removed redundant load from xl into a.
      00EBFA A4 0F            [ 1] 1346 	and	a, #0x0f
                                   1347 ; genLeftShift
      00EBFC 88               [ 1] 1348 	push	a
      00EBFD A6 01            [ 1] 1349 	ld	a, #0x01
      00EBFF 6B 04            [ 1] 1350 	ld	(0x04, sp), a
      00EC01 84               [ 1] 1351 	pop	a
      00EC02 4D               [ 1] 1352 	tnz	a
      00EC03 27 05            [ 1] 1353 	jreq	00179$
      00EC05                       1354 00178$:
      00EC05 08 03            [ 1] 1355 	sll	(0x03, sp)
      00EC07 4A               [ 1] 1356 	dec	a
      00EC08 26 FB            [ 1] 1357 	jrne	00178$
      00EC0A                       1358 00179$:
                                   1359 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1098: itmask1 = (uint8_t)((uint8_t)USART_IT >> (uint8_t)4);
                                   1360 ; genRightShiftLiteral
      00EC0A 9F               [ 1] 1361 	ld	a, xl
      00EC0B 4E               [ 1] 1362 	swap	a
      00EC0C A4 0F            [ 1] 1363 	and	a, #0x0f
                                   1364 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1100: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
                                   1365 ; genLeftShift
      00EC0E 88               [ 1] 1366 	push	a
      00EC0F A6 01            [ 1] 1367 	ld	a, #0x01
      00EC11 6B 08            [ 1] 1368 	ld	(0x08, sp), a
      00EC13 84               [ 1] 1369 	pop	a
      00EC14 4D               [ 1] 1370 	tnz	a
      00EC15 27 05            [ 1] 1371 	jreq	00181$
      00EC17                       1372 00180$:
      00EC17 08 07            [ 1] 1373 	sll	(0x07, sp)
      00EC19 4A               [ 1] 1374 	dec	a
      00EC1A 26 FB            [ 1] 1375 	jrne	00180$
      00EC1C                       1376 00181$:
                                   1377 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1103: if (USART_IT == USART_IT_PE)
                                   1378 ; genCast
                                   1379 ; genAssign
      00EC1C 16 0C            [ 2] 1380 	ldw	y, (0x0c, sp)
      00EC1E 17 01            [ 2] 1381 	ldw	(0x01, sp), y
                                   1382 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1109: if (((USARTx->SR & itpos) != (uint8_t)0x00) && enablestatus)
                                   1383 ; genCast
                                   1384 ; genAssign
      00EC20 16 08            [ 2] 1385 	ldw	y, (0x08, sp)
      00EC22 17 04            [ 2] 1386 	ldw	(0x04, sp), y
                                   1387 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1103: if (USART_IT == USART_IT_PE)
                                   1388 ; genCmpEQorNE
      00EC24 1E 01            [ 2] 1389 	ldw	x, (0x01, sp)
      00EC26 A3 01 00         [ 2] 1390 	cpw	x, #0x0100
                                   1391 ; peephole j5 changed absolute to relative unconditional jump.
                                   1392 ; peephole j10 removed jra by using inverse jump logic
                                   1393 ; peephole j30 removed unused label 00183$.
                                   1394 ; peephole j5 changed absolute to relative unconditional jump.
      00EC29 26 1D            [ 1] 1395 	jrne	00118$
                                   1396 ; peephole j7 removed jra by using inverse jump logic
                                   1397 ; peephole j30 removed unused label 00184$.
                                   1398 ; skipping generated iCode
                                   1399 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1106: enablestatus = (uint8_t)((uint8_t)USARTx->CR1 & itmask2);
                                   1400 ; genAssign
      00EC2B 16 08            [ 2] 1401 	ldw	y, (0x08, sp)
                                   1402 ; genPointerGet
      00EC2D 17 01            [ 2] 1403 	ldw	(0x01, sp), y
      00EC2F 93               [ 1] 1404 	ldw	x, y
                                   1405 ; peephole 15 replaced load from (0x01, sp) into x by load from y into x.
      00EC30 E6 04            [ 1] 1406 	ld	a, (0x4, x)
                                   1407 ; genAnd
      00EC32 14 07            [ 1] 1408 	and	a, (0x07, sp)
      00EC34 6B 07            [ 1] 1409 	ld	(0x07, sp), a
                                   1410 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1109: if (((USARTx->SR & itpos) != (uint8_t)0x00) && enablestatus)
                                   1411 ; genPointerGet
      00EC36 1E 04            [ 2] 1412 	ldw	x, (0x04, sp)
      00EC38 F6               [ 1] 1413 	ld	a, (x)
                                   1414 ; genAnd
                                   1415 ; genIfx
      00EC39 14 03            [ 1] 1416 	and	a, (0x03, sp)
                                   1417 ; peephole 23 removed redundant tnz.
                                   1418 ; peephole j5 changed absolute to relative unconditional jump.
      00EC3B 27 08            [ 1] 1419 	jreq	00102$
                                   1420 ; peephole j10 removed jra by using inverse jump logic
                                   1421 ; peephole j30 removed unused label 00185$.
                                   1422 ; genIfx
      00EC3D 0D 07            [ 1] 1423 	tnz	(0x07, sp)
                                   1424 ; peephole j5 changed absolute to relative unconditional jump.
      00EC3F 27 04            [ 1] 1425 	jreq	00102$
                                   1426 ; peephole j10 removed jra by using inverse jump logic
                                   1427 ; peephole j30 removed unused label 00186$.
                                   1428 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1112: pendingbitstatus = SET;
                                   1429 ; genAssign
      00EC41 A6 01            [ 1] 1430 	ld	a, #0x01
                                   1431 ; genGoto
      00EC43 20 41            [ 2] 1432 	jra	00119$
                                   1433 ; peephole j5 changed absolute to relative unconditional jump.
                                   1434 ; genLabel
      00EC45                       1435 00102$:
                                   1436 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1117: pendingbitstatus = RESET;
                                   1437 ; genAssign
      00EC45 4F               [ 1] 1438 	clr	a
                                   1439 ; genGoto
      00EC46 20 3E            [ 2] 1440 	jra	00119$
                                   1441 ; peephole j5 changed absolute to relative unconditional jump.
                                   1442 ; genLabel
      00EC48                       1443 00118$:
                                   1444 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1124: enablestatus = (uint8_t)((uint8_t)USARTx->CR2 & itmask2);
                                   1445 ; genAssign
      00EC48 1E 08            [ 2] 1446 	ldw	x, (0x08, sp)
                                   1447 ; genPointerGet
      00EC4A E6 05            [ 1] 1448 	ld	a, (0x5, x)
                                   1449 ; genAnd
      00EC4C 14 07            [ 1] 1450 	and	a, (0x07, sp)
                                   1451 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1121: else if (USART_IT == USART_IT_OR)
                                   1452 ; genCmpEQorNE
      00EC4E 1E 01            [ 2] 1453 	ldw	x, (0x01, sp)
      00EC50 A3 02 35         [ 2] 1454 	cpw	x, #0x0235
                                   1455 ; peephole j5 changed absolute to relative unconditional jump.
                                   1456 ; peephole j10 removed jra by using inverse jump logic
                                   1457 ; peephole j30 removed unused label 00188$.
                                   1458 ; peephole j5 changed absolute to relative unconditional jump.
      00EC53 26 20            [ 1] 1459 	jrne	00115$
                                   1460 ; peephole j7 removed jra by using inverse jump logic
                                   1461 ; peephole j30 removed unused label 00189$.
                                   1462 ; skipping generated iCode
                                   1463 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1124: enablestatus = (uint8_t)((uint8_t)USARTx->CR2 & itmask2);
                                   1464 ; genAssign
      00EC55 6B 06            [ 1] 1465 	ld	(0x06, sp), a
                                   1466 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1127: temp = (uint8_t)(USARTx->CR5 & USART_CR5_EIE);
                                   1467 ; genAssign
      00EC57 1E 08            [ 2] 1468 	ldw	x, (0x08, sp)
                                   1469 ; genPointerGet
      00EC59 E6 08            [ 1] 1470 	ld	a, (0x8, x)
                                   1471 ; genAnd
      00EC5B A4 01            [ 1] 1472 	and	a, #0x01
      00EC5D 6B 07            [ 1] 1473 	ld	(0x07, sp), a
                                   1474 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1129: if (( (USARTx->SR & itpos) != 0x00) && ((enablestatus || temp)))
                                   1475 ; genPointerGet
      00EC5F 1E 04            [ 2] 1476 	ldw	x, (0x04, sp)
      00EC61 F6               [ 1] 1477 	ld	a, (x)
                                   1478 ; genAnd
                                   1479 ; genIfx
      00EC62 14 03            [ 1] 1480 	and	a, (0x03, sp)
                                   1481 ; peephole 23 removed redundant tnz.
                                   1482 ; peephole j5 changed absolute to relative unconditional jump.
      00EC64 27 0C            [ 1] 1483 	jreq	00106$
                                   1484 ; peephole j10 removed jra by using inverse jump logic
                                   1485 ; peephole j30 removed unused label 00190$.
                                   1486 ; genIfx
      00EC66 0D 06            [ 1] 1487 	tnz	(0x06, sp)
                                   1488 ; peephole j5 changed absolute to relative unconditional jump.
      00EC68 26 04            [ 1] 1489 	jrne	00105$
                                   1490 ; peephole j7 removed jra by using inverse jump logic
                                   1491 ; peephole j30 removed unused label 00191$.
                                   1492 ; genIfx
      00EC6A 0D 07            [ 1] 1493 	tnz	(0x07, sp)
                                   1494 ; peephole j5 changed absolute to relative unconditional jump.
      00EC6C 27 04            [ 1] 1495 	jreq	00106$
                                   1496 ; peephole j10 removed jra by using inverse jump logic
                                   1497 ; peephole j30 removed unused label 00192$.
                                   1498 ; genLabel
      00EC6E                       1499 00105$:
                                   1500 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1132: pendingbitstatus = SET;
                                   1501 ; genAssign
      00EC6E A6 01            [ 1] 1502 	ld	a, #0x01
                                   1503 ; genGoto
      00EC70 20 14            [ 2] 1504 	jra	00119$
                                   1505 ; peephole j5 changed absolute to relative unconditional jump.
                                   1506 ; genLabel
      00EC72                       1507 00106$:
                                   1508 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1137: pendingbitstatus = RESET;
                                   1509 ; genAssign
      00EC72 4F               [ 1] 1510 	clr	a
                                   1511 ; genGoto
      00EC73 20 11            [ 2] 1512 	jra	00119$
                                   1513 ; peephole j5 changed absolute to relative unconditional jump.
                                   1514 ; genLabel
      00EC75                       1515 00115$:
                                   1516 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1144: enablestatus = (uint8_t)((uint8_t)USARTx->CR2 & itmask2);
                                   1517 ; genAssign
      00EC75 6B 07            [ 1] 1518 	ld	(0x07, sp), a
                                   1519 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1146: if (((USARTx->SR & itpos) != (uint8_t)0x00) && enablestatus)
                                   1520 ; genPointerGet
      00EC77 1E 04            [ 2] 1521 	ldw	x, (0x04, sp)
      00EC79 F6               [ 1] 1522 	ld	a, (x)
                                   1523 ; genAnd
                                   1524 ; genIfx
      00EC7A 14 03            [ 1] 1525 	and	a, (0x03, sp)
                                   1526 ; peephole 23 removed redundant tnz.
                                   1527 ; peephole j5 changed absolute to relative unconditional jump.
      00EC7C 27 07            [ 1] 1528 	jreq	00111$
                                   1529 ; peephole j10 removed jra by using inverse jump logic
                                   1530 ; peephole j30 removed unused label 00193$.
                                   1531 ; genIfx
      00EC7E 0D 07            [ 1] 1532 	tnz	(0x07, sp)
                                   1533 ; peephole j5 changed absolute to relative unconditional jump.
      00EC80 27 03            [ 1] 1534 	jreq	00111$
                                   1535 ; peephole j10 removed jra by using inverse jump logic
                                   1536 ; peephole j30 removed unused label 00194$.
                                   1537 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1149: pendingbitstatus = SET;
                                   1538 ; genAssign
      00EC82 A6 01            [ 1] 1539 	ld	a, #0x01
                                   1540 ; genGoto
                                   1541 ; peephole j5 changed absolute to relative unconditional jump.
                                   1542 ; genLabel
                                   1543 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1154: pendingbitstatus = RESET;
                                   1544 ; genAssign
                                   1545 ; genLabel
      00EC84 21                    1546 	.byte 0x21
                                   1547 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00EC85                       1548 00111$:
      00EC85 4F               [ 1] 1549 	clr	a
      00EC86                       1550 00119$:
                                   1551 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1159: return  pendingbitstatus;
                                   1552 ; genReturn
                                   1553 ; genLabel
                                   1554 ; peephole j30 removed unused label 00120$.
                                   1555 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1160: }
                                   1556 ; genEndFunction
      00EC86 1E 0A            [ 2] 1557 	ldw	x, (10, sp)
      00EC88 5B 0D            [ 2] 1558 	addw	sp, #13
      00EC8A FC               [ 2] 1559 	jp	(x)
                                   1560 ;	Total USART_GetITStatus function size at codegen: 5 bytes.
                                   1561 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1183: void USART_ClearITPendingBit(USART_TypeDef* USARTx, USART_IT_TypeDef USART_IT)
                                   1562 ; genLabel
                                   1563 ;	-----------------------------------------
                                   1564 ;	 function USART_ClearITPendingBit
                                   1565 ;	-----------------------------------------
                                   1566 ;	Register assignment might be sub-optimal.
                                   1567 ;	Stack space usage: 0 bytes.
      00EC8B                       1568 _USART_ClearITPendingBit:
                                   1569 ; genReceive
                                   1570 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1188: USARTx->SR &= (uint8_t)(~USART_SR_TC);
                                   1571 ; genCast
                                   1572 ; genAssign
                                   1573 ; genPointerGet
      00EC8B F6               [ 1] 1574 	ld	a, (x)
                                   1575 ; genAnd
      00EC8C A4 BF            [ 1] 1576 	and	a, #0xbf
                                   1577 ; genPointerSet
      00EC8E F7               [ 1] 1578 	ld	(x), a
                                   1579 ; genLabel
                                   1580 ; peephole j30 removed unused label 00101$.
                                   1581 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_usart.c: 1189: }
                                   1582 ; genEndFunction
      00EC8F 1E 01            [ 2] 1583 	ldw	x, (1, sp)
      00EC91 5B 04            [ 2] 1584 	addw	sp, #4
      00EC93 FC               [ 2] 1585 	jp	(x)
                                   1586 ;	Total USART_ClearITPendingBit function size at codegen: 5 bytes.
                                   1587 	.area CODE
                                   1588 	.area CONST
                                   1589 	.area INITIALIZER
                                   1590 	.area CABS (ABS)
