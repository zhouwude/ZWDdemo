//
//  ZWDLayoutTest.m
//  ZWDdemo
//
//  Created by 周武德 on 15/10/30.
//  Copyright © 2015年 周武德. All rights reserved.
//
#ifndef ABC
#define ABC



#endif
#import "ZWDLayoutTest.h"

@implementation ZWDLayoutTest
-(void)test{
    
    UIView *view = [[UIView alloc] init];
    UIView *view1 = [[UIView alloc] init];
    NSLayoutConstraint *con = [view.bottomAnchor constraintEqualToAnchor:view1.topAnchor constant:10];
    // NSLayoutAnchor  Layout anchors
   //  当我们有两个UILabel,bottomLabel和topLabel,你想把bottomLabel放在topLabel右边间隔8 points的位置,以前你需要添加如下约束:
    
    // 还有一个  =====UILayoutGuide
//分别新引进了UILayoutGuide和NSLayoutGuide这两个类。它们允许您创建一个“类似视图”的对象，用来参与自动布局约束的计算而无需在屏幕上创建多余的视图。比如说，您可以使用这些新的类来作为占位图，而不是创建一个空白的视图来进行占位。
    [view addConstraint:con];
    
    
}
@end
