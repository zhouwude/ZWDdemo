//
//  NSString+CustomFont.m
//  ZWDdemo
//
//  Created by 周武德 on 15/10/14.
//  Copyright © 2015年 周武德. All rights reserved.
//

#import "NSString+CustomFont.h"
#import "FontInfo.h"
@implementation NSString (CustomFont)
#pragma public
- (NSString *)customFontFamilyName
{
    return [self fontFamilyName:self customFontIndex:0];
}

- (NSString *)customFontFamilyNameAtIndex:(NSInteger)index
{
    return [self fontFamilyName:self customFontIndex:index];
}

- (NSArray *)customFontInfo
{
    NSDictionary *fontDic = [FontInfo customFontNameList];
    if (self) {
        return fontDic[self];
    } else {
        return nil;
    }
}

- (NSString *)systemFontFamilyName
{
    return [self fontFamilyName:self systemFontIndex:0];
}

- (NSString *)systemFontFamilyNameIndex:(NSInteger)index
{
    return [self fontFamilyName:self systemFontIndex:index];
}

- (NSArray *)systemFontInfo
{
    NSDictionary *fontDic = [FontInfo systomFontNameList];
    if (self) {
        return fontDic[self];
    } else {
        return nil;
    }
}

#pragma private
- (NSString *)fontFamilyName:(NSString *)fontName customFontIndex:(NSInteger)index
{
    if (fontName == nil) {
        return nil;
    }
    
    NSDictionary *fontDic = [FontInfo customFontNameList];
    NSArray *fontIndex = fontDic[fontName];
    
    if (fontIndex) {
        return fontIndex[index];
    } else {
        return nil;
    }
}

- (NSString *)fontFamilyName:(NSString *)fontName systemFontIndex:(NSInteger)index
{
    if (fontName == nil) {
        return nil;
    }
    
    NSDictionary *fontDic = [FontInfo systomFontNameList];
    NSArray *fontIndex = fontDic[fontName];
    
    if (fontIndex) {
        return fontIndex[index];
    } else {
        return nil;
    }
}

@end
