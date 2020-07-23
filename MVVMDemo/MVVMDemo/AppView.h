//
//  AppView.h
//  MVVMDemo
//
//  Created by ZZH on 2020/7/23.
//  Copyright © 2020 ZZH. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "AppViewModel.h"
@class AppViewModel;

@protocol AppViewDelegate <NSObject>

@optional
- (void)onClick;

@end

@interface AppView : UIView

@property (nonatomic, weak) AppViewModel *viewModel;
@property (nonatomic, weak) id<AppViewDelegate>delegate;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIButton *btn;

@end

