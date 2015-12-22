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
void funtion11(int *p);
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
        
        
        CFStringRef ref = CFStringCreateWithCString(kCFAllocatorDefault, "sdeeed", kCFStringEncodingUTF8);
        
        NSString *str = (__bridge  NSString *)(ref);
       
        NSLog(@"---%@---%@",str,ref);
        CFRelease(ref);
    
        
        int a = 100;
        funtion11(&a);
        NSLog(@"ppppp_________%@",@(a));
        
       
        
        
//        1、创建一个几何原始数值
//        CGPoint  CGPointMake（CGPoint A,CGPoint B）
//        返回一个指定坐标点
//        CGRect   CGRectMake（CGFloat x,CGFloat y,CGFloat width,CGFloat height）
//        根据指定的坐标和大小创建一个矩形
//        CGSize   CGSizeMake（CGFloat width,CGFloat height）
//        根据指定长宽创建一个CGSize
//        2、修改矩形
//        CGRectDivide
        CGRect rect = CGRectMake(100, 100, 100.7, 100.8);
        CGRect rect1 = CGRectInset(rect, 20,20);
        NSLog(@"-----%@",NSStringFromCGRect(rect1));
//        CGRect  CGRectInset（CGRect rect,CGFloat dx,CGFloat dy）
//        返回一个比原矩形大或小的矩形，但是中心点是相同的
        CGRect rect2 =  CGRectIntegral(rect);
        NSLog(@"--++++++%@",NSStringFromCGRect(rect2));
//        将矩形A的值转变成整数，得到一个最小的矩形，
//        CGRect CGRectIntersection:（CGRect A，CGRect B）
//        获取两个矩形相交处所的矩形，没有相交返回NULL，用CGRectIsNull来检测
//        CGRectOffset
//        CGRectStandardize
//        CGRectUnion
//        3、比较数值
//        bool  CGPointEqualToPoint（CGPoint A,CGPoint B）
//        返回两个点是否相等
//        bool  CGSizeEqualToSize（CGSize A，CGSize B）
//        CGSizeAB是否相等
//        bool  CGRectEqualToRect（CGRect A，CGRect B）
//        矩形AB的位置大小是否相等
//        bool  CGRectIntersectsRect（CGRect A，CGRect B）
//        矩形AB是否相交，可用来判断精灵是否离开了屏幕
//        4、检查
//        bool  CGRectContainsPoint（CGRect A, CGPoint B）
//        检测矩形A是否包含指定的点B
//        bool  CGRectContainsRect（CGRect A，CGRect B）
//        检测矩形A是否包含矩形B
//        5、获取最大值、中等职和最小值
//        CGFloat   CGRectGetMinX（CGRect A）
//        获取矩形x坐标的最小值
//        CGFloat   CGRectGetMinY（CGRect A）
//        获取矩形y坐标的最小值
//        CGFloat   CGRectGetMidX（CGRect A）
//        获取矩形x坐标的中间值
//        CGFloat   CGRectGetMidY（CGRect A）
//        获取矩形y坐标的中间值
//        CGFloat   CGRectGetMaxX（CGRect A）
//        获取矩形x坐标的最大值
//        CGFloat   CGRectGetMaxY（CGRect A）
//        获取矩形y坐标的最大值
//        6、获取高和宽
//        CGFloat  CGRectGetHeight（CGRect A）
//        获取矩形A的高
//        CGFloat  CGRectGetWidth（CGRect A）            
//        获取矩形A的宽
//        7、检测矩形是否存在或是无穷大
//        bool  CGRectIsEmpty（CGRect A）
//        矩形A是否长和宽都是0，或者是个NULL
//        bool  CGRectIsNull（CGRect A）
//        矩形A是否为NULL
//        bool  CGRectIsInfinite（CGRect A）
//        矩形A是否无穷大，没有边界
//        void CGRectDivide(CGRect rect, CGRect *slice, CGRect *remainder,
//                          CGFloat amount, CGRectEdge edge);
//        这个函数用来分割矩形，参数rect是源矩形，slice和remainder是分割后的两部分矩形，amount是分割线，edge是分割选项。
//        注意：1、edge是一个宏，定义了分割的方式如下：
//
//        typedef CF_ENUM(uint32_t, CGRectEdge) {
//            //从x的最小处进行垂直分割
//            CGRectMinXEdge,
//            //从y的最小处进行水平分割
//            CGRectMinYEdge,
//            //从x最大处进行垂直分割
//            CGRectMaxXEdge,
//            //从y最大处进行水平分割
//            CGRectMaxYEdge
//        };
//        2、slice和remainder是地址。
//        3、举例如下，将会分割出两个矩形分别为(40,0,60,100)(0,0,40,100);
//        CGRect rect = CGRectMake(0, 0, 100, 100);
//        CGRect slice ;
//        CGRect remainder;
//        CGRectDivide(rect, &slice, &remainder, 60, CGRectMaxXEdge);
//        CFDictionaryRef CGPointCreateDictionaryRepresentation(CGPoint point);
//        返回一个表示点的字典
//        
//        bool CGPointMakeWithDictionaryRepresentation(CFDictionaryRef dict,
//                                                     CGPoint *point);
//        将字典转换为点
//        
//        CFDictionaryRef CGSizeCreateDictionaryRepresentation(CGSize size);
//        返回一个表示尺寸的字典
//        
//        bool CGSizeMakeWithDictionaryRepresentation(CFDictionaryRef dict,
//                                                    CGSize *size) ;
//        将字典转换为尺寸
//        
//        CFDictionaryRef CGRectCreateDictionaryRepresentation(CGRect);
//        返回一个表示矩形的字典
//        
//        bool CGRectMakeWithDictionaryRepresentation(CFDictionaryRef dict,
//                                                    CGRect *rect);
//        将字典转化为矩形
//
        
     //   iOS 宏(define)与常量(const)的正确使用
//          #define HSCoder @"汉斯哈哈哈"
//        NSString *HSCoder = @"汉斯哈哈哈";
//        extern NSString *HSCoder;
//        extern const NSString *HSCoder;
//        
//        static const NSString *HSCoder = @"汉斯哈哈哈";
//        
//        const NSString *HSCoder = @"汉斯哈哈哈";
//        NSString const *HSCoder = @"汉斯哈哈哈";
//        NSString * const HSCoder = @"汉斯哈哈哈";
        
        
       // UILocalizedIndexedCollation
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        
    }
}

void funtion11(int *p){
    
    *p = 100;
    
    
}

