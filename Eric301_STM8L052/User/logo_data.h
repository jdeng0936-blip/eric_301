/**
 * logo_data.h - Eric301 固件版本 & Logo 配置
 *
 * 如需更换 Logo:
 *   python3 tools/img2logo.py your_logo.png
 *   将生成的数组替换 st7565r_lcd.c 中的 logo[] 即可
 */

#ifndef _LOGO_DATA_H_
#define _LOGO_DATA_H_

/*=== 固件版本号 (修改此处即可全局生效) ===*/
#define FW_VERSION_STR  "V1.0.0"

/*=== 出厂时间 (编译时自动获取电脑日期) ===*/
#define FACTORY_DATE_STR __DATE__

#endif /* _LOGO_DATA_H_ */
