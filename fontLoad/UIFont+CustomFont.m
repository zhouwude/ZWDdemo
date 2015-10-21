//
//  UIFont+CustomFont.m
//  ZWDdemo
//
//  Created by 周武德 on 15/10/14.
//  Copyright © 2015年 周武德. All rights reserved.
//

#import "UIFont+CustomFont.h"
#import "FontInfo.h"
#ifdef DEBUG
#define UIFontCustomFontDLog(fmt, ...) NSLog((@"%@[%d]:%s:" fmt),[[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, __func__, ##__VA_ARGS__);
#else
#define UIFontCustomFontDLog(...)
#endif
@implementation UIFont (CustomFont)
+ (void)registerFontFamily:(NSString *)fontPath withName:(NSString *)name
{
    if (fontPath == nil) {
        UIFontCustomFontDLog(@"[警告]fontPath为空");
        return;
    }
    
    [FontInfo registerFont:fontPath withName:name];
}

+ (NSDictionary *)systomAllFontsFamilyInfo
{
    return [FontInfo systomFontNameList];
}

@end
