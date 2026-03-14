# Eric301 LCD Logo 更换操作手册

## 概述

Eric301 使用 **ST7565R** 驱动的 128×64 LCD 显示屏。开机时会显示一个全屏 Logo 图像。Logo 数据以 C 数组 `logo[1040]` 的形式存储在 `User/st7565r_lcd.c` 中。

项目已提供自动转换脚本 `tools/img2logo.py`，支持将任意图片一键转换为固件兼容的 C 数组。

---

## 前置条件

| 项目      | 要求                              |
|-----------|-----------------------------------|
| Python 3  | 系统已安装                        |
| Pillow 库 | `pip3 install Pillow`             |
| SDCC      | 已安装（`brew install sdcc`）     |
| stm8flash | 已安装（`brew install stm8flash`）|
| ST-LINK   | V2，USB 连接到 PCB               |

---

## 操作步骤

### 第一步：准备 Logo 图片

**要求：**
- 格式：PNG / BMP / JPG 均可
- 推荐尺寸：**128 × 64 像素**（脚本会自动缩放，但原始比例为 2:1 效果最佳）
- 颜色：**黑白**（黑色部分 = LCD 亮点，白色 = 不显示）
- 如果是彩色图，脚本会自动转灰度 → 二值化（阈值 128）

> **提示：** 可以用任何图片编辑软件（预览、Photoshop、GIMP 等）制作。建议先在 128×64 分辨率下预览效果。

### 第二步：运行转换脚本

将新 Logo 图片（例如 `new_logo.png`）放到项目目录，然后执行：

```bash
cd /Users/imac2026/Desktop/AI_301/Eric301_STM8L052

# 方式一：直接输出到终端预览
python3 tools/img2logo.py new_logo.png

# 方式二：输出到临时文件
python3 tools/img2logo.py new_logo.png /tmp/new_logo_data.txt
```

脚本会自动完成：
1. 缩放图片到 128×64
2. 转为黑白二值
3. 按 ST7565R 页模式排列（8 页 × 128 列，LSB=top）
4. 添加 16 字节文件头（`0x12, 0x34, 0x56, 0x78, ...`）
5. 输出完整的 `logo[1040]` C 数组

### 第三步：替换源码中的 Logo 数据

打开 `User/st7565r_lcd.c`，找到以下代码段（约第 582-656 行）：

```c
/* Absolute address: logo[] at 0x00F000 in Flash */
#if defined(_IAR_)
#pragma location = 0x00F000
#endif
__ROOT const uint8_t logo[1040]=
{
    0x12,0x34,0x56,0x78, ...
    // ... 1040 字节的数据 ...
};
```

**将 `{ }` 中的全部数据替换为脚本生成的新数组内容。**

> ⚠️ **注意：** 不要修改 `#if defined(_IAR_)` 和 `__ROOT` 等编译器指令行，只替换花括号内的数据。

### 第四步：编译固件

```bash
cd /Users/imac2026/Desktop/AI_301/Eric301_STM8L052
make clean && make
```

确认输出 `BUILD COMPLETE: build/firmware.ihx`，无错误。

### 第五步：烧录到芯片

确保 ST-LINK V2 已通过 USB 连接到 PCB，然后执行：

```bash
make flash
```

成功输出示例：
```
[FLASH] Programming stm8l052c6...
28067 bytes at 0x8000... OK
Bytes written: 28067
```

### 第六步：验证

断电重启 PCB，观察 LCD 是否显示新的 Logo。

---

## 完整命令速查

```bash
# 进入项目目录
cd /Users/imac2026/Desktop/AI_301/Eric301_STM8L052

# 1. 转换图片（替换 new_logo.png 为你的文件名）
python3 tools/img2logo.py new_logo.png /tmp/new_logo_data.txt

# 2. 手动将 /tmp/new_logo_data.txt 中的数组内容
#    复制到 User/st7565r_lcd.c 的 logo[] 数组中

# 3. 编译
make clean && make

# 4. 烧录
make flash
```

---

## 技术细节

### Logo 数据格式

```
logo[1040] = {
    [0-15]     16 字节文件头（固定 0x12,0x34,0x56,0x78 + 12字节0x00）
    [16-143]   Page 0: 第 0-7 行像素（128 字节）
    [144-271]  Page 1: 第 8-15 行像素（128 字节）
    ...
    [912-1039] Page 7: 第 56-63 行像素（128 字节）
}
```

### ST7565R 页模式存储方式

```
每个字节对应一个列的 8 个像素（纵向）:
  Bit 0 = 最上面的像素
  Bit 7 = 最下面的像素
  1 = 亮点（黑色像素），0 = 灭点（白色像素）

  Page 0: Y=0..7    (128 bytes)
  Page 1: Y=8..15   (128 bytes)
  ...
  Page 7: Y=56..63  (128 bytes)
```

### 显示函数

`show_pic_128x64()` 在 `lcd_init()` 中被调用，从 `logo[16]` 开始读取 1024 字节，逐页逐列写入 LCD。

---

## 常见问题

| 问题 | 解决方法 |
|------|----------|
| Logo 上下颠倒 | 原图垂直翻转后重新转换 |
| Logo 左右镜像 | 原图水平翻转后重新转换 |
| Logo 全黑/全白 | 检查原图对比度，调整二值化阈值（修改脚本中 `< 128` 的值）|
| 编译报数组大小错误 | 确保数组恰好 1040 字节（16 头 + 1024 数据）|
| `Pillow` 未安装 | 执行 `pip3 install Pillow` |
