//
//  ZHObserver.m
//  KVCPrinciple
//
//  Created by 郑章海 on 2020/6/23.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "ZHObserver.h"

@implementation ZHObserver

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"收到监听");
    NSLog(@"keyPath:   %@", keyPath);
    NSLog(@"change:  %@", change);
}

@end
