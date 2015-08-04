//
//  sark.m
//  ZWDdemo
//
//  Created by 周武德 on 15/8/4.
//  Copyright (c) 2015年 周武德. All rights reserved.
//

#import "sark.h"

@implementation sark
-(void)sark{
    
}
+(void)load
{
    NSLog(@"NoneClass _cmd: %@", NSStringFromSelector(_cmd));
}
- (void) noneClassMethod
{
    NSLog(@"_cmd: %@", NSStringFromSelector(_cmd));
}
-(NSString *)getString:(NSValue *)value1 value2:(NSValue *)value2{
    return [NSString stringWithFormat:@"%@1111%@",value1,value2];
}

@end
