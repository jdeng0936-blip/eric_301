                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8l15x_dma
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _DMA_GlobalDeInit
                                     11 	.globl _DMA_DeInit
                                     12 	.globl _DMA_Init
                                     13 	.globl _DMA_GlobalCmd
                                     14 	.globl _DMA_Cmd
                                     15 	.globl _DMA_SetTimeOut
                                     16 	.globl _DMA_SetCurrDataCounter
                                     17 	.globl _DMA_GetCurrDataCounter
                                     18 	.globl _DMA_ITConfig
                                     19 	.globl _DMA_GetFlagStatus
                                     20 	.globl _DMA_ClearFlag
                                     21 	.globl _DMA_GetITStatus
                                     22 	.globl _DMA_ClearITPendingBit
                                     23 ;--------------------------------------------------------
                                     24 ; ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area DATA
                                     27 ;--------------------------------------------------------
                                     28 ; ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area INITIALIZED
                                     31 ;--------------------------------------------------------
                                     32 ; absolute external ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DABS (ABS)
                                     35 
                                     36 ; default segment ordering for linker
                                     37 	.area HOME
                                     38 	.area GSINIT
                                     39 	.area GSFINAL
                                     40 	.area CONST
                                     41 	.area INITIALIZER
                                     42 	.area CODE
                                     43 
                                     44 ;--------------------------------------------------------
                                     45 ; global & static initialisations
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area GSINIT
                                     49 	.area GSFINAL
                                     50 	.area GSINIT
                                     51 ;--------------------------------------------------------
                                     52 ; Home
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
                                     55 	.area HOME
                                     56 ;--------------------------------------------------------
                                     57 ; code
                                     58 ;--------------------------------------------------------
                                     59 	.area CODE
                                     60 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 140: void DMA_GlobalDeInit(void)
                                     61 ; genLabel
                                     62 ;	-----------------------------------------
                                     63 ;	 function DMA_GlobalDeInit
                                     64 ;	-----------------------------------------
                                     65 ;	Register assignment is optimal.
                                     66 ;	Stack space usage: 0 bytes.
      00C753                         67 _DMA_GlobalDeInit:
                                     68 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 143: DMA1->GCSR &= (uint8_t)~(DMA_GCSR_GE);
                                     69 ; genPointerGet
                                     70 ; genAnd
                                     71 ; genPointerSet
      00C753 72 11 50 70      [ 1]   72 	bres	0x5070, #0
                                     73 ; peephole 204x replaced 'and' by 'bres' ('0x5070').
                                     74 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 146: DMA1->GCSR  = (uint8_t)DMA_GCSR_RESET_VALUE;
                                     75 ; genPointerSet
      00C757 35 FC 50 70      [ 1]   76 	mov	0x5070+0, #0xfc
                                     77 ; genLabel
                                     78 ; peephole j30 removed unused label 00101$.
                                     79 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 147: }
                                     80 ; genEndFunction
      00C75B 81               [ 4]   81 	ret
                                     82 ;	Total DMA_GlobalDeInit function size at codegen: 1 bytes.
                                     83 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 155: void DMA_DeInit(DMA_Channel_TypeDef* DMA_Channelx)
                                     84 ; genLabel
                                     85 ;	-----------------------------------------
                                     86 ;	 function DMA_DeInit
                                     87 ;	-----------------------------------------
                                     88 ;	Register assignment might be sub-optimal.
                                     89 ;	Stack space usage: 0 bytes.
      00C75C                         90 _DMA_DeInit:
                                     91 ; genReceive
                                     92 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 161: DMA_Channelx->CCR &= (uint8_t)~(DMA_CCR_CE);
                                     93 ; genCast
                                     94 ; genAssign
                                     95 ; peephole 5w replaced exgw-ldw by ldw.
      00C75C 90 93            [ 1]   96 	ldw	y, x
                                     97 ; genPointerGet
      00C75E F6               [ 1]   98 	ld	a, (x)
                                     99 ; genAnd
      00C75F A4 FE            [ 1]  100 	and	a, #0xfe
                                    101 ; genPointerSet
      00C761 F7               [ 1]  102 	ld	(x), a
                                    103 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 164: DMA_Channelx->CCR  = DMA_CCR_RESET_VALUE;
                                    104 ; genPointerSet
      00C762 7F               [ 1]  105 	clr	(x)
                                    106 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 167: DMA_Channelx->CNBTR = DMA_CNBTR_RESET_VALUE;
                                    107 ; genPlus
      00C763 93               [ 1]  108 	ldw	x, y
                                    109 ; genPointerSet
                                    110 ; peephole 10i moved addition of offset into instruction
      00C764 6F 02            [ 1]  111 	clr	(0x02, x)
                                    112 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 172: DMA_Channelx->CPARH  = DMA_C3PARH_RESET_VALUE;
                                    113 ; genPlus
      00C766 93               [ 1]  114 	ldw	x, y
      00C767 1C 00 03         [ 2]  115 	addw	x, #0x0003
                                    116 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 170: if (DMA_Channelx == DMA1_Channel3)
                                    117 ; genCmpEQorNE
      00C76A 90 A3 50 93      [ 2]  118 	cpw	y, #0x5093
                                    119 ; peephole j5 changed absolute to relative unconditional jump.
                                    120 ; peephole j10 removed jra by using inverse jump logic
                                    121 ; peephole j30 removed unused label 00114$.
                                    122 ; peephole j5 changed absolute to relative unconditional jump.
      00C76E 26 08            [ 1]  123 	jrne	00102$
                                    124 ; peephole j7 removed jra by using inverse jump logic
                                    125 ; peephole j30 removed unused label 00115$.
                                    126 ; skipping generated iCode
                                    127 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 172: DMA_Channelx->CPARH  = DMA_C3PARH_RESET_VALUE;
                                    128 ; genPointerSet
      00C770 A6 40            [ 1]  129 	ld	a, #0x40
      00C772 F7               [ 1]  130 	ld	(x), a
                                    131 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 173: DMA_Channelx->CM0EAR = DMA_C3M0EAR_RESET_VALUE;
                                    132 ; genPlus
      00C773 93               [ 1]  133 	ldw	x, y
                                    134 ; genPointerSet
                                    135 ; peephole 9a moved addition of offset into clear instruction
      00C774 6F 05            [ 1]  136 	clr	(0x0005, x)
                                    137 ; genGoto
      00C776 20 03            [ 2]  138 	jra	00103$
                                    139 ; peephole j5 changed absolute to relative unconditional jump.
                                    140 ; genLabel
      00C778                        141 00102$:
                                    142 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 177: DMA_Channelx->CPARH  = DMA_CPARH_RESET_VALUE;
                                    143 ; genPointerSet
      00C778 A6 52            [ 1]  144 	ld	a, #0x52
      00C77A F7               [ 1]  145 	ld	(x), a
                                    146 ; genLabel
      00C77B                        147 00103$:
                                    148 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 179: DMA_Channelx->CPARL  = DMA_CPARL_RESET_VALUE;
                                    149 ; genPlus
      00C77B 93               [ 1]  150 	ldw	x, y
                                    151 ; genPointerSet
                                    152 ; peephole 9a moved addition of offset into clear instruction
      00C77C 6F 04            [ 1]  153 	clr	(0x0004, x)
                                    154 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 182: DMA_Channelx->CM0ARH = DMA_CM0ARH_RESET_VALUE;
                                    155 ; genPlus
      00C77E 93               [ 1]  156 	ldw	x, y
                                    157 ; genPointerSet
                                    158 ; peephole 9a moved addition of offset into clear instruction
      00C77F 6F 06            [ 1]  159 	clr	(0x0006, x)
                                    160 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 183: DMA_Channelx->CM0ARL = DMA_CM0ARL_RESET_VALUE;
                                    161 ; genPlus
      00C781 93               [ 1]  162 	ldw	x, y
                                    163 ; genPointerSet
                                    164 ; peephole 9a moved addition of offset into clear instruction
      00C782 6F 07            [ 1]  165 	clr	(0x0007, x)
                                    166 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 186: DMA_Channelx->CSPR = DMA_CSPR_RESET_VALUE;
                                    167 ; genPlus
      00C784 93               [ 1]  168 	ldw	x, y
                                    169 ; genPointerSet
                                    170 ; peephole 10j moved addition of offset into instruction
      00C785 6F 01            [ 1]  171 	clr	(0x01, x)
                                    172 ; genLabel
                                    173 ; peephole j30 removed unused label 00104$.
                                    174 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 187: }
                                    175 ; genEndFunction
      00C787 81               [ 4]  176 	ret
                                    177 ;	Total DMA_DeInit function size at codegen: 1 bytes.
                                    178 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 224: void DMA_Init(DMA_Channel_TypeDef* DMA_Channelx,
                                    179 ; genLabel
                                    180 ;	-----------------------------------------
                                    181 ;	 function DMA_Init
                                    182 ;	-----------------------------------------
                                    183 ;	Register assignment might be sub-optimal.
                                    184 ;	Stack space usage: 1 bytes.
      00C788                        185 _DMA_Init:
      00C788 88               [ 1]  186 	push	a
                                    187 ; genReceive
                                    188 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 244: DMA_Channelx->CCR &= (uint8_t)~(DMA_CCR_CE);
                                    189 ; genCast
                                    190 ; genAssign
                                    191 ; peephole 5w replaced exgw-ldw by ldw.
      00C789 90 93            [ 1]  192 	ldw	y, x
                                    193 ; genPointerGet
      00C78B F6               [ 1]  194 	ld	a, (x)
                                    195 ; genAnd
      00C78C A4 FE            [ 1]  196 	and	a, #0xfe
                                    197 ; genPointerSet
      00C78E F7               [ 1]  198 	ld	(x), a
                                    199 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 247: DMA_Channelx->CCR  = DMA_CCR_RESET_VALUE;
                                    200 ; genPointerSet
      00C78F 7F               [ 1]  201 	clr	(x)
                                    202 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 250: DMA_Channelx->CCR |= (uint8_t)((uint8_t)((uint8_t)DMA_DIR | \
                                    203 ; genOr
      00C790 7B 0B            [ 1]  204 	ld	a, (0x0b, sp)
      00C792 1A 0C            [ 1]  205 	or	a, (0x0c, sp)
                                    206 ; genOr
      00C794 1A 0D            [ 1]  207 	or	a, (0x0d, sp)
                                    208 ; genPointerSet
      00C796 F7               [ 1]  209 	ld	(x), a
                                    210 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 255: DMA_Channelx->CSPR &= (uint8_t)(~(uint8_t)(DMA_CSPR_PL | DMA_CSPR_16BM));
                                    211 ; genPlus
      00C797 93               [ 1]  212 	ldw	x, y
      00C798 5C               [ 1]  213 	incw	x
                                    214 ; genPointerGet
      00C799 F6               [ 1]  215 	ld	a, (x)
                                    216 ; genAnd
      00C79A A4 C7            [ 1]  217 	and	a, #0xc7
                                    218 ; genPointerSet
      00C79C 6B 01            [ 1]  219 	ld	(0x01, sp), a
                                    220 ; peephole 4a removed redundant load from (0x01, sp) into a.
      00C79E F7               [ 1]  221 	ld	(x), a
                                    222 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 258: DMA_Channelx->CSPR |= (uint8_t)((uint8_t)DMA_Priority | \
                                    223 ; genOr
      00C79F 7B 0E            [ 1]  224 	ld	a, (0x0e, sp)
      00C7A1 1A 0F            [ 1]  225 	or	a, (0x0f, sp)
                                    226 ; genOr
      00C7A3 1A 01            [ 1]  227 	or	a, (0x01, sp)
                                    228 ; genPointerSet
      00C7A5 F7               [ 1]  229 	ld	(x), a
                                    230 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 263: DMA_Channelx->CNBTR = (uint8_t)DMA_BufferSize;
                                    231 ; genPlus
      00C7A6 93               [ 1]  232 	ldw	x, y
      00C7A7 5C               [ 1]  233 	incw	x
      00C7A8 5C               [ 1]  234 	incw	x
                                    235 ; genPointerSet
      00C7A9 7B 0A            [ 1]  236 	ld	a, (0x0a, sp)
      00C7AB F7               [ 1]  237 	ld	(x), a
                                    238 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 268: DMA_Channelx->CPARH = (uint8_t)(DMA_PeripheralMemory1BaseAddr >> (uint8_t)8);
                                    239 ; genPlus
                                    240 ; genGetByte
                                    241 ; genPointerSet
                                    242 ; peephole 9 moved addition of offset into storage instruction
                                    243 ; peephole 14c used y directly instead of going through x.
      00C7AC 7B 08            [ 1]  244 	ld	a, (0x08, sp)
      00C7AE 90 E7 03         [ 1]  245 	ld	(0x0003, y), a
                                    246 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 269: DMA_Channelx->CPARL = (uint8_t)(DMA_PeripheralMemory1BaseAddr);
                                    247 ; genPlus
                                    248 ; genCast
                                    249 ; genAssign
                                    250 ; genPointerSet
                                    251 ; peephole 9 moved addition of offset into storage instruction
                                    252 ; peephole 14c used y directly instead of going through x.
      00C7B1 7B 09            [ 1]  253 	ld	a, (0x09, sp)
      00C7B3 90 E7 04         [ 1]  254 	ld	(0x0004, y), a
                                    255 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 273: if (DMA_Channelx == DMA1_Channel3)
                                    256 ; genCmpEQorNE
      00C7B6 90 A3 50 93      [ 2]  257 	cpw	y, #0x5093
                                    258 ; peephole j5 changed absolute to relative unconditional jump.
                                    259 ; peephole j10 removed jra by using inverse jump logic
                                    260 ; peephole j30 removed unused label 00113$.
                                    261 ; peephole j5 changed absolute to relative unconditional jump.
      00C7BA 26 05            [ 1]  262 	jrne	00102$
                                    263 ; peephole j7 removed jra by using inverse jump logic
                                    264 ; peephole j30 removed unused label 00114$.
                                    265 ; skipping generated iCode
                                    266 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 275: DMA_Channelx->CM0EAR = (uint8_t)(DMA_Memory0BaseAddr >> (uint8_t)16);
                                    267 ; genPlus
                                    268 ; genGetByte
                                    269 ; genPointerSet
                                    270 ; peephole 9 moved addition of offset into storage instruction
                                    271 ; peephole 14c used y directly instead of going through x.
      00C7BC 7B 05            [ 1]  272 	ld	a, (0x05, sp)
      00C7BE 90 E7 05         [ 1]  273 	ld	(0x0005, y), a
                                    274 ; genLabel
      00C7C1                        275 00102$:
                                    276 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 277: DMA_Channelx->CM0ARH = (uint8_t)(DMA_Memory0BaseAddr >> (uint8_t)8);
                                    277 ; genPlus
                                    278 ; genGetByte
                                    279 ; genPointerSet
                                    280 ; peephole 9 moved addition of offset into storage instruction
                                    281 ; peephole 14c used y directly instead of going through x.
      00C7C1 7B 06            [ 1]  282 	ld	a, (0x06, sp)
      00C7C3 90 E7 06         [ 1]  283 	ld	(0x0006, y), a
                                    284 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 278: DMA_Channelx->CM0ARL = (uint8_t)(DMA_Memory0BaseAddr);
                                    285 ; genPlus
                                    286 ; genCast
                                    287 ; genAssign
                                    288 ; genPointerSet
                                    289 ; peephole 9 moved addition of offset into storage instruction
                                    290 ; peephole 14c used y directly instead of going through x.
      00C7C6 7B 07            [ 1]  291 	ld	a, (0x07, sp)
      00C7C8 90 E7 07         [ 1]  292 	ld	(0x0007, y), a
                                    293 ; genLabel
                                    294 ; peephole j30 removed unused label 00103$.
                                    295 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 280: }
                                    296 ; genEndFunction
      00C7CB 1E 02            [ 2]  297 	ldw	x, (2, sp)
      00C7CD 5B 0F            [ 2]  298 	addw	sp, #15
      00C7CF FC               [ 2]  299 	jp	(x)
                                    300 ;	Total DMA_Init function size at codegen: 5 bytes.
                                    301 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 288: void DMA_GlobalCmd(FunctionalState NewState)
                                    302 ; genLabel
                                    303 ;	-----------------------------------------
                                    304 ;	 function DMA_GlobalCmd
                                    305 ;	-----------------------------------------
                                    306 ;	Register assignment is optimal.
                                    307 ;	Stack space usage: 1 bytes.
      00C7D0                        308 _DMA_GlobalCmd:
      00C7D0 88               [ 1]  309 	push	a
                                    310 ; genReceive
      00C7D1 6B 01            [ 1]  311 	ld	(0x01, sp), a
                                    312 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 296: DMA1->GCSR |= (uint8_t)DMA_GCSR_GE;
                                    313 ; genPointerGet
      00C7D3 C6 50 70         [ 1]  314 	ld	a, 0x5070
                                    315 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 293: if (NewState != DISABLE)
                                    316 ; genIfx
      00C7D6 0D 01            [ 1]  317 	tnz	(0x01, sp)
                                    318 ; peephole j5 changed absolute to relative unconditional jump.
      00C7D8 27 07            [ 1]  319 	jreq	00102$
                                    320 ; peephole j10 removed jra by using inverse jump logic
                                    321 ; peephole j30 removed unused label 00113$.
                                    322 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 296: DMA1->GCSR |= (uint8_t)DMA_GCSR_GE;
                                    323 ; genOr
      00C7DA AA 01            [ 1]  324 	or	a, #0x01
                                    325 ; genPointerSet
      00C7DC C7 50 70         [ 1]  326 	ld	0x5070, a
                                    327 ; genGoto
      00C7DF 20 05            [ 2]  328 	jra	00104$
                                    329 ; peephole j5 changed absolute to relative unconditional jump.
                                    330 ; genLabel
      00C7E1                        331 00102$:
                                    332 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 301: DMA1->GCSR &= (uint8_t)(~DMA_GCSR_GE);
                                    333 ; genAnd
      00C7E1 A4 FE            [ 1]  334 	and	a, #0xfe
                                    335 ; genPointerSet
      00C7E3 C7 50 70         [ 1]  336 	ld	0x5070, a
                                    337 ; genLabel
      00C7E6                        338 00104$:
                                    339 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 303: }
                                    340 ; genEndFunction
      00C7E6 84               [ 1]  341 	pop	a
      00C7E7 81               [ 4]  342 	ret
                                    343 ;	Total DMA_GlobalCmd function size at codegen: 2 bytes.
                                    344 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 314: void DMA_Cmd(DMA_Channel_TypeDef* DMA_Channelx, FunctionalState NewState)
                                    345 ; genLabel
                                    346 ;	-----------------------------------------
                                    347 ;	 function DMA_Cmd
                                    348 ;	-----------------------------------------
                                    349 ;	Register assignment might be sub-optimal.
                                    350 ;	Stack space usage: 1 bytes.
      00C7E8                        351 _DMA_Cmd:
      00C7E8 88               [ 1]  352 	push	a
                                    353 ; genReceive
                                    354 ; genReceive
      00C7E9 6B 01            [ 1]  355 	ld	(0x01, sp), a
                                    356 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 323: DMA_Channelx->CCR |= DMA_CCR_CE;
                                    357 ; genCast
                                    358 ; genAssign
                                    359 ; genPointerGet
      00C7EB F6               [ 1]  360 	ld	a, (x)
                                    361 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 320: if (NewState != DISABLE)
                                    362 ; genIfx
      00C7EC 0D 01            [ 1]  363 	tnz	(0x01, sp)
                                    364 ; peephole j5 changed absolute to relative unconditional jump.
      00C7EE 27 05            [ 1]  365 	jreq	00102$
                                    366 ; peephole j10 removed jra by using inverse jump logic
                                    367 ; peephole j30 removed unused label 00113$.
                                    368 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 323: DMA_Channelx->CCR |= DMA_CCR_CE;
                                    369 ; genOr
      00C7F0 AA 01            [ 1]  370 	or	a, #0x01
                                    371 ; genPointerSet
      00C7F2 F7               [ 1]  372 	ld	(x), a
                                    373 ; genGoto
      00C7F3 20 03            [ 2]  374 	jra	00104$
                                    375 ; peephole j5 changed absolute to relative unconditional jump.
                                    376 ; genLabel
      00C7F5                        377 00102$:
                                    378 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 328: DMA_Channelx->CCR &= (uint8_t)(~DMA_CCR_CE);
                                    379 ; genAnd
      00C7F5 A4 FE            [ 1]  380 	and	a, #0xfe
                                    381 ; genPointerSet
      00C7F7 F7               [ 1]  382 	ld	(x), a
                                    383 ; genLabel
      00C7F8                        384 00104$:
                                    385 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 330: }
                                    386 ; genEndFunction
      00C7F8 84               [ 1]  387 	pop	a
      00C7F9 81               [ 4]  388 	ret
                                    389 ;	Total DMA_Cmd function size at codegen: 2 bytes.
                                    390 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 342: void DMA_SetTimeOut(uint8_t DMA_TimeOut)
                                    391 ; genLabel
                                    392 ;	-----------------------------------------
                                    393 ;	 function DMA_SetTimeOut
                                    394 ;	-----------------------------------------
                                    395 ;	Register assignment is optimal.
                                    396 ;	Stack space usage: 0 bytes.
      00C7FA                        397 _DMA_SetTimeOut:
                                    398 ; genReceive
                                    399 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 348: DMA1->GCSR = 0;
                                    400 ; genPointerSet
      00C7FA 35 00 50 70      [ 1]  401 	mov	0x5070+0, #0x00
                                    402 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 349: DMA1->GCSR = (uint8_t)(DMA_TimeOut << (uint8_t)2);
                                    403 ; genLeftShiftLiteral
      00C7FE 48               [ 1]  404 	sll	a
      00C7FF 48               [ 1]  405 	sll	a
                                    406 ; genPointerSet
      00C800 C7 50 70         [ 1]  407 	ld	0x5070, a
                                    408 ; genLabel
                                    409 ; peephole j30 removed unused label 00101$.
                                    410 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 351: }
                                    411 ; genEndFunction
      00C803 81               [ 4]  412 	ret
                                    413 ;	Total DMA_SetTimeOut function size at codegen: 1 bytes.
                                    414 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 401: void DMA_SetCurrDataCounter(DMA_Channel_TypeDef* DMA_Channelx, uint8_t DataNumber)
                                    415 ; genLabel
                                    416 ;	-----------------------------------------
                                    417 ;	 function DMA_SetCurrDataCounter
                                    418 ;	-----------------------------------------
                                    419 ;	Register assignment might be sub-optimal.
                                    420 ;	Stack space usage: 0 bytes.
      00C804                        421 _DMA_SetCurrDataCounter:
                                    422 ; genReceive
                                    423 ; genReceive
                                    424 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 407: DMA_Channelx->CNBTR = DataNumber;
                                    425 ; genPlus
      00C804 5C               [ 1]  426 	incw	x
      00C805 5C               [ 1]  427 	incw	x
                                    428 ; genPointerSet
      00C806 F7               [ 1]  429 	ld	(x), a
                                    430 ; genLabel
                                    431 ; peephole j30 removed unused label 00101$.
                                    432 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 408: }
                                    433 ; genEndFunction
      00C807 81               [ 4]  434 	ret
                                    435 ;	Total DMA_SetCurrDataCounter function size at codegen: 1 bytes.
                                    436 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 415: uint8_t DMA_GetCurrDataCounter(DMA_Channel_TypeDef* DMA_Channelx)
                                    437 ; genLabel
                                    438 ;	-----------------------------------------
                                    439 ;	 function DMA_GetCurrDataCounter
                                    440 ;	-----------------------------------------
                                    441 ;	Register assignment might be sub-optimal.
                                    442 ;	Stack space usage: 0 bytes.
      00C808                        443 _DMA_GetCurrDataCounter:
                                    444 ; genReceive
                                    445 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 421: return ((uint8_t)(DMA_Channelx->CNBTR));
                                    446 ; genAssign
                                    447 ; genPointerGet
      00C808 E6 02            [ 1]  448 	ld	a, (0x2, x)
                                    449 ; genReturn
                                    450 ; genLabel
                                    451 ; peephole j30 removed unused label 00101$.
                                    452 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 422: }
                                    453 ; genEndFunction
      00C80A 81               [ 4]  454 	ret
                                    455 ;	Total DMA_GetCurrDataCounter function size at codegen: 1 bytes.
                                    456 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 482: void DMA_ITConfig(DMA_Channel_TypeDef* DMA_Channelx, 
                                    457 ; genLabel
                                    458 ;	-----------------------------------------
                                    459 ;	 function DMA_ITConfig
                                    460 ;	-----------------------------------------
                                    461 ;	Register assignment might be sub-optimal.
                                    462 ;	Stack space usage: 1 bytes.
      00C80B                        463 _DMA_ITConfig:
      00C80B 88               [ 1]  464 	push	a
                                    465 ; genReceive
                                    466 ; genReceive
                                    467 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 494: DMA_Channelx->CCR |= (uint8_t)(DMA_ITx);
                                    468 ; genCast
                                    469 ; genAssign
                                    470 ; genPointerGet
      00C80C 88               [ 1]  471 	push	a
      00C80D F6               [ 1]  472 	ld	a, (x)
      00C80E 6B 02            [ 1]  473 	ld	(0x02, sp), a
      00C810 84               [ 1]  474 	pop	a
                                    475 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 491: if (NewState != DISABLE)
                                    476 ; genIfx
      00C811 0D 04            [ 1]  477 	tnz	(0x04, sp)
                                    478 ; peephole j5 changed absolute to relative unconditional jump.
      00C813 27 05            [ 1]  479 	jreq	00102$
                                    480 ; peephole j10 removed jra by using inverse jump logic
                                    481 ; peephole j30 removed unused label 00113$.
                                    482 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 494: DMA_Channelx->CCR |= (uint8_t)(DMA_ITx);
                                    483 ; genOr
      00C815 1A 01            [ 1]  484 	or	a, (0x01, sp)
                                    485 ; genPointerSet
      00C817 F7               [ 1]  486 	ld	(x), a
                                    487 ; genGoto
      00C818 20 04            [ 2]  488 	jra	00104$
                                    489 ; peephole j5 changed absolute to relative unconditional jump.
                                    490 ; genLabel
      00C81A                        491 00102$:
                                    492 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 499: DMA_Channelx->CCR &= (uint8_t)~(DMA_ITx);
                                    493 ; genCpl
      00C81A 43               [ 1]  494 	cpl	a
                                    495 ; genAnd
      00C81B 14 01            [ 1]  496 	and	a, (0x01, sp)
                                    497 ; genPointerSet
      00C81D F7               [ 1]  498 	ld	(x), a
                                    499 ; genLabel
      00C81E                        500 00104$:
                                    501 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 501: }
                                    502 ; genEndFunction
      00C81E 84               [ 1]  503 	pop	a
      00C81F 85               [ 2]  504 	popw	x
      00C820 84               [ 1]  505 	pop	a
      00C821 FC               [ 2]  506 	jp	(x)
                                    507 ;	Total DMA_ITConfig function size at codegen: 4 bytes.
                                    508 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 530: FlagStatus DMA_GetFlagStatus(DMA_FLAG_TypeDef DMA_FLAG)
                                    509 ; genLabel
                                    510 ;	-----------------------------------------
                                    511 ;	 function DMA_GetFlagStatus
                                    512 ;	-----------------------------------------
                                    513 ;	Register assignment might be sub-optimal.
                                    514 ;	Stack space usage: 3 bytes.
      00C822                        515 _DMA_GetFlagStatus:
      00C822 52 03            [ 2]  516 	sub	sp, #3
                                    517 ; genReceive
                                    518 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 541: tmpgcsr = DMA1->GCSR;
                                    519 ; genPointerGet
      00C824 C6 50 70         [ 1]  520 	ld	a, 0x5070
      00C827 6B 01            [ 1]  521 	ld	(0x01, sp), a
                                    522 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 542: tmpgir1 = DMA1->GIR1;
                                    523 ; genPointerGet
      00C829 C6 50 71         [ 1]  524 	ld	a, 0x5071
      00C82C 6B 02            [ 1]  525 	ld	(0x02, sp), a
                                    526 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 565: flagstatus = (FlagStatus)((uint8_t)(DMA_Channelx->CSPR) & (uint8_t)DMA_FLAG);
                                    527 ; genCast
                                    528 ; genAssign
      00C82E 41               [ 1]  529 	exg	a, xl
      00C82F 6B 03            [ 1]  530 	ld	(0x03, sp), a
      00C831 41               [ 1]  531 	exg	a, xl
                                    532 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 544: if (((uint16_t)DMA_FLAG & (uint16_t)0x0F00) != (uint16_t)RESET)
                                    533 ; genAnd
      00C832 9E               [ 1]  534 	ld	a, xh
      00C833 A5 0F            [ 1]  535 	bcp	a, #0x0f
                                    536 ; peephole j5 changed absolute to relative unconditional jump.
      00C835 27 28            [ 1]  537 	jreq	00114$
                                    538 ; peephole j10 removed jra by using inverse jump logic
                                    539 ; peephole j30 removed unused label 00153$.
                                    540 ; skipping generated iCode
                                    541 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 547: if (((uint16_t)DMA_FLAG & 0x0100) != (uint16_t)RESET)
                                    542 ; genAnd
      00C837 9E               [ 1]  543 	ld	a, xh
      00C838 44               [ 1]  544 	srl	a
                                    545 ; peephole j5 changed absolute to relative unconditional jump.
      00C839 24 05            [ 1]  546 	jrnc	00108$
                                    547 ; peephole j6 removed jra by using inverse jump logic
                                    548 ; peephole j30 removed unused label 00154$.
                                    549 ; skipping generated iCode
                                    550 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 549: DMA_Channelx = DMA1_Channel0;
                                    551 ; genAssign
      00C83B AE 50 75         [ 2]  552 	ldw	x, #0x5075
                                    553 ; genGoto
      00C83E 20 16            [ 2]  554 	jra	00109$
                                    555 ; peephole j5 changed absolute to relative unconditional jump.
                                    556 ; genLabel
      00C840                        557 00108$:
                                    558 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 551: else if  (((uint16_t)DMA_FLAG & 0x0200) != (uint16_t)RESET)
                                    559 ; genAnd
      00C840 9E               [ 1]  560 	ld	a, xh
      00C841 A5 02            [ 1]  561 	bcp	a, #0x02
                                    562 ; peephole j5 changed absolute to relative unconditional jump.
      00C843 27 05            [ 1]  563 	jreq	00105$
                                    564 ; peephole j10 removed jra by using inverse jump logic
                                    565 ; peephole j30 removed unused label 00155$.
                                    566 ; skipping generated iCode
                                    567 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 553: DMA_Channelx = DMA1_Channel1;
                                    568 ; genAssign
      00C845 AE 50 7F         [ 2]  569 	ldw	x, #0x507f
                                    570 ; genGoto
      00C848 20 0C            [ 2]  571 	jra	00109$
                                    572 ; peephole j5 changed absolute to relative unconditional jump.
                                    573 ; genLabel
      00C84A                        574 00105$:
                                    575 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 555: else if  (((uint16_t)DMA_FLAG & 0x0400) != (uint16_t)RESET)
                                    576 ; genAnd
      00C84A 9E               [ 1]  577 	ld	a, xh
      00C84B A5 04            [ 1]  578 	bcp	a, #0x04
                                    579 ; peephole j5 changed absolute to relative unconditional jump.
      00C84D 27 04            [ 1]  580 	jreq	00102$
                                    581 ; peephole j10 removed jra by using inverse jump logic
                                    582 ; peephole j30 removed unused label 00156$.
                                    583 ; skipping generated iCode
                                    584 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 557: DMA_Channelx = DMA1_Channel2;
                                    585 ; genAssign
      00C84F AE 50 89         [ 2]  586 	ldw	x, #0x5089
                                    587 ; genGoto
                                    588 ; peephole j5 changed absolute to relative unconditional jump.
                                    589 ; genLabel
                                    590 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 561: DMA_Channelx = DMA1_Channel3;
                                    591 ; genAssign
                                    592 ; genLabel
      00C852 BC                     593 	.byte 0xbc
                                    594 ; peephole jrf10 used ldf opcode to jump over 3-byte instruction.
      00C853                        595 00102$:
      00C853 AE 50 93         [ 2]  596 	ldw	x, #0x5093
      00C856                        597 00109$:
                                    598 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 565: flagstatus = (FlagStatus)((uint8_t)(DMA_Channelx->CSPR) & (uint8_t)DMA_FLAG);
                                    599 ; genAssign
                                    600 ; genPointerGet
      00C856 E6 01            [ 1]  601 	ld	a, (0x1, x)
                                    602 ; genAnd
      00C858 14 03            [ 1]  603 	and	a, (0x03, sp)
                                    604 ; genCast
      00C85A 40               [ 1]  605 	neg	a
      00C85B 4F               [ 1]  606 	clr	a
      00C85C 49               [ 1]  607 	rlc	a
                                    608 ; genGoto
      00C85D 20 13            [ 2]  609 	jra	00115$
                                    610 ; peephole j5 changed absolute to relative unconditional jump.
                                    611 ; genLabel
      00C85F                        612 00114$:
                                    613 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 567: else if (((uint16_t)DMA_FLAG & 0x1000) != (uint16_t)RESET)
                                    614 ; genAnd
      00C85F 9E               [ 1]  615 	ld	a, xh
      00C860 A5 10            [ 1]  616 	bcp	a, #0x10
                                    617 ; peephole j5 changed absolute to relative unconditional jump.
      00C862 27 09            [ 1]  618 	jreq	00111$
                                    619 ; peephole j10 removed jra by using inverse jump logic
                                    620 ; peephole j30 removed unused label 00157$.
                                    621 ; skipping generated iCode
                                    622 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 570: flagstatus = (FlagStatus)(tmpgir1 & (uint8_t)DMA_FLAG);
                                    623 ; genAnd
      00C864 7B 02            [ 1]  624 	ld	a, (0x02, sp)
      00C866 14 03            [ 1]  625 	and	a, (0x03, sp)
                                    626 ; genCast
      00C868 40               [ 1]  627 	neg	a
      00C869 4F               [ 1]  628 	clr	a
      00C86A 49               [ 1]  629 	rlc	a
                                    630 ; genGoto
      00C86B 20 05            [ 2]  631 	jra	00115$
                                    632 ; peephole j5 changed absolute to relative unconditional jump.
                                    633 ; genLabel
      00C86D                        634 00111$:
                                    635 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 575: flagstatus = (FlagStatus)(tmpgcsr & DMA_GCSR_GB);
                                    636 ; genGetABit
      00C86D 7B 01            [ 1]  637 	ld	a, (0x01, sp)
      00C86F 44               [ 1]  638 	srl	a
      00C870 A4 01            [ 1]  639 	and	a, #0x01
                                    640 ; genLabel
      00C872                        641 00115$:
                                    642 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 579: return (flagstatus);
                                    643 ; genReturn
                                    644 ; genLabel
                                    645 ; peephole j30 removed unused label 00116$.
                                    646 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 580: }
                                    647 ; genEndFunction
      00C872 5B 03            [ 2]  648 	addw	sp, #3
      00C874 81               [ 4]  649 	ret
                                    650 ;	Total DMA_GetFlagStatus function size at codegen: 3 bytes.
                                    651 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 597: void DMA_ClearFlag(DMA_FLAG_TypeDef DMA_FLAG)
                                    652 ; genLabel
                                    653 ;	-----------------------------------------
                                    654 ;	 function DMA_ClearFlag
                                    655 ;	-----------------------------------------
                                    656 ;	Register assignment might be sub-optimal.
                                    657 ;	Stack space usage: 1 bytes.
      00C875                        658 _DMA_ClearFlag:
      00C875 88               [ 1]  659 	push	a
                                    660 ; genReceive
      00C876 90 93            [ 1]  661 	ldw	y, x
      00C878 9E               [ 1]  662 	ld	a, xh
                                    663 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 605: if (((uint16_t)DMA_FLAG & (uint16_t)0x0100) != (uint16_t)RESET)
                                    664 ; genAnd
      00C879 A5 01            [ 1]  665 	bcp	a, #0x01
                                    666 ; peephole j5 changed absolute to relative unconditional jump.
      00C87B 27 05            [ 1]  667 	jreq	00108$
                                    668 ; peephole j10 removed jra by using inverse jump logic
                                    669 ; peephole j30 removed unused label 00133$.
                                    670 ; skipping generated iCode
                                    671 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 607: DMA_Channelx = DMA1_Channel0;
                                    672 ; genAssign
      00C87D AE 50 75         [ 2]  673 	ldw	x, #0x5075
                                    674 ; genGoto
      00C880 20 15            [ 2]  675 	jra	00109$
                                    676 ; peephole j5 changed absolute to relative unconditional jump.
                                    677 ; genLabel
      00C882                        678 00108$:
                                    679 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 611: if (((uint16_t)DMA_FLAG & (uint16_t)0x0200) != (uint16_t)RESET)
                                    680 ; genAnd
      00C882 A5 02            [ 1]  681 	bcp	a, #0x02
                                    682 ; peephole j5 changed absolute to relative unconditional jump.
      00C884 27 05            [ 1]  683 	jreq	00105$
                                    684 ; peephole j10 removed jra by using inverse jump logic
                                    685 ; peephole j30 removed unused label 00134$.
                                    686 ; skipping generated iCode
                                    687 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 613: DMA_Channelx = DMA1_Channel1;
                                    688 ; genAssign
      00C886 AE 50 7F         [ 2]  689 	ldw	x, #0x507f
                                    690 ; genGoto
      00C889 20 0C            [ 2]  691 	jra	00109$
                                    692 ; peephole j5 changed absolute to relative unconditional jump.
                                    693 ; genLabel
      00C88B                        694 00105$:
                                    695 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 617: if (((uint16_t)DMA_FLAG & (uint16_t)0x0400) != (uint16_t)RESET)
                                    696 ; genAnd
      00C88B A5 04            [ 1]  697 	bcp	a, #0x04
                                    698 ; peephole j5 changed absolute to relative unconditional jump.
      00C88D 27 05            [ 1]  699 	jreq	00102$
                                    700 ; peephole j10 removed jra by using inverse jump logic
                                    701 ; peephole j30 removed unused label 00135$.
                                    702 ; skipping generated iCode
                                    703 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 619: DMA_Channelx = DMA1_Channel2;
                                    704 ; genAssign
      00C88F AE 50 89         [ 2]  705 	ldw	x, #0x5089
                                    706 ; genGoto
      00C892 20 03            [ 2]  707 	jra	00109$
                                    708 ; peephole j5 changed absolute to relative unconditional jump.
                                    709 ; genLabel
      00C894                        710 00102$:
                                    711 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 623: DMA_Channelx = DMA1_Channel3;
                                    712 ; genAssign
      00C894 AE 50 93         [ 2]  713 	ldw	x, #0x5093
                                    714 ; genLabel
      00C897                        715 00109$:
                                    716 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 629: DMA_Channelx->CSPR &= (uint8_t)~(uint8_t)((uint8_t)DMA_FLAG & (uint8_t)0x06);
                                    717 ; genPlus
      00C897 5C               [ 1]  718 	incw	x
                                    719 ; genPointerGet
      00C898 88               [ 1]  720 	push	a
      00C899 F6               [ 1]  721 	ld	a, (x)
      00C89A 6B 02            [ 1]  722 	ld	(0x02, sp), a
      00C89C 84               [ 1]  723 	pop	a
                                    724 ; genCast
                                    725 ; genAssign
      00C89D 90 9F            [ 1]  726 	ld	a, yl
                                    727 ; genAnd
      00C89F A4 06            [ 1]  728 	and	a, #0x06
                                    729 ; genCpl
      00C8A1 43               [ 1]  730 	cpl	a
                                    731 ; genAnd
      00C8A2 14 01            [ 1]  732 	and	a, (0x01, sp)
                                    733 ; genPointerSet
      00C8A4 F7               [ 1]  734 	ld	(x), a
                                    735 ; genLabel
                                    736 ; peephole j30 removed unused label 00110$.
                                    737 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 630: }
                                    738 ; genEndFunction
      00C8A5 84               [ 1]  739 	pop	a
      00C8A6 81               [ 4]  740 	ret
                                    741 ;	Total DMA_ClearFlag function size at codegen: 2 bytes.
                                    742 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 646: ITStatus DMA_GetITStatus(DMA_IT_TypeDef DMA_IT)
                                    743 ; genLabel
                                    744 ;	-----------------------------------------
                                    745 ;	 function DMA_GetITStatus
                                    746 ;	-----------------------------------------
                                    747 ;	Register assignment might be sub-optimal.
                                    748 ;	Stack space usage: 2 bytes.
      00C8A7                        749 _DMA_GetITStatus:
      00C8A7 89               [ 2]  750 	pushw	x
                                    751 ; genReceive
                                    752 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 657: if ((DMA_IT & 0x10) != (uint8_t)RESET)
                                    753 ; genAnd
      00C8A8 6B 02            [ 1]  754 	ld	(0x02, sp), a
                                    755 ; peephole 4a removed redundant load from (0x02, sp) into a.
      00C8AA A5 10            [ 1]  756 	bcp	a, #0x10
                                    757 ; peephole j5 changed absolute to relative unconditional jump.
      00C8AC 27 05            [ 1]  758 	jreq	00108$
                                    759 ; peephole j10 removed jra by using inverse jump logic
                                    760 ; peephole j30 removed unused label 00133$.
                                    761 ; skipping generated iCode
                                    762 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 659: DMA_Channelx = DMA1_Channel0;
                                    763 ; genAssign
      00C8AE AE 50 75         [ 2]  764 	ldw	x, #0x5075
                                    765 ; genGoto
      00C8B1 20 18            [ 2]  766 	jra	00109$
                                    767 ; peephole j5 changed absolute to relative unconditional jump.
                                    768 ; genLabel
      00C8B3                        769 00108$:
                                    770 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 663: if  ((DMA_IT & 0x20) != (uint8_t)RESET)
                                    771 ; genAnd
      00C8B3 7B 02            [ 1]  772 	ld	a, (0x02, sp)
      00C8B5 A5 20            [ 1]  773 	bcp	a, #0x20
                                    774 ; peephole j5 changed absolute to relative unconditional jump.
      00C8B7 27 05            [ 1]  775 	jreq	00105$
                                    776 ; peephole j10 removed jra by using inverse jump logic
                                    777 ; peephole j30 removed unused label 00134$.
                                    778 ; skipping generated iCode
                                    779 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 665: DMA_Channelx = DMA1_Channel1;
                                    780 ; genAssign
      00C8B9 AE 50 7F         [ 2]  781 	ldw	x, #0x507f
                                    782 ; genGoto
      00C8BC 20 0D            [ 2]  783 	jra	00109$
                                    784 ; peephole j5 changed absolute to relative unconditional jump.
                                    785 ; genLabel
      00C8BE                        786 00105$:
                                    787 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 669: if  ((DMA_IT & 0x40) != (uint8_t)RESET)
                                    788 ; genAnd
      00C8BE 7B 02            [ 1]  789 	ld	a, (0x02, sp)
      00C8C0 A5 40            [ 1]  790 	bcp	a, #0x40
                                    791 ; peephole j5 changed absolute to relative unconditional jump.
      00C8C2 27 04            [ 1]  792 	jreq	00102$
                                    793 ; peephole j10 removed jra by using inverse jump logic
                                    794 ; peephole j30 removed unused label 00135$.
                                    795 ; skipping generated iCode
                                    796 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 671: DMA_Channelx = DMA1_Channel2;
                                    797 ; genAssign
      00C8C4 AE 50 89         [ 2]  798 	ldw	x, #0x5089
                                    799 ; genGoto
                                    800 ; peephole j5 changed absolute to relative unconditional jump.
                                    801 ; genLabel
                                    802 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 675: DMA_Channelx = DMA1_Channel3;
                                    803 ; genAssign
                                    804 ; genLabel
      00C8C7 BC                     805 	.byte 0xbc
                                    806 ; peephole jrf10 used ldf opcode to jump over 3-byte instruction.
      00C8C8                        807 00102$:
      00C8C8 AE 50 93         [ 2]  808 	ldw	x, #0x5093
      00C8CB                        809 00109$:
                                    810 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 680: tmpreg =  DMA_Channelx->CSPR ;
                                    811 ; genAssign
      00C8CB 90 93            [ 1]  812 	ldw	y, x
                                    813 ; genPointerGet
      00C8CD 90 E6 01         [ 1]  814 	ld	a, (0x1, y)
      00C8D0 6B 01            [ 1]  815 	ld	(0x01, sp), a
                                    816 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 681: tmpreg &= DMA_Channelx->CCR ;
                                    817 ; genPointerGet
      00C8D2 F6               [ 1]  818 	ld	a, (x)
                                    819 ; genAnd
      00C8D3 14 01            [ 1]  820 	and	a, (0x01, sp)
      00C8D5 6B 01            [ 1]  821 	ld	(0x01, sp), a
                                    822 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 682: tmp2 = (uint8_t)(DMA_IT & (uint8_t)(DMA_CCR_TCIE | DMA_CCR_HTIE));
                                    823 ; genAnd
      00C8D7 7B 02            [ 1]  824 	ld	a, (0x02, sp)
      00C8D9 A4 06            [ 1]  825 	and	a, #0x06
                                    826 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 683: itstatus = (ITStatus)((uint8_t)tmpreg & (uint8_t)tmp2);
                                    827 ; genAnd
      00C8DB 14 01            [ 1]  828 	and	a, (0x01, sp)
                                    829 ; genCast
      00C8DD 40               [ 1]  830 	neg	a
      00C8DE 4F               [ 1]  831 	clr	a
      00C8DF 49               [ 1]  832 	rlc	a
                                    833 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 686: return (itstatus);
                                    834 ; genReturn
                                    835 ; genLabel
                                    836 ; peephole j30 removed unused label 00110$.
                                    837 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 687: }
                                    838 ; genEndFunction
      00C8E0 85               [ 2]  839 	popw	x
      00C8E1 81               [ 4]  840 	ret
                                    841 ;	Total DMA_GetITStatus function size at codegen: 2 bytes.
                                    842 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 704: void DMA_ClearITPendingBit(DMA_IT_TypeDef DMA_IT)
                                    843 ; genLabel
                                    844 ;	-----------------------------------------
                                    845 ;	 function DMA_ClearITPendingBit
                                    846 ;	-----------------------------------------
                                    847 ;	Register assignment might be sub-optimal.
                                    848 ;	Stack space usage: 1 bytes.
      00C8E2                        849 _DMA_ClearITPendingBit:
      00C8E2 88               [ 1]  850 	push	a
                                    851 ; genReceive
                                    852 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 711: if ((DMA_IT & 0x10) != (uint8_t)RESET)
                                    853 ; genAnd
      00C8E3 A5 10            [ 1]  854 	bcp	a, #0x10
                                    855 ; peephole j5 changed absolute to relative unconditional jump.
      00C8E5 27 05            [ 1]  856 	jreq	00108$
                                    857 ; peephole j10 removed jra by using inverse jump logic
                                    858 ; peephole j30 removed unused label 00133$.
                                    859 ; skipping generated iCode
                                    860 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 713: DMA_Channelx = DMA1_Channel0;
                                    861 ; genAssign
      00C8E7 AE 50 75         [ 2]  862 	ldw	x, #0x5075
                                    863 ; genGoto
      00C8EA 20 15            [ 2]  864 	jra	00109$
                                    865 ; peephole j5 changed absolute to relative unconditional jump.
                                    866 ; genLabel
      00C8EC                        867 00108$:
                                    868 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 717: if ((DMA_IT & 0x20) != (uint8_t)RESET)
                                    869 ; genAnd
      00C8EC A5 20            [ 1]  870 	bcp	a, #0x20
                                    871 ; peephole j5 changed absolute to relative unconditional jump.
      00C8EE 27 05            [ 1]  872 	jreq	00105$
                                    873 ; peephole j10 removed jra by using inverse jump logic
                                    874 ; peephole j30 removed unused label 00134$.
                                    875 ; skipping generated iCode
                                    876 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 719: DMA_Channelx = DMA1_Channel1;
                                    877 ; genAssign
      00C8F0 AE 50 7F         [ 2]  878 	ldw	x, #0x507f
                                    879 ; genGoto
      00C8F3 20 0C            [ 2]  880 	jra	00109$
                                    881 ; peephole j5 changed absolute to relative unconditional jump.
                                    882 ; genLabel
      00C8F5                        883 00105$:
                                    884 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 723: if ((DMA_IT & 0x40) != (uint8_t)RESET)
                                    885 ; genAnd
      00C8F5 A5 40            [ 1]  886 	bcp	a, #0x40
                                    887 ; peephole j5 changed absolute to relative unconditional jump.
      00C8F7 27 05            [ 1]  888 	jreq	00102$
                                    889 ; peephole j10 removed jra by using inverse jump logic
                                    890 ; peephole j30 removed unused label 00135$.
                                    891 ; skipping generated iCode
                                    892 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 725: DMA_Channelx = DMA1_Channel2;
                                    893 ; genAssign
      00C8F9 AE 50 89         [ 2]  894 	ldw	x, #0x5089
                                    895 ; genGoto
      00C8FC 20 03            [ 2]  896 	jra	00109$
                                    897 ; peephole j5 changed absolute to relative unconditional jump.
                                    898 ; genLabel
      00C8FE                        899 00102$:
                                    900 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 729: DMA_Channelx = DMA1_Channel3;
                                    901 ; genAssign
      00C8FE AE 50 93         [ 2]  902 	ldw	x, #0x5093
                                    903 ; genLabel
      00C901                        904 00109$:
                                    905 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 734: DMA_Channelx->CSPR &= (uint8_t)~(uint8_t)(DMA_IT & (uint8_t)0x06);
                                    906 ; genPlus
      00C901 5C               [ 1]  907 	incw	x
                                    908 ; genPointerGet
      00C902 88               [ 1]  909 	push	a
      00C903 F6               [ 1]  910 	ld	a, (x)
      00C904 6B 02            [ 1]  911 	ld	(0x02, sp), a
      00C906 84               [ 1]  912 	pop	a
                                    913 ; genAnd
      00C907 A4 06            [ 1]  914 	and	a, #0x06
                                    915 ; genCpl
      00C909 43               [ 1]  916 	cpl	a
                                    917 ; genAnd
      00C90A 14 01            [ 1]  918 	and	a, (0x01, sp)
                                    919 ; genPointerSet
      00C90C F7               [ 1]  920 	ld	(x), a
                                    921 ; genLabel
                                    922 ; peephole j30 removed unused label 00110$.
                                    923 ;	STM8L15x_StdPeriph_Driver/src/stm8l15x_dma.c: 735: }
                                    924 ; genEndFunction
      00C90D 84               [ 1]  925 	pop	a
      00C90E 81               [ 4]  926 	ret
                                    927 ;	Total DMA_ClearITPendingBit function size at codegen: 2 bytes.
                                    928 	.area CODE
                                    929 	.area CONST
                                    930 	.area INITIALIZER
                                    931 	.area CABS (ABS)
