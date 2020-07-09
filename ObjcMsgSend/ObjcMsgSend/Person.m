//
//  Person.m
//  ObjcMsgSend
//
//  Created by 郑章海 on 2020/7/9.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
#import "Cat.h"

@implementation Person

int fillTest(id self, SEL _cmd, int a) {
    return a + a;
};

- (void)test {
    NSLog(@"test test");
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    
    if (sel == @selector(test1:)) {
    
//        Method method = class_getInstanceMethod(self, @selector(fillTest1:));
//        class_addMethod(self,
//                        sel,
//                        method_getImplementation(method),
//                        method_getTypeEncoding(method));
        
        class_addMethod(self, sel, (IMP)fillTest, "i@:i");
        
    }
    
    return true;
}

- (int)fillTest1:(int)a {
    NSLog(@"fillTest1");
    return a * a;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    NSLog(@"forwardingTargetForSelector");
    return [[Cat alloc] init];
}

@end
