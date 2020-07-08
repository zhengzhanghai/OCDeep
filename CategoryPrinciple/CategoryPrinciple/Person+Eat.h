//
//  Person+Eat.h
//  CategoryPrinciple
//
//  Created by 郑章海 on 2020/7/3.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "Person.h"

@interface Person (Eat)<NSURLSessionWebSocketDelegate>

@property (nonatomic, assign) int myAge;

- (void)eat;

- (void)eat123;

+ (void)eatMyFood;

@end

