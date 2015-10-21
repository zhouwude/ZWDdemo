//
//  NSString+CustomFont.h
//  ZWDdemo
//
//  Created by 周武德 on 15/10/14.
//  Copyright © 2015年 周武德. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 NSString值都为字体族名字
 */

/*
 经典字体家族
 "Helvetica Neue" =     (
 "HelveticaNeue-BoldItalic",
 "HelveticaNeue-Light",
 "HelveticaNeue-Italic",
 "HelveticaNeue-UltraLightItalic",
 "HelveticaNeue-CondensedBold",
 "HelveticaNeue-MediumItalic",
 "HelveticaNeue-Thin",
 "HelveticaNeue-Medium",
 "HelveticaNeue-ThinItalic",
 "HelveticaNeue-LightItalic",
 "HelveticaNeue-UltraLight",
 "HelveticaNeue-Bold",
 HelveticaNeue,
 "HelveticaNeue-CondensedBlack"
 );
 */

@interface NSString (CustomFont)
- (NSString *)customFontFamilyName;
- (NSString *)customFontFamilyNameAtIndex:(NSInteger)index;
- (NSArray *)customFontInfo;

- (NSString *)systemFontFamilyName;
- (NSString *)systemFontFamilyNameIndex:(NSInteger)index;
- (NSArray *)systemFontInfo;

@end
