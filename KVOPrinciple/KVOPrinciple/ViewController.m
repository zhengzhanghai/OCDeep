//
//  ViewController.m
//  KVOPrinciple
//
//  Created by 郑章海 on 2020/6/4.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/runtime.h>

@interface ViewController ()

@property (nonatomic, strong) Person *person;
@property (nonatomic, strong) Person *person1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.person = [[Person alloc] init];
//    self.person1 = [[Person alloc] init];
    
    // 获取方法在内存中的地址
//    NSLog(@"添加监听前: %p  %p",
//          [self.person methodForSelector:@selector(setHeight:)],
//          [self.person1 methodForSelector:@selector(setHeight:)]);
//
//    NSLog(@"%p  %p", object_getClass(self.person), object_getClass(object_getClass(self.person)));
//    NSLog(@"%p  %p", object_getClass(self.person1), object_getClass(object_getClass(self.person1)));
//
    NSKeyValueObservingOptions options = NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld;
    [self.person addObserver:self forKeyPath:@"height" options:options context:@"height context"];
    
//    NSLog(@"添加监听后: %p  %p",
//          [self.person methodForSelector:@selector(setName:)],
//          [self.person1 methodForSelector:@selector(setName:)]);
//
//    NSLog(@"%p  %p", object_getClass(self.person), object_getClass(object_getClass(self.person)));
//    NSLog(@"%p  %p", object_getClass(self.person1), object_getClass(object_getClass(self.person1)));
    
    //手动触发
    [self.person willChangeValueForKey:@"height"];
    [self.person didChangeValueForKey:@"height"];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    self.person.height = 20;
//    self.person.name = @"小孩";
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"%@   %@", keyPath, context);
    NSLog(@"%@", change);
}

- (void)dealloc
{
    [self.person removeObserver:self forKeyPath:@"height"];
    [self.person removeObserver:self forKeyPath:@"name"];
}
@end
