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

<<<<<<< HEAD
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
=======
    NSLog(@"%p  %p", [NSRunLoop currentRunLoop], [NSRunLoop mainRunLoop]);
>>>>>>> 24ac69e514d9aa467f6dad16f40b112184e26917
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"");
}


@end
