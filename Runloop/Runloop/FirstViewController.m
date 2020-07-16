//
//  FirstViewController.m
//  Runloop
//
//  Created by 郑章海 on 2020/7/14.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "FirstViewController.h"
#import "ZHThread.h"

@interface FirstViewController ()

@property (nonatomic, strong) NSThread *thread;
@property (nonatomic, assign) BOOL stopedRunloop;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    __weak typeof(self) weakself = self;
//    _thread = [[ZHThread alloc] initWithTarget:self selector:@selector(keepLiveThread) object:nil];
    _thread = [[NSThread alloc] initWithBlock:^{
        NSLog(@"%@", [NSThread currentThread]);
        [[NSRunLoop currentRunLoop] addPort:[[NSPort alloc] init] forMode:NSDefaultRunLoopMode];
//        [[NSRunLoop currentRunLoop] run];
        while (weakself && !weakself.stopedRunloop) {
            [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]];
        }
        NSLog(@"block end  end ----  end  end");
    }];
    [_thread start];
    
    
    UIButton *exBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    exBtn.backgroundColor = [UIColor orangeColor];
    exBtn.frame = CGRectMake(100, 200, 200, 60);
    [exBtn addTarget:self action:@selector(dddd) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:exBtn];
    
    UIButton *exBtn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    exBtn1.backgroundColor = [UIColor orangeColor];
    exBtn1.frame = CGRectMake(100, 300, 200, 60);
    [exBtn1 addTarget:self action:@selector(ssss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:exBtn1];
}

- (void)dddd {
    [self performSelector:@selector(carryTask) onThread:_thread withObject:nil waitUntilDone:nil];
}

- (void)ssss {
    self.stopedRunloop = true;
    [self performSelector:@selector(endThread) onThread:_thread withObject:nil waitUntilDone:nil];
}

- (void)carryTask {
    NSLog(@"执行任务   %@   %p", [NSThread currentThread], [NSRunLoop currentRunLoop]);

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)dealloc
{
    NSLog(@"FirstViewController dealloc");
    self.stopedRunloop = true;
    [self performSelector:@selector(endThread) onThread:_thread withObject:nil waitUntilDone:true];
//    _thread = nil;
//    NSThread
}

- (void)endThread {
//    NSLog(@"endThread : %@", [NSThread currentThread]);
    
    CFRunLoopStop(CFRunLoopGetCurrent());
}


@end
