//
//  AppView.m
//  MVPDemo
//
//  Created by 郑章海 on 2020/7/23.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "AppView.h"

@implementation AppView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
    }
    return self;
}

- (void)initUI {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 50, 50);
    [button addTarget:self action:@selector(onClickBtn) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
    button.backgroundColor = [UIColor orangeColor];
    _touchBtn = button;
}

- (void)onClickBtn {
    if ([self.deleagte respondsToSelector:@selector(onClickBtn)]) {
        [self.deleagte onClickBtn];
    }
}

@end
