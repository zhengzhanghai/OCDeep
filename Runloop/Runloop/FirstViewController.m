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

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
//    _thread = [[ZHThread alloc] initWithTarget:self selector:@selector(keepLiveThread) object:nil];
    _thread = [[NSThread alloc] initWithBlock:^{
        NSLog(@"%@", [NSThread currentThread]);
        [[NSRunLoop currentRunLoop] addPort:[[NSPort alloc] init] forMode:NSDefaultRunLoopMode];
        [[NSRunLoop currentRunLoop] run];
        NSLog(@"end  ednd ----");
    }];
    [_thread start];
}

- (void)keepLiveThread {
    NSLog(@"%@", [NSThread currentThread]);
    
    [[NSRunLoop currentRunLoop] addPort:[[NSPort alloc] init] forMode:NSDefaultRunLoopMode];
    [[NSRunLoop currentRunLoop] run];
    
    NSLog(@"end  ednd ----");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)dealloc
{
    NSLog(@"FirstViewController dealloc");
    [self performSelector:@selector(endThread) onThread:_thread withObject:nil waitUntilDone:false];
    _thread = nil;
}

- (void)endThread {
    CFRunLoopStop(CFRunLoopGetCurrent());

}

@end
