//
//  ZWDBridgeUse.m
//  ZWDdemo
//
//  Created by zhouwude on 15/12/4.
//  Copyright © 2015年 周武德. All rights reserved.
//

#import "ZWDBridgeUse.h"

@implementation ZWDBridgeUse
-(void)viewDidLoad{
    
    /*
     * ARC有效时三种类型转换：
     */
    // __bridge          // 转换
    //__bridge_retained // 转换
    //__bridge_transfer // 转换
    
    // __bridge 转换 //////////////////////
    // ARC无效时 对应的代码
#if __has_feature(objc_arc)
    
#else
    id obj = [[NSObject alloc] init];
    void *p = obj;
    
    id o = p;
    [o release];
#endif
    // 在 ARC 有效时 通过 __bridge转换 id 和 void * 就能够相互转换
    id obj = [[NSObject alloc] init];
    void *p = (__bridge void *)obj;
    id o1 = (__bridge id)p;
    
    
    void *p1 = (__bridge void *)obj;
    id o2 = (__bridge id)p1;
    /*
     * 通过 __bridge 转换， id 和 void * 就能够相互转换。
     * 但是转换为 void * 的 __bridge 转换,其安全性与赋值给 __unsafe_unretained 修饰符相近,
     * 甚至会更低。如果管理时不注意赋值对象的所有者,就会因悬垂指针而导至程序崩溃。
     */
    // __bridge 转换 //////////////////////
    
    
    /*
     * __bridge_retained 转换可使要转换赋值的变量也持有所赋值的对象.
     */
    // __bridge_retained 转换 /////////////
    // ARC 有效时的代码
    id obj2 = [[NSObject alloc] init];
    void *p2 = (__bridge_retained void*)obj;
    
    // ARC 无效时的代码
    #if __has_feature(objc_arc)
    #else
    id obj3 = [[NSObject alloc] init];
    void *p3 = obj3;
    [(id)p3 retain];

#endif
    // __bridge_retained ARC 转换
    void *p3 = 0;
    {
        id obj = [[NSObject alloc] init];
        p3 = (__bridge_retained void *)obj;
    }
    NSLog(@"class=%@", [(__bridge id)p class]);
    /*
     * 变量作用域结束时，虽然随着持有强引用的变显obj失效，对象随之释放，
     * 但由于 __bridge_retained 转换使变量p看上去处于持有该对象的状态，
     * 因此该对象不会被废弃。下面我们比较一下ARC无效时的代码是怎样的。
     */
    
    // ARC 无效时的代码
#if __has_feature(objc_arc)
#else
    void *p4 = 0;
    {
        id obj4 = [[NSObject alloc] init]; /* [obj retainCount] -> 1 */
        p4 = [obj4 retain];     /* [obj retainCount] -> 2 */
        [obj4 release];      /* [obj retainCount] -> 1 */
    }
#endif
    /*
     * [(id)p retainCount] -> 1
     * 即
     * [obj retainCount] -> 1
     * 对象扔存在
     */
    NSLog(@"class=%@", [(__bridge id)p class]);
    // __bridge_retained 转换 /////////////
    
    
    /*
     * __bridge_transfer 转换提供与 __bridge_retained 相反的动作,
     * 被转换的变量所持有的对象在该变量被赋值给转换目标变量后随后释放。
     */
    // __bridge_transfer 转换 /////////////
    // ARC 有效时的代码
    id obj5 = (__bridge_transfer id)p;
    
    // ARC 无效时的代码
      #if __has_feature(objc_arc)
#else
    id obj5 = (id)p;
    [obj5 retain];
    [(id)p release];
#endif
    // __bridge_transfer 转换 /////////////
    
    /*
     * 不使用id型或对象型变量也可以生成、持有以及释放对象。
     * 虽然可以这样做，但在ARC中并不推荐这种方法。
     */
    // ARC中并不推荐这种方法 /////////////
    // ARC 有效时的代码
    void *p6 = (__bridge_retained void *)[[NSObject alloc] init];
    NSLog(@"class=%@", [(__bridge id)p class]);
    (void)(__bridge_transfer id)p;
    
    // ARC 无效时的代码
      #if __has_feature(objc_arc)
#else
    id p6 = [[NSObject alloc] init];
    NSLog(@"class=%@", [p6 class]);
    [p6 release];
    // ARC中并不推荐这种方法 /////////////
    
    
#endif
    [super viewDidLoad];
}
@end
