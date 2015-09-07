//
//  ZWDYCCustomView.h
//  ZWDdemo
//
//  Created by 周武德 on 15/9/6.
//  Copyright (c) 2015年 周武德. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  IB_DESIGNABLE的宏的功能就是让XCode动态渲染出该类图形化界面;
 使用IB_DESIGNABLE的方式，把该宏加在自定义类的前面;
 */
// 在定义类的前面加上IB_DESIGNABLE宏
IB_DESIGNABLE
@interface ZWDYCCustomView : UIView
// 注意: 加上IBInspectable就可以可视化显示相关的属性哦
/** 可视化设置边框宽度 */
//@property (nonatomic, assign)IBInspectable CGFloat borderWidth;
///** 可视化设置边框颜色 */
//@property (nonatomic, strong)IBInspectable UIColor *borderColor;
///** 可视化设置圆角 */
//@property (nonatomic, assign)IBInspectable CGFloat cornerRadius;

@end
