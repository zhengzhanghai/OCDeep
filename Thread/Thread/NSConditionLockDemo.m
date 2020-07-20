//
//  NSConditionLockDemo.m
//  Thread
//
//  Created by ZZH on 2020/7/18.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "NSConditionLockDemo.h"

@interface NSConditionLockDemo()
@property (nonatomic, strong) NSConditionLock *condLock;
@end

@implementation NSConditionLockDemo
- (instancetype)init
{
    self = [super init];
    if (self) {
        _condLock = [[NSConditionLock alloc] initWithCondition:1];
    }
    return self;
}

- (void)lockTest {
    [[[NSThread alloc] initWithTarget:self selector:@selector(test3) object:nil] start];
    [[[NSThread alloc] initWithTarget:self selector:@selector(test2) object:nil] start];
    [[[NSThread alloc] initWithTarget:self selector:@selector(test1) object:nil] start];
}

- (void)test1 {
    [_condLock lockWhenCondition:0];
    NSLog(@"1111111111");
    [_condLock unlockWithCondition:1];
}

- (void)test2 {
    [_condLock lockWhenCondition:1];
    NSLog(@"222222222");
    [_condLock unlockWithCondition:2];
}

- (void)test3 {
    [_condLock lockWhenCondition:2];
    NSLog(@"333333333");
    [_condLock unlockWithCondition:3];
}

@end
