//
//  ZWDObjectDetector.h
//  ZWDdemo
//
//  Created by 周武德 on 15/10/27.
//  Copyright © 2015年 周武德. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZWDObjectDetector : NSObject
+ (void)startWatch;
+ (void)addToWatch:(id)object;
+ (NSArray *)allObjects;
@end
