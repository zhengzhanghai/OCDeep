//
//  AppViewModel.h
//  MVVMDemo
//
//  Created by ZZH on 2020/7/23.
//  Copyright © 2020 ZZH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "App.h"
#import "AppView.h"
#import "ViewController.h"

@interface AppViewModel : NSObject

- (instancetype)initWithVC:(ViewController *)vc;

@end
