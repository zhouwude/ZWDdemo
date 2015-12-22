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
    
    
    a =!a;
    a?(self.layout.priority = 999):(self.layout.priority=750);
    [UIView animateWithDuration:0.1 animations:^{
        [self.view layoutIfNeeded];
    }];
}

@end
