//
//  OSUnfairLockDemo.m
//  Thread
//
//  Created by 郑章海 on 2020/7/17.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "OSUnfairLockDemo.h"
#import <os/lock.h>

@interface OSUnfairLockDemo()
@property (nonatomic, assign) os_unfair_lock lock;
@end

@implementation OSUnfairLockDemo

- (instancetype)init
{
    self = [super init];
    if (self) {
        _lock = OS_UNFAIR_LOCK_INIT;
    }
    return self;
}

- (void)lockThread {
    os_unfair_lock_lock(&_lock);
}

- (void)unlockThread {
    os_unfair_lock_unlock(&_lock);
}
@end
