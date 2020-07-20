//
//  ViewController.m
//  Thread
//
//  Created by 郑章海 on 2020/7/16.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "ViewController.h"
#import "OSSpinLockDemo.h"
#import "OSUnfairLockDemo.h"
#import "PthreadMutexLockDemo.h"
#import "SynchronizeDemo.h"
#import "PthreadRwlockDemo.h"
#import "PthreadRwlockDemo.h"
#import "DispatchBarrierDemo.h"

@interface ViewController ()
@property (nonatomic, strong) PthreadRwlockDemo *rwDemo;
@property (nonatomic, strong) DispatchBarrierDemo *barrierDemo;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)test {
    NSLog(@"2");
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
//    [OSSpinLockDemo lockTest];
//    [OSUnfairLockDemo lockTest];
//    [PthreadMutexLockDemo lockTest];
//    [SynchronizeDemo lockTest];
//    [PthreadRwlockDemo test];
    
//    _rwDemo = [[PthreadRwlockDemo alloc] init];
//    [_rwDemo test];
    
    _barrierDemo = [[DispatchBarrierDemo alloc] init];
    [_barrierDemo test];
}

@end
