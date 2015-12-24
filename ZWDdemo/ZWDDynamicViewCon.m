//
//  ZWDDynamicViewCon.m
//  ZWDdemo
//
//  Created by zhouwude on 15/12/22.
//  Copyright © 2015年 周武德. All rights reserved.
//

#import "ZWDDynamicViewCon.h"

@implementation ZWDDynamicViewCon

- (IBAction)click:(UITapGestureRecognizer *)sender {
    
    //autolayout的默认优先级为1000 但手动改变的话会有问题一般可设置小一点  这里 是第一个设置两个有冲突的viewTop约束在优先级相同的情况下 是有冲突的但可以 设置不同的情况下 会 解决约束 只要手动去改变约束 就可以 调换两个约束的顺序。
    a =!a;
    a?(self.layout.priority = 999):(self.layout.priority=750);
    [UIView animateWithDuration:0.1 animations:^{
        [self.view layoutIfNeeded];
    }];
}

@end
