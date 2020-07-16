//
//  ViewController.m
//  Thread
//
//  Created by 郑章海 on 2020/7/16.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, assign) int tickets;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   

}

- (void)test {
    NSLog(@"2");
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    [self saleTickets];
}

- (void)saleTicket {
    int t = self.tickets;
    sleep(.2);
    t -= 1;
    self.tickets = t;
    NSLog(@"剩余的票 %d", self.tickets);
}

- (void)saleTickets {
    
    self.tickets = 30;
    
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    
    dispatch_async(queue, ^{
        for (int i = 0; i < 10; i++) {
            [self saleTicket];
        }
    });
    
    dispatch_async(queue, ^{
        for (int i = 0; i < 10; i++) {
            [self saleTicket];
        }
    });
    
    dispatch_async(queue, ^{
        for (int i = 0; i < 10; i++) {
            [self saleTicket];
        }
    });
    
    
}

@end
