//
//  AppDelegate.m
//  ZWDdemo
//
//  Created by 周武德 on 15/7/26.
//  Copyright (c) 2015年 周武德. All rights reserved.
//

#import "AppDelegate.h"
#import "ZWDViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate
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
    NSLog(@"------%@",[[NSBundle mainBundle] pathForResource:@"index" ofType:@"js"]);
    //self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    ZWDViewController *vc = [[ZWDViewController alloc] init];
//    [ZWDViewController abcd];
//    self.window.rootViewController = vc;
//    [self.window makeKeyAndVisible];
    // Override point for customization after application launch.
    
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

@end
