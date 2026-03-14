                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8l15x_i2c
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _CLK_GetClockFreq
                                     11 	.globl _I2C_DeInit
                                     12 	.globl _I2C_Init
                                     13 	.globl _I2C_Cmd
                                     14 	.globl _I2C_GeneralCallCmd
                                     15 	.globl _I2C_GenerateSTART
                                     16 	.globl _I2C_GenerateSTOP
                                     17 	.globl _I2C_SoftwareResetCmd
                                     18 	.globl _I2C_StretchClockCmd
                                     19 	.globl _I2C_ARPCmd
                                     20 	.globl _I2C_AcknowledgeConfig
                                     21 	.globl _I2C_OwnAddress2Config
                                     22 	.globl _I2C_DualAddressCmd
                                     23 	.globl _I2C_AckPositionConfig
                                     24 	.globl _I2C_SMBusAlertConfig
                                     25 	.globl _I2C_FastModeDutyCycleConfig
                                     26 	.globl _I2C_Send7bitAddress
                                     27 	.globl _I2C_SendData
                                     28 	.globl _I2C_ReceiveData
                                     29 	.globl _I2C_TransmitPEC
                                     30 	.globl _I2C_CalculatePEC
                                     31 	.globl _I2C_PECPositionConfig
                                     32 	.globl _I2C_GetPEC
                                     33 	.globl _I2C_DMACmd
                                     34 	.globl _I2C_DMALastTransferCmd
                                     35 	.globl _I2C_ITConfig
                                     36 	.globl _I2C_ReadRegister
                                     37 	.globl _I2C_CheckEvent
                                     38 	.globl _I2C_GetLastEvent
                                     39 	.globl _I2C_GetFlagStatus
                                     40 	.globl _I2C_ClearFlag
                                     41 	.globl _I2C_GetITStatus
                                     42 	.globl _I2C_ClearITPendingBit
                                     43 ;--------------------------------------------------------
                                     44 ; ram data
                                     45 ;--------------------------------------------------------
                                     46 	.area DATA
                                     47 ;--------------------------------------------------------
                                     48 ; ram data
                                     49 ;--------------------------------------------------------
                                     50 	.area INITIALIZED
                                     51 ;--------------------------------------------------------
                                     52 ; absolute external ram data
                                     53 ;--------------------------------------------------------
                                     54 	.area DABS (ABS)
                                     55 
                                     56 ; default segment ordering for linker
                                     57 	.area HOME
                                     58 	.area GSINIT
                                     59 	.area GSFINAL
                                     60 	.area CONST
                                     61 	.area INITIALIZER
                                     62 	.area CODE
                                     63 
                                     64 ;--------------------------------------------------------
                                     65 ; global & static initialisations
                                     66 ;--------------------------------------------------------
                                     67 	.area HOME
                                     68 	.area GSINIT
                                     69 	.area GSFINAL
                                     70 	.area GSINIT
                                     71 ;--------------------------------------------------------
                                     72 ; Home
                                     73 ;--------------------------------------------------------
                                     74 	.area HOME
                                     75 	.area HOME
                                     76 ;--------------------------------------------------------
                                     77 ; code
                                     78 ;--------------------------------------------------------
                                     79 	.area CODE
                                     80 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 141: void I2C_DeInit(I2C_TypeDef* I2Cx)
                                     81 ; genLabel
                                     82 ;	-----------------------------------------
                                     83 ;	 function I2C_DeInit
                                     84 ;	-----------------------------------------
                                     85 ;	Register assignment might be sub-optimal.
                                     86 ;	Stack space usage: 0 bytes.
      00CED2                         87 _I2C_DeInit:
                                     88 ; genReceive
      00CED2 51               [ 1]   89 	exgw	x, y
                                     90 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 143: I2Cx->CR1 = I2C_CR1_RESET_VALUE;
                                     91 ; genPointerSet
      00CED3 90 7F            [ 1]   92 	clr	(y)
                                     93 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 144: I2Cx->CR2 = I2C_CR2_RESET_VALUE;
                                     94 ; genPlus
      00CED5 93               [ 1]   95 	ldw	x, y
                                     96 ; genPointerSet
                                     97 ; peephole 10j moved addition of offset into instruction
      00CED6 6F 01            [ 1]   98 	clr	(0x01, x)
                                     99 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 145: I2Cx->FREQR = I2C_FREQR_RESET_VALUE;
                                    100 ; genPlus
      00CED8 93               [ 1]  101 	ldw	x, y
                                    102 ; genPointerSet
                                    103 ; peephole 10i moved addition of offset into instruction
      00CED9 6F 02            [ 1]  104 	clr	(0x02, x)
                                    105 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 146: I2Cx->OARL = I2C_OARL_RESET_VALUE;
                                    106 ; genPlus
      00CEDB 93               [ 1]  107 	ldw	x, y
                                    108 ; genPointerSet
                                    109 ; peephole 9a moved addition of offset into clear instruction
      00CEDC 6F 03            [ 1]  110 	clr	(0x0003, x)
                                    111 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 147: I2Cx->OARH = I2C_OARH_RESET_VALUE;
                                    112 ; genPlus
      00CEDE 93               [ 1]  113 	ldw	x, y
                                    114 ; genPointerSet
                                    115 ; peephole 9a moved addition of offset into clear instruction
      00CEDF 6F 04            [ 1]  116 	clr	(0x0004, x)
                                    117 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 148: I2Cx->OAR2 = I2C_OAR2_RESET_VALUE;
                                    118 ; genPlus
      00CEE1 93               [ 1]  119 	ldw	x, y
                                    120 ; genPointerSet
                                    121 ; peephole 9a moved addition of offset into clear instruction
      00CEE2 6F 05            [ 1]  122 	clr	(0x0005, x)
                                    123 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 149: I2Cx->ITR = I2C_ITR_RESET_VALUE;
                                    124 ; genPlus
      00CEE4 93               [ 1]  125 	ldw	x, y
                                    126 ; genPointerSet
                                    127 ; peephole 9a moved addition of offset into clear instruction
      00CEE5 6F 0A            [ 1]  128 	clr	(0x000a, x)
                                    129 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 150: I2Cx->CCRL = I2C_CCRL_RESET_VALUE;
                                    130 ; genPlus
      00CEE7 93               [ 1]  131 	ldw	x, y
                                    132 ; genPointerSet
                                    133 ; peephole 9a moved addition of offset into clear instruction
      00CEE8 6F 0B            [ 1]  134 	clr	(0x000b, x)
                                    135 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 151: I2Cx->CCRH = I2C_CCRH_RESET_VALUE;
                                    136 ; genPlus
      00CEEA 93               [ 1]  137 	ldw	x, y
                                    138 ; genPointerSet
                                    139 ; peephole 9a moved addition of offset into clear instruction
      00CEEB 6F 0C            [ 1]  140 	clr	(0x000c, x)
                                    141 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 152: I2Cx->TRISER = I2C_TRISER_RESET_VALUE;
                                    142 ; genPlus
                                    143 ; genPointerSet
                                    144 ; peephole 9 moved addition of offset into storage instruction
                                    145 ; peephole 14c used y directly instead of going through x.
      00CEED A6 02            [ 1]  146 	ld	a, #0x02
      00CEEF 90 E7 0D         [ 1]  147 	ld	(0x000d, y), a
                                    148 ; genLabel
                                    149 ; peephole j30 removed unused label 00101$.
                                    150 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 153: }
                                    151 ; genEndFunction
      00CEF2 81               [ 4]  152 	ret
                                    153 ;	Total I2C_DeInit function size at codegen: 1 bytes.
                                    154 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 184: void I2C_Init(I2C_TypeDef* I2Cx, uint32_t OutputClockFrequency, uint16_t OwnAddress,
                                    155 ; genLabel
                                    156 ;	-----------------------------------------
                                    157 ;	 function I2C_Init
                                    158 ;	-----------------------------------------
                                    159 ;	Register assignment might be sub-optimal.
                                    160 ;	Stack space usage: 19 bytes.
      00CEF3                        161 _I2C_Init:
      00CEF3 52 13            [ 2]  162 	sub	sp, #19
                                    163 ; genReceive
      00CEF5 1F 12            [ 2]  164 	ldw	(0x12, sp), x
                                    165 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 190: uint8_t tmpccrh = 0;
                                    166 ; genAssign
      00CEF7 0F 11            [ 1]  167 	clr	(0x11, sp)
                                    168 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 203: input_clock = (uint8_t) (CLK_GetClockFreq() / 1000000);
                                    169 ; genCall
      00CEF9 CD C5 0E         [ 4]  170 	call	_CLK_GetClockFreq
                                    171 ; genIPush
      00CEFC 4B 40            [ 1]  172 	push	#0x40
      00CEFE 4B 42            [ 1]  173 	push	#0x42
      00CF00 4B 0F            [ 1]  174 	push	#0x0f
      00CF02 4B 00            [ 1]  175 	push	#0x00
                                    176 ; genIPush
      00CF04 89               [ 2]  177 	pushw	x
      00CF05 90 89            [ 2]  178 	pushw	y
                                    179 ; genCall
      00CF07 CD ED 50         [ 4]  180 	call	__divulong
      00CF0A 5B 08            [ 2]  181 	addw	sp, #8
      00CF0C 9F               [ 1]  182 	ld	a, xl
                                    183 ; genCast
                                    184 ; genAssign
      00CF0D 6B 01            [ 1]  185 	ld	(0x01, sp), a
                                    186 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 207: I2Cx->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
                                    187 ; genPlus
      00CF0F 1E 12            [ 2]  188 	ldw	x, (0x12, sp)
      00CF11 5C               [ 1]  189 	incw	x
      00CF12 5C               [ 1]  190 	incw	x
                                    191 ; genPointerGet
      00CF13 F6               [ 1]  192 	ld	a, (x)
                                    193 ; genAnd
      00CF14 A4 C0            [ 1]  194 	and	a, #0xc0
                                    195 ; genPointerSet
      00CF16 F7               [ 1]  196 	ld	(x), a
                                    197 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 209: I2Cx->FREQR |= input_clock;
                                    198 ; genOr
      00CF17 1A 01            [ 1]  199 	or	a, (0x01, sp)
                                    200 ; genPointerSet
      00CF19 F7               [ 1]  201 	ld	(x), a
                                    202 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 213: I2Cx->CR1 &= (uint8_t)(~I2C_CR1_PE);
                                    203 ; genCast
                                    204 ; genAssign
      00CF1A 16 12            [ 2]  205 	ldw	y, (0x12, sp)
                                    206 ; genPointerGet
      00CF1C 17 02            [ 2]  207 	ldw	(0x02, sp), y
      00CF1E 93               [ 1]  208 	ldw	x, y
                                    209 ; peephole 15 replaced load from (0x02, sp) into x by load from y into x.
      00CF1F F6               [ 1]  210 	ld	a, (x)
                                    211 ; genAnd
      00CF20 A4 FE            [ 1]  212 	and	a, #0xfe
                                    213 ; genPointerSet
      00CF22 1E 02            [ 2]  214 	ldw	x, (0x02, sp)
      00CF24 F7               [ 1]  215 	ld	(x), a
                                    216 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 216: I2Cx->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
                                    217 ; genPlus
      00CF25 1E 12            [ 2]  218 	ldw	x, (0x12, sp)
      00CF27 1C 00 0C         [ 2]  219 	addw	x, #0x000c
                                    220 ; genPointerGet
      00CF2A 1F 04            [ 2]  221 	ldw	(0x04, sp), x
                                    222 ; peephole 13 removed redundant load from (0x04, sp) into x.
      00CF2C F6               [ 1]  223 	ld	a, (x)
                                    224 ; genAnd
      00CF2D A4 30            [ 1]  225 	and	a, #0x30
                                    226 ; genPointerSet
      00CF2F 1E 04            [ 2]  227 	ldw	x, (0x04, sp)
      00CF31 F7               [ 1]  228 	ld	(x), a
                                    229 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 217: I2Cx->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
                                    230 ; genPlus
      00CF32 1E 12            [ 2]  231 	ldw	x, (0x12, sp)
      00CF34 1C 00 0B         [ 2]  232 	addw	x, #0x000b
                                    233 ; genPointerGet
                                    234 ; Dummy read
      00CF37 1F 06            [ 2]  235 	ldw	(0x06, sp), x
                                    236 ; peephole 13 removed redundant load from (0x06, sp) into x.
      00CF39 F6               [ 1]  237 	ld	a, (x)
                                    238 ; genPointerSet
      00CF3A 1E 06            [ 2]  239 	ldw	x, (0x06, sp)
      00CF3C 7F               [ 1]  240 	clr	(x)
                                    241 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 228: result = (uint32_t) ((input_clock * 1000000) / (OutputClockFrequency * 3));
                                    242 ; genCast
                                    243 ; genAssign
      00CF3D 7B 01            [ 1]  244 	ld	a, (0x01, sp)
      00CF3F 5F               [ 1]  245 	clrw	x
      00CF40 0F 0D            [ 1]  246 	clr	(0x0d, sp)
                                    247 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 249: I2Cx->TRISER = (uint8_t)tmpval;
                                    248 ; genPlus
      00CF42 16 12            [ 2]  249 	ldw	y, (0x12, sp)
      00CF44 72 A9 00 0D      [ 2]  250 	addw	y, #0x000d
      00CF48 17 08            [ 2]  251 	ldw	(0x08, sp), y
                                    252 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 228: result = (uint32_t) ((input_clock * 1000000) / (OutputClockFrequency * 3));
                                    253 ; genIPush
      00CF4A 88               [ 1]  254 	push	a
      00CF4B 89               [ 2]  255 	pushw	x
      00CF4C 4F               [ 1]  256 	clr	a
      00CF4D 88               [ 1]  257 	push	a
                                    258 ; genIPush
      00CF4E 4B 40            [ 1]  259 	push	#0x40
      00CF50 4B 42            [ 1]  260 	push	#0x42
      00CF52 4B 0F            [ 1]  261 	push	#0x0f
      00CF54 4B 00            [ 1]  262 	push	#0x00
                                    263 ; genCall
      00CF56 CD EE 20         [ 4]  264 	call	__mullong
      00CF59 5B 08            [ 2]  265 	addw	sp, #8
                                    266 ; genCast
                                    267 ; genAssign
      00CF5B 1F 0C            [ 2]  268 	ldw	(0x0c, sp), x
      00CF5D 17 0A            [ 2]  269 	ldw	(0x0a, sp), y
                                    270 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 220: if (OutputClockFrequency > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
                                    271 ; genCmp
                                    272 ; genCmpTnz
      00CF5F AE 86 A0         [ 2]  273 	ldw	x, #0x86a0
      00CF62 13 18            [ 2]  274 	cpw	x, (0x18, sp)
      00CF64 A6 01            [ 1]  275 	ld	a, #0x01
      00CF66 12 17            [ 1]  276 	sbc	a, (0x17, sp)
      00CF68 4F               [ 1]  277 	clr	a
      00CF69 12 16            [ 1]  278 	sbc	a, (0x16, sp)
      00CF6B 25 03            [ 1]  279 	jrc	00141$
      00CF6D CC CF F9         [ 2]  280 	jp	00109$
      00CF70                        281 00141$:
                                    282 ; skipping generated iCode
                                    283 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 223: tmpccrh = I2C_CCRH_FS;
                                    284 ; genAssign
      00CF70 A6 80            [ 1]  285 	ld	a, #0x80
      00CF72 6B 11            [ 1]  286 	ld	(0x11, sp), a
                                    287 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 225: if (I2C_DutyCycle == I2C_DutyCycle_2)
                                    288 ; genIfx
      00CF74 0D 1D            [ 1]  289 	tnz	(0x1d, sp)
                                    290 ; peephole j5 changed absolute to relative unconditional jump.
      00CF76 26 23            [ 1]  291 	jrne	00102$
                                    292 ; peephole j7 removed jra by using inverse jump logic
                                    293 ; peephole j30 removed unused label 00142$.
                                    294 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 228: result = (uint32_t) ((input_clock * 1000000) / (OutputClockFrequency * 3));
                                    295 ; genIPush
      00CF78 1E 18            [ 2]  296 	ldw	x, (0x18, sp)
      00CF7A 89               [ 2]  297 	pushw	x
      00CF7B 1E 18            [ 2]  298 	ldw	x, (0x18, sp)
      00CF7D 89               [ 2]  299 	pushw	x
                                    300 ; genIPush
      00CF7E 4B 03            [ 1]  301 	push	#0x03
      00CF80 5F               [ 1]  302 	clrw	x
      00CF81 89               [ 2]  303 	pushw	x
      00CF82 4B 00            [ 1]  304 	push	#0x00
                                    305 ; genCall
      00CF84 CD EE 20         [ 4]  306 	call	__mullong
      00CF87 5B 08            [ 2]  307 	addw	sp, #8
                                    308 ; genIPush
      00CF89 89               [ 2]  309 	pushw	x
      00CF8A 90 89            [ 2]  310 	pushw	y
                                    311 ; genIPush
      00CF8C 1E 10            [ 2]  312 	ldw	x, (0x10, sp)
      00CF8E 89               [ 2]  313 	pushw	x
      00CF8F 1E 10            [ 2]  314 	ldw	x, (0x10, sp)
      00CF91 89               [ 2]  315 	pushw	x
                                    316 ; genCall
      00CF92 CD ED 50         [ 4]  317 	call	__divulong
      00CF95 5B 08            [ 2]  318 	addw	sp, #8
      00CF97 1F 0F            [ 2]  319 	ldw	(0x0f, sp), x
                                    320 ; genGoto
      00CF99 20 2C            [ 2]  321 	jra	00103$
                                    322 ; peephole j5 changed absolute to relative unconditional jump.
                                    323 ; genLabel
      00CF9B                        324 00102$:
                                    325 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 233: result = (uint32_t) ((input_clock * 1000000) / (OutputClockFrequency * 25));
                                    326 ; genIPush
      00CF9B 1E 18            [ 2]  327 	ldw	x, (0x18, sp)
      00CF9D 89               [ 2]  328 	pushw	x
      00CF9E 1E 18            [ 2]  329 	ldw	x, (0x18, sp)
      00CFA0 89               [ 2]  330 	pushw	x
                                    331 ; genIPush
      00CFA1 4B 19            [ 1]  332 	push	#0x19
      00CFA3 5F               [ 1]  333 	clrw	x
      00CFA4 89               [ 2]  334 	pushw	x
      00CFA5 4B 00            [ 1]  335 	push	#0x00
                                    336 ; genCall
      00CFA7 CD EE 20         [ 4]  337 	call	__mullong
      00CFAA 5B 08            [ 2]  338 	addw	sp, #8
      00CFAC 1F 10            [ 2]  339 	ldw	(0x10, sp), x
      00CFAE 17 0E            [ 2]  340 	ldw	(0x0e, sp), y
                                    341 ; genIPush
      00CFB0 1E 10            [ 2]  342 	ldw	x, (0x10, sp)
      00CFB2 89               [ 2]  343 	pushw	x
      00CFB3 1E 10            [ 2]  344 	ldw	x, (0x10, sp)
      00CFB5 89               [ 2]  345 	pushw	x
                                    346 ; genIPush
      00CFB6 1E 10            [ 2]  347 	ldw	x, (0x10, sp)
      00CFB8 89               [ 2]  348 	pushw	x
      00CFB9 1E 10            [ 2]  349 	ldw	x, (0x10, sp)
      00CFBB 89               [ 2]  350 	pushw	x
                                    351 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 235: tmpccrh |= I2C_CCRH_DUTY;
                                    352 ; genCall
      00CFBC CD ED 50         [ 4]  353 	call	__divulong
      00CFBF 5B 08            [ 2]  354 	addw	sp, #8
      00CFC1 1F 0F            [ 2]  355 	ldw	(0x0f, sp), x
                                    356 ; genAssign
      00CFC3 A6 C0            [ 1]  357 	ld	a, #0xc0
      00CFC5 6B 11            [ 1]  358 	ld	(0x11, sp), a
                                    359 ; genLabel
      00CFC7                        360 00103$:
                                    361 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 239: if (result < (uint16_t)0x01)
                                    362 ; genCmp
                                    363 ; genCmpTnz
      00CFC7 1E 0F            [ 2]  364 	ldw	x, (0x0f, sp)
      00CFC9 A3 00 01         [ 2]  365 	cpw	x, #0x0001
      00CFCC 90 9F            [ 1]  366 	ld	a, yl
      00CFCE A2 00            [ 1]  367 	sbc	a, #0x00
      00CFD0 90 9E            [ 1]  368 	ld	a, yh
      00CFD2 A2 00            [ 1]  369 	sbc	a, #0x00
                                    370 ; peephole j5 changed absolute to relative unconditional jump.
      00CFD4 24 06            [ 1]  371 	jrnc	00105$
                                    372 ; peephole j6 removed jra by using inverse jump logic
                                    373 ; peephole j30 removed unused label 00143$.
                                    374 ; skipping generated iCode
                                    375 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 242: result = (uint16_t)0x0001;
                                    376 ; genAssign
      00CFD6 5F               [ 1]  377 	clrw	x
      00CFD7 5C               [ 1]  378 	incw	x
      00CFD8 1F 0F            [ 2]  379 	ldw	(0x0f, sp), x
      00CFDA 90 5F            [ 1]  380 	clrw	y
                                    381 ; genLabel
      00CFDC                        382 00105$:
                                    383 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 248: tmpval = ((input_clock * 3) / 10) + 1;
                                    384 ; genCast
                                    385 ; genAssign
      00CFDC 7B 01            [ 1]  386 	ld	a, (0x01, sp)
      00CFDE 5F               [ 1]  387 	clrw	x
                                    388 ; genMult
                                    389 ; genMultLit
      00CFDF 97               [ 1]  390 	ld	xl, a
      00CFE0 89               [ 2]  391 	pushw	x
      00CFE1 58               [ 2]  392 	sllw	x
      00CFE2 72 FB 01         [ 2]  393 	addw	x, (1, sp)
      00CFE5 5B 02            [ 2]  394 	addw	sp, #2
                                    395 ; genIPush
      00CFE7 90 89            [ 2]  396 	pushw	y
      00CFE9 4B 0A            [ 1]  397 	push	#0x0a
      00CFEB 4B 00            [ 1]  398 	push	#0x00
                                    399 ; genSend
                                    400 ; genCall
      00CFED CD EE B4         [ 4]  401 	call	__divsint
      00CFF0 9F               [ 1]  402 	ld	a, xl
      00CFF1 90 85            [ 2]  403 	popw	y
                                    404 ; genCast
                                    405 ; genAssign
                                    406 ; genPlus
      00CFF3 4C               [ 1]  407 	inc	a
                                    408 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 249: I2Cx->TRISER = (uint8_t)tmpval;
                                    409 ; genCast
                                    410 ; genAssign
                                    411 ; genPointerSet
      00CFF4 1E 08            [ 2]  412 	ldw	x, (0x08, sp)
      00CFF6 F7               [ 1]  413 	ld	(x), a
                                    414 ; genGoto
      00CFF7 20 2D            [ 2]  415 	jra	00110$
                                    416 ; peephole j5 changed absolute to relative unconditional jump.
                                    417 ; genLabel
      00CFF9                        418 00109$:
                                    419 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 256: result = (uint16_t)((input_clock * 1000000) / (OutputClockFrequency << (uint8_t)1));
                                    420 ; genLeftShiftLiteral
      00CFF9 1E 18            [ 2]  421 	ldw	x, (0x18, sp)
      00CFFB 16 16            [ 2]  422 	ldw	y, (0x16, sp)
      00CFFD 58               [ 2]  423 	sllw	x
      00CFFE 90 59            [ 2]  424 	rlcw	y
                                    425 ; genIPush
      00D000 89               [ 2]  426 	pushw	x
      00D001 90 89            [ 2]  427 	pushw	y
                                    428 ; genIPush
      00D003 1E 10            [ 2]  429 	ldw	x, (0x10, sp)
      00D005 89               [ 2]  430 	pushw	x
      00D006 1E 10            [ 2]  431 	ldw	x, (0x10, sp)
      00D008 89               [ 2]  432 	pushw	x
                                    433 ; genCall
      00D009 CD ED 50         [ 4]  434 	call	__divulong
      00D00C 5B 08            [ 2]  435 	addw	sp, #8
                                    436 ; genCast
                                    437 ; genAssign
                                    438 ; genCast
                                    439 ; genAssign
                                    440 ; peephole 3 removed dead clrw of y.
                                    441 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 259: if (result < (uint16_t)0x0004)
                                    442 ; genCmp
                                    443 ; genCmpTnz
      00D00E 1F 0F            [ 2]  444 	ldw	(0x0f, sp), x
                                    445 ; peephole 13 removed redundant load from (0x0f, sp) into x.
      00D010 A3 00 04         [ 2]  446 	cpw	x, #0x0004
      00D013 4F               [ 1]  447 	clr	a
      00D014 A2 00            [ 1]  448 	sbc	a, #0x00
      00D016 4F               [ 1]  449 	clr	a
      00D017 A2 00            [ 1]  450 	sbc	a, #0x00
                                    451 ; peephole j5 changed absolute to relative unconditional jump.
      00D019 24 05            [ 1]  452 	jrnc	00107$
                                    453 ; peephole j6 removed jra by using inverse jump logic
                                    454 ; peephole j30 removed unused label 00144$.
                                    455 ; skipping generated iCode
                                    456 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 262: result = (uint16_t)0x0004;
                                    457 ; genAssign
      00D01B AE 00 04         [ 2]  458 	ldw	x, #0x0004
      00D01E 1F 0F            [ 2]  459 	ldw	(0x0f, sp), x
                                    460 ; peephole 3 removed dead clrw of y.
                                    461 ; genLabel
      00D020                        462 00107$:
                                    463 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 268: I2Cx->TRISER = (uint8_t)((uint8_t)input_clock + (uint8_t)1);
                                    464 ; genPlus
      00D020 7B 01            [ 1]  465 	ld	a, (0x01, sp)
      00D022 4C               [ 1]  466 	inc	a
                                    467 ; genPointerSet
      00D023 1E 08            [ 2]  468 	ldw	x, (0x08, sp)
      00D025 F7               [ 1]  469 	ld	(x), a
                                    470 ; genLabel
      00D026                        471 00110$:
                                    472 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 273: I2Cx->CCRL = (uint8_t)result;
                                    473 ; genCast
                                    474 ; genAssign
      00D026 7B 10            [ 1]  475 	ld	a, (0x10, sp)
                                    476 ; genPointerSet
      00D028 1E 06            [ 2]  477 	ldw	x, (0x06, sp)
      00D02A F7               [ 1]  478 	ld	(x), a
                                    479 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 274: I2Cx->CCRH = (uint8_t)((uint8_t)((uint8_t)((uint8_t)result >> 8) & I2C_CCRH_CCR) | tmpccrh);
                                    480 ; genPointerSet
      00D02B 1E 04            [ 2]  481 	ldw	x, (0x04, sp)
      00D02D 7B 11            [ 1]  482 	ld	a, (0x11, sp)
      00D02F F7               [ 1]  483 	ld	(x), a
                                    484 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 277: I2Cx->CR1 |= (uint8_t)(I2C_CR1_PE | I2C_Mode);
                                    485 ; genPointerGet
      00D030 1E 02            [ 2]  486 	ldw	x, (0x02, sp)
      00D032 F6               [ 1]  487 	ld	a, (x)
      00D033 6B 11            [ 1]  488 	ld	(0x11, sp), a
                                    489 ; genOr
      00D035 7B 1C            [ 1]  490 	ld	a, (0x1c, sp)
      00D037 AA 01            [ 1]  491 	or	a, #0x01
                                    492 ; genOr
      00D039 1A 11            [ 1]  493 	or	a, (0x11, sp)
                                    494 ; genPointerSet
      00D03B 1E 02            [ 2]  495 	ldw	x, (0x02, sp)
      00D03D F7               [ 1]  496 	ld	(x), a
                                    497 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 280: I2Cx->CR2 |= (uint8_t)I2C_Ack;
                                    498 ; genPlus
      00D03E 1E 12            [ 2]  499 	ldw	x, (0x12, sp)
      00D040 5C               [ 1]  500 	incw	x
                                    501 ; genPointerGet
      00D041 F6               [ 1]  502 	ld	a, (x)
                                    503 ; genOr
      00D042 1A 1E            [ 1]  504 	or	a, (0x1e, sp)
                                    505 ; genPointerSet
      00D044 F7               [ 1]  506 	ld	(x), a
                                    507 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 283: I2Cx->OARL = (uint8_t)(OwnAddress);
                                    508 ; genPlus
      00D045 1E 12            [ 2]  509 	ldw	x, (0x12, sp)
                                    510 ; genCast
                                    511 ; genAssign
                                    512 ; genPointerSet
                                    513 ; peephole 9 moved addition of offset into storage instruction
      00D047 7B 1B            [ 1]  514 	ld	a, (0x1b, sp)
      00D049 E7 03            [ 1]  515 	ld	(0x0003, x), a
                                    516 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 284: I2Cx->OARH = (uint8_t)((uint8_t)(I2C_AcknowledgedAddress | I2C_OARH_ADDCONF ) | \
                                    517 ; genPlus
      00D04B 16 12            [ 2]  518 	ldw	y, (0x12, sp)
      00D04D 72 A9 00 04      [ 2]  519 	addw	y, #0x0004
                                    520 ; genOr
      00D051 7B 1F            [ 1]  521 	ld	a, (0x1f, sp)
      00D053 AA 40            [ 1]  522 	or	a, #0x40
      00D055 6B 11            [ 1]  523 	ld	(0x11, sp), a
                                    524 ; genAnd
      00D057 4F               [ 1]  525 	clr	a
      00D058 97               [ 1]  526 	ld	xl, a
      00D059 7B 1A            [ 1]  527 	ld	a, (0x1a, sp)
      00D05B A4 03            [ 1]  528 	and	a, #0x03
      00D05D 95               [ 1]  529 	ld	xh, a
                                    530 ; genRightShiftLiteral
      00D05E A6 80            [ 1]  531 	ld	a, #0x80
      00D060 62               [ 2]  532 	div	x, a
                                    533 ; genCast
                                    534 ; genAssign
      00D061 9F               [ 1]  535 	ld	a, xl
                                    536 ; genOr
      00D062 1A 11            [ 1]  537 	or	a, (0x11, sp)
                                    538 ; genPointerSet
      00D064 90 F7            [ 1]  539 	ld	(y), a
                                    540 ; genLabel
                                    541 ; peephole j30 removed unused label 00111$.
                                    542 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 286: }
                                    543 ; genEndFunction
      00D066 1E 14            [ 2]  544 	ldw	x, (20, sp)
      00D068 5B 1F            [ 2]  545 	addw	sp, #31
      00D06A FC               [ 2]  546 	jp	(x)
                                    547 ;	Total I2C_Init function size at codegen: 5 bytes.
                                    548 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 295: void I2C_Cmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
                                    549 ; genLabel
                                    550 ;	-----------------------------------------
                                    551 ;	 function I2C_Cmd
                                    552 ;	-----------------------------------------
                                    553 ;	Register assignment might be sub-optimal.
                                    554 ;	Stack space usage: 1 bytes.
      00D06B                        555 _I2C_Cmd:
      00D06B 88               [ 1]  556 	push	a
                                    557 ; genReceive
                                    558 ; genReceive
      00D06C 6B 01            [ 1]  559 	ld	(0x01, sp), a
                                    560 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 304: I2Cx->CR1 |= I2C_CR1_PE;
                                    561 ; genCast
                                    562 ; genAssign
                                    563 ; genPointerGet
      00D06E F6               [ 1]  564 	ld	a, (x)
                                    565 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 301: if (NewState != DISABLE)
                                    566 ; genIfx
      00D06F 0D 01            [ 1]  567 	tnz	(0x01, sp)
                                    568 ; peephole j5 changed absolute to relative unconditional jump.
      00D071 27 05            [ 1]  569 	jreq	00102$
                                    570 ; peephole j10 removed jra by using inverse jump logic
                                    571 ; peephole j30 removed unused label 00113$.
                                    572 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 304: I2Cx->CR1 |= I2C_CR1_PE;
                                    573 ; genOr
      00D073 AA 01            [ 1]  574 	or	a, #0x01
                                    575 ; genPointerSet
      00D075 F7               [ 1]  576 	ld	(x), a
                                    577 ; genGoto
      00D076 20 03            [ 2]  578 	jra	00104$
                                    579 ; peephole j5 changed absolute to relative unconditional jump.
                                    580 ; genLabel
      00D078                        581 00102$:
                                    582 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 309: I2Cx->CR1 &= (uint8_t)(~I2C_CR1_PE);
                                    583 ; genAnd
      00D078 A4 FE            [ 1]  584 	and	a, #0xfe
                                    585 ; genPointerSet
      00D07A F7               [ 1]  586 	ld	(x), a
                                    587 ; genLabel
      00D07B                        588 00104$:
                                    589 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 311: }
                                    590 ; genEndFunction
      00D07B 84               [ 1]  591 	pop	a
      00D07C 81               [ 4]  592 	ret
                                    593 ;	Total I2C_Cmd function size at codegen: 2 bytes.
                                    594 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 320: void I2C_GeneralCallCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
                                    595 ; genLabel
                                    596 ;	-----------------------------------------
                                    597 ;	 function I2C_GeneralCallCmd
                                    598 ;	-----------------------------------------
                                    599 ;	Register assignment might be sub-optimal.
                                    600 ;	Stack space usage: 1 bytes.
      00D07D                        601 _I2C_GeneralCallCmd:
      00D07D 88               [ 1]  602 	push	a
                                    603 ; genReceive
                                    604 ; genReceive
      00D07E 6B 01            [ 1]  605 	ld	(0x01, sp), a
                                    606 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 329: I2Cx->CR1 |= I2C_CR1_ENGC;
                                    607 ; genCast
                                    608 ; genAssign
                                    609 ; genPointerGet
      00D080 F6               [ 1]  610 	ld	a, (x)
                                    611 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 326: if (NewState != DISABLE)
                                    612 ; genIfx
      00D081 0D 01            [ 1]  613 	tnz	(0x01, sp)
                                    614 ; peephole j5 changed absolute to relative unconditional jump.
      00D083 27 05            [ 1]  615 	jreq	00102$
                                    616 ; peephole j10 removed jra by using inverse jump logic
                                    617 ; peephole j30 removed unused label 00113$.
                                    618 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 329: I2Cx->CR1 |= I2C_CR1_ENGC;
                                    619 ; genOr
      00D085 AA 40            [ 1]  620 	or	a, #0x40
                                    621 ; genPointerSet
      00D087 F7               [ 1]  622 	ld	(x), a
                                    623 ; genGoto
      00D088 20 03            [ 2]  624 	jra	00104$
                                    625 ; peephole j5 changed absolute to relative unconditional jump.
                                    626 ; genLabel
      00D08A                        627 00102$:
                                    628 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 334: I2Cx->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
                                    629 ; genAnd
      00D08A A4 BF            [ 1]  630 	and	a, #0xbf
                                    631 ; genPointerSet
      00D08C F7               [ 1]  632 	ld	(x), a
                                    633 ; genLabel
      00D08D                        634 00104$:
                                    635 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 336: }
                                    636 ; genEndFunction
      00D08D 84               [ 1]  637 	pop	a
      00D08E 81               [ 4]  638 	ret
                                    639 ;	Total I2C_GeneralCallCmd function size at codegen: 2 bytes.
                                    640 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 347: void I2C_GenerateSTART(I2C_TypeDef* I2Cx, FunctionalState NewState)
                                    641 ; genLabel
                                    642 ;	-----------------------------------------
                                    643 ;	 function I2C_GenerateSTART
                                    644 ;	-----------------------------------------
                                    645 ;	Register assignment might be sub-optimal.
                                    646 ;	Stack space usage: 1 bytes.
      00D08F                        647 _I2C_GenerateSTART:
      00D08F 88               [ 1]  648 	push	a
                                    649 ; genReceive
                                    650 ; genReceive
      00D090 6B 01            [ 1]  651 	ld	(0x01, sp), a
                                    652 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 356: I2Cx->CR2 |= I2C_CR2_START;
                                    653 ; genPlus
      00D092 5C               [ 1]  654 	incw	x
                                    655 ; genPointerGet
      00D093 F6               [ 1]  656 	ld	a, (x)
                                    657 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 353: if (NewState != DISABLE)
                                    658 ; genIfx
      00D094 0D 01            [ 1]  659 	tnz	(0x01, sp)
                                    660 ; peephole j5 changed absolute to relative unconditional jump.
      00D096 27 05            [ 1]  661 	jreq	00102$
                                    662 ; peephole j10 removed jra by using inverse jump logic
                                    663 ; peephole j30 removed unused label 00113$.
                                    664 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 356: I2Cx->CR2 |= I2C_CR2_START;
                                    665 ; genOr
      00D098 AA 01            [ 1]  666 	or	a, #0x01
                                    667 ; genPointerSet
      00D09A F7               [ 1]  668 	ld	(x), a
                                    669 ; genGoto
      00D09B 20 03            [ 2]  670 	jra	00104$
                                    671 ; peephole j5 changed absolute to relative unconditional jump.
                                    672 ; genLabel
      00D09D                        673 00102$:
                                    674 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 361: I2Cx->CR2 &= (uint8_t)(~I2C_CR2_START);
                                    675 ; genAnd
      00D09D A4 FE            [ 1]  676 	and	a, #0xfe
                                    677 ; genPointerSet
      00D09F F7               [ 1]  678 	ld	(x), a
                                    679 ; genLabel
      00D0A0                        680 00104$:
                                    681 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 363: }
                                    682 ; genEndFunction
      00D0A0 84               [ 1]  683 	pop	a
      00D0A1 81               [ 4]  684 	ret
                                    685 ;	Total I2C_GenerateSTART function size at codegen: 2 bytes.
                                    686 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 372: void I2C_GenerateSTOP(I2C_TypeDef* I2Cx, FunctionalState NewState)
                                    687 ; genLabel
                                    688 ;	-----------------------------------------
                                    689 ;	 function I2C_GenerateSTOP
                                    690 ;	-----------------------------------------
                                    691 ;	Register assignment might be sub-optimal.
                                    692 ;	Stack space usage: 1 bytes.
      00D0A2                        693 _I2C_GenerateSTOP:
      00D0A2 88               [ 1]  694 	push	a
                                    695 ; genReceive
                                    696 ; genReceive
      00D0A3 6B 01            [ 1]  697 	ld	(0x01, sp), a
                                    698 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 381: I2Cx->CR2 |= I2C_CR2_STOP;
                                    699 ; genPlus
      00D0A5 5C               [ 1]  700 	incw	x
                                    701 ; genPointerGet
      00D0A6 F6               [ 1]  702 	ld	a, (x)
                                    703 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 378: if (NewState != DISABLE)
                                    704 ; genIfx
      00D0A7 0D 01            [ 1]  705 	tnz	(0x01, sp)
                                    706 ; peephole j5 changed absolute to relative unconditional jump.
      00D0A9 27 05            [ 1]  707 	jreq	00102$
                                    708 ; peephole j10 removed jra by using inverse jump logic
                                    709 ; peephole j30 removed unused label 00113$.
                                    710 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 381: I2Cx->CR2 |= I2C_CR2_STOP;
                                    711 ; genOr
      00D0AB AA 02            [ 1]  712 	or	a, #0x02
                                    713 ; genPointerSet
      00D0AD F7               [ 1]  714 	ld	(x), a
                                    715 ; genGoto
      00D0AE 20 03            [ 2]  716 	jra	00104$
                                    717 ; peephole j5 changed absolute to relative unconditional jump.
                                    718 ; genLabel
      00D0B0                        719 00102$:
                                    720 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 386: I2Cx->CR2 &= (uint8_t)(~I2C_CR2_STOP);
                                    721 ; genAnd
      00D0B0 A4 FD            [ 1]  722 	and	a, #0xfd
                                    723 ; genPointerSet
      00D0B2 F7               [ 1]  724 	ld	(x), a
                                    725 ; genLabel
      00D0B3                        726 00104$:
                                    727 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 388: }
                                    728 ; genEndFunction
      00D0B3 84               [ 1]  729 	pop	a
      00D0B4 81               [ 4]  730 	ret
                                    731 ;	Total I2C_GenerateSTOP function size at codegen: 2 bytes.
                                    732 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 397: void I2C_SoftwareResetCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
                                    733 ; genLabel
                                    734 ;	-----------------------------------------
                                    735 ;	 function I2C_SoftwareResetCmd
                                    736 ;	-----------------------------------------
                                    737 ;	Register assignment might be sub-optimal.
                                    738 ;	Stack space usage: 1 bytes.
      00D0B5                        739 _I2C_SoftwareResetCmd:
      00D0B5 88               [ 1]  740 	push	a
                                    741 ; genReceive
                                    742 ; genReceive
      00D0B6 6B 01            [ 1]  743 	ld	(0x01, sp), a
                                    744 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 405: I2Cx->CR2 |= I2C_CR2_SWRST;
                                    745 ; genPlus
      00D0B8 5C               [ 1]  746 	incw	x
                                    747 ; genPointerGet
      00D0B9 F6               [ 1]  748 	ld	a, (x)
                                    749 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 402: if (NewState != DISABLE)
                                    750 ; genIfx
      00D0BA 0D 01            [ 1]  751 	tnz	(0x01, sp)
                                    752 ; peephole j5 changed absolute to relative unconditional jump.
      00D0BC 27 05            [ 1]  753 	jreq	00102$
                                    754 ; peephole j10 removed jra by using inverse jump logic
                                    755 ; peephole j30 removed unused label 00113$.
                                    756 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 405: I2Cx->CR2 |= I2C_CR2_SWRST;
                                    757 ; genOr
      00D0BE AA 80            [ 1]  758 	or	a, #0x80
                                    759 ; genPointerSet
      00D0C0 F7               [ 1]  760 	ld	(x), a
                                    761 ; genGoto
      00D0C1 20 03            [ 2]  762 	jra	00104$
                                    763 ; peephole j5 changed absolute to relative unconditional jump.
                                    764 ; genLabel
      00D0C3                        765 00102$:
                                    766 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 410: I2Cx->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
                                    767 ; genAnd
      00D0C3 A4 7F            [ 1]  768 	and	a, #0x7f
                                    769 ; genPointerSet
      00D0C5 F7               [ 1]  770 	ld	(x), a
                                    771 ; genLabel
      00D0C6                        772 00104$:
                                    773 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 412: }
                                    774 ; genEndFunction
      00D0C6 84               [ 1]  775 	pop	a
      00D0C7 81               [ 4]  776 	ret
                                    777 ;	Total I2C_SoftwareResetCmd function size at codegen: 2 bytes.
                                    778 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 421: void I2C_StretchClockCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
                                    779 ; genLabel
                                    780 ;	-----------------------------------------
                                    781 ;	 function I2C_StretchClockCmd
                                    782 ;	-----------------------------------------
                                    783 ;	Register assignment might be sub-optimal.
                                    784 ;	Stack space usage: 1 bytes.
      00D0C8                        785 _I2C_StretchClockCmd:
      00D0C8 88               [ 1]  786 	push	a
                                    787 ; genReceive
                                    788 ; genReceive
      00D0C9 6B 01            [ 1]  789 	ld	(0x01, sp), a
                                    790 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 429: I2Cx->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
                                    791 ; genCast
                                    792 ; genAssign
                                    793 ; genPointerGet
      00D0CB F6               [ 1]  794 	ld	a, (x)
                                    795 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 426: if (NewState != DISABLE)
                                    796 ; genIfx
      00D0CC 0D 01            [ 1]  797 	tnz	(0x01, sp)
                                    798 ; peephole j5 changed absolute to relative unconditional jump.
      00D0CE 27 05            [ 1]  799 	jreq	00102$
                                    800 ; peephole j10 removed jra by using inverse jump logic
                                    801 ; peephole j30 removed unused label 00113$.
                                    802 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 429: I2Cx->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
                                    803 ; genAnd
      00D0D0 A4 7F            [ 1]  804 	and	a, #0x7f
                                    805 ; genPointerSet
      00D0D2 F7               [ 1]  806 	ld	(x), a
                                    807 ; genGoto
      00D0D3 20 03            [ 2]  808 	jra	00104$
                                    809 ; peephole j5 changed absolute to relative unconditional jump.
                                    810 ; genLabel
      00D0D5                        811 00102$:
                                    812 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 435: I2Cx->CR1 |= I2C_CR1_NOSTRETCH;
                                    813 ; genOr
      00D0D5 AA 80            [ 1]  814 	or	a, #0x80
                                    815 ; genPointerSet
      00D0D7 F7               [ 1]  816 	ld	(x), a
                                    817 ; genLabel
      00D0D8                        818 00104$:
                                    819 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 437: }
                                    820 ; genEndFunction
      00D0D8 84               [ 1]  821 	pop	a
      00D0D9 81               [ 4]  822 	ret
                                    823 ;	Total I2C_StretchClockCmd function size at codegen: 2 bytes.
                                    824 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 446: void I2C_ARPCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
                                    825 ; genLabel
                                    826 ;	-----------------------------------------
                                    827 ;	 function I2C_ARPCmd
                                    828 ;	-----------------------------------------
                                    829 ;	Register assignment might be sub-optimal.
                                    830 ;	Stack space usage: 1 bytes.
      00D0DA                        831 _I2C_ARPCmd:
      00D0DA 88               [ 1]  832 	push	a
                                    833 ; genReceive
                                    834 ; genReceive
      00D0DB 6B 01            [ 1]  835 	ld	(0x01, sp), a
                                    836 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 454: I2Cx->CR1 |= I2C_CR1_ARP;
                                    837 ; genCast
                                    838 ; genAssign
                                    839 ; genPointerGet
      00D0DD F6               [ 1]  840 	ld	a, (x)
                                    841 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 451: if (NewState != DISABLE)
                                    842 ; genIfx
      00D0DE 0D 01            [ 1]  843 	tnz	(0x01, sp)
                                    844 ; peephole j5 changed absolute to relative unconditional jump.
      00D0E0 27 05            [ 1]  845 	jreq	00102$
                                    846 ; peephole j10 removed jra by using inverse jump logic
                                    847 ; peephole j30 removed unused label 00113$.
                                    848 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 454: I2Cx->CR1 |= I2C_CR1_ARP;
                                    849 ; genOr
      00D0E2 AA 10            [ 1]  850 	or	a, #0x10
                                    851 ; genPointerSet
      00D0E4 F7               [ 1]  852 	ld	(x), a
                                    853 ; genGoto
      00D0E5 20 03            [ 2]  854 	jra	00104$
                                    855 ; peephole j5 changed absolute to relative unconditional jump.
                                    856 ; genLabel
      00D0E7                        857 00102$:
                                    858 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 460: I2Cx->CR1 &= (uint8_t)(~I2C_CR1_ARP);
                                    859 ; genAnd
      00D0E7 A4 EF            [ 1]  860 	and	a, #0xef
                                    861 ; genPointerSet
      00D0E9 F7               [ 1]  862 	ld	(x), a
                                    863 ; genLabel
      00D0EA                        864 00104$:
                                    865 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 462: }
                                    866 ; genEndFunction
      00D0EA 84               [ 1]  867 	pop	a
      00D0EB 81               [ 4]  868 	ret
                                    869 ;	Total I2C_ARPCmd function size at codegen: 2 bytes.
                                    870 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 471: void I2C_AcknowledgeConfig(I2C_TypeDef* I2Cx, FunctionalState NewState)
                                    871 ; genLabel
                                    872 ;	-----------------------------------------
                                    873 ;	 function I2C_AcknowledgeConfig
                                    874 ;	-----------------------------------------
                                    875 ;	Register assignment might be sub-optimal.
                                    876 ;	Stack space usage: 1 bytes.
      00D0EC                        877 _I2C_AcknowledgeConfig:
      00D0EC 88               [ 1]  878 	push	a
                                    879 ; genReceive
                                    880 ; genReceive
      00D0ED 6B 01            [ 1]  881 	ld	(0x01, sp), a
                                    882 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 479: I2Cx->CR2 |= I2C_CR2_ACK;
                                    883 ; genPlus
      00D0EF 5C               [ 1]  884 	incw	x
                                    885 ; genPointerGet
      00D0F0 F6               [ 1]  886 	ld	a, (x)
                                    887 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 476: if (NewState != DISABLE)
                                    888 ; genIfx
      00D0F1 0D 01            [ 1]  889 	tnz	(0x01, sp)
                                    890 ; peephole j5 changed absolute to relative unconditional jump.
      00D0F3 27 05            [ 1]  891 	jreq	00102$
                                    892 ; peephole j10 removed jra by using inverse jump logic
                                    893 ; peephole j30 removed unused label 00113$.
                                    894 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 479: I2Cx->CR2 |= I2C_CR2_ACK;
                                    895 ; genOr
      00D0F5 AA 04            [ 1]  896 	or	a, #0x04
                                    897 ; genPointerSet
      00D0F7 F7               [ 1]  898 	ld	(x), a
                                    899 ; genGoto
      00D0F8 20 03            [ 2]  900 	jra	00104$
                                    901 ; peephole j5 changed absolute to relative unconditional jump.
                                    902 ; genLabel
      00D0FA                        903 00102$:
                                    904 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 484: I2Cx->CR2 &= (uint8_t)(~I2C_CR2_ACK);
                                    905 ; genAnd
      00D0FA A4 FB            [ 1]  906 	and	a, #0xfb
                                    907 ; genPointerSet
      00D0FC F7               [ 1]  908 	ld	(x), a
                                    909 ; genLabel
      00D0FD                        910 00104$:
                                    911 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 486: }
                                    912 ; genEndFunction
      00D0FD 84               [ 1]  913 	pop	a
      00D0FE 81               [ 4]  914 	ret
                                    915 ;	Total I2C_AcknowledgeConfig function size at codegen: 2 bytes.
                                    916 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 494: void I2C_OwnAddress2Config(I2C_TypeDef* I2Cx, uint8_t Address)
                                    917 ; genLabel
                                    918 ;	-----------------------------------------
                                    919 ;	 function I2C_OwnAddress2Config
                                    920 ;	-----------------------------------------
                                    921 ;	Register assignment might be sub-optimal.
                                    922 ;	Stack space usage: 1 bytes.
      00D0FF                        923 _I2C_OwnAddress2Config:
      00D0FF 88               [ 1]  924 	push	a
                                    925 ; genReceive
                                    926 ; genReceive
      00D100 90 97            [ 1]  927 	ld	yl, a
                                    928 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 499: tmpreg = I2Cx->OAR2;
                                    929 ; genPlus
      00D102 1C 00 05         [ 2]  930 	addw	x, #0x0005
                                    931 ; genPointerGet
      00D105 F6               [ 1]  932 	ld	a, (x)
                                    933 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 502: tmpreg &= (uint8_t)(~I2C_OAR2_ADD2);
                                    934 ; genAnd
      00D106 A4 01            [ 1]  935 	and	a, #0x01
      00D108 6B 01            [ 1]  936 	ld	(0x01, sp), a
                                    937 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 505: tmpreg |= (uint8_t) ((uint8_t)Address & (uint8_t)0xFE);
                                    938 ; genAnd
      00D10A 90 9F            [ 1]  939 	ld	a, yl
      00D10C A4 FE            [ 1]  940 	and	a, #0xfe
                                    941 ; genOr
      00D10E 1A 01            [ 1]  942 	or	a, (0x01, sp)
                                    943 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 508: I2Cx->OAR2 = tmpreg;
                                    944 ; genPointerSet
      00D110 F7               [ 1]  945 	ld	(x), a
                                    946 ; genLabel
                                    947 ; peephole j30 removed unused label 00101$.
                                    948 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 509: }
                                    949 ; genEndFunction
      00D111 84               [ 1]  950 	pop	a
      00D112 81               [ 4]  951 	ret
                                    952 ;	Total I2C_OwnAddress2Config function size at codegen: 2 bytes.
                                    953 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 518: void I2C_DualAddressCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
                                    954 ; genLabel
                                    955 ;	-----------------------------------------
                                    956 ;	 function I2C_DualAddressCmd
                                    957 ;	-----------------------------------------
                                    958 ;	Register assignment might be sub-optimal.
                                    959 ;	Stack space usage: 1 bytes.
      00D113                        960 _I2C_DualAddressCmd:
      00D113 88               [ 1]  961 	push	a
                                    962 ; genReceive
                                    963 ; genReceive
      00D114 6B 01            [ 1]  964 	ld	(0x01, sp), a
                                    965 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 526: I2Cx->OAR2 |= I2C_OAR2_ENDUAL;
                                    966 ; genPlus
      00D116 1C 00 05         [ 2]  967 	addw	x, #0x0005
                                    968 ; genPointerGet
      00D119 F6               [ 1]  969 	ld	a, (x)
                                    970 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 523: if (NewState != DISABLE)
                                    971 ; genIfx
      00D11A 0D 01            [ 1]  972 	tnz	(0x01, sp)
                                    973 ; peephole j5 changed absolute to relative unconditional jump.
      00D11C 27 05            [ 1]  974 	jreq	00102$
                                    975 ; peephole j10 removed jra by using inverse jump logic
                                    976 ; peephole j30 removed unused label 00113$.
                                    977 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 526: I2Cx->OAR2 |= I2C_OAR2_ENDUAL;
                                    978 ; genOr
      00D11E AA 01            [ 1]  979 	or	a, #0x01
                                    980 ; genPointerSet
      00D120 F7               [ 1]  981 	ld	(x), a
                                    982 ; genGoto
      00D121 20 03            [ 2]  983 	jra	00104$
                                    984 ; peephole j5 changed absolute to relative unconditional jump.
                                    985 ; genLabel
      00D123                        986 00102$:
                                    987 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 531: I2Cx->OAR2 &= (uint8_t)(~I2C_OAR2_ENDUAL);
                                    988 ; genAnd
      00D123 A4 FE            [ 1]  989 	and	a, #0xfe
                                    990 ; genPointerSet
      00D125 F7               [ 1]  991 	ld	(x), a
                                    992 ; genLabel
      00D126                        993 00104$:
                                    994 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 533: }
                                    995 ; genEndFunction
      00D126 84               [ 1]  996 	pop	a
      00D127 81               [ 4]  997 	ret
                                    998 ;	Total I2C_DualAddressCmd function size at codegen: 2 bytes.
                                    999 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 545: void I2C_AckPositionConfig(I2C_TypeDef* I2Cx, I2C_AckPosition_TypeDef I2C_AckPosition)
                                   1000 ; genLabel
                                   1001 ;	-----------------------------------------
                                   1002 ;	 function I2C_AckPositionConfig
                                   1003 ;	-----------------------------------------
                                   1004 ;	Register assignment might be sub-optimal.
                                   1005 ;	Stack space usage: 1 bytes.
      00D128                       1006 _I2C_AckPositionConfig:
      00D128 88               [ 1] 1007 	push	a
                                   1008 ; genReceive
                                   1009 ; genReceive
      00D129 6B 01            [ 1] 1010 	ld	(0x01, sp), a
                                   1011 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 551: I2Cx->CR2 &= (uint8_t)(~I2C_CR2_POS);
                                   1012 ; genPlus
      00D12B 5C               [ 1] 1013 	incw	x
                                   1014 ; genPointerGet
      00D12C F6               [ 1] 1015 	ld	a, (x)
                                   1016 ; genAnd
      00D12D A4 F7            [ 1] 1017 	and	a, #0xf7
                                   1018 ; genPointerSet
      00D12F F7               [ 1] 1019 	ld	(x), a
                                   1020 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 553: I2Cx->CR2 |= (uint8_t)I2C_AckPosition;
                                   1021 ; genOr
      00D130 1A 01            [ 1] 1022 	or	a, (0x01, sp)
                                   1023 ; genPointerSet
      00D132 F7               [ 1] 1024 	ld	(x), a
                                   1025 ; genLabel
                                   1026 ; peephole j30 removed unused label 00101$.
                                   1027 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 554: }
                                   1028 ; genEndFunction
      00D133 84               [ 1] 1029 	pop	a
      00D134 81               [ 4] 1030 	ret
                                   1031 ;	Total I2C_AckPositionConfig function size at codegen: 2 bytes.
                                   1032 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 565: void I2C_SMBusAlertConfig(I2C_TypeDef* I2Cx, I2C_SMBusAlert_TypeDef I2C_SMBusAlert)
                                   1033 ; genLabel
                                   1034 ;	-----------------------------------------
                                   1035 ;	 function I2C_SMBusAlertConfig
                                   1036 ;	-----------------------------------------
                                   1037 ;	Register assignment might be sub-optimal.
                                   1038 ;	Stack space usage: 1 bytes.
      00D135                       1039 _I2C_SMBusAlertConfig:
      00D135 88               [ 1] 1040 	push	a
                                   1041 ; genReceive
                                   1042 ; genReceive
      00D136 6B 01            [ 1] 1043 	ld	(0x01, sp), a
                                   1044 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 574: I2Cx->CR2 |= (uint8_t)I2C_CR2_ALERT;
                                   1045 ; genPlus
      00D138 5C               [ 1] 1046 	incw	x
                                   1047 ; genPointerGet
      00D139 F6               [ 1] 1048 	ld	a, (x)
                                   1049 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 571: if (I2C_SMBusAlert != I2C_SMBusAlert_High)
                                   1050 ; genIfx
      00D13A 0D 01            [ 1] 1051 	tnz	(0x01, sp)
                                   1052 ; peephole j5 changed absolute to relative unconditional jump.
      00D13C 27 05            [ 1] 1053 	jreq	00102$
                                   1054 ; peephole j10 removed jra by using inverse jump logic
                                   1055 ; peephole j30 removed unused label 00113$.
                                   1056 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 574: I2Cx->CR2 |= (uint8_t)I2C_CR2_ALERT;
                                   1057 ; genOr
      00D13E AA 20            [ 1] 1058 	or	a, #0x20
                                   1059 ; genPointerSet
      00D140 F7               [ 1] 1060 	ld	(x), a
                                   1061 ; genGoto
      00D141 20 03            [ 2] 1062 	jra	00104$
                                   1063 ; peephole j5 changed absolute to relative unconditional jump.
                                   1064 ; genLabel
      00D143                       1065 00102$:
                                   1066 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 579: I2Cx->CR2 &= (uint8_t)(~I2C_CR2_ALERT);
                                   1067 ; genAnd
      00D143 A4 DF            [ 1] 1068 	and	a, #0xdf
                                   1069 ; genPointerSet
      00D145 F7               [ 1] 1070 	ld	(x), a
                                   1071 ; genLabel
      00D146                       1072 00104$:
                                   1073 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 581: }
                                   1074 ; genEndFunction
      00D146 84               [ 1] 1075 	pop	a
      00D147 81               [ 4] 1076 	ret
                                   1077 ;	Total I2C_SMBusAlertConfig function size at codegen: 2 bytes.
                                   1078 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 592: void I2C_FastModeDutyCycleConfig(I2C_TypeDef* I2Cx, I2C_DutyCycle_TypeDef I2C_DutyCycle)
                                   1079 ; genLabel
                                   1080 ;	-----------------------------------------
                                   1081 ;	 function I2C_FastModeDutyCycleConfig
                                   1082 ;	-----------------------------------------
                                   1083 ;	Register assignment might be sub-optimal.
                                   1084 ;	Stack space usage: 0 bytes.
      00D148                       1085 _I2C_FastModeDutyCycleConfig:
                                   1086 ; genReceive
                                   1087 ; genReceive
      00D148 90 97            [ 1] 1088 	ld	yl, a
                                   1089 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 601: I2Cx->CCRH |= I2C_CCRH_DUTY;
                                   1090 ; genPlus
      00D14A 1C 00 0C         [ 2] 1091 	addw	x, #0x000c
                                   1092 ; genPointerGet
      00D14D F6               [ 1] 1093 	ld	a, (x)
                                   1094 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 598: if (I2C_DutyCycle == I2C_DutyCycle_16_9)
                                   1095 ; genCmpEQorNE
      00D14E 88               [ 1] 1096 	push	a
      00D14F 90 9F            [ 1] 1097 	ld	a, yl
      00D151 A1 40            [ 1] 1098 	cp	a, #0x40
      00D153 84               [ 1] 1099 	pop	a
                                   1100 ; peephole j5 changed absolute to relative unconditional jump.
                                   1101 ; peephole j10 removed jra by using inverse jump logic
                                   1102 ; peephole j30 removed unused label 00114$.
                                   1103 ; peephole j5 changed absolute to relative unconditional jump.
      00D154 26 04            [ 1] 1104 	jrne	00102$
                                   1105 ; peephole j7 removed jra by using inverse jump logic
                                   1106 ; peephole j30 removed unused label 00115$.
                                   1107 ; skipping generated iCode
                                   1108 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 601: I2Cx->CCRH |= I2C_CCRH_DUTY;
                                   1109 ; genOr
      00D156 AA 40            [ 1] 1110 	or	a, #0x40
                                   1111 ; genPointerSet
      00D158 F7               [ 1] 1112 	ld	(x), a
                                   1113 ; genGoto
      00D159 81               [ 4] 1114 	ret
                                   1115 ; peephole j2e replaced jump by return.
                                   1116 ; genLabel
      00D15A                       1117 00102$:
                                   1118 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 606: I2Cx->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
                                   1119 ; genAnd
      00D15A A4 BF            [ 1] 1120 	and	a, #0xbf
                                   1121 ; genPointerSet
      00D15C F7               [ 1] 1122 	ld	(x), a
                                   1123 ; genLabel
                                   1124 ; peephole j30 removed unused label 00104$.
                                   1125 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 608: }
                                   1126 ; genEndFunction
      00D15D 81               [ 4] 1127 	ret
                                   1128 ;	Total I2C_FastModeDutyCycleConfig function size at codegen: 1 bytes.
                                   1129 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 621: void I2C_Send7bitAddress(I2C_TypeDef* I2Cx, uint8_t Address, I2C_Direction_TypeDef I2C_Direction)
                                   1130 ; genLabel
                                   1131 ;	-----------------------------------------
                                   1132 ;	 function I2C_Send7bitAddress
                                   1133 ;	-----------------------------------------
                                   1134 ;	Register assignment might be sub-optimal.
                                   1135 ;	Stack space usage: 0 bytes.
      00D15E                       1136 _I2C_Send7bitAddress:
                                   1137 ; genReceive
                                   1138 ; genReceive
                                   1139 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 628: if (I2C_Direction != I2C_Direction_Transmitter)
                                   1140 ; genIfx
      00D15E 0D 03            [ 1] 1141 	tnz	(0x03, sp)
                                   1142 ; peephole j5 changed absolute to relative unconditional jump.
      00D160 27 04            [ 1] 1143 	jreq	00102$
                                   1144 ; peephole j10 removed jra by using inverse jump logic
                                   1145 ; peephole j30 removed unused label 00113$.
                                   1146 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 631: Address |= OAR1_ADD0_Set;
                                   1147 ; genOr
      00D162 AA 01            [ 1] 1148 	or	a, #0x01
                                   1149 ; genGoto
      00D164 20 02            [ 2] 1150 	jra	00103$
                                   1151 ; peephole j5 changed absolute to relative unconditional jump.
                                   1152 ; genLabel
      00D166                       1153 00102$:
                                   1154 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 636: Address &= OAR1_ADD0_Reset;
                                   1155 ; genAnd
      00D166 A4 FE            [ 1] 1156 	and	a, #0xfe
                                   1157 ; genLabel
      00D168                       1158 00103$:
                                   1159 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 639: I2Cx->DR = Address;
                                   1160 ; genPlus
      00D168 1C 00 06         [ 2] 1161 	addw	x, #0x0006
                                   1162 ; genPointerSet
      00D16B F7               [ 1] 1163 	ld	(x), a
                                   1164 ; genLabel
                                   1165 ; peephole j30 removed unused label 00104$.
                                   1166 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 640: }
                                   1167 ; genEndFunction
      00D16C 85               [ 2] 1168 	popw	x
      00D16D 84               [ 1] 1169 	pop	a
      00D16E FC               [ 2] 1170 	jp	(x)
                                   1171 ;	Total I2C_Send7bitAddress function size at codegen: 3 bytes.
                                   1172 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 664: void I2C_SendData(I2C_TypeDef* I2Cx, uint8_t Data)
                                   1173 ; genLabel
                                   1174 ;	-----------------------------------------
                                   1175 ;	 function I2C_SendData
                                   1176 ;	-----------------------------------------
                                   1177 ;	Register assignment might be sub-optimal.
                                   1178 ;	Stack space usage: 0 bytes.
      00D16F                       1179 _I2C_SendData:
                                   1180 ; genReceive
                                   1181 ; genReceive
                                   1182 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 667: I2Cx->DR = Data;
                                   1183 ; genPlus
      00D16F 1C 00 06         [ 2] 1184 	addw	x, #0x0006
                                   1185 ; genPointerSet
      00D172 F7               [ 1] 1186 	ld	(x), a
                                   1187 ; genLabel
                                   1188 ; peephole j30 removed unused label 00101$.
                                   1189 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 668: }
                                   1190 ; genEndFunction
      00D173 81               [ 4] 1191 	ret
                                   1192 ;	Total I2C_SendData function size at codegen: 1 bytes.
                                   1193 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 676: uint8_t I2C_ReceiveData(I2C_TypeDef* I2Cx)
                                   1194 ; genLabel
                                   1195 ;	-----------------------------------------
                                   1196 ;	 function I2C_ReceiveData
                                   1197 ;	-----------------------------------------
                                   1198 ;	Register assignment might be sub-optimal.
                                   1199 ;	Stack space usage: 0 bytes.
      00D174                       1200 _I2C_ReceiveData:
                                   1201 ; genReceive
                                   1202 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 679: return ((uint8_t)I2Cx->DR);
                                   1203 ; genAssign
                                   1204 ; genPointerGet
      00D174 E6 06            [ 1] 1205 	ld	a, (0x6, x)
                                   1206 ; genReturn
                                   1207 ; genLabel
                                   1208 ; peephole j30 removed unused label 00101$.
                                   1209 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 680: }
                                   1210 ; genEndFunction
      00D176 81               [ 4] 1211 	ret
                                   1212 ;	Total I2C_ReceiveData function size at codegen: 1 bytes.
                                   1213 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 705: void I2C_TransmitPEC(I2C_TypeDef* I2Cx, FunctionalState NewState)
                                   1214 ; genLabel
                                   1215 ;	-----------------------------------------
                                   1216 ;	 function I2C_TransmitPEC
                                   1217 ;	-----------------------------------------
                                   1218 ;	Register assignment might be sub-optimal.
                                   1219 ;	Stack space usage: 1 bytes.
      00D177                       1220 _I2C_TransmitPEC:
      00D177 88               [ 1] 1221 	push	a
                                   1222 ; genReceive
                                   1223 ; genReceive
      00D178 6B 01            [ 1] 1224 	ld	(0x01, sp), a
                                   1225 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 713: I2Cx->CR2 |= I2C_CR2_PEC;
                                   1226 ; genPlus
      00D17A 5C               [ 1] 1227 	incw	x
                                   1228 ; genPointerGet
      00D17B F6               [ 1] 1229 	ld	a, (x)
                                   1230 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 710: if (NewState != DISABLE)
                                   1231 ; genIfx
      00D17C 0D 01            [ 1] 1232 	tnz	(0x01, sp)
                                   1233 ; peephole j5 changed absolute to relative unconditional jump.
      00D17E 27 05            [ 1] 1234 	jreq	00102$
                                   1235 ; peephole j10 removed jra by using inverse jump logic
                                   1236 ; peephole j30 removed unused label 00113$.
                                   1237 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 713: I2Cx->CR2 |= I2C_CR2_PEC;
                                   1238 ; genOr
      00D180 AA 10            [ 1] 1239 	or	a, #0x10
                                   1240 ; genPointerSet
      00D182 F7               [ 1] 1241 	ld	(x), a
                                   1242 ; genGoto
      00D183 20 03            [ 2] 1243 	jra	00104$
                                   1244 ; peephole j5 changed absolute to relative unconditional jump.
                                   1245 ; genLabel
      00D185                       1246 00102$:
                                   1247 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 718: I2Cx->CR2 &= (uint8_t)(~I2C_CR2_PEC);
                                   1248 ; genAnd
      00D185 A4 EF            [ 1] 1249 	and	a, #0xef
                                   1250 ; genPointerSet
      00D187 F7               [ 1] 1251 	ld	(x), a
                                   1252 ; genLabel
      00D188                       1253 00104$:
                                   1254 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 720: }
                                   1255 ; genEndFunction
      00D188 84               [ 1] 1256 	pop	a
      00D189 81               [ 4] 1257 	ret
                                   1258 ;	Total I2C_TransmitPEC function size at codegen: 2 bytes.
                                   1259 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 729: void I2C_CalculatePEC(I2C_TypeDef* I2Cx, FunctionalState NewState)
                                   1260 ; genLabel
                                   1261 ;	-----------------------------------------
                                   1262 ;	 function I2C_CalculatePEC
                                   1263 ;	-----------------------------------------
                                   1264 ;	Register assignment might be sub-optimal.
                                   1265 ;	Stack space usage: 1 bytes.
      00D18A                       1266 _I2C_CalculatePEC:
      00D18A 88               [ 1] 1267 	push	a
                                   1268 ; genReceive
                                   1269 ; genReceive
      00D18B 6B 01            [ 1] 1270 	ld	(0x01, sp), a
                                   1271 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 737: I2Cx->CR1 |= I2C_CR1_ENPEC;
                                   1272 ; genCast
                                   1273 ; genAssign
                                   1274 ; genPointerGet
      00D18D F6               [ 1] 1275 	ld	a, (x)
                                   1276 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 734: if (NewState != DISABLE)
                                   1277 ; genIfx
      00D18E 0D 01            [ 1] 1278 	tnz	(0x01, sp)
                                   1279 ; peephole j5 changed absolute to relative unconditional jump.
      00D190 27 05            [ 1] 1280 	jreq	00102$
                                   1281 ; peephole j10 removed jra by using inverse jump logic
                                   1282 ; peephole j30 removed unused label 00113$.
                                   1283 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 737: I2Cx->CR1 |= I2C_CR1_ENPEC;
                                   1284 ; genOr
      00D192 AA 20            [ 1] 1285 	or	a, #0x20
                                   1286 ; genPointerSet
      00D194 F7               [ 1] 1287 	ld	(x), a
                                   1288 ; genGoto
      00D195 20 03            [ 2] 1289 	jra	00104$
                                   1290 ; peephole j5 changed absolute to relative unconditional jump.
                                   1291 ; genLabel
      00D197                       1292 00102$:
                                   1293 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 742: I2Cx->CR1 &= (uint8_t)(~I2C_CR1_ENPEC);
                                   1294 ; genAnd
      00D197 A4 DF            [ 1] 1295 	and	a, #0xdf
                                   1296 ; genPointerSet
      00D199 F7               [ 1] 1297 	ld	(x), a
                                   1298 ; genLabel
      00D19A                       1299 00104$:
                                   1300 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 744: }
                                   1301 ; genEndFunction
      00D19A 84               [ 1] 1302 	pop	a
      00D19B 81               [ 4] 1303 	ret
                                   1304 ;	Total I2C_CalculatePEC function size at codegen: 2 bytes.
                                   1305 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 755: void I2C_PECPositionConfig(I2C_TypeDef* I2Cx, I2C_PECPosition_TypeDef I2C_PECPosition)
                                   1306 ; genLabel
                                   1307 ;	-----------------------------------------
                                   1308 ;	 function I2C_PECPositionConfig
                                   1309 ;	-----------------------------------------
                                   1310 ;	Register assignment might be sub-optimal.
                                   1311 ;	Stack space usage: 1 bytes.
      00D19C                       1312 _I2C_PECPositionConfig:
      00D19C 88               [ 1] 1313 	push	a
                                   1314 ; genReceive
                                   1315 ; genReceive
      00D19D 6B 01            [ 1] 1316 	ld	(0x01, sp), a
                                   1317 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 761: I2Cx->CR2 &= (uint8_t)(~I2C_CR2_POS);
                                   1318 ; genPlus
      00D19F 5C               [ 1] 1319 	incw	x
                                   1320 ; genPointerGet
      00D1A0 F6               [ 1] 1321 	ld	a, (x)
                                   1322 ; genAnd
      00D1A1 A4 F7            [ 1] 1323 	and	a, #0xf7
                                   1324 ; genPointerSet
      00D1A3 F7               [ 1] 1325 	ld	(x), a
                                   1326 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 763: I2Cx->CR2 |= (uint8_t)I2C_PECPosition;
                                   1327 ; genOr
      00D1A4 1A 01            [ 1] 1328 	or	a, (0x01, sp)
                                   1329 ; genPointerSet
      00D1A6 F7               [ 1] 1330 	ld	(x), a
                                   1331 ; genLabel
                                   1332 ; peephole j30 removed unused label 00101$.
                                   1333 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 764: }
                                   1334 ; genEndFunction
      00D1A7 84               [ 1] 1335 	pop	a
      00D1A8 81               [ 4] 1336 	ret
                                   1337 ;	Total I2C_PECPositionConfig function size at codegen: 2 bytes.
                                   1338 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 772: uint8_t I2C_GetPEC(I2C_TypeDef* I2Cx)
                                   1339 ; genLabel
                                   1340 ;	-----------------------------------------
                                   1341 ;	 function I2C_GetPEC
                                   1342 ;	-----------------------------------------
                                   1343 ;	Register assignment might be sub-optimal.
                                   1344 ;	Stack space usage: 0 bytes.
      00D1A9                       1345 _I2C_GetPEC:
                                   1346 ; genReceive
                                   1347 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 775: return (I2Cx->PECR);
                                   1348 ; genAssign
                                   1349 ; genPointerGet
      00D1A9 E6 0E            [ 1] 1350 	ld	a, (0xe, x)
                                   1351 ; genReturn
                                   1352 ; genLabel
                                   1353 ; peephole j30 removed unused label 00101$.
                                   1354 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 776: }
                                   1355 ; genEndFunction
      00D1AB 81               [ 4] 1356 	ret
                                   1357 ;	Total I2C_GetPEC function size at codegen: 1 bytes.
                                   1358 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 803: void I2C_DMACmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
                                   1359 ; genLabel
                                   1360 ;	-----------------------------------------
                                   1361 ;	 function I2C_DMACmd
                                   1362 ;	-----------------------------------------
                                   1363 ;	Register assignment might be sub-optimal.
                                   1364 ;	Stack space usage: 1 bytes.
      00D1AC                       1365 _I2C_DMACmd:
      00D1AC 88               [ 1] 1366 	push	a
                                   1367 ; genReceive
                                   1368 ; genReceive
      00D1AD 6B 01            [ 1] 1369 	ld	(0x01, sp), a
                                   1370 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 811: I2Cx->ITR |= I2C_ITR_DMAEN;
                                   1371 ; genPlus
      00D1AF 1C 00 0A         [ 2] 1372 	addw	x, #0x000a
                                   1373 ; genPointerGet
      00D1B2 F6               [ 1] 1374 	ld	a, (x)
                                   1375 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 808: if (NewState != DISABLE)
                                   1376 ; genIfx
      00D1B3 0D 01            [ 1] 1377 	tnz	(0x01, sp)
                                   1378 ; peephole j5 changed absolute to relative unconditional jump.
      00D1B5 27 05            [ 1] 1379 	jreq	00102$
                                   1380 ; peephole j10 removed jra by using inverse jump logic
                                   1381 ; peephole j30 removed unused label 00113$.
                                   1382 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 811: I2Cx->ITR |= I2C_ITR_DMAEN;
                                   1383 ; genOr
      00D1B7 AA 08            [ 1] 1384 	or	a, #0x08
                                   1385 ; genPointerSet
      00D1B9 F7               [ 1] 1386 	ld	(x), a
                                   1387 ; genGoto
      00D1BA 20 03            [ 2] 1388 	jra	00104$
                                   1389 ; peephole j5 changed absolute to relative unconditional jump.
                                   1390 ; genLabel
      00D1BC                       1391 00102$:
                                   1392 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 816: I2Cx->ITR &= (uint8_t)(~I2C_ITR_DMAEN);
                                   1393 ; genAnd
      00D1BC A4 F7            [ 1] 1394 	and	a, #0xf7
                                   1395 ; genPointerSet
      00D1BE F7               [ 1] 1396 	ld	(x), a
                                   1397 ; genLabel
      00D1BF                       1398 00104$:
                                   1399 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 818: }
                                   1400 ; genEndFunction
      00D1BF 84               [ 1] 1401 	pop	a
      00D1C0 81               [ 4] 1402 	ret
                                   1403 ;	Total I2C_DMACmd function size at codegen: 2 bytes.
                                   1404 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 827: void I2C_DMALastTransferCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
                                   1405 ; genLabel
                                   1406 ;	-----------------------------------------
                                   1407 ;	 function I2C_DMALastTransferCmd
                                   1408 ;	-----------------------------------------
                                   1409 ;	Register assignment might be sub-optimal.
                                   1410 ;	Stack space usage: 1 bytes.
      00D1C1                       1411 _I2C_DMALastTransferCmd:
      00D1C1 88               [ 1] 1412 	push	a
                                   1413 ; genReceive
                                   1414 ; genReceive
      00D1C2 6B 01            [ 1] 1415 	ld	(0x01, sp), a
                                   1416 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 835: I2Cx->ITR |= I2C_ITR_LAST;
                                   1417 ; genPlus
      00D1C4 1C 00 0A         [ 2] 1418 	addw	x, #0x000a
                                   1419 ; genPointerGet
      00D1C7 F6               [ 1] 1420 	ld	a, (x)
                                   1421 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 832: if (NewState != DISABLE)
                                   1422 ; genIfx
      00D1C8 0D 01            [ 1] 1423 	tnz	(0x01, sp)
                                   1424 ; peephole j5 changed absolute to relative unconditional jump.
      00D1CA 27 05            [ 1] 1425 	jreq	00102$
                                   1426 ; peephole j10 removed jra by using inverse jump logic
                                   1427 ; peephole j30 removed unused label 00113$.
                                   1428 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 835: I2Cx->ITR |= I2C_ITR_LAST;
                                   1429 ; genOr
      00D1CC AA 10            [ 1] 1430 	or	a, #0x10
                                   1431 ; genPointerSet
      00D1CE F7               [ 1] 1432 	ld	(x), a
                                   1433 ; genGoto
      00D1CF 20 03            [ 2] 1434 	jra	00104$
                                   1435 ; peephole j5 changed absolute to relative unconditional jump.
                                   1436 ; genLabel
      00D1D1                       1437 00102$:
                                   1438 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 840: I2Cx->ITR &= (uint8_t)(~I2C_ITR_LAST);
                                   1439 ; genAnd
      00D1D1 A4 EF            [ 1] 1440 	and	a, #0xef
                                   1441 ; genPointerSet
      00D1D3 F7               [ 1] 1442 	ld	(x), a
                                   1443 ; genLabel
      00D1D4                       1444 00104$:
                                   1445 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 842: }
                                   1446 ; genEndFunction
      00D1D4 84               [ 1] 1447 	pop	a
      00D1D5 81               [ 4] 1448 	ret
                                   1449 ;	Total I2C_DMALastTransferCmd function size at codegen: 2 bytes.
                                   1450 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 954: void I2C_ITConfig(I2C_TypeDef* I2Cx, I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
                                   1451 ; genLabel
                                   1452 ;	-----------------------------------------
                                   1453 ;	 function I2C_ITConfig
                                   1454 ;	-----------------------------------------
                                   1455 ;	Register assignment might be sub-optimal.
                                   1456 ;	Stack space usage: 1 bytes.
      00D1D6                       1457 _I2C_ITConfig:
      00D1D6 88               [ 1] 1458 	push	a
                                   1459 ; genReceive
                                   1460 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 963: I2Cx->ITR |= (uint8_t)I2C_IT;
                                   1461 ; genPlus
      00D1D7 1C 00 0A         [ 2] 1462 	addw	x, #0x000a
                                   1463 ; genCast
                                   1464 ; genAssign
      00D1DA 7B 05            [ 1] 1465 	ld	a, (0x05, sp)
                                   1466 ; genPointerGet
      00D1DC 88               [ 1] 1467 	push	a
      00D1DD F6               [ 1] 1468 	ld	a, (x)
      00D1DE 6B 02            [ 1] 1469 	ld	(0x02, sp), a
      00D1E0 84               [ 1] 1470 	pop	a
                                   1471 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 960: if (NewState != DISABLE)
                                   1472 ; genIfx
      00D1E1 0D 06            [ 1] 1473 	tnz	(0x06, sp)
                                   1474 ; peephole j5 changed absolute to relative unconditional jump.
      00D1E3 27 05            [ 1] 1475 	jreq	00102$
                                   1476 ; peephole j10 removed jra by using inverse jump logic
                                   1477 ; peephole j30 removed unused label 00113$.
                                   1478 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 963: I2Cx->ITR |= (uint8_t)I2C_IT;
                                   1479 ; genOr
      00D1E5 1A 01            [ 1] 1480 	or	a, (0x01, sp)
                                   1481 ; genPointerSet
      00D1E7 F7               [ 1] 1482 	ld	(x), a
                                   1483 ; genGoto
      00D1E8 20 04            [ 2] 1484 	jra	00104$
                                   1485 ; peephole j5 changed absolute to relative unconditional jump.
                                   1486 ; genLabel
      00D1EA                       1487 00102$:
                                   1488 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 968: I2Cx->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
                                   1489 ; genCpl
      00D1EA 43               [ 1] 1490 	cpl	a
                                   1491 ; genAnd
      00D1EB 14 01            [ 1] 1492 	and	a, (0x01, sp)
                                   1493 ; genPointerSet
      00D1ED F7               [ 1] 1494 	ld	(x), a
                                   1495 ; genLabel
      00D1EE                       1496 00104$:
                                   1497 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 970: }
                                   1498 ; genEndFunction
      00D1EE 1E 02            [ 2] 1499 	ldw	x, (2, sp)
      00D1F0 5B 06            [ 2] 1500 	addw	sp, #6
      00D1F2 FC               [ 2] 1501 	jp	(x)
                                   1502 ;	Total I2C_ITConfig function size at codegen: 5 bytes.
                                   1503 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 994: uint8_t I2C_ReadRegister(I2C_TypeDef* I2Cx, I2C_Register_TypeDef I2C_Register)
                                   1504 ; genLabel
                                   1505 ;	-----------------------------------------
                                   1506 ;	 function I2C_ReadRegister
                                   1507 ;	-----------------------------------------
                                   1508 ;	Register assignment might be sub-optimal.
                                   1509 ;	Stack space usage: 4 bytes.
      00D1F3                       1510 _I2C_ReadRegister:
      00D1F3 52 04            [ 2] 1511 	sub	sp, #4
                                   1512 ; genReceive
                                   1513 ; genReceive
                                   1514 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 996: __IO uint16_t tmp = 0;
                                   1515 ; genAssign
      00D1F5 0F 02            [ 1] 1516 	clr	(0x02, sp)
      00D1F7 0F 01            [ 1] 1517 	clr	(0x01, sp)
                                   1518 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1000: tmp = (uint16_t) I2Cx;
                                   1519 ; genCast
                                   1520 ; genAssign
                                   1521 ; genAssign
                                   1522 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1001: tmp += I2C_Register;
                                   1523 ; genCast
                                   1524 ; genAssign
                                   1525 ; genCast
                                   1526 ; genAssign
      00D1F9 1F 01            [ 2] 1527 	ldw	(0x01, sp), x
                                   1528 ; peephole 13 removed redundant load from (0x01, sp) into x.
                                   1529 ; genCast
                                   1530 ; genAssign
      00D1FB 6B 04            [ 1] 1531 	ld	(0x04, sp), a
      00D1FD 0F 03            [ 1] 1532 	clr	(0x03, sp)
                                   1533 ; genPlus
      00D1FF 72 FB 03         [ 2] 1534 	addw	x, (0x03, sp)
                                   1535 ; genCast
                                   1536 ; genAssign
                                   1537 ; genAssign
                                   1538 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1004: return (*(__IO uint8_t *) tmp);
                                   1539 ; genCast
                                   1540 ; genAssign
      00D202 1F 01            [ 2] 1541 	ldw	(0x01, sp), x
                                   1542 ; peephole 13 removed redundant load from (0x01, sp) into x.
                                   1543 ; genPointerGet
      00D204 F6               [ 1] 1544 	ld	a, (x)
                                   1545 ; genReturn
                                   1546 ; genLabel
                                   1547 ; peephole j30 removed unused label 00101$.
                                   1548 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1005: }
                                   1549 ; genEndFunction
      00D205 5B 04            [ 2] 1550 	addw	sp, #4
      00D207 81               [ 4] 1551 	ret
                                   1552 ;	Total I2C_ReadRegister function size at codegen: 3 bytes.
                                   1553 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1044: ErrorStatus I2C_CheckEvent(I2C_TypeDef* I2Cx, I2C_Event_TypeDef I2C_Event)
                                   1554 ; genLabel
                                   1555 ;	-----------------------------------------
                                   1556 ;	 function I2C_CheckEvent
                                   1557 ;	-----------------------------------------
                                   1558 ;	Register assignment might be sub-optimal.
                                   1559 ;	Stack space usage: 8 bytes.
      00D208                       1560 _I2C_CheckEvent:
      00D208 52 08            [ 2] 1561 	sub	sp, #8
                                   1562 ; genReceive
      00D20A 51               [ 1] 1563 	exgw	x, y
                                   1564 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1046: __IO uint16_t lastevent = 0x00;
                                   1565 ; genAssign
      00D20B 5F               [ 1] 1566 	clrw	x
      00D20C 1F 01            [ 2] 1567 	ldw	(0x01, sp), x
                                   1568 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1054: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
                                   1569 ; genCast
                                   1570 ; genAssign
      00D20E 1E 0B            [ 2] 1571 	ldw	x, (0x0b, sp)
                                   1572 ; genCmpEQorNE
      00D210 1F 03            [ 2] 1573 	ldw	(0x03, sp), x
                                   1574 ; peephole 13 removed redundant load from (0x03, sp) into x.
      00D212 A3 00 04         [ 2] 1575 	cpw	x, #0x0004
                                   1576 ; peephole j5 changed absolute to relative unconditional jump.
                                   1577 ; peephole j10 removed jra by using inverse jump logic
                                   1578 ; peephole j30 removed unused label 00124$.
                                   1579 ; peephole j5 changed absolute to relative unconditional jump.
      00D215 26 0B            [ 1] 1580 	jrne	00102$
                                   1581 ; peephole j7 removed jra by using inverse jump logic
                                   1582 ; peephole j30 removed unused label 00125$.
                                   1583 ; skipping generated iCode
                                   1584 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1056: lastevent = I2Cx->SR2 & I2C_SR2_AF;
                                   1585 ; genAssign
                                   1586 ; genPointerGet
      00D217 90 E6 08         [ 1] 1587 	ld	a, (0x8, y)
                                   1588 ; genAnd
      00D21A A4 04            [ 1] 1589 	and	a, #0x04
                                   1590 ; genCast
                                   1591 ; genAssign
      00D21C 5F               [ 1] 1592 	clrw	x
      00D21D 97               [ 1] 1593 	ld	xl, a
                                   1594 ; genAssign
      00D21E 1F 01            [ 2] 1595 	ldw	(0x01, sp), x
                                   1596 ; genGoto
      00D220 20 0E            [ 2] 1597 	jra	00103$
                                   1598 ; peephole j5 changed absolute to relative unconditional jump.
                                   1599 ; genLabel
      00D222                       1600 00102$:
                                   1601 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1060: flag1 = I2Cx->SR1;
                                   1602 ; genAssign
      00D222 93               [ 1] 1603 	ldw	x, y
                                   1604 ; genPointerGet
      00D223 E6 07            [ 1] 1605 	ld	a, (0x7, x)
      00D225 97               [ 1] 1606 	ld	xl, a
                                   1607 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1061: flag2 = I2Cx->SR3;
                                   1608 ; genAssign
                                   1609 ; genPointerGet
      00D226 90 E6 09         [ 1] 1610 	ld	a, (0x9, y)
                                   1611 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1062: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
                                   1612 ; genCast
                                   1613 ; genAssign
      00D229 95               [ 1] 1614 	ld	xh, a
                                   1615 ; peephole 1 removed dead clear of a.
                                   1616 ; genLeftShiftLiteral
      00D22A 0F 06            [ 1] 1617 	clr	(0x06, sp)
                                   1618 ; genCast
                                   1619 ; genAssign
      00D22C 0F 07            [ 1] 1620 	clr	(0x07, sp)
                                   1621 ; genOr
                                   1622 ; genAssign
      00D22E 1F 01            [ 2] 1623 	ldw	(0x01, sp), x
                                   1624 ; genLabel
      00D230                       1625 00103$:
                                   1626 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1065: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
                                   1627 ; genAnd
      00D230 7B 02            [ 1] 1628 	ld	a, (0x02, sp)
      00D232 14 04            [ 1] 1629 	and	a, (0x04, sp)
      00D234 97               [ 1] 1630 	ld	xl, a
      00D235 7B 01            [ 1] 1631 	ld	a, (0x01, sp)
      00D237 14 03            [ 1] 1632 	and	a, (0x03, sp)
                                   1633 ; genCmpEQorNE
      00D239 95               [ 1] 1634 	ld	xh, a
      00D23A 13 03            [ 2] 1635 	cpw	x, (0x03, sp)
                                   1636 ; peephole j5 changed absolute to relative unconditional jump.
                                   1637 ; peephole j10 removed jra by using inverse jump logic
                                   1638 ; peephole j30 removed unused label 00127$.
                                   1639 ; peephole j5 changed absolute to relative unconditional jump.
      00D23C 26 03            [ 1] 1640 	jrne	00105$
                                   1641 ; peephole j7 removed jra by using inverse jump logic
                                   1642 ; peephole j30 removed unused label 00128$.
                                   1643 ; skipping generated iCode
                                   1644 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1068: status = SUCCESS;
                                   1645 ; genAssign
      00D23E A6 01            [ 1] 1646 	ld	a, #0x01
                                   1647 ; genGoto
                                   1648 ; peephole j5 changed absolute to relative unconditional jump.
                                   1649 ; genLabel
                                   1650 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1073: status = ERROR;
                                   1651 ; genAssign
                                   1652 ; genLabel
      00D240 21                    1653 	.byte 0x21
                                   1654 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00D241                       1655 00105$:
      00D241 4F               [ 1] 1656 	clr	a
      00D242                       1657 00106$:
                                   1658 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1077: return status;
                                   1659 ; genReturn
                                   1660 ; genLabel
                                   1661 ; peephole j30 removed unused label 00107$.
                                   1662 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1078: }
                                   1663 ; genEndFunction
      00D242 1E 09            [ 2] 1664 	ldw	x, (9, sp)
      00D244 5B 0C            [ 2] 1665 	addw	sp, #12
      00D246 FC               [ 2] 1666 	jp	(x)
                                   1667 ;	Total I2C_CheckEvent function size at codegen: 5 bytes.
                                   1668 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1095: I2C_Event_TypeDef I2C_GetLastEvent(I2C_TypeDef* I2Cx)
                                   1669 ; genLabel
                                   1670 ;	-----------------------------------------
                                   1671 ;	 function I2C_GetLastEvent
                                   1672 ;	-----------------------------------------
                                   1673 ;	Register assignment might be sub-optimal.
                                   1674 ;	Stack space usage: 6 bytes.
      00D247                       1675 _I2C_GetLastEvent:
      00D247 52 06            [ 2] 1676 	sub	sp, #6
                                   1677 ; genReceive
      00D249 51               [ 1] 1678 	exgw	x, y
                                   1679 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1097: __IO uint16_t lastevent = 0;
                                   1680 ; genAssign
      00D24A 5F               [ 1] 1681 	clrw	x
      00D24B 1F 01            [ 2] 1682 	ldw	(0x01, sp), x
                                   1683 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1101: if ((I2Cx->SR2 & I2C_SR2_AF) != 0x00)
                                   1684 ; genAssign
      00D24D 93               [ 1] 1685 	ldw	x, y
                                   1686 ; genPointerGet
      00D24E E6 08            [ 1] 1687 	ld	a, (0x8, x)
                                   1688 ; genAnd
      00D250 A5 04            [ 1] 1689 	bcp	a, #0x04
                                   1690 ; peephole j5 changed absolute to relative unconditional jump.
      00D252 27 07            [ 1] 1691 	jreq	00102$
                                   1692 ; peephole j10 removed jra by using inverse jump logic
                                   1693 ; peephole j30 removed unused label 00113$.
                                   1694 ; skipping generated iCode
                                   1695 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1103: lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
                                   1696 ; genAssign
      00D254 AE 00 04         [ 2] 1697 	ldw	x, #0x0004
      00D257 1F 01            [ 2] 1698 	ldw	(0x01, sp), x
                                   1699 ; genGoto
      00D259 20 0E            [ 2] 1700 	jra	00103$
                                   1701 ; peephole j5 changed absolute to relative unconditional jump.
                                   1702 ; genLabel
      00D25B                       1703 00102$:
                                   1704 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1108: flag1 = I2Cx->SR1;
                                   1705 ; genAssign
      00D25B 93               [ 1] 1706 	ldw	x, y
                                   1707 ; genPointerGet
      00D25C E6 07            [ 1] 1708 	ld	a, (0x7, x)
                                   1709 ; genCast
                                   1710 ; genAssign
      00D25E 97               [ 1] 1711 	ld	xl, a
      00D25F 0F 03            [ 1] 1712 	clr	(0x03, sp)
                                   1713 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1109: flag2 = I2Cx->SR3;
                                   1714 ; genAssign
                                   1715 ; genPointerGet
      00D261 90 E6 09         [ 1] 1716 	ld	a, (0x9, y)
                                   1717 ; genCast
                                   1718 ; genAssign
      00D264 95               [ 1] 1719 	ld	xh, a
                                   1720 ; peephole 1 removed dead clear of a.
                                   1721 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1112: lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
                                   1722 ; genLeftShiftLiteral
      00D265 0F 06            [ 1] 1723 	clr	(0x06, sp)
                                   1724 ; genOr
                                   1725 ; genAssign
      00D267 1F 01            [ 2] 1726 	ldw	(0x01, sp), x
                                   1727 ; genLabel
      00D269                       1728 00103$:
                                   1729 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1115: return (I2C_Event_TypeDef)lastevent;
                                   1730 ; genCast
                                   1731 ; genAssign
      00D269 1E 01            [ 2] 1732 	ldw	x, (0x01, sp)
                                   1733 ; genReturn
                                   1734 ; genLabel
                                   1735 ; peephole j30 removed unused label 00104$.
                                   1736 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1116: }
                                   1737 ; genEndFunction
      00D26B 5B 06            [ 2] 1738 	addw	sp, #6
      00D26D 81               [ 4] 1739 	ret
                                   1740 ;	Total I2C_GetLastEvent function size at codegen: 3 bytes.
                                   1741 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1152: FlagStatus I2C_GetFlagStatus(I2C_TypeDef* I2Cx, I2C_FLAG_TypeDef I2C_FLAG)
                                   1742 ; genLabel
                                   1743 ;	-----------------------------------------
                                   1744 ;	 function I2C_GetFlagStatus
                                   1745 ;	-----------------------------------------
                                   1746 ;	Register assignment might be sub-optimal.
                                   1747 ;	Stack space usage: 1 bytes.
      00D26E                       1748 _I2C_GetFlagStatus:
      00D26E 88               [ 1] 1749 	push	a
                                   1750 ; genReceive
                                   1751 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1154: uint8_t tempreg = 0;
                                   1752 ; genAssign
      00D26F 0F 01            [ 1] 1753 	clr	(0x01, sp)
                                   1754 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1162: regindex = (uint8_t)((uint16_t)I2C_FLAG >> 8);
                                   1755 ; genCast
                                   1756 ; genAssign
      00D271 16 04            [ 2] 1757 	ldw	y, (0x04, sp)
                                   1758 ; genGetByte
      00D273 90 9E            [ 1] 1759 	ld	a, yh
                                   1760 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1164: switch (regindex)
                                   1761 ; genCmpEQorNE
      00D275 A1 01            [ 1] 1762 	cp	a, #0x01
                                   1763 ; peephole j5 changed absolute to relative unconditional jump.
      00D277 27 0A            [ 1] 1764 	jreq	00101$
                                   1765 ; peephole j10 removed jra by using inverse jump logic
                                   1766 ; peephole j30 removed unused label 00140$.
                                   1767 ; skipping generated iCode
                                   1768 ; genCmpEQorNE
      00D279 A1 02            [ 1] 1769 	cp	a, #0x02
                                   1770 ; peephole j5 changed absolute to relative unconditional jump.
      00D27B 27 0C            [ 1] 1771 	jreq	00102$
                                   1772 ; peephole j10 removed jra by using inverse jump logic
                                   1773 ; peephole j30 removed unused label 00143$.
                                   1774 ; skipping generated iCode
                                   1775 ; genCmpEQorNE
      00D27D A1 03            [ 1] 1776 	cp	a, #0x03
                                   1777 ; peephole j5 changed absolute to relative unconditional jump.
      00D27F 27 0E            [ 1] 1778 	jreq	00103$
                                   1779 ; peephole j10 removed jra by using inverse jump logic
                                   1780 ; peephole j30 removed unused label 00146$.
                                   1781 ; skipping generated iCode
                                   1782 ; genGoto
      00D281 20 10            [ 2] 1783 	jra	00105$
                                   1784 ; peephole j5 changed absolute to relative unconditional jump.
                                   1785 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1167: case 0x01:
                                   1786 ; genLabel
      00D283                       1787 00101$:
                                   1788 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1168: tempreg = (uint8_t)I2Cx->SR1;
                                   1789 ; genAssign
                                   1790 ; genPointerGet
      00D283 E6 07            [ 1] 1791 	ld	a, (0x7, x)
      00D285 6B 01            [ 1] 1792 	ld	(0x01, sp), a
                                   1793 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1169: break;
                                   1794 ; genGoto
      00D287 20 0A            [ 2] 1795 	jra	00105$
                                   1796 ; peephole j5 changed absolute to relative unconditional jump.
                                   1797 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1172: case 0x02:
                                   1798 ; genLabel
      00D289                       1799 00102$:
                                   1800 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1173: tempreg = (uint8_t)I2Cx->SR2;
                                   1801 ; genAssign
                                   1802 ; genPointerGet
      00D289 E6 08            [ 1] 1803 	ld	a, (0x8, x)
      00D28B 6B 01            [ 1] 1804 	ld	(0x01, sp), a
                                   1805 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1174: break;
                                   1806 ; genGoto
      00D28D 20 04            [ 2] 1807 	jra	00105$
                                   1808 ; peephole j5 changed absolute to relative unconditional jump.
                                   1809 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1177: case 0x03:
                                   1810 ; genLabel
      00D28F                       1811 00103$:
                                   1812 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1178: tempreg = (uint8_t)I2Cx->SR3;
                                   1813 ; genAssign
                                   1814 ; genPointerGet
      00D28F E6 09            [ 1] 1815 	ld	a, (0x9, x)
      00D291 6B 01            [ 1] 1816 	ld	(0x01, sp), a
                                   1817 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1183: }
                                   1818 ; genLabel
      00D293                       1819 00105$:
                                   1820 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1186: if ((tempreg & (uint8_t)I2C_FLAG ) != 0)
                                   1821 ; genCast
                                   1822 ; genAssign
      00D293 7B 05            [ 1] 1823 	ld	a, (0x05, sp)
                                   1824 ; genAnd
                                   1825 ; genIfx
      00D295 14 01            [ 1] 1826 	and	a, (0x01, sp)
                                   1827 ; peephole 23 removed redundant tnz.
                                   1828 ; peephole j5 changed absolute to relative unconditional jump.
      00D297 27 03            [ 1] 1829 	jreq	00107$
                                   1830 ; peephole j10 removed jra by using inverse jump logic
                                   1831 ; peephole j30 removed unused label 00148$.
                                   1832 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1189: bitstatus = SET;
                                   1833 ; genAssign
      00D299 A6 01            [ 1] 1834 	ld	a, #0x01
                                   1835 ; genGoto
                                   1836 ; peephole j5 changed absolute to relative unconditional jump.
                                   1837 ; genLabel
                                   1838 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1194: bitstatus = RESET;
                                   1839 ; genAssign
                                   1840 ; genLabel
      00D29B 21                    1841 	.byte 0x21
                                   1842 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00D29C                       1843 00107$:
      00D29C 4F               [ 1] 1844 	clr	a
      00D29D                       1845 00108$:
                                   1846 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1197: return bitstatus;
                                   1847 ; genReturn
                                   1848 ; genLabel
                                   1849 ; peephole j30 removed unused label 00109$.
                                   1850 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1198: }
                                   1851 ; genEndFunction
      00D29D 1E 02            [ 2] 1852 	ldw	x, (2, sp)
      00D29F 5B 05            [ 2] 1853 	addw	sp, #5
      00D2A1 FC               [ 2] 1854 	jp	(x)
                                   1855 ;	Total I2C_GetFlagStatus function size at codegen: 5 bytes.
                                   1856 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1229: void I2C_ClearFlag(I2C_TypeDef* I2Cx, I2C_FLAG_TypeDef I2C_FLAG)
                                   1857 ; genLabel
                                   1858 ;	-----------------------------------------
                                   1859 ;	 function I2C_ClearFlag
                                   1860 ;	-----------------------------------------
                                   1861 ;	Register assignment might be sub-optimal.
                                   1862 ;	Stack space usage: 0 bytes.
      00D2A2                       1863 _I2C_ClearFlag:
                                   1864 ; genReceive
                                   1865 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1236: flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
                                   1866 ; genCast
                                   1867 ; genAssign
      00D2A2 16 03            [ 2] 1868 	ldw	y, (0x03, sp)
                                   1869 ; genAnd
      00D2A4 4F               [ 1] 1870 	clr	a
      00D2A5 90 95            [ 1] 1871 	ld	yh, a
                                   1872 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1238: I2Cx->SR2 = (uint8_t)((uint16_t)(~flagpos));
                                   1873 ; genPlus
      00D2A7 1C 00 08         [ 2] 1874 	addw	x, #0x0008
                                   1875 ; genCpl
      00D2AA 90 53            [ 2] 1876 	cplw	y
      00D2AC 90 9F            [ 1] 1877 	ld	a, yl
                                   1878 ; genCast
                                   1879 ; genAssign
                                   1880 ; genPointerSet
      00D2AE F7               [ 1] 1881 	ld	(x), a
                                   1882 ; genLabel
                                   1883 ; peephole j30 removed unused label 00101$.
                                   1884 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1239: }
                                   1885 ; genEndFunction
      00D2AF 1E 01            [ 2] 1886 	ldw	x, (1, sp)
      00D2B1 5B 04            [ 2] 1887 	addw	sp, #4
      00D2B3 FC               [ 2] 1888 	jp	(x)
                                   1889 ;	Total I2C_ClearFlag function size at codegen: 5 bytes.
                                   1890 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1264: ITStatus I2C_GetITStatus(I2C_TypeDef* I2Cx, I2C_IT_TypeDef I2C_IT)
                                   1891 ; genLabel
                                   1892 ;	-----------------------------------------
                                   1893 ;	 function I2C_GetITStatus
                                   1894 ;	-----------------------------------------
                                   1895 ;	Register assignment might be sub-optimal.
                                   1896 ;	Stack space usage: 6 bytes.
      00D2B4                       1897 _I2C_GetITStatus:
      00D2B4 52 06            [ 2] 1898 	sub	sp, #6
                                   1899 ; genReceive
      00D2B6 51               [ 1] 1900 	exgw	x, y
                                   1901 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1267: __IO uint8_t enablestatus = 0;
                                   1902 ; genAssign
      00D2B7 0F 03            [ 1] 1903 	clr	(0x03, sp)
                                   1904 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1273: tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_IT & ITEN_Mask)) >> 8);
                                   1905 ; genCast
                                   1906 ; genAssign
      00D2B9 1E 09            [ 2] 1907 	ldw	x, (0x09, sp)
      00D2BB 1F 04            [ 2] 1908 	ldw	(0x04, sp), x
                                   1909 ; genAnd
      00D2BD 0F 02            [ 1] 1910 	clr	(0x02, sp)
      00D2BF 7B 04            [ 1] 1911 	ld	a, (0x04, sp)
      00D2C1 A4 07            [ 1] 1912 	and	a, #0x07
                                   1913 ; genGetByte
                                   1914 ; genCast
                                   1915 ; genAssign
                                   1916 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1276: enablestatus = (uint8_t)(I2Cx->ITR & ( uint8_t)tempregister);
                                   1917 ; genAssign
      00D2C3 93               [ 1] 1918 	ldw	x, y
                                   1919 ; genPointerGet
      00D2C4 88               [ 1] 1920 	push	a
      00D2C5 E6 0A            [ 1] 1921 	ld	a, (0xa, x)
      00D2C7 6B 07            [ 1] 1922 	ld	(0x07, sp), a
      00D2C9 84               [ 1] 1923 	pop	a
                                   1924 ; genCast
                                   1925 ; genAssign
                                   1926 ; genAnd
      00D2CA 14 06            [ 1] 1927 	and	a, (0x06, sp)
      00D2CC 6B 03            [ 1] 1928 	ld	(0x03, sp), a
                                   1929 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1278: if ((uint16_t)((uint16_t)I2C_IT & REGISTER_Mask) == REGISTER_SR1_Index)
                                   1930 ; genAnd
      00D2CE 4F               [ 1] 1931 	clr	a
      00D2CF 97               [ 1] 1932 	ld	xl, a
      00D2D0 7B 04            [ 1] 1933 	ld	a, (0x04, sp)
      00D2D2 A4 30            [ 1] 1934 	and	a, #0x30
      00D2D4 95               [ 1] 1935 	ld	xh, a
                                   1936 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1281: if (((I2Cx->SR1 & (uint8_t)I2C_IT) != RESET) && enablestatus)
                                   1937 ; genCast
                                   1938 ; genAssign
      00D2D5 7B 0A            [ 1] 1939 	ld	a, (0x0a, sp)
      00D2D7 6B 06            [ 1] 1940 	ld	(0x06, sp), a
                                   1941 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1278: if ((uint16_t)((uint16_t)I2C_IT & REGISTER_Mask) == REGISTER_SR1_Index)
                                   1942 ; genCmpEQorNE
      00D2D9 A3 01 00         [ 2] 1943 	cpw	x, #0x0100
                                   1944 ; peephole j5 changed absolute to relative unconditional jump.
                                   1945 ; peephole j10 removed jra by using inverse jump logic
                                   1946 ; peephole j30 removed unused label 00150$.
                                   1947 ; peephole j5 changed absolute to relative unconditional jump.
      00D2DC 26 12            [ 1] 1948 	jrne	00110$
                                   1949 ; peephole j7 removed jra by using inverse jump logic
                                   1950 ; peephole j30 removed unused label 00151$.
                                   1951 ; skipping generated iCode
                                   1952 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1281: if (((I2Cx->SR1 & (uint8_t)I2C_IT) != RESET) && enablestatus)
                                   1953 ; genAssign
                                   1954 ; genPointerGet
      00D2DE 90 E6 07         [ 1] 1955 	ld	a, (0x7, y)
                                   1956 ; genAnd
                                   1957 ; genIfx
      00D2E1 14 06            [ 1] 1958 	and	a, (0x06, sp)
                                   1959 ; peephole 23 removed redundant tnz.
                                   1960 ; peephole j5 changed absolute to relative unconditional jump.
      00D2E3 27 08            [ 1] 1961 	jreq	00102$
                                   1962 ; peephole j10 removed jra by using inverse jump logic
                                   1963 ; peephole j30 removed unused label 00152$.
                                   1964 ; genIfx
      00D2E5 0D 03            [ 1] 1965 	tnz	(0x03, sp)
                                   1966 ; peephole j5 changed absolute to relative unconditional jump.
      00D2E7 27 04            [ 1] 1967 	jreq	00102$
                                   1968 ; peephole j10 removed jra by using inverse jump logic
                                   1969 ; peephole j30 removed unused label 00153$.
                                   1970 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1284: bitstatus = SET;
                                   1971 ; genAssign
      00D2E9 A6 01            [ 1] 1972 	ld	a, #0x01
                                   1973 ; genGoto
      00D2EB 20 12            [ 2] 1974 	jra	00111$
                                   1975 ; peephole j5 changed absolute to relative unconditional jump.
                                   1976 ; genLabel
      00D2ED                       1977 00102$:
                                   1978 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1289: bitstatus = RESET;
                                   1979 ; genAssign
      00D2ED 4F               [ 1] 1980 	clr	a
                                   1981 ; genGoto
      00D2EE 20 0F            [ 2] 1982 	jra	00111$
                                   1983 ; peephole j5 changed absolute to relative unconditional jump.
                                   1984 ; genLabel
      00D2F0                       1985 00110$:
                                   1986 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1295: if (((I2Cx->SR2 & (uint8_t)I2C_IT) != RESET) && enablestatus)
                                   1987 ; genAssign
                                   1988 ; genPointerGet
      00D2F0 90 E6 08         [ 1] 1989 	ld	a, (0x8, y)
                                   1990 ; genAnd
                                   1991 ; genIfx
      00D2F3 14 06            [ 1] 1992 	and	a, (0x06, sp)
                                   1993 ; peephole 23 removed redundant tnz.
                                   1994 ; peephole j5 changed absolute to relative unconditional jump.
      00D2F5 27 07            [ 1] 1995 	jreq	00106$
                                   1996 ; peephole j10 removed jra by using inverse jump logic
                                   1997 ; peephole j30 removed unused label 00154$.
                                   1998 ; genIfx
      00D2F7 0D 03            [ 1] 1999 	tnz	(0x03, sp)
                                   2000 ; peephole j5 changed absolute to relative unconditional jump.
      00D2F9 27 03            [ 1] 2001 	jreq	00106$
                                   2002 ; peephole j10 removed jra by using inverse jump logic
                                   2003 ; peephole j30 removed unused label 00155$.
                                   2004 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1298: bitstatus = SET;
                                   2005 ; genAssign
      00D2FB A6 01            [ 1] 2006 	ld	a, #0x01
                                   2007 ; genGoto
                                   2008 ; peephole j5 changed absolute to relative unconditional jump.
                                   2009 ; genLabel
                                   2010 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1303: bitstatus = RESET;
                                   2011 ; genAssign
                                   2012 ; genLabel
      00D2FD 21                    2013 	.byte 0x21
                                   2014 ; peephole jrf1 used jump-on-false opcode to shorten jump over 1-byte instruction.
      00D2FE                       2015 00106$:
      00D2FE 4F               [ 1] 2016 	clr	a
      00D2FF                       2017 00111$:
                                   2018 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1307: return  bitstatus;
                                   2019 ; genReturn
                                   2020 ; genLabel
                                   2021 ; peephole j30 removed unused label 00112$.
                                   2022 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1308: }
                                   2023 ; genEndFunction
      00D2FF 1E 07            [ 2] 2024 	ldw	x, (7, sp)
      00D301 5B 0A            [ 2] 2025 	addw	sp, #10
      00D303 FC               [ 2] 2026 	jp	(x)
                                   2027 ;	Total I2C_GetITStatus function size at codegen: 5 bytes.
                                   2028 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1340: void I2C_ClearITPendingBit(I2C_TypeDef* I2Cx, I2C_IT_TypeDef I2C_IT)
                                   2029 ; genLabel
                                   2030 ;	-----------------------------------------
                                   2031 ;	 function I2C_ClearITPendingBit
                                   2032 ;	-----------------------------------------
                                   2033 ;	Register assignment might be sub-optimal.
                                   2034 ;	Stack space usage: 0 bytes.
      00D304                       2035 _I2C_ClearITPendingBit:
                                   2036 ; genReceive
                                   2037 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1348: flagpos = (uint16_t)I2C_IT & FLAG_Mask;
                                   2038 ; genCast
                                   2039 ; genAssign
      00D304 16 03            [ 2] 2040 	ldw	y, (0x03, sp)
                                   2041 ; genAnd
      00D306 4F               [ 1] 2042 	clr	a
      00D307 90 95            [ 1] 2043 	ld	yh, a
                                   2044 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1351: I2Cx->SR2 = (uint8_t)((uint16_t)~flagpos);
                                   2045 ; genPlus
      00D309 1C 00 08         [ 2] 2046 	addw	x, #0x0008
                                   2047 ; genCpl
      00D30C 90 53            [ 2] 2048 	cplw	y
      00D30E 90 9F            [ 1] 2049 	ld	a, yl
                                   2050 ; genCast
                                   2051 ; genAssign
                                   2052 ; genPointerSet
      00D310 F7               [ 1] 2053 	ld	(x), a
                                   2054 ; genLabel
                                   2055 ; peephole j30 removed unused label 00101$.
                                   2056 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_i2c.c: 1352: }
                                   2057 ; genEndFunction
      00D311 1E 01            [ 2] 2058 	ldw	x, (1, sp)
      00D313 5B 04            [ 2] 2059 	addw	sp, #4
      00D315 FC               [ 2] 2060 	jp	(x)
                                   2061 ;	Total I2C_ClearITPendingBit function size at codegen: 5 bytes.
                                   2062 	.area CODE
                                   2063 	.area CONST
                                   2064 	.area INITIALIZER
                                   2065 	.area CABS (ABS)
