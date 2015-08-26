//
//  main.m
//  ZWDdemo
//
//  Created by 周武德 on 15/7/26.
//  Copyright (c) 2015年 周武德. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "NSArray+Swizzle.h"
#import <objc/runtime.h>
//举个例子好了，我想钩一下NSArray的lastObject 方法，只需两个步骤。
//第一步：给NSArray加一个我自己的lastObject
int main(int argc, char * argv[]) {
    @autoreleasepool {
//        Method ori_Method =  class_getInstanceMethod([NSArray class], @selector(lastObject));
//        Method my_Method = class_getInstanceMethod([NSArray class], @selector(myLastObject));
//        method_exchangeImplementations(ori_Method, my_Method);
//        
//        NSArray *array = @[@"0",@"1",@"2",@"3"];
//        NSString *string = [array lastObject];
//        NSLog(@"TEST RESULT : %@",string);
//        
//        return 0;
       return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
