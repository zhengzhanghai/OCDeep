//
//  Cat.m
//  ObjcMsgSend
//
//  Created by 郑章海 on 2020/7/9.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "Cat.h"

@implementation Cat

- (void)abcd {
    NSLog(@"Cat abcd");
}

- (int)test1:(int)a {
    return a * 10;
}

+ (void)classM {
    NSLog(@"Cat ClassM");
}
@end
