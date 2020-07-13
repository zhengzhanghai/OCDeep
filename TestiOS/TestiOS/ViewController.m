//
//  ViewController.m
//  TestiOS
//
//  Created by 郑章海 on 2020/7/10.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"%p  %p", [NSRunLoop currentRunLoop], [NSRunLoop mainRunLoop]);
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"");
}


@end
