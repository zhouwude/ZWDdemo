//
//  ZWDSynthesize.m
//  ZWDdemo
//
//  Created by zhouwude on 16/3/29.
//  Copyright © 2016年 周武德. All rights reserved.
//

#import "ZWDSynthesize.h"
@interface ZWDSynthesize()

@property (nonatomic)  NSString *firstName;
@property (nonatomic)  NSString *lastName;

//在上例中，会生成两个实例变量，其名称分别为
//_firstName 与 _lastName。也可以在类的实现代码里通过 @synthesize 语法来指定实例变量的名字:
@end
//
//@synthesize合成实例变量的规则是什么？假如property名为foo，存在一个名为_foo的实例变量，那么还会自动合成新变量么？
@implementation ZWDSynthesize{
    
    
    
}
@synthesize firstName = _myFirstName;//将firstname的属性指定为_myFirstName的成员变量
@synthesize lastName;//如果是 @synthesize foo; 还会生成一个名称为foo的成员变量，也就是说：     如果没有指定成员变量的名称会自动生成一个属性同名的成员变量
/*
 上述语法会将生成的实例变量命名为 _myFirstName 与 _myLastName ，而不再使用默认的名字。一般情况下无须修改默认的实例变量名，但是如果你不喜欢以下划线来命名实例变量，那么可以用这个办法将其改为自己想要的名字。笔者还是推荐使用默认的命名方案，因为如果所有人都坚持这套方案，那么写出来的代码大家都能看得懂。

 
 
 总结下 @synthesize 合成实例变量的规则，有以下几点：
 
 如果指定了成员变量的名称,会生成一个指定的名称的成员变量,
 
 如果这个成员已经存在了就不再生成了.
 
 如果是 @synthesize foo; 还会生成一个名称为foo的成员变量，也就是说：
 
 如果没有指定成员变量的名称会自动生成一个属性同名的成员变量,
 如果是 @synthesize foo = _foo; 就不会生成成员变量了.
 
 
 */
/*
 实例变量 = 成员变量 = ivar

 如果使用了属性的话，那么编译器就会自动编写访问属性所需的方法，此过程叫做“自动合成”( auto synthesis)。需要强调的是，这个过程由编译器在编译期执行，所以编辑器里看不到这些“合成方法” (synthesized method)的源代码。除了生成方法代码之外，编译器还要自动向类中添加适当类型的实例变量，并且在属性名前面加下划线，以此作为实例变量的名字。
 
 
 
 
 */
-(void)setFirstName:(NSString *)firstName{
    _myFirstName = firstName;
    
}
-(NSString *)firstName{
   
    return _myFirstName;
}
-(void)setLastName:(NSString *)lastNameq1{
    //
   // 如果是 @synthesize lastName; 还会生成一个名称为lastName的成员变量，也就是说：
    
   // 如果没有指定成员变量的名称会自动生成一个属性同名的成员变量
    lastName = lastNameq1;
    
}
/*

 在有了自动合成属性实例变量之后，@synthesize还有哪些使用场景？

 回答这个问题前，我们要搞清楚一个问题，什么情况下不会autosynthesis（自动合成）？
 
 同时重写了 setter 和 getter 时
 重写了只读属性的 getter 时
 使用了 @dynamic 时
 在 @protocol 中定义的所有属性
 在 category 中定义的所有属性
 重载的属性

 当你在子类中重载了父类中的属性，你必须 使用 @synthesize 来手动合成ivar
 */
//-(NSString *)foo{
//    //重写了只读属性的 getter 时 不会自动合成_foo
//    return _foo;
//}
-(void)setFoo:(NSString *)foo{
    //setter 方法的只读属性 是可以合成 的
    _foo = foo;
}

@end
