//
//  main.m
//  AutoreleasepooliOSDemo
//
//  Created by 郑章海 on 2020/7/22.
//  Copyright © 2020 zzh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        UIApplicationMain(argc, argv, nil, appDelegateClassName);
    }
    return 0;
//    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}