//
//  ViewController.m
//  ZWDdemo
//
//  Created by 周武德 on 15/7/26.
//  Copyright (c) 2015年 周武德. All rights reserved.
//

#import "ViewController.h"
#import "ZWDStar.h"
#import <objc/runtime.h>
#import "NSObject+DLIntrospection.h"
#import "customButton.h"
@interface ViewController (){

}
@property(nonatomic,strong,nullable)ZWDStar *sark;
@property (weak, nonatomic) IBOutlet customButton *button;
@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // 去掉UINavigationBar底部的分割线
     //导航栏背景透明
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    //导航栏底部线清楚
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.navigationController.navigationBar.translucent = YES;
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    //加了没有图的图上去。这样的话，可以直接让navigationBar和下面的视图浑然一体。
    [self.button setTitle:@"周武德\ue415服务网发" forState:UIControlStateNormal];
    
    self.sark = [ZWDStar new];
    NSLog(@" point1 %@",[_sark class]);
    NSLog(@" point1 %@",object_getClass(_sark));
    // breakpoint 1
    [_sark addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
    // breakpoint 2
    NSLog(@" point2 %@",[_sark class]);
    NSLog(@" point2 %@",object_getClass(_sark));
    _sark.name = @"萨萨萨";
    [_sark removeObserver:self forKeyPath:@"name"];
    NSLog(@" point3 %@",[_sark class]);
    NSLog(@" point3 %@",object_getClass(_sark));
    
    // breakpoint 3
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
}
- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

@end
