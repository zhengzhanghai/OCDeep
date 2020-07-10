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

    NSObject *ob = [[NSObject alloc] init];
    
    id cls = [Person class];
    
    void *obj = &cls;
    [(__bridge id)obj print];
    
    
}


@end
