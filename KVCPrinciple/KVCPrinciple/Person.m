//
//  Person.m
//  KVCPrinciple
//
//  Created by 郑章海 on 2020/6/23.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "Person.h"

@implementation Cat


@end

@implementation Person

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.cat = [[Cat alloc] init];
//        self->age = 21;
//        self->_age = 22;
//        self->isAge = 23;
//        self->_isAge = 24;
    }
    return self;
}

//- (void)setAge:(int)age {
////    _age = age;
//    NSLog(@"调用setAge:方法");
//}

//- (void)_setAge:(int)age {
////    _age = age;
//    NSLog(@"调用_setAge:方法");
//}
//
//- (void)setIsAge:(int)isAge {
////    self->_age = isAge;
//    NSLog(@"dddd");
//}

//- (void)_setIsAge:(int)isAge {
////    self->_age = isAge;
//    NSLog(@"fffff");
//}


+ (BOOL)accessInstanceVariablesDirectly {
    return true;
}


//- (void)willChangeValueForKey:(NSString *)key {
//    [super willChangeValueForKey:key];
//    NSLog(@"willChangeValueForKey");
//}
//
//- (void)didChangeValueForKey:(NSString *)key {
//    [super didChangeValueForKey:key];
//    NSLog(@"didChangeValueForKey");
//}

// 方法 getAge   age  isAge  _getAge  _age
// 成员变量  _age  _isAge   age   isAge

//- (int)getAge {
//    return 10;
//}

//- (int)age {
//    return 11;
//}

//- (int)_getAge {
//    return 12;
//}

//- (int)_age {
//    return 13;
//}

//- (int)isAge {
//    return 14;
//}

//- (void)setAge:(int)age {
//    NSLog(@"setAge");
//}

//- (void)setIsAge:(int)age {
//    NSLog(@"setIsAge");
//}

//- (void)_setAge:(int)age {
//    NSLog(@"_setAge");
//}

//- (int)age {
//    return 20;
//}

//- (int)getAge {
//    return 30;
//}
@end
