//
//  DispatchSemaphoreDemo.m
//  Thread
//
//  Created by ZZH on 2020/7/19.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "DispatchSemaphoreDemo.h"

@interface DispatchSemaphoreDemo()

@property (nonatomic, strong) dispatch_semaphore_t semaphore;

@end

@implementation DispatchSemaphoreDemo

- (instancetype)init
{
    self = [super init];
    if (self) {
        _semaphore = dispatch_semaphore_create(5);
    }
    return self;
}

- (void)lockTest {
    
    for (int i = 0; i < 1000; i++) {
        [[[NSThread alloc] initWithTarget:self selector:@selector(test) object:nil] start];
    }
    
}

- (void)test {
    // 如果信号量的值 > 0,就让信号量的值 - 1，然后往下执行
    // 如果信号量的值 <= 0，就会休眠等待，直到信号的值 > 0,信号量 - 1, 然后就会继续往下执行代码
    dispatch_semaphore_wait(_semaphore, DISPATCH_TIME_FOREVER);
    sleep(2);
    NSLog(@"%@", [NSThread currentThread]);
    // 信号量的值 + 1
    dispatch_semaphore_signal(_semaphore);
    
}


@end
