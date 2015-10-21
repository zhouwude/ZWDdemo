//
//  ZWDFontUseViewCon.m
//  ZWDdemo
//
//  Created by 周武德 on 15/10/14.
//  Copyright © 2015年 周武德. All rights reserved.
//

#import "ZWDFontUseViewCon.h"
#import "NSString+CustomFont.h"
#import "UIFont+CustomFont.h"
@implementation ZWDFontUseViewCon
-(void)viewDidLoad{
    [super viewDidLoad];
    //加载字体  示例 展示
    self.view.backgroundColor = [UIColor blackColor];
    
    // 注册自定义字体
    [UIFont registerFontFamily:[[NSBundle mainBundle] pathForResource:@"" ofType:@""]
                      withName:@"周武德"];
    
    // 显示
    UILabel *label_1      = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 200, 40)];
    label_1.text          = @"周武德";
    label_1.textColor     = [UIColor redColor];
    label_1.textAlignment = NSTextAlignmentCenter;
    label_1.font          = [UIFont fontWithName:[@"周武德" customFontFamilyName] size:30.f];
    [self.view addSubview:label_1];
    
    UILabel *label_2      = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 200, 40)];
    label_2.text          = @"ZhouWuDe";
    label_2.textColor     = [UIColor whiteColor];
    label_2.textAlignment = NSTextAlignmentCenter;
    label_2.font          = [UIFont fontWithName:[@"Helvetica Neue" systemFontFamilyNameIndex:1] size:18.f];
    [self.view addSubview:label_2];
    
    // 打印字体族信息
    NSLog(@"%@", [@"周武德" customFontInfo]);
    NSLog(@"%@", [@"Helvetica Neue" systemFontFamilyNameIndex:1]);
}

@end
