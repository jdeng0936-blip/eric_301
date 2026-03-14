#=============================================================================
# Makefile for Eric301 STM8L052C6 — SDCC Toolchain
# Replaces IAR Embedded Workbench build system
#=============================================================================

#-----------------------------------------------------------------------------
# Toolchain
#-----------------------------------------------------------------------------
CC      = sdcc
LD      = sdcc
OBJCOPY = sdobjcopy
SIZE    = stm8-size

#-----------------------------------------------------------------------------
# Target
#-----------------------------------------------------------------------------
TARGET  = firmware
DEVICE  = stm8l052c6

#-----------------------------------------------------------------------------
# Directories
#-----------------------------------------------------------------------------
USER_DIR      = User
STDPERIPH_SRC = STM8L15x_StdPeriph_Driver/src
STDPERIPH_INC = STM8L15x_StdPeriph_Driver/inc
BUILD_DIR     = build

#-----------------------------------------------------------------------------
# Source files (auto-discovery via wildcard)
#-----------------------------------------------------------------------------
USER_SRCS     = $(filter-out $(USER_DIR)/mini_printf.c $(USER_DIR)/printf.c $(USER_DIR)/stm8_ivt.c, $(wildcard $(USER_DIR)/*.c))
# Only compile StdPeriph modules actually used — firmware must fit 32KB Flash
STDPERIPH_SRCS = \
    $(STDPERIPH_SRC)/stm8l15x_adc.c \
    $(STDPERIPH_SRC)/stm8l15x_clk.c \
    $(STDPERIPH_SRC)/stm8l15x_dma.c \
    $(STDPERIPH_SRC)/stm8l15x_exti.c \
    $(STDPERIPH_SRC)/stm8l15x_flash.c \
    $(STDPERIPH_SRC)/stm8l15x_gpio.c \
    $(STDPERIPH_SRC)/stm8l15x_i2c.c \
    $(STDPERIPH_SRC)/stm8l15x_itc.c \
    $(STDPERIPH_SRC)/stm8l15x_pwr.c \
    $(STDPERIPH_SRC)/stm8l15x_rst.c \
    $(STDPERIPH_SRC)/stm8l15x_rtc.c \
    $(STDPERIPH_SRC)/stm8l15x_syscfg.c \
    $(STDPERIPH_SRC)/stm8l15x_tim2.c \
    $(STDPERIPH_SRC)/stm8l15x_tim4.c \
    $(STDPERIPH_SRC)/stm8l15x_usart.c \
    $(STDPERIPH_SRC)/stm8l15x_wwdg.c
ALL_SRCS      = $(USER_SRCS) $(STDPERIPH_SRCS)

#-----------------------------------------------------------------------------
# Object files (.rel) — placed in build/ directory
#-----------------------------------------------------------------------------
USER_RELS     = $(patsubst $(USER_DIR)/%.c, $(BUILD_DIR)/user/%.rel, $(USER_SRCS))
STDPERIPH_RELS = $(patsubst $(STDPERIPH_SRC)/%.c, $(BUILD_DIR)/stdperiph/%.rel, $(STDPERIPH_SRCS))
IVT_REL       = $(BUILD_DIR)/user/stm8_ivt.rel
ALL_RELS      = $(IVT_REL) $(USER_RELS) $(STDPERIPH_RELS)

#-----------------------------------------------------------------------------
# Compiler flags
#-----------------------------------------------------------------------------
CFLAGS  = -mstm8
CFLAGS += -DSTM8L15X_MD
CFLAGS += -DUSE_STDPERIPH_DRIVER
CFLAGS += --opt-code-size
CFLAGS += --std-c99
CFLAGS += --fverbose-asm
CFLAGS += -I$(USER_DIR)
CFLAGS += -I$(STDPERIPH_INC)

#-----------------------------------------------------------------------------
# Linker flags
#-----------------------------------------------------------------------------
LDFLAGS  = -mstm8
LDFLAGS += --out-fmt-ihx
LDFLAGS += --iram-size 0x0800
LDFLAGS += -Wl-bHOME=0x8000
LDFLAGS += -Wl-bGSINIT=0x8088
LDFLAGS += -Wl-bSSEG=0x07FF

#-----------------------------------------------------------------------------
# Phony targets
#-----------------------------------------------------------------------------
.PHONY: all clean flash info

#-----------------------------------------------------------------------------
# Default target
#-----------------------------------------------------------------------------
all: $(BUILD_DIR)/$(TARGET).ihx
	@echo ""
	@echo "======================================"
	@echo "  BUILD COMPLETE: $<"
	@echo "======================================"
	@echo ""

#-----------------------------------------------------------------------------
# Link: all .rel → firmware.ihx
#-----------------------------------------------------------------------------
$(BUILD_DIR)/$(TARGET).ihx: $(ALL_RELS)
	@echo "[LD] $@"
	-@$(LD) $(LDFLAGS) -o $@ $^

#-----------------------------------------------------------------------------
# Compile: User/*.c → build/user/*.rel
#-----------------------------------------------------------------------------
$(BUILD_DIR)/user/stm8_ivt.rel: $(USER_DIR)/stm8_ivt.s | $(BUILD_DIR)/user
	@echo "[AS] $<"
	@sdasstm8 -plosgff -o $@ $<

$(BUILD_DIR)/user/%.rel: $(USER_DIR)/%.c | $(BUILD_DIR)/user
	@echo "[CC] $<"
	@$(CC) $(CFLAGS) -c $< -o $@

#-----------------------------------------------------------------------------
# Compile: STM8L15x_StdPeriph_Driver/src/*.c → build/stdperiph/*.rel
#-----------------------------------------------------------------------------
$(BUILD_DIR)/stdperiph/%.rel: $(STDPERIPH_SRC)/%.c | $(BUILD_DIR)/stdperiph
	@echo "[CC] $<"
	@$(CC) $(CFLAGS) -c $< -o $@

#-----------------------------------------------------------------------------
# Create build directories
#-----------------------------------------------------------------------------
$(BUILD_DIR)/user:
	@mkdir -p $@

$(BUILD_DIR)/stdperiph:
	@mkdir -p $@

#-----------------------------------------------------------------------------
# Clean: remove ALL SDCC build artifacts
#-----------------------------------------------------------------------------
clean:
	@echo "[CLEAN] Removing build artifacts..."
	@rm -rf $(BUILD_DIR)
	@echo "[CLEAN] Done."

#-----------------------------------------------------------------------------
# Flash: program the firmware via stm8flash (ST-LINK)
#-----------------------------------------------------------------------------
flash: $(BUILD_DIR)/$(TARGET).ihx
	@echo "[FLASH] Programming $(DEVICE)..."
	stm8flash -c stlinkv2 -p $(DEVICE) -w $<

#-----------------------------------------------------------------------------
# Info: show build configuration
#-----------------------------------------------------------------------------
info:
	@echo "Target MCU:     $(DEVICE)"
	@echo "Compiler:       $(CC)"
	@echo "CFLAGS:         $(CFLAGS)"
	@echo "LDFLAGS:        $(LDFLAGS)"
	@echo "User sources:   $(words $(USER_SRCS)) files"
	@echo "StdPeriph srcs: $(words $(STDPERIPH_SRCS)) files"
	@echo "Total .rel:     $(words $(ALL_RELS)) files"
