//
//  PthreadRwlockDemo.m
//  Thread
//
//  Created by 郑章海 on 2020/7/20.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "PthreadRwlockDemo.h"
#import "pthread.h"

@interface PthreadRwlockDemo()
@property (nonatomic, assign) pthread_rwlock_t rwlock;
@end

@implementation PthreadRwlockDemo

+ (void)test {
    [[[self alloc] init] test];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        pthread_rwlock_init(&_rwlock, NULL);
        
        
    }
    return self;
}

- (void)test {
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    for (int i = 0; i < 10; i++) {
        dispatch_async(queue, ^{
            [self read];
        });
        dispatch_async(queue, ^{
            [self write];
        });
    }
}

- (void)read {
    pthread_rwlock_rdlock(&_rwlock);
    sleep(2);
    NSLog(@"-- read --");
    pthread_rwlock_unlock(&_rwlock);
    
}

- (void)write {
    pthread_rwlock_wrlock(&_rwlock);
    sleep(2);
    NSLog(@"---- write ----");
    pthread_rwlock_unlock(&_rwlock);
}

- (void)dealloc
{
    pthread_rwlock_destroy(&_rwlock);
}
@end
