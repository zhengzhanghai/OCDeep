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

//    Person *ob = [[Person alloc] init];
//    ob.name = @"55555";
    
//    NSString *dddd = @"ooooo";
    
    id cls = [Person class];
    void *obj = &cls;
    [(__bridge id)obj print];
    
//    Person *person = [[Person alloc] init];
//    [person print];
    
//    obj -->  cls -->  [Person class]
//    person ->  对象 isa  -->   [Person class]
    
//    obj
//    cls
//    ob
    
}


@end
