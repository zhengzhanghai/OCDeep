//
//  AppViewModel.m
//  MVVMDemo
//
//  Created by ZZH on 2020/7/23.
//  Copyright © 2020 ZZH. All rights reserved.
//

#import "AppViewModel.h"

@interface AppViewModel()<AppViewDelegate>

@property (nonatomic, copy) NSString *name;

@property (nonatomic, weak) ViewController *vc;

@end

@implementation AppViewModel

- (instancetype)initWithVC:(ViewController *)vc {
    self = [super init];
    if (self) {
        self.vc = vc;
        [self setupUI];
        [self setupData];
    }
    return self;
}

- (void)setupUI {
    AppView *appView = [[AppView alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    appView.delegate = self;
    appView.viewModel = self;
    [self.vc.view addSubview:appView];
}

- (void)setupData {
    App *app = [[App alloc] init];
    app.name = @"哈哈大";
    
    self.name = app.name;
}

- (void)onClick {
    NSLog(@"%s", __func__);
}
@end
