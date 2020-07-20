//
//  LockBaseDemo.m
//  Thread
//
//  Created by 郑章海 on 2020/7/17.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "LockBaseDemo.h"

@interface LockBaseDemo()
@property (nonatomic, assign) int tickets;
@property (nonatomic, assign) int money;
@end

@implementation LockBaseDemo

+ (void)lockTest {
    [[[self alloc] init] lockTest];
}

- (void)lockTest {
    [self saveAndOutMoney];
}

- (void)lockThread {}

- (void)unlockThread {}


- (void)saleTicket {
    [self unlockThread];
    
    int t = self.tickets;
    sleep(.2);
    t -= 1;
    self.tickets = t;
    NSLog(@"剩余的票 %d", self.tickets);
    
    [self unlockThread];
}

- (void)saleTickets {
    
    self.tickets = 300;
    
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    
    dispatch_async(queue, ^{
        for (int i = 0; i < 100; i++) {
            [self saleTicket];
        }
    });
    
    dispatch_async(queue, ^{
        for (int i = 0; i < 100; i++) {
            [self saleTicket];
        }
    });
    
    dispatch_async(queue, ^{
        for (int i = 0; i < 100; i++) {
            [self saleTicket];
        }
    });
}

///
- (void)saveAndOutMoney {
    
    self.money = 200;
    
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);

    
    dispatch_async(queue, ^{
        for (int i = 0; i < 100; i++) {
            [self saveMoney];
        }
    });
    
    dispatch_async(queue, ^{
        for (int i = 0; i < 100; i++) {
            [self outMoney];
        }
    });
}

/// 存钱
- (void)saveMoney {
    [self lockThread];
    
    int _money = self.money;
    sleep(.2);
    _money += 1;
    self.money = _money;
    
    NSLog(@"剩余的钱：  %d", self.money);
    
    [self unlockThread];
}

/// 取钱
- (void)outMoney {
    [self lockThread];
    
    int _money = self.money;
    sleep(.2);
    _money -= 1;
    self.money = _money;
    
    NSLog(@"剩余的钱：  %d", self.money);
    
    [self unlockThread];
}

@end
