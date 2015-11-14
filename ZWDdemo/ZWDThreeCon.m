//
//  ZWDThreeCon.m
//  ZWDdemo
//
//  Created by 周武德 on 15/11/12.
//  Copyright © 2015年 周武德. All rights reserved.
//

#import "ZWDThreeCon.h"
#import "YYViewHierarchy3D.h"
@implementation ZWDThreeCon
- (IBAction)dddddd:(id)sender {
    [YYViewHierarchy3D hide];
}
- (IBAction)qqqqqqq:(id)sender {
    [YYViewHierarchy3D show];
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"*************%@",[NSRunLoop currentRunLoop].currentMode);
    
    
}
@end
