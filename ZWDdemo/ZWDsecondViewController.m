//
//  ZWDsecondViewController.m
//  ZWDdemo
//
//  Created by 周武德 on 15/9/1.
//  Copyright (c) 2015年 周武德. All rights reserved.
#define OBJC_OLD_DISPATCH_PROTOTYPES 1
#define A 0
#import "ZWDsecondViewController.h"
#import <objc/runtime.h>
#import <objc/message.h>
#import "ZWDSuperClass.h"
@implementation ZWDsecondViewController
#if 3
static int abcd = 0;
// http状态吗 ：302
// 是请求重定向。500以上是服务器错误。400以上是请求链接错误或者找不到服务器。200以上是正确。100以上是请求接受成功。
#else

#endif
+ (void)load {

  NSLog(@"----------");
}
- (nullable instancetype)initWithCoder:(nonnull NSCoder *)aDecoder {
  if (self = [super initWithCoder:aDecoder]) {
//TODO: + 说明：如果代码中有该标识，说明在标识处有功能代码待编写，待实现的功能在说明中会简略说明//TODO: 。
      
//FIXME: + 说明：如果代码中有该标识，说明标识处代码需要修正，甚至代码是错误的，不能工作，需要修复，如何修正会在说明中简略说明。
//XXX: + 说明：如果代码中有该标识，说明标识处代码虽然实现了功能，但是实现的方法有待商榷，希望将来能改进，要改进的地方会在说明中简略说明。

    NSLog(@"++++++++");
    // [self hehe];
    NSArray *array = @[].mutableCopy;
    /**
     *  选中项目 - Project - Build Settings - ENABLE_STRICT_OBJC_MSGSEND
     * 将其设置为 NO 即可
     */
    objc_msgSend(array, @selector(insertObject:atIndex:), @"", 0);
    objc_msgSend([self class], @selector(hehe));
    NSLog(@"----%@----%@", array, NSStringFromSelector(_cmd));
    [[self class] hehe];
  }
  return self;
}
- (void)awakeFromNib {
  NSLog(@"========%@", NSStringFromSelector(_cmd));
  self.IsGUanLian = 1;
  NSLog(@"associ  %d", [self IsGUanLian]);
  objc_setAssociatedObject(self, @selector(setIsGUanLian:), nil,
                           OBJC_ASSOCIATION_RETAIN);
  NSLog(@"associ    second  %d", [self IsGUanLian]);
  // [self hehe];
}
- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil {
  if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    NSLog(@"++++++++---------");
    // [self hehe];
  }
  return self;
}
#ifdef A
+ (void)hehe {
  abcd++;
  SEL i = _cmd;
  Method e = class_getInstanceMethod([self class], i);
  NSLog(@"   %d    %@", abcd, NSStringFromSelector(method_getName(e)));
  [ZWDSuperClass alloc];
  NSArray<NSDictionary *> *array =
      @[ @{
        @"A" : @"B"
      },
         @{
           @"A" : @"C"
         },
         @{
           @"A" : @"D"
         } ];
NSLog(@"%@",@([array firstObject].count));
  NSLog(@"   %@", [array valueForKeyPath:@"A"]);
    NSArray <NSString *>*array1 = @[@"",@"",@""];
    NSLog(@"  %@",@([array1 firstObject].length));
}
#endif
- (void)dealloc {
}
- (void)setIsGUanLian:(BOOL)IsGUanLian {
  objc_setAssociatedObject(self, @selector(setIsGUanLian:), @(IsGUanLian),
                           OBJC_ASSOCIATION_RETAIN);
}
- (BOOL)IsGUanLian {
  return [objc_getAssociatedObject(self, @selector(setIsGUanLian:)) boolValue];
}
@end
