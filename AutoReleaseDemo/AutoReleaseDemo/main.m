//
//  main.m
//  AutoReleaseDemo
//
//  Created by ZZH on 2020/7/21.
//  Copyright © 2020 ZZH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *array = [NSMutableArray array];
        
        for (int i = 0; i < 100; i ++) {
            NSLog(@"----   %@", [array valueForKey:@"capacity"]);
            [array addObject:@"1"];
        }

        
        
    }
    
 
    
    return 0;
}
