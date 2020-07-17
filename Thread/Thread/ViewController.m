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

@interface ViewController ()

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
    [PthreadMutexLockDemo lockTest];

}

@end
