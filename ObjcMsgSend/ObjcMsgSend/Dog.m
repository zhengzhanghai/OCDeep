//
//  Dog.m
//  ObjcMsgSend
//
//  Created by 郑章海 on 2020/7/10.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (void)vvvvvvvvvv {
//    NSLog(@"%@", [self class]);
//    NSLog(@"%@", [self superclass]);
//    NSLog(@"%@", [super class]);
//    NSLog(@"%@", [super superclass]);
    [self class];
    [self superclass];
    [super class];
    [super superclass];
    
//    NSProxy
    
//    objc_msgSend(self, sel_registerName("class"));
//    objc_msgSend(self, sel_registerName("superclass"))
//    objc_msgSendSuper(__rw_objc_super{self, class_getSuperclass(objc_getClass("Dog"))}, sel_registerName("class"));
//    objc_msgSendSuper(__rw_objc_super{self, class_getSuperclass(objc_getClass("Dog"))}, sel_registerName("superclass"));
//
//    struct objc_super {
//        id receiver;
//        Class super_class;
//    };
}

@end
