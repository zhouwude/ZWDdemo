//
//  ZWDSynthesizeSub.m
//  ZWDdemo
//
//  Created by zhouwude on 16/3/29.
//  Copyright © 2016年 周武德. All rights reserved.
//

#import "ZWDSynthesizeSub.h"

@implementation ZWDSynthesizeSub
@synthesize foo = _foo;
-(void)setFoo:(NSString *)foo{
    //
    //当你在子类中重载了父类中的属性，你必须 使用 @synthesize 来手动合成ivar。
    
    _foo = foo;
}
@end
