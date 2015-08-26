//
//  ZWDTwoView.m
//  ZWDdemo
//
//  Created by 周武德 on 15/8/1.
//  Copyright (c) 2015年 周武德. All rights reserved.
//

#import "ZWDTwoView.h"

@implementation ZWDTwoView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)dealloc{
    NSLog(@"子类");
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomLeft cornerRadii:CGSizeMake(0, 0)].CGPath;
    self.layer.mask = shapeLayer;
}

@end
