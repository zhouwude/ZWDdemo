//
//  UIFont+CustomFont.h
//  ZWDdemo
//
//  Created by 周武德 on 15/10/14.
//  Copyright © 2015年 周武德. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (CustomFont)
+ (void)registerFontFamily:(NSString *)fontPath withName:(NSString *)name;
+ (NSDictionary *)systomAllFontsFamilyInfo;

@end
