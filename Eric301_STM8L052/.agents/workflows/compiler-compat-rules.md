---
description: Cross-compiler porting rules for STM8L052 (IAR/Cosmic/SDCC)
---

# 跨编译器移植规则 (STM8L052 Eric301)

## 最高原则：宏定义优先 (Macro-First)

所有编译器差异 **必须** 通过 `stm8l15x.h` 中的集中宏定义解决。
**严禁** 在业务 `.c` 文件中直接使用编译器专有关键字。

---

## 1. 编译器检测

所有编译器分支通过 `stm8l15x.h` 行 85-94 的统一检测管理：

| 内建宏 | 编译器标记 |
|--------|-----------|
| `__CSMC__` | `_COSMIC_` |
| `__RCSTM8__` | `_RAISONANCE_` |
| `__ICCSTM8__` | `_IAR_` |
| `__SDCC` | `_SDCC_` |

**规则**: 新增编译器时，只需在此处添加 `#elif` 分支。

## 2. 禁止在业务文件中使用的关键字

以下关键字已有对应宏包装，**绝对禁止**直接在 `.c` 文件中使用：

| 禁用关键字 | 应使用的宏 | 定义位置 |
|-----------|-----------|---------|
| `__root` | `__ROOT` | `stm8l15x.h` |
| `#pragma location = 0xAddr` | `__AT(addr)` + IAR `#pragma` 守卫 | `stm8l15x.h` |
| `__far`, `__near`, `__tiny`, `__eeprom` | `FAR`, `NEAR`, `TINY`, `EEPROM` | `stm8l15x.h` |
| `__interrupt` | `INTERRUPT` | `stm8l15x.h` |
| `_Pragma(vector=...)` | `INTERRUPT_HANDLER(name, irq_num)` | `stm8l15x.h` |
| `__ramfunc` | `IN_RAM(func_decl)` | `stm8l15x.h` |
| `__enable_interrupt()` | `enableInterrupts()` | `stm8l15x.h` |
| `__disable_interrupt()` | `disableInterrupts()` | `stm8l15x.h` |
| `__no_operation()` | `nop()` | `stm8l15x.h` |
| `__halt()` | `halt()` | `stm8l15x.h` |
| `__wait_for_interrupt()` | `wfi()` | `stm8l15x.h` |
| `__wait_for_event()` | `wfe()` | `stm8l15x.h` |
| `__trap()` | `trap()` | `stm8l15x.h` |

## 3. 绝对地址定位标准写法

```c
/* 绝对地址定位（全平台兼容） */
#if defined(_IAR_)
#pragma location = 0x00F000
#endif
__ROOT const uint8_t __AT(0xF000) my_data[SIZE] = { ... };
```

> [!IMPORTANT]
> IAR 的 `#pragma location` 无法用宏替代（它是预处理器指令），必须保留 `#if defined(_IAR_)` 守卫。
> SDCC 通过 `__at()` 实现（已由 `__AT()` 宏包装）。

## 4. 中断处理函数标准写法

```c
/* stm8l15x_it.c 中的标准中断写法 */
INTERRUPT_HANDLER(EXTI0_IRQHandler, 8)
{
    /* 中断处理代码 */
}
```

**绝对禁止** 直接写 `__interrupt void` 或 `@far @interrupt void`。

## 5. 新增编译器支持检查清单

添加新编译器时，须在 `stm8l15x.h` 中修改以下 8 处：

1. [ ] 编译器检测 (`#elif defined(...)`)
2. [ ] FAR/NEAR/TINY/EEPROM 宏
3. [ ] __ROOT/__AT 宏
4. [ ] IN_RAM 宏
5. [ ] enableInterrupts/disableInterrupts/nop/halt/wfi/wfe/trap 内建函数
6. [ ] INTERRUPT_HANDLER / INTERRUPT_HANDLER_TRAP 宏
7. [ ] INTERRUPT 宏
8. [ ] 验证所有业务 `.c` 文件零改动
