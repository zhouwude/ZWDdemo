//
//  ZWDTabBarCon.m
//  ZWDdemo
//
//  Created by zhouwude on 15/12/8.
//  Copyright © 2015年 周武德. All rights reserved.
//

#import "ZWDTabBarCon.h"
//UITabbarViewController
//注意 这里的selectedViewController如果是UINavigationController的话 也需要对它做上面的修改
@implementation ZWDTabBarCon
- (BOOL)shouldAutorotate
{
    return self.selectedViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return self.selectedViewController.supportedInterfaceOrientations;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return self.selectedViewController.preferredInterfaceOrientationForPresentation;
}
@end
