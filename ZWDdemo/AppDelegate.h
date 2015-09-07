//
//  AppDelegate.h
//  ZWDdemo
//
//  Created by 周武德 on 15/7/26.
//  Copyright (c) 2015年 周武德. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
@interface AppDelegate : UIResponder <UIApplicationDelegate>
/**
 *  参数的注释
 */
@property (strong, nonatomic) UIWindow *window;/**<主要窗口*/
//如果加上这样的错误提示，在 Build 时 XCode 会提示编译错误： #error <提示信息>
//#error 这里错误
//#warning <提示信息>
#warning 创建警告
@end

