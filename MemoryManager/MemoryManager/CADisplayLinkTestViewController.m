//
//  CADisplayLinkTestViewController.m
//  MemoryManager
//
//  Created by 郑章海 on 2020/7/20.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "CADisplayLinkTestViewController.h"

@interface CADisplayLinkTestViewController ()
@property (nonatomic, strong) CADisplayLink *link;
@end

@implementation CADisplayLinkTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    self.link = [CADisplayLink displayLinkWithTarget:self selector:@selector(linkTest)];
    [self.link addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    
}


- (void)linkTest {
    NSLog(@"%s", __func__);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)dealloc
{
    NSLog(@"dealloc CADisplayLinkTestViewController");
}
@end
