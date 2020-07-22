//
//  main.m
//  AutoReleaseDemo
//
//  Created by ZZH on 2020/7/21.
//  Copyright © 2020 ZZH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

extern void _objc_autoreleasePoolPrint(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        for (int i = 0; i < 550; i++) {
//            [[[Person alloc] init] autorelease];
//        }
        
        
        Person *person = [[[Person alloc] init] autorelease];
        [person autorelease];
        [person retain];
        _objc_autoreleasePoolPrint();
        
    }
    
    
 
    
    return 0;
}
