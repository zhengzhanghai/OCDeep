//
//  Person.m
//  AutoReleaseDemo
//
//  Created by ZZH on 2020/7/21.
//  Copyright © 2020 ZZH. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)dealloc
{
    NSLog(@"dealloc");
    [super dealloc];
    
}

@end
