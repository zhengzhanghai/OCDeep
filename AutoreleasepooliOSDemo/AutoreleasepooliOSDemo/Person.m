//
//  Person.m
//  AutoreleasepooliOSDemo
//
//  Created by 郑章海 on 2020/7/22.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)dealloc
{
    NSLog(@"%s", __func__);
//    [super dealloc];
}

@end
