//
//  ZWDCompressionAndHuggingControllerViewController.m
//  ZWDdemo
//
//  Created by zhouwude on 16/3/27.
//  Copyright © 2016年 周武德. All rights reserved.
//

#import "ZWDCompressionAndHuggingControllerViewController.h"

@interface ZWDCompressionAndHuggingControllerViewController ()

@end

@implementation ZWDCompressionAndHuggingControllerViewController{
    UIButton *button1;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /*Content Hugging 和 Content Compression Resistance
     
     这两个属性对有intrinsic content size的控件（例如button，label）非常重要。通俗的讲，具有intrinsic content size的控件自己知道（可以计算）自己的大小，例如一个label，当你设置text，font之后，其大小是可以计算到的。关于intrinsic content size官方的解释：
     
     大概的意思就是设置优先级的。
     
     Hugging priority 确定view有多大的优先级阻止自己变大。
     
     Compression Resistance priority确定有多大的优先级阻止自己变小。
     
     
     contentHugging: 抱住使其在“内容大小”的基础上不能继续变大 contentCompression: 撑住使其在在其“内容大小”的基础上不能继续变小
     这两个属性分别可以设置水平方向和垂直方向上的，而且一个默认优先级是250， 一个默认优先级是750. 因为这两个很有可能与其他Constraint冲突，所以优先级较低。
     
     
     
     */
    
    
    
}

-(void)ContentCompressionResistance{
    //intrinsic content size 主要针对这个的 
    //ContentCompressionResistance UILayoutPriorityDefaultHigh 优先级750
    button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.translatesAutoresizingMaskIntoConstraints = NO;
    [button1 setTitle:@"button 1 button 2" forState:UIControlStateNormal];
    [button1 sizeToFit];
    
    [self.view addSubview:button1];
    
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0f constant:100.0f];
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0f constant:100.0f];
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:-150.0f];
    constraint.priority = 751.0f;
    [self.view addConstraint:constraint];
    //代码很容易理解，创建一个button，设置其constraint，使其距离顶部100，距离左边100，距离右边150，注意右边的constraint的优先级我们设置的为751.0，此时autolayout系统会去首先满足此constraint，再去满足Content Compression Resistance（其优先级为750，小于751）。
    
    //当我们把751变为749的时候，效果如下：
    
    
}
-(void)HuggingPriority{
    // 优先级250
    button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.translatesAutoresizingMaskIntoConstraints = NO;
    [button1 setTitle:@"button 1 button 2" forState:UIControlStateNormal];
    [button1 sizeToFit];
    
    [self.view addSubview:button1];
    
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0f constant:100.0f];
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0f constant:100.0f];
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:-10.0f];
    constraint.priority = 251.0f;
    [self.view addConstraint:constraint];
    
    
    //当把优先级priority改为249的时候，效果如下：低于250 则回去满足不让其放大
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
