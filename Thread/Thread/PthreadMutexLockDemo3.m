//
//  PthreadMutexLockDemo3.m
//  Thread
//
//  Created by ZZH on 2020/7/18.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "PthreadMutexLockDemo3.h"
#import <pthread.h>

@interface PthreadMutexLockDemo3()
@property (nonatomic, assign) pthread_mutex_t lock;
@property (nonatomic, strong) NSMutableArray *array;
@property (nonatomic, assign) pthread_cond_t cond;
@end

@implementation PthreadMutexLockDemo3

- (instancetype)init
{
    self = [super init];
    if (self) {
        _array = [NSMutableArray array];
        
        // 初始化锁属性
        pthread_mutexattr_t attr;
        pthread_mutexattr_init(&attr);
        pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE); // 递归锁
        // 初始华锁
        pthread_mutex_init(&_lock, &attr);
        // 销毁锁属性
        pthread_mutexattr_destroy(&attr);
        
        // 初始化条件
        pthread_cond_init(&_cond, NULL);
    }
    return self;
}

- (void)lockTest {
    [[[NSThread alloc]initWithTarget:self selector:@selector(remove) object:nil] start];
    [[[NSThread alloc]initWithTarget:self selector:@selector(add) object:nil] start];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"array = %@", self.array);
    });
}

- (void)remove {
    NSLog(@"remove");
    [self lockThread];
    if (self.array.count == 0) {
        pthread_cond_wait(&_cond, &_lock);
    }
    NSLog(@"array = %@", self.array);
    [self.array removeLastObject];
    [self unlockThread];
    NSLog(@"finish remove");
}

- (void)add {
    NSLog(@"add");
    [self lockThread];
    [self.array addObject:@"123"];
    pthread_cond_signal(&_cond);
    [self unlockThread];
    NSLog(@"finish add");
}

- (void)lockThread {
    pthread_mutex_lock(&_lock);
}

- (void)unlockThread {
    pthread_mutex_unlock(&_lock);
}

- (void)dealloc
{
    pthread_mutex_destroy(&_lock);
    pthread_cond_destroy(&_cond);
}

@end
