//
//  DispatchBarrierDemo.m
//  Thread
//
//  Created by 郑章海 on 2020/7/20.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "DispatchBarrierDemo.h"

@interface DispatchBarrierDemo()
@property (nonatomic, strong) dispatch_queue_t queue;
@end

@implementation DispatchBarrierDemo
- (instancetype)init
{
    self = [super init];
    if (self) {
        _queue = dispatch_queue_create("123", DISPATCH_QUEUE_CONCURRENT);
    }
    return self;
}

- (void)test {
    for (int i = 0; i < 10; i++) {
        [self read];
        [self write];
    }
}

- (void)read {
    dispatch_async(_queue, ^{
        sleep(2);
        NSLog(@"-- read --");
    });
}

- (void)write {
    dispatch_barrier_async(_queue, ^{
        sleep(2);
        NSLog(@"---- write ----");
    });
}
@end
