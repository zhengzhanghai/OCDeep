//
//  PthreadMutexLockDemo.m
//  Thread
//
//  Created by 郑章海 on 2020/7/17.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "PthreadMutexLockDemo.h"
#import <pthread.h>

@interface PthreadMutexLockDemo()

@property (nonatomic, assign) pthread_mutex_t lock;

@end

@implementation PthreadMutexLockDemo

- (instancetype)init
{
    self = [super init];
    if (self) {
        // 初始化锁属性
        pthread_mutexattr_t attr;
        pthread_mutexattr_init(&attr);
        pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_DEFAULT);
        // 初始华锁
        pthread_mutex_init(&_lock, &attr);
        // 销毁锁属性
        pthread_mutexattr_destroy(&attr);
    }
    return self;
}

- (void)lock {
    pthread_mutex_lock(&_lock);
}

- (void)unlock {
    pthread_mutex_unlock(&_lock);
}

@end
