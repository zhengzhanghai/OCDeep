//
//  NSTimeTestViewController.m
//  MemoryManager
//
//  Created by 郑章海 on 2020/7/20.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "NSTimeTestViewController.h"

@interface NSTimerProxy()

@property (nonatomic, weak) id target;

@end

@implementation NSTimerProxy

+ (instancetype)adaterWithTarget:(id)target {
    NSTimerProxy *adater = [NSTimerProxy alloc];
    adater.target = target;
    return adater;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    return self.target;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    return [self.target methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    invocation.target = self.target;
}

- (void)timeTest {
    NSLog(@"proxy");
}

@end

@interface NSTimeTestViewController ()
@property (nonatomic, strong) NSTimer *timer;
@end

@implementation NSTimeTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor redColor];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:[NSTimerProxy adaterWithTarget:self] selector:@selector(timeTest) userInfo:nil repeats:true];
}

- (void)timeTest {
    NSLog(@"%s", __func__);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)dealloc
{
    [self.timer invalidate];
    NSLog(@"dealloc NSTimeTestViewController");
}
@end
