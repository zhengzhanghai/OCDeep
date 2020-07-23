//
//  AppView.m
//  MVVMDemo
//
//  Created by ZZH on 2020/7/23.
//  Copyright © 2020 ZZH. All rights reserved.
//

#import "AppView.h"
#import "NSObject+FBKVOController.h"

@implementation AppView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    _titleLabel = [[UILabel alloc] init];
    _titleLabel.frame = CGRectMake(0, 0, 100, 20);
    [self addSubview:_titleLabel];
    
    _btn = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn.frame = CGRectMake(0, 30, 50, 50);
    _btn.backgroundColor = [UIColor redColor];
    [self addSubview:_btn];
    [_btn addTarget:self action:@selector(onClickBtn) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onClickBtn {
    if ([self.delegate respondsToSelector:@selector(onClick)]) {
        [self.delegate onClick];
    }
}

- (void)setViewModel:(AppViewModel *)viewModel {
    _viewModel = viewModel;
    
    __weak typeof(self) weakSelf = self;
    [self.KVOController observe:_viewModel keyPath:@"name" options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        weakSelf.titleLabel.text = change[NSKeyValueChangeNewKey];
    }];
    
    
}
@end
