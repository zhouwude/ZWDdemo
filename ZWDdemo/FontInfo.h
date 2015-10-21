//
//  FontInfo.h
//  ZWDdemo
//
//  Created by 周武德 on 15/10/14.
//  Copyright © 2015年 周武德. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FontInfo : NSObject
+ (NSDictionary *)customFontNameList;
+ (NSDictionary *)systomFontNameList;
+ (void)registerFont:(NSString *)fontPath withName:(NSString *)name;
@end
