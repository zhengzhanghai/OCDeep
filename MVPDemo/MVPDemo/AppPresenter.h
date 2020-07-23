//
//  AppPresenter.h
//  MVPDemo
//
//  Created by 郑章海 on 2020/7/23.
//  Copyright © 2020 zzh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AppView.h"
#import "ViewController.h"

@interface AppPresenter : NSObject

@property (nonatomic, weak) ViewController *vc;

- (void)setup;

@end

