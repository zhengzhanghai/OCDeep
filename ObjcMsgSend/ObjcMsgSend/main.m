//
//  main.m
//  ObjcMsgSend
//
//  Created by 郑章海 on 2020/7/9.
//  Copyright © 2020 zzh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Person *person = [[Person alloc] init];
//        [person test1:55];
//        [[[Person alloc] init] test1];
//        NSLog(@"%d", [[[Person alloc] init] test1:11]) ;
//        NSLog(@"%d", [person test1:11]) ;
//        [Person classM];
        
        Person *person = [[Person alloc] init];
        
//        NSLog(@"%d", [person isKindOfClass:[NSObject class]]);
//        NSLog(@"%d", [person isMemberOfClass:[Person class]]);
//        [person isMemberOfClass:[Person class]];
        
        NSLog(@"%d",[Person isKindOfClass:[NSObject class]]);
        
    }
    return 0;
}



//+ (BOOL)isMemberOfClass:(Class)cls {
//    return self->ISA() == cls;
//}
//
//- (BOOL)isMemberOfClass:(Class)cls {
//    return [self class] == cls;
//}
//
//+ (BOOL)isKindOfClass:(Class)cls {
//    for (Class tcls = self->ISA(); tcls; tcls = tcls->superclass) {
//        if (tcls == cls) return YES;
//    }
//    return NO;
//}
//
//- (BOOL)isKindOfClass:(Class)cls {
//    for (Class tcls = [self class]; tcls; tcls = tcls->superclass) {
//        if (tcls == cls) return YES;
//    }
//    return NO;
//}
//
//+ (BOOL)isSubclassOfClass:(Class)cls {
//    for (Class tcls = self; tcls; tcls = tcls->superclass) {
//        if (tcls == cls) return YES;
//    }
//    return NO;
//}
