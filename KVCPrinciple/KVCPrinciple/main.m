//
//  main.m
//  KVCPrinciple
//
//  Created by 郑章海 on 2020/6/23.
//  Copyright © 2020 zzh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "ZHObserver.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        ZHObserver *oberver = [[ZHObserver alloc] init];
        Person *person = [[Person alloc] init];
        
//        [person addObserver:oberver
//                 forKeyPath:@"age"
//                    options:NSKeyValueObservingOptionOld |NSKeyValueObservingOptionNew
//                    context:nil];
//
//        [person setValue:@10 forKeyPath:@"age"];
        
//        [person setValue:@10 forKey:@"age"];
//        NSLog(@"%@", [person valueForKey:@"age"]);
        
//        person.age = 10;
        
        NSLog(@"person.age = %d", person.age);
    }
    return 0;
}
