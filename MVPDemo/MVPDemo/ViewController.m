//
//  ViewController.m
//  MVPDemo
//
//  Created by 郑章海 on 2020/7/23.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "ViewController.h"
#import "AppPresenter.h"

@interface ViewController ()

@property (nonatomic, strong) AppPresenter *presenter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _presenter = [[AppPresenter alloc] init];
    _presenter.vc = self;
    [_presenter setup];
}


@end
