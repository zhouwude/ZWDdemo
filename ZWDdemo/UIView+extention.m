//
//  UIView+extention.m
//  ZWDdemo
//
//  Created by 周武德 on 15/9/7.
//  Copyright (c) 2015年 周武德. All rights reserved.
//

#import "UIView+extention.h"
#import <objc/runtime.h>
@implementation UIView (extention)
/**
 *  设置边框宽度
 *
 *  @param borderWidth 可视化视图传入的值
 */
- (void)setBorderWidth:(CGFloat)borderWidth {
    objc_setAssociatedObject(self, @selector(setBorderWidth:), @(borderWidth), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
   CGFloat width =  [objc_getAssociatedObject(self, @selector(setBorderWidth:)) floatValue];
    if (width < 0) return;
    
    self.layer.borderWidth = width;
}

/**
 *  设置边框颜色
 *
 *  @param borderColor 可视化视图传入的值
 */
- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}

/**
 *  设置圆角
 *
 *  @param cornerRadius 可视化视图传入的值
 */
- (void)setCornerRadius:(CGFloat)cornerRadius {
    
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius > 0;
}

@end
