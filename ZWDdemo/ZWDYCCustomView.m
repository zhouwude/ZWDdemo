//
//  ZWDYCCustomView.m
//  ZWDdemo
//
//  Created by 周武德 on 15/9/6.
//  Copyright (c) 2015年 周武德. All rights reserved.
//

#import "ZWDYCCustomView.h"

@implementation ZWDYCCustomView

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]){
        self.layer.cornerRadius = self.frame.size.width/2;
        
    }
    
    return self;
}
/**
 *  设置边框宽度
 *
 *  @param borderWidth 可视化视图传入的值
 */
//- (void)setBorderWidth:(CGFloat)borderWidth {
//    
//    if (borderWidth < 0) return;
//    
//    self.layer.borderWidth = borderWidth;
//}
//
///**
// *  设置边框颜色
// *
// *  @param borderColor 可视化视图传入的值
// */
//- (void)setBorderColor:(UIColor *)borderColor {
//    
//    self.layer.borderColor = borderColor.CGColor;
//}
//
///**
// *  设置圆角
// *
// *  @param cornerRadius 可视化视图传入的值
// */
//- (void)setCornerRadius:(CGFloat)cornerRadius {
//    
//    self.layer.cornerRadius = cornerRadius;
//    self.layer.masksToBounds = cornerRadius > 0;
//}
//

@end
