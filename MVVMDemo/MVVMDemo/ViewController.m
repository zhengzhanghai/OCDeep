//
//  ViewController.m
//  MVVMDemo
//
//  Created by ZZH on 2020/7/23.
//  Copyright © 2020 ZZH. All rights reserved.
//

#import "ViewController.h"
#import "AppViewModel.h"

@interface ViewController ()

@property (nonatomic, strong) AppViewModel *viewModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _viewModel = [[AppViewModel alloc] initWithVC:self];
}


@end
