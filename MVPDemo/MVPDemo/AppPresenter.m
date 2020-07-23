//
//  AppPresenter.m
//  MVPDemo
//
//  Created by 郑章海 on 2020/7/23.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "AppPresenter.h"

@interface AppPresenter()<AppViewDelegate>

@end

@implementation AppPresenter

- (void)setup {
    AppView *appView = [[AppView alloc] init];
    appView.frame = CGRectMake(100, 100, 200, 200);
    appView.deleagte = self;
    [self.vc.view addSubview:appView];
    
    
    appView.touchBtn.backgroundColor = [UIColor redColor];
}

- (void)onClickBtn {
    NSLog(@"%s", __func__);
}

@end
