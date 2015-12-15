//
//  ZWDNav.m
//  ZWDdemo
//
//  Created by zhouwude on 15/12/8.
//  Copyright © 2015年 周武德. All rights reserved.
//

#import "ZWDNav.h"

@implementation ZWDNav


//UINavigationController   当navcontroller为self.window.rootViewController 时将每一个 controller的旋转 交给ViewController 


- (BOOL)shouldAutorotate
{
    
    return self.topViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return self.topViewController.supportedInterfaceOrientations;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return self.topViewController.preferredInterfaceOrientationForPresentation;
}
@end
