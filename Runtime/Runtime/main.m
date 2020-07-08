//
//  main.m
//  Runtime
//
//  Created by 郑章海 on 2020/7/8.
//  Copyright © 2020 zzh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Person *person = [[Person alloc] init];
//        person.height = true;
//        person.tail = true;
//        person.hand = true;
//
//        NSLog(@"--    %d  %d  %d", person.height, person.tail, person.hand);
//
//                4 2 1  1 0 0
        PersonTypes types = PersonTypeOne | PersonTypeThree | PersonTypeFour;
        [[[Person alloc] init] setOptions:types];
    }
    return 0;
}
