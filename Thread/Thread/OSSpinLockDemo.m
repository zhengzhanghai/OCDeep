//
//  OSSpinLockDemo.m
//  Thread
//
//  Created by 郑章海 on 2020/7/17.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "OSSpinLockDemo.h"
#import <libkern/OSAtomic.h>

@interface OSSpinLockDemo()

@property (nonatomic, assign) OSSpinLock lock;

@end

@implementation OSSpinLockDemo

- (void)lockThread {
    if (_lock == nil) {
        _lock = OS_SPINLOCK_INIT;
    }
    OSSpinLockLock(&_lock);
}

- (void)unlockThread {
    OSSpinLockUnlock(&_lock);
}
@end
