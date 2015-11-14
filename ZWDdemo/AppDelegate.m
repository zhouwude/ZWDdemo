//
//  AppDelegate.m
//  ZWDdemo
//
//  Created by 周武德 on 15/7/26.
//  Copyright (c) 2015年 周武德. All rights reserved.
//
@import QuartzCore;

#import "AppDelegate.h"
#import "ZWDViewController.h"
#import "NSString+CustomFont.h"
#import "UIFont+CustomFont.h"
@interface AppDelegate (){
    //因为 UILabel 在 UIScrollView 内的 contentView 上，虽然看起来 UIScrollView 很宽很大，但其 contentView 并不是。相反，contentView 的 Size 是由其中的 Subview 的约束所确定的。
    
   // 这就是你在同时使用 AutoLayout 和 UIScrollView 时所唯一需要明白的地方。

}

@end

@implementation AppDelegate
//@synthesize window = _window;

/*
 #include做的事情其实就是简单的复制粘贴，将目标.h文件中的内容一字不落地拷贝到当前文件中，并替换掉这句include，而#import实质上做的事情和#include是一样的，只不过OC为了避免重复引用可能带来的编译错误（这种情况在引用关系复杂的时候很可能发生，比如B和C都引用了A，D又同时引用了B和C，这样A中定义的东西就在D中被定义了两次，重复了），而加入了#import，从而保证每个头文件只会被引用一次。
 这个Module定义了首要头文件（UIKit.h），需要导出的子modules（所有），以及需要link的框架名称（UIKit）。需要指出的是，现在Module还不支持第三方的框架，所以只有SDK内置的框架能够从这个特性中受益。另外，在C++的源代码中，Modules也是被禁用的。
 如果想深究，import的实现是通过#ifndef一个标志进行判断，然后在引入后#define这个标志，来避免重复引用的 预处理器变量经常用全大写字母表示（宏都用全大写表示）
 #ifndef taget_class_h
 #define taget_class_h
 
 类的代码都放在 这个里面
 
 #endif

 */



/**
 const 常量
 
 现在使用的多得是 const 常量
 
 在方法体内使用
 static const CGFloat KCellHight = 126.f;
 
 在类文件中使用, 在.m 文件中
 const CGFloat KXRBtnSendHeight = 44;
 
 如果需要提供给外部使用，使用 extern 修饰：
 只需要在.h 中使用 extern 外部声明即可
 extern const CGFloat KXRBtnSendHeight;
 */

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"*************%@",[NSRunLoop currentRunLoop].currentMode);
    NSLog(@"------%@",[[NSBundle mainBundle] pathForResource:@"index" ofType:@"js"]);
    NSSetUncaughtExceptionHandler(&uncaughtExceptionHandler);
    //self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    ZWDViewController *vc = [[ZWDViewController alloc] init];
//    [ZWDViewController abcd];
//    self.window.rootViewController = vc;
//    [self.window makeKeyAndVisible];
    // Override point for customization after application launch.
    NSString *str =NSLocalizedString(@"hehe", nil);
    
    NSArray *array = @[@1,@2,@3];
    NSLog(@"    地址  %p",array);
    NSArray *array1 = [array copy];
        NSLog(@"    地址  %p",array1);
    NSArray *array2 = [array mutableCopy];
    NSLog(@"    地址  %p",array2);
    NSMutableArray *mutableArray = [NSMutableArray array];
    
    NSLog(@"    地址--  %p",mutableArray);
    NSArray *mutableArray1 = [mutableArray copy];
    NSLog(@"    地址---  %p",mutableArray1);
    NSArray *mutableArray2 = [mutableArray mutableCopy];
    NSLog(@"    地址----  %p",mutableArray2);
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}
/**
 *  如果你的方法是没有参数的，只需要写一句注释，那只需要在方法前加注释就行了
 *
 *  @return void
 */
/**hehe */
-(void)hehe{
}
- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.

}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
//让XCode的 Stack Trace信息可读
void uncaughtExceptionHandler(NSException *exception) {
    NSLog(@"CRASH: %@", exception);
    NSLog(@"Stack Trace: %@", [exception callStackSymbols]);
    // Internal error reporting
}

@end
