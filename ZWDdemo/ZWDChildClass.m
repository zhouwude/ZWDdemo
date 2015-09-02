//
//  ZWDChildClass.m
//  ZWDdemo
//
//  Created by 周武德 on 15/9/2.
//  Copyright (c) 2015年 周武德. All rights reserved.
//

#import "ZWDChildClass.h"

@implementation ZWDChildClass
/**
 *  __LINE__：在源代码中插入当前源代码行号；
 __FILE__：在源文件中插入当前源文件名；
 __DATE__：在源文件中插入当前的编译日期
 __TIME__：在源文件中插入当前编译时间；
 __STDC__：当要求程序严格遵循ANSI C标准时该标识被赋值为1；
 */
+ (void) initialize {
    NSLog(@"%@ %s %s", [self class], __FUNCTION__,__func__);
}
+ (void) load {
NSLog(@"%s %s %d %s %s %s", __FUNCTION__,__func__,__LINE__,__FILE__,__DATE__,__TIME__);
    }
@end
