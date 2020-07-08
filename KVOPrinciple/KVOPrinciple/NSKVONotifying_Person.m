//
//  NSKVONotifying_Person.m
//  KVOPrinciple
//
//  Created by 郑章海 on 2020/6/4.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "NSKVONotifying_Person.h"

@implementation NSKVONotifying_Person

- (void)setHeight:(int)height {
//    _NSSetIntValueAndNotify();
}
#warning 里面都是伪代码
//void _NSSetIntValueAndNotify() {
//    [self willChangeValueForKey:@"height"];
//    [super setHeight:height];
//    [self didChangeValueForKey:@"height"];
//}

- (void)didChangeValueForKey:(NSString *)key {
    // 通知监听器属性值发生了改变
//    [observer observeValueForKeyPath:key ofObject:self change:nil context:nil];
}

// 屏蔽内部实现
- (Class)class {
    return [Person class];
}

- (void)dealloc
{
    // 收尾工作
}

- (Bool)_isKVOA {
    return true;
}

@end
