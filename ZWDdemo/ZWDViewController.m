//
//  ZWDViewController.m
//  ZWDdemo
//
//  Created by 周武德 on 15/7/28.
//  Copyright (c) 2015年 周武德. All rights reserved.
//

#import "ZWDViewController.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import "ZWDTwoView.h"
#import "sark.h"
#import <sys/utsname.h>
//所以为了防止写一大堆 nonnull，Foundation 还提供了一对儿宏，包在里面的对象默认加 nonnull 修饰符，只需要把 nullable 的指出来就行，黑话叫 Audited Regions
//Nullability 在编译器层面提供了空值的类型检查，在类型不符时给出 warning，方便开发者第一时间发现潜在问题。不过我想更大的意义在于能够更加清楚的描述接口，是主调者和被调者间的一个协议
NS_ASSUME_NONNULL_BEGIN
@interface ZWDViewController ()<UIWebViewDelegate>{
    ZWDTwoView * _Nullable webView;
     id __nonnull obj;
    sark * _Nonnull sarkObject;
}
@property(nonatomic,strong,nullable)NSString *array1;
@property(nonatomic,assign)NSString *array2;

@end

@implementation ZWDViewController
static NSString *str = @"abcd";
+(void)abcd{

    NSLog(@"-___%@",str);
}
- (void)viewDidLoad {
    [super viewDidLoad];
     NSLog(@"-___++++++%@",str);
    static NSString *str = @"1111111111";
    NSLog(@"-___++++++%@",str);
    sarkObject = [[sark alloc] init];
    webView= [[ZWDTwoView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:webView];
    [webView removeFromSuperview];
   webView = nil;
    // 字符 类型的 妙用
    NSInteger i = 'Abcd';
   // 'AaBb'
  //  -> '0x41'+'0x61'+'0x42'+'0x62'
   // -> '0x41614262' // 十进制1096893026

    NSLog(@"------%ld",i);
    // obj1 和 obj2是中间对象
//    id obj1 = [NSArray alloc]; // __NSPlacehodlerArray *
//    id obj2 = [NSMutableArray alloc];  // __NSPlacehodlerArray *
    //
//    id obj3 = [obj1 init];  // __NSArrayI *
//    id obj4 = [obj2 init];  // __NSArrayM *
//    
//  1和2地址相同 3，4地址相同
//    id obj1 = [NSArray alloc];
//    id obj2 = [NSArray alloc];
//    id obj3 = [NSMutableArray alloc];
//    id obj4 = [NSMutableArray alloc];
    
// 对不可变空数组的优化 地址相同 只有 arr5不相同
    self.view.backgroundColor = [UIColor redColor];
    NSArray *arr1 = [[NSArray alloc] init];
    NSArray *arr2 = [[NSArray alloc] init];
    NSArray *arr3 = @[];
    NSArray *arr4 = @[];
    NSArray *arr5 = @[@1];
    NSLog(@"-----%@",self);
    NSLog(@"-----%@",self.self);
    NSLog(@"%@",self.class);
    SEL mySel = @selector(getString:value2:);
    NSMethodSignature *methon = [self methodSignatureForSelector:mySel];
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methon];
    invocation.selector = mySel;
    invocation.target = sarkObject;
    NSValue *value1 = [NSValue valueWithUIOffset:UIOffsetMake(10, 10)];
    NSValue *value2 = [NSValue valueWithUIOffset:UIOffsetMake(10, 10)];
    [invocation setArgument:&value1 atIndex:2];
    [invocation setArgument:&value2 atIndex:3];
   // [invocation retainArguments];
    [invocation invoke];
    [invocation getReturnValue:&obj];
    NSLog(@"%@",obj);
    NSLog(@"%d",[[self class] resolveInstanceMethod:mySel]);
    self.array1 = [[NSString alloc] init];
    self.array2 = self.array1;
    self.array1 = nil;
    NSLog(@"----%@",self.array2);
    
    for(int i =0;i<100;i++){
        
       
    }
    //UIView *view = [[[UIView alloc] init] autorelease];
    //[view release];
//    NSArray *array = @[];
//    NSObject *object = array[2];
 
}

NSString *machineName()
{
    struct utsname systemInfo;
    uname(&systemInfo);
    
    NSString *iOSDeviceModelsPath = [[NSBundle mainBundle] pathForResource:@"iOSDeviceModelMapping" ofType:@"plist"];
    NSDictionary *iOSDevices = [NSDictionary dictionaryWithContentsOfFile:iOSDeviceModelsPath];
    
    NSString* deviceModel = [NSString stringWithCString:systemInfo.machine
                                               encoding:NSUTF8StringEncoding];
    
    return [iOSDevices valueForKey:deviceModel];
}
//第一步
+(BOOL)resolveInstanceMethod:(SEL)sel{
    if (sel == @selector(getString:value2:)){
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}
//第二步  //将消息转出某对象
-(id)forwardingTargetForSelector:(SEL)aSelector{
    if (aSelector == @selector(getString:value2:)){
    return sarkObject;
    }
    return [super forwardingTargetForSelector:aSelector];
}
-(NSString *)getString:(NSValue *)value1 value2:(NSValue *)value2{
    return [NSString stringWithFormat:@"%@%@",value1,value2];
}
//一、-description方法（决定了实例对象的输出结果）


//使用NSLog和%@输出某个对象时，会调用对象的-description方法，并拿到返回值进行输出


//二、+ description方法（决定了类对象的输出结果）
+(NSString *)description{
    
    return @"class------";
}
-(NSString *)description{
    return @"object-----";
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"-___++++++%@",str);
    [super viewWillAppear:animated];
}
NS_ASSUME_NONNULL_END
@end
