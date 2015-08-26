//
//  NSArray+Swizzle.m
//  ZWDdemo
//
//  Created by 周武德 on 15/8/24.
//  Copyright (c) 2015年 周武德. All rights reserved.
//

#import "NSArray+Swizzle.h"

@implementation NSArray (Swizzle)
- (id)myLastObject
{
    id ret = [self myLastObject];
    NSLog(@"**********  myLastObject *********** ");
    return ret;
}
@end
