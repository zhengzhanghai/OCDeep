//
//  NSLockDemo.m
//  Thread
//
//  Created by ZZH on 2020/7/18.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "NSLockDemo.h"

@interface NSLockDemo()
@property (nonatomic, strong) NSLock *lock;
@end

@implementation NSLockDemo

- (instancetype)init
{
    self = [super init];
    if (self) {
        _lock = [[NSLock alloc] init];
    }
    return self;
}

- (void)lockThread {
    [_lock lock];
}

- (void)unlockThread {
    [_lock unlock];
}

@end
