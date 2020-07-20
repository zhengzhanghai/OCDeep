//
//  SerialQueueDemo.m
//  Thread
//
//  Created by ZZH on 2020/7/19.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "SerialQueueDemo.h"

@interface SerialQueueDemo()
@property (nonatomic, strong) dispatch_queue_t queue;
@property (nonatomic, strong) dispatch_queue_t queue1;
@end

@implementation SerialQueueDemo

- (instancetype)init
{
    self = [super init];
    if (self) {
        _queue = dispatch_queue_create("0000", DISPATCH_QUEUE_SERIAL);
        _queue1 = dispatch_get_global_queue(0, 0);
    }
    return self;
}

- (void)lockTest {
    [self test1];
    [self test2];
    [self test3];
}

- (void)test1 {
    dispatch_async(_queue, ^{
        NSLog(@"%@ - 11111", [NSThread currentThread]);
    });
}

- (void)test2 {
    dispatch_async(_queue, ^{
        NSLog(@"%@ - 22222", [NSThread currentThread]);
    });
}

- (void)test3 {
    dispatch_async(_queue, ^{
        NSLog(@"%@ - 33333", [NSThread currentThread]);
    });
}

@end
