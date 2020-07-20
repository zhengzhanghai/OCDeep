//
//  PthreadMutexLockDemo2.m
//  Thread
//
//  Created by ZZH on 2020/7/18.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "PthreadMutexLockDemo2.h"
#import <pthread.h>

@interface PthreadMutexLockDemo2()
@property (nonatomic, assign) pthread_mutex_t lock;
@end

@implementation PthreadMutexLockDemo2

- (instancetype)init
{
    self = [super init];
    if (self) {
        // 初始化锁属性
        pthread_mutexattr_t attr;
        pthread_mutexattr_init(&attr);
        pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE); // 递归锁
        // 初始华锁
        pthread_mutex_init(&_lock, &attr);
        // 销毁锁属性
        pthread_mutexattr_destroy(&attr);
    }
    return self;
}

- (void)lockTest {
    [self test];
}

- (void)test {
    [self lockThread];
    
    static int count = 0;
    count += 1;
    NSLog(@"--------");
    if (count <= 10) {
        [self test];
    }
   
    
    [self unlockThread];
    
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
}

@end
