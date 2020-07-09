//
//  main.m
//  ObjcMsgSend
//
//  Created by 郑章海 on 2020/7/9.
//  Copyright © 2020 zzh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *person = [[Person alloc] init];
        [person abcd];
//        [[[Person alloc] init] test1];
//        NSLog(@"%d", [[[Person alloc] init] test1:11]) ;
//        NSLog(@"%d", [[[Person alloc] init] test1:11]) ;
    }
    return 0;
}
