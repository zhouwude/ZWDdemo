//
//  customButton.m
//  ZWDdemo
//
//  Created by 周武德 on 15/10/16.
//  Copyright © 2015年 周武德. All rights reserved.
//

#import "customButton.h"

@implementation customButton
-(instancetype)init{
    
    
    if (self = [super init]){
        
        
        
    }
    return self;
    
}
-(void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
    
 
    
}
-(BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
    
    CGPoint point = [[[event allTouches] anyObject] locationInView:self.superview];
    self.center = point;
    
    
  return   [super beginTrackingWithTouch:touch withEvent:event];
}
-(BOOL)continueTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
    
    
    return [super continueTrackingWithTouch:touch withEvent:event];
}

//消息转发

@end
