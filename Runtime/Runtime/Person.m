//
//  Person.m
//  Runtime
//
//  Created by 郑章海 on 2020/7/8.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "Person.h"

#define HEIGHT_MASK     (1<<0)  // 00000001
#define TAIL_MASK       (1<<1)
#define HAND_MASK       (1<<2)

@interface Person() {
    // 共同体
    union {
        char bits;
        struct {
            char height;
            char tail;
            char hand;
        };  // 这个只是增加可读性，并不影响共用体的存储结构
    } _features;
}

@end

@implementation Person

// 00010000

- (void)setHeight:(BOOL)height {
    if (height) {
        _features.bits |= HEIGHT_MASK;
    } else {
        _features.bits &= ~HEIGHT_MASK;
    }
}
- (BOOL)height {
    return !!(_features.bits & HEIGHT_MASK);
}

- (void)setTail:(BOOL)tail {
    if (tail) {
        _features.bits |= TAIL_MASK;
    } else {
        _features.bits &= ~TAIL_MASK;
    }
}
- (BOOL)tail {
    return !!(_features.bits & TAIL_MASK);
}

- (void)setHand:(BOOL)hand {
    if (hand) {
        _features.bits |= HAND_MASK;
    } else {
        _features.bits &= ~HAND_MASK;
    }
}
- (BOOL)hand {
    return !!(_features.bits & HAND_MASK);
}

- (void)setOptions:(PersonTypes)options {
    
    if (options & PersonTypeOne) {
        NSLog(@"PersonTypeOne");
    }
    if (options & PersonTypeTwo) {
        NSLog(@"PersonTypeTwo");
    }
    if (options & PersonTypeThree) {
        NSLog(@"PersonTypeThree");
    }
    if (options & PersonTypeFour) {
        NSLog(@"PersonTypeFour");
    }
}
@end
