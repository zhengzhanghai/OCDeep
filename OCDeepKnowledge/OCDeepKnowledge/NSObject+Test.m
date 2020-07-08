//
//  NSObject+Test.m
//  OCDeepKnowledge
//
//  Created by 郑章海 on 2020/6/3.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "NSObject+Test.h"

@implementation NSObject (Test)

+ (void)test {
    NSLog(@"类方法调用test");
}

- (void)test {
    NSLog(@"实例方法调用test");
}

@end
