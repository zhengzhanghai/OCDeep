//
//  SynchronizeDemo.m
//  Thread
//
//  Created by 郑章海 on 2020/7/20.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "SynchronizeDemo.h"

@implementation SynchronizeDemo

- (void)saveMoneyByLock {
    @synchronized (self) {
        [self saveMoney];
    }
}

- (void)outMoneyByLock {
    @synchronized (self) {
        [self outMoney];
    }
}

@end
