//
//  Person.h
//  Runtime
//
//  Created by 郑章海 on 2020/7/8.
//  Copyright © 2020 zzh. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PersonTypes) {
    PersonTypeOne       = 1 << 0,
    PersonTypeTwo       = 1 << 1,
    PersonTypeThree     = 1 << 2,
    PersonTypeFour      = 1 << 3
};

@interface Person : NSObject

- (void)setHeight:(BOOL)height;
- (BOOL)height;

- (void)setTail:(BOOL)tail;
- (BOOL)tail;

- (void)setHand:(BOOL)hand;
- (BOOL)hand;

- (void)setOptions:(PersonTypes)options;

- (void)abcd;

- (void)run;

@end

