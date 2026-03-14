                                      1 ; STM8L Interrupt Vector Table for SDCC (complete 32-entry)
                                      2 ;
                                      3 ; STM8 IVT layout:
                                      4 ;   0x8000: Vector 0 = RESET
                                      5 ;   0x8004: Vector 1 = TRAP
                                      6 ;   0x8008: Vector 2 = IRQ0  (__interrupt(0))
                                      7 ;   0x800C: Vector 3 = IRQ1  (__interrupt(1))
                                      8 ;   ...
                                      9 ;   0x8000+(N+2)*4 = IRQN (__interrupt(N))
                                     10 ;
                                     11     .area HOME
                                     12 
                                     13     ; 0x8000 Vector 0: RESET - jump to SDCC startup
      008000 82 00 80 88             14     int s_GSINIT
                                     15 
                                     16     ; 0x8004 Vector 1: TRAP
      008004 82 00 C0 0C             17     int _TRAP_IRQHandler
                                     18 
                                     19     ; 0x8008 Vector 2: IRQ0 = __interrupt(0) - NonHandledInterrupt
      008008 82 00 C0 0B             20     int _NonHandledInterrupt
                                     21 
                                     22     ; 0x800C Vector 3: IRQ1 = __interrupt(1) - FLASH
      00800C 82 00 C0 0D             23     int _FLASH_IRQHandler
                                     24 
                                     25     ; 0x8010 Vector 4: IRQ2 = __interrupt(2) - DMA1_CH0_1
      008010 82 00 C0 0E             26     int _DMA1_CHANNEL0_1_IRQHandler
                                     27 
                                     28     ; 0x8014 Vector 5: IRQ3 = __interrupt(3) - DMA1_CH2_3
      008014 82 00 C0 5D             29     int _DMA1_CHANNEL2_3_IRQHandler
                                     30 
                                     31     ; 0x8018 Vector 6: IRQ4 = __interrupt(4) - RTC
      008018 82 00 C0 5E             32     int _RTC_CSSLSE_IRQHandler
                                     33 
                                     34     ; 0x801C Vector 7: IRQ5 = __interrupt(5) - EXTIE_F_PVD
      00801C 82 00 C0 5F             35     int _EXTIE_F_PVD_IRQHandler
                                     36 
                                     37     ; 0x8020 Vector 8: IRQ6 = __interrupt(6) - EXTIB_G
      008020 82 00 C0 60             38     int _EXTIB_G_IRQHandler
                                     39 
                                     40     ; 0x8024 Vector 9: IRQ7 = __interrupt(7) - EXTID_H
      008024 82 00 C0 61             41     int _EXTID_H_IRQHandler
                                     42 
                                     43     ; 0x8028 Vector 10: IRQ8 = __interrupt(8) - EXTI0
      008028 82 00 C0 62             44     int _EXTI0_IRQHandler
                                     45 
                                     46     ; 0x802C Vector 11: IRQ9 = __interrupt(9) - EXTI1
      00802C 82 00 C0 69             47     int _EXTI1_IRQHandler
                                     48 
                                     49     ; 0x8030 Vector 12: IRQ10 = __interrupt(10) - EXTI2
      008030 82 00 C0 71             50     int _EXTI2_IRQHandler
                                     51 
                                     52     ; 0x8034 Vector 13: IRQ11 = __interrupt(11) - EXTI3
      008034 82 00 C0 79             53     int _EXTI3_IRQHandler
                                     54 
                                     55     ; 0x8038 Vector 14: IRQ12 = __interrupt(12) - EXTI4
      008038 82 00 C0 81             56     int _EXTI4_IRQHandler
                                     57 
                                     58     ; 0x803C Vector 15: IRQ13 = __interrupt(13) - EXTI5
      00803C 82 00 C0 89             59     int _EXTI5_IRQHandler
                                     60 
                                     61     ; 0x8040 Vector 16: IRQ14 = __interrupt(14) - EXTI6
      008040 82 00 C0 C2             62     int _EXTI6_IRQHandler
                                     63 
                                     64     ; 0x8044 Vector 17: IRQ15 = __interrupt(15) - EXTI7
      008044 82 00 C0 FB             65     int _EXTI7_IRQHandler
                                     66 
                                     67     ; 0x8048 Vector 18: IRQ16 = __interrupt(16) - LCD_AES
      008048 82 00 C1 34             68     int _LCD_AES_IRQHandler
                                     69 
                                     70     ; 0x804C Vector 19: IRQ17 = __interrupt(17) - SWITCH_CSS
      00804C 82 00 C1 35             71     int _SWITCH_CSS_BREAK_DAC_IRQHandler
                                     72 
                                     73     ; 0x8050 Vector 20: IRQ18 = __interrupt(18) - ADC1_COMP
      008050 82 00 C1 36             74     int _ADC1_COMP_IRQHandler
                                     75 
                                     76     ; 0x8054 Vector 21: IRQ19 = __interrupt(19) - TIM2_UPD *** CRITICAL: WWDG + Scan_Key ***
      008054 82 00 C1 37             77     int _TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler
                                     78 
                                     79     ; 0x8058 Vector 22: IRQ20 = __interrupt(20) - TIM2_CC
      008058 82 00 C1 7A             80     int _TIM2_CC_USART2_RX_IRQHandler
                                     81 
                                     82     ; 0x805C Vector 23: IRQ21 = __interrupt(21) - TIM3_UPD
      00805C 82 00 C1 7B             83     int _TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler
                                     84 
                                     85     ; 0x8060 Vector 24: IRQ22 = __interrupt(22) - TIM3_CC
      008060 82 00 C1 7C             86     int _TIM3_CC_USART3_RX_IRQHandler
                                     87 
                                     88     ; 0x8064 Vector 25: IRQ23 = __interrupt(23) - TIM1_UPD
      008064 82 00 C1 7D             89     int _TIM1_UPD_OVF_TRG_COM_IRQHandler
                                     90 
                                     91     ; 0x8068 Vector 26: IRQ24 = __interrupt(24) - TIM1_CC
      008068 82 00 C1 7E             92     int _TIM1_CC_IRQHandler
                                     93 
                                     94     ; 0x806C Vector 27: IRQ25 = __interrupt(25) - TIM4_UPD *** CRITICAL: MSG timer ***
      00806C 82 00 C1 7F             95     int _TIM4_UPD_OVF_TRG_IRQHandler
                                     96 
                                     97     ; 0x8070 Vector 28: IRQ26 = __interrupt(26) - SPI1
      008070 82 00 C1 C6             98     int _SPI1_IRQHandler
                                     99 
                                    100     ; 0x8074 Vector 29: IRQ27 = __interrupt(27) - USART1_TX
      008074 82 00 C1 C7            101     int _USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler
                                    102 
                                    103     ; 0x8078 Vector 30: IRQ28 = __interrupt(28) - USART1_RX
      008078 82 00 C1 C8            104     int _USART1_RX_TIM5_CC_IRQHandler
                                    105 
                                    106     ; 0x807C Vector 31: IRQ29 = __interrupt(29) - I2C1_SPI2
      00807C 82 00 C2 1F            107     int _I2C1_SPI2_IRQHandler
