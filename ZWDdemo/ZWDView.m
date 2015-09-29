//
//  ZWDView.m
//  ZWDdemo
//
//  Created by 周武德 on 15/7/28.
//  Copyright (c) 2015年 周武德. All rights reserved.
//

#import "ZWDView.h"
#import <JavaScriptCore/JavaScriptCore.h>
@implementation ZWDView
-(id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    
    if( self ){
        self.webview=[[UIWebView alloc]initWithFrame:CGRectMake(0, 310, self.bounds.size.width, 300)];
        self.webview.backgroundColor=[UIColor lightGrayColor];
        NSString *htmlPath=[[NSBundle mainBundle] resourcePath];
        htmlPath=[htmlPath stringByAppendingPathComponent:@"index1.html"];
        NSURL *localURL=[[NSURL alloc]initFileURLWithPath:htmlPath];
        [self.webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://210.14.155.56:8382/platform/data/server/static/qixi/qixi.html"]]];
         [self addSubview:self.webview];
//判断是模拟器还是真机
#if !TARGET_IPHONE_SIMULATOR
       
#else
        
#endif
        /*
         在上述代码中，使用javascriptCore.framework，首先使用UIWebview加载一个静态网页，并
         
         使用
         
         JSContext *context = [self.webview valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
         
         获取该UIWebview的javascript执行环境。
         
         */
        JSContext *context = [self.webview valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
        context[@"jumpActivityNoArg"] = ^() {
            NSLog(@"+++++++Begin Log+++++++");
            NSArray *args = [JSContext currentArguments];
            for (JSValue *jsVal in args) {
                NSLog(@"%@", jsVal);
            }
            
            JSValue *this = [JSContext currentThis];
            NSLog(@"this: %@",this);
            NSLog(@"-------End Log-------");
            
        };
 
    }
    return self;
}

-(void)dealloc{
    NSLog(@"父类");
}

@end
