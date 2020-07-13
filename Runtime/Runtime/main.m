//
//  main.m
//  Runtime
//
//  Created by 郑章海 on 2020/7/8.
//  Copyright © 2020 zzh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Animation.h"
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
//        PersonTypes types = PersonTypeOne | PersonTypeThree | PersonTypeFour;
//        [[[Person alloc] init] setOptions:types];
        
//        NSLog(@"%s", @encode(int));
        
//        Person *person = [[Person alloc] init];
//        NSLog(@"%p   %p   %p", object_getClass(person), [Person class], object_getClass([Person class]));
//
//        [person run];
//
//        object_setClass(person, [Animation class]);
//
//        [person run];
//
//
//        NSLog(@"%d  %d  %d", object_isClass(person), object_isClass([person class]), object_isClass(object_getClass([person class])));
        
        Class newClass = objc_allocateClassPair([NSObject class], "Dog", 0);
        class_addIvar(newClass, "_age", 4, 1, @encode(int));
        objc_registerClassPair(newClass);
        
        NSLog(@"%d", (int)class_getInstanceSize(newClass));
        
        
        
//
//        id dog = [[newClass alloc] init];
//        NSLog(@"%@", [dog valueForKey:@"_age"]);
        

        unsigned int count;
        Ivar *ivars = class_copyIvarList(newClass, &count);
        for (int i = 0; i < count; i++) {
            Ivar ivar = ivars[i];
            NSLog(@"%s  %s", ivar_getName(ivar), ivar_getTypeEncoding(ivar));
        }
        free(ivars);
        

    imp_implementationWithBlock(<#id  _Nonnull block#>)
        
//        class_
        
    }
    return 0;
}
