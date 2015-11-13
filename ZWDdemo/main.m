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
//        @autoreleasepool {
        
/*
 利用@autoreleasepool优化循环
 
 利用@autoreleasepool优化循环的内存占用，我觉得最有用的一点，下面就说说这个点。
 
 如下面的循环，次数非常多，而且循环体里面的对象都是临时创建使用的，就可以用 @autoreleasepool 包起来，让每次循环结束时，可以及时的释放临时对象的内存。
 
 //来自Apple文档，见参考
 NSArray *urls = <# An array of file URLs #>;
 for (NSURL *url in urls) {
 @autoreleasepool {
 NSError *error;
 NSString *fileContents = [NSString stringWithContentsOfURL:url
 encoding:NSUTF8StringEncoding error:&error];
// Process the string, creating and autoreleasing more objects.
    }
}

这么做的效果是极其显著地，就如本文最开始的图一样，可以自己把示例工程下回来运行下试试~
 */


//        }
       return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
