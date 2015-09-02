//
//  ZWDSuperClass.m
//  ZWDdemo
//
//  Created by 周武德 on 15/9/2.
//  Copyright (c) 2015年 周武德. All rights reserved.
//

#import "ZWDSuperClass.h"
//如果多个类继承NSObject类，那在所有的子类在程序启动的时候，都会调用load方法，
//在调用load这个方法要分几种情况：
//1、如果在load方法里面调用［self  class］时候，会调用initialize方法，
//2、如果在load方法里面没有调用［self class］，就不会调用initialize方法，

/*
 load和initialize有很多共同特点，下面简单列一下：
 在不考虑开发者主动使用的情况下，系统最多会调用一次
 如果父类和子类都被调用，父类的调用一定在子类之前
 都是为了应用运行提前创建合适的运行环境
 在使用时都不要过重地依赖于这两个方法，除非真正必要
 
 2. load方法相关要点
 
 废话不多说，直接上要点列表：
 
 调用时机比较早，运行环境有不确定因素。具体说来，在iOS上通常就是App启动时进行加载，但当load调用的时候，并不能保证所有类都加载完成且可用，必要时还要自己负责做auto release处理。
 补充上面一点，对于有依赖关系的两个库中，被依赖的类的load会优先调用。但在一个库之内，调用顺序是不确定的。
 对于一个类而言，没有load方法实现就不会调用，不会考虑对NSObject的继承。
 一个类的load方法不用写明[super load]，父类就会收到调用，并且在子类之前。
 Category的load也会收到调用，但顺序上在主类的load调用之后。
 不会直接触发initialize的调用。
 
 3. initialize方法相关要点
 
 同样，直接整理要点：
 
 initialize的自然调用是在第一次主动使用当前类的时候（lazy，这一点和Java类的“clinit”的很像）。
 在initialize方法收到调用时，运行环境基本健全。
 initialize的运行过程中是能保证线程安全的。
 和load不同，即使子类不实现initialize方法，会把父类的实现继承过来调用一遍。注意的是在此之前，父类的方法已经被执行过一次了，同样不需要super调用。
 由于initialize的这些特点，使得其应用比load要略微广泛一些。可用来做一些初始化工作，或者单例模式的一种实现方案。
 */

@implementation ZWDSuperClass
+ (void) initialize {
    NSLog(@" super%@ %s %s", [self class], __FUNCTION__,__func__);
}
+ (void) load {
    NSLog(@" super %s %s %d %s %s %s", __FUNCTION__,__func__,__LINE__,__FILE__,__DATE__,__TIME__);
}
@end
