//
//  main.m
//  CategoryPrinciple
//
//  Created by 郑章海 on 2020/6/4.
//  Copyright © 2020 zzh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+Sleep.h"
#import "Person+Eat.h"
#import <objc/message.h>

/* 获取对象的所有方法 */
NSArray * getAllMethods(Class class)
{
    unsigned int methodCount =0;
    Method* methodList = class_copyMethodList(class, &methodCount);
    NSMutableArray *methodsArray = [NSMutableArray arrayWithCapacity:methodCount];
    
    for(int i=0;i<methodCount;i++)
    {
        Method temp = methodList[i];
        IMP imp = method_getImplementation(temp);
        SEL name_f = method_getName(temp);
        const char* name_s =sel_getName(method_getName(temp));
        int arguments = method_getNumberOfArguments(temp);
        const char* encoding =method_getTypeEncoding(temp);
        NSLog(@"方法名：%@,参数个数：%d,编码方式：%@",[NSString stringWithUTF8String:name_s],
              arguments,
              [NSString stringWithUTF8String:encoding]);
        [methodsArray addObject:[NSString stringWithUTF8String:name_s]];
    }
    free(methodList);
    return methodsArray;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Person *person = [Person alloc];
        NSLog(@"%@")
    }
    return 0;
}

