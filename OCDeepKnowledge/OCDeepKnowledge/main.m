//
//  main.m
//  OCDeepKnowledge
//
//  Created by 郑章海 on 2020/5/27.
//  Copyright © 2020 zzh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <malloc/malloc.h>
#import "NSObject+Test.h"

@interface Person: NSObject {
    @public
    int _age;
}
@property (nonatomic, assign) int ppp;
@end
@implementation Person
@end

@interface Student : Person {
    @public
    long long _studentId;
}
@property (nonatomic, assign) int stuss;
@end
@implementation Student
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
    }
    return 0;
}
