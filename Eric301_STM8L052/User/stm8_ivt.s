; STM8L Interrupt Vector Table for SDCC (complete 32-entry)
;
; STM8 IVT layout:
;   0x8000: Vector 0 = RESET
;   0x8004: Vector 1 = TRAP
;   0x8008: Vector 2 = IRQ0  (__interrupt(0))
;   0x800C: Vector 3 = IRQ1  (__interrupt(1))
;   ...
;   0x8000+(N+2)*4 = IRQN (__interrupt(N))
;
    .area HOME

    ; 0x8000 Vector 0: RESET - jump to SDCC startup
    int s_GSINIT

    ; 0x8004 Vector 1: TRAP
    int _TRAP_IRQHandler

    ; 0x8008 Vector 2: IRQ0 = __interrupt(0) - NonHandledInterrupt
    int _NonHandledInterrupt

    ; 0x800C Vector 3: IRQ1 = __interrupt(1) - FLASH
    int _FLASH_IRQHandler

    ; 0x8010 Vector 4: IRQ2 = __interrupt(2) - DMA1_CH0_1
    int _DMA1_CHANNEL0_1_IRQHandler

    ; 0x8014 Vector 5: IRQ3 = __interrupt(3) - DMA1_CH2_3
    int _DMA1_CHANNEL2_3_IRQHandler

    ; 0x8018 Vector 6: IRQ4 = __interrupt(4) - RTC
    int _RTC_CSSLSE_IRQHandler

    ; 0x801C Vector 7: IRQ5 = __interrupt(5) - EXTIE_F_PVD
    int _EXTIE_F_PVD_IRQHandler

    ; 0x8020 Vector 8: IRQ6 = __interrupt(6) - EXTIB_G
    int _EXTIB_G_IRQHandler

    ; 0x8024 Vector 9: IRQ7 = __interrupt(7) - EXTID_H
    int _EXTID_H_IRQHandler

    ; 0x8028 Vector 10: IRQ8 = __interrupt(8) - EXTI0
    int _EXTI0_IRQHandler

    ; 0x802C Vector 11: IRQ9 = __interrupt(9) - EXTI1
    int _EXTI1_IRQHandler

    ; 0x8030 Vector 12: IRQ10 = __interrupt(10) - EXTI2
    int _EXTI2_IRQHandler

    ; 0x8034 Vector 13: IRQ11 = __interrupt(11) - EXTI3
    int _EXTI3_IRQHandler

    ; 0x8038 Vector 14: IRQ12 = __interrupt(12) - EXTI4
    int _EXTI4_IRQHandler

    ; 0x803C Vector 15: IRQ13 = __interrupt(13) - EXTI5
    int _EXTI5_IRQHandler

    ; 0x8040 Vector 16: IRQ14 = __interrupt(14) - EXTI6
    int _EXTI6_IRQHandler

    ; 0x8044 Vector 17: IRQ15 = __interrupt(15) - EXTI7
    int _EXTI7_IRQHandler

    ; 0x8048 Vector 18: IRQ16 = __interrupt(16) - LCD_AES
    int _LCD_AES_IRQHandler

    ; 0x804C Vector 19: IRQ17 = __interrupt(17) - SWITCH_CSS
    int _SWITCH_CSS_BREAK_DAC_IRQHandler

    ; 0x8050 Vector 20: IRQ18 = __interrupt(18) - ADC1_COMP
    int _ADC1_COMP_IRQHandler

    ; 0x8054 Vector 21: IRQ19 = __interrupt(19) - TIM2_UPD *** CRITICAL: WWDG + Scan_Key ***
    int _TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler

    ; 0x8058 Vector 22: IRQ20 = __interrupt(20) - TIM2_CC
    int _TIM2_CC_USART2_RX_IRQHandler

    ; 0x805C Vector 23: IRQ21 = __interrupt(21) - TIM3_UPD
    int _TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler

    ; 0x8060 Vector 24: IRQ22 = __interrupt(22) - TIM3_CC
    int _TIM3_CC_USART3_RX_IRQHandler

    ; 0x8064 Vector 25: IRQ23 = __interrupt(23) - TIM1_UPD
    int _TIM1_UPD_OVF_TRG_COM_IRQHandler

    ; 0x8068 Vector 26: IRQ24 = __interrupt(24) - TIM1_CC
    int _TIM1_CC_IRQHandler

    ; 0x806C Vector 27: IRQ25 = __interrupt(25) - TIM4_UPD *** CRITICAL: MSG timer ***
    int _TIM4_UPD_OVF_TRG_IRQHandler

    ; 0x8070 Vector 28: IRQ26 = __interrupt(26) - SPI1
    int _SPI1_IRQHandler

    ; 0x8074 Vector 29: IRQ27 = __interrupt(27) - USART1_TX
    int _USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler

    ; 0x8078 Vector 30: IRQ28 = __interrupt(28) - USART1_RX
    int _USART1_RX_TIM5_CC_IRQHandler

    ; 0x807C Vector 31: IRQ29 = __interrupt(29) - I2C1_SPI2
    int _I2C1_SPI2_IRQHandler
