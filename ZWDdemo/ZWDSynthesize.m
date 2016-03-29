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
/*
 @property有两个对应的词，一个是 @synthesize，一个是 @dynamic。如果 @synthesize和 @dynamic都没写，那么默认的就是@syntheszie var = _var;
 @synthesize 的语义是如果你没有手动实现 setter 方法和 getter 方法，那么编译器会自动为你加上这两个方法。
 @dynamic 告诉编译器：属性的 setter 与 getter 方法由用户自己实现，不自动生成。（当然对于 readonly 的属性只需提供 getter 即可）。假如一个属性被声明为 @dynamic var，然后你没有提供 @setter方法和 @getter 方法，编译的时候没问题，但是当程序运行到 instance.var = someVar，由于缺 setter 方法会导致程序崩溃；或者当运行到 someVar = var 时，由于缺 getter 方法同样会导致崩溃。编译时没问题，运行时才执行相应的方法，这就是所谓的动态绑定。*/
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
 在 protocol 中使用 property 只会生成 setter 和 getter 方法声明,我们使用属性的目的,是希望遵守我协议的对象能实现该属性
 category 使用 @property 也是只会生成 setter 和 getter 方法的声明,如果我们真的需要给 category 增加属性的实现,需要借助于运行时的两个函数：
 
 objc_setAssociatedObject
 objc_getAssociatedObject
 
 
 
 
 
 
 
 
 
 
 在有了自动合成属性实例变量之后，@synthesize还有哪些使用场景？

 回答这个问题前，我们要搞清楚一个问题，什么情况下不会autosynthesis（自动合成）？
 
 同时重写了 setter 和 getter 时 就不会自动合成_name的变量必须手动添加变量 或者使用@synthesize去手动指定成员变量。
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
