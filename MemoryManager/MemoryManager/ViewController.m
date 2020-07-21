//
//  ViewController.m
//  MemoryManager
//
//  Created by 郑章海 on 2020/7/20.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "ViewController.h"
#import "CADisplayLinkTestViewController.h"
#import "NSTimeTestViewController.h"

@interface ViewController ()
@property (nonatomic, strong) CADisplayLink *link;
@property (nonatomic, strong) dispatch_source_t timer;
@property (nonatomic, copy)  NSString *name;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    NSString *ssss = [NSString stringWithFormat:@"开始觉得很疯狂水电费考试大纲后方可第三方kjsdgfk"];
//    NSLog(@"%p", ssss);
//    NSLog(@"%p", [ssss copy]);
//
//    NSMutableString *muStr = [NSMutableString stringWithFormat:@"快速点击回复客家话水电费扣水电费更好看坚实的股份"];
//    NSLog(@"%p", muStr);
//    NSLog(@"%p", [muStr mutableCopy]);
    
//    NSArray *arr = @[@"1"];
//    NSArray *arr1 = [NSArray arrayWithObject:@"1"];
//    NSArray *arr2 = [NSMutableArray arrayWithObject:@"1"];
//    NSArray *arr3 = [NSMutableArray arrayWithObject:@"1"];
//
//    NSLog(@"%p", arr);
//    NSLog(@"%p", arr1);
//    NSLog(@"%p", arr2);
//    NSLog(@"%p", arr3);
    
//    NSString *str1 = [NSString stringWithFormat:@"1世纪东方海口市反馈的说法"];
//    NSLog(@"%zd", str1.retainCount);
//    NSString *str2 = [str1 copy];
//    NSLog(@"%zd", str1.retainCount);
    
    NSArray *arr1 = [NSArray arrayWithObjects:@"1",@"3",@"3", nil];
    NSArray *arr2 = [arr1 copy];
    
    NSLog(@"%p", arr1);
    NSLog(@"%p", arr2);
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self presentViewController:[CADisplayLinkTestViewController new] animated:true completion:nil];
    
    [self presentViewController:[NSTimeTestViewController new] animated:true completion:nil];
}

// GCD定时器
- (void)dispatchSourceTest {
    dispatch_queue_t mainqueue = dispatch_get_main_queue();
    _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, mainqueue);
    
    NSTimeInterval start = 0;
    NSTimeInterval interval = 1;
    
    dispatch_source_set_timer(_timer, dispatch_time(DISPATCH_TIME_NOW, start * NSEC_PER_SEC), interval * NSEC_PER_SEC, 0);
    dispatch_source_set_event_handler(_timer, ^{
        NSLog(@"dispatch source");
    });
    
    dispatch_resume(_timer);
}

- (void)test {
    //    [self dispatchSourceTest];
        
    //
    //    NSObject *obj1 = [[NSObject alloc] init];
    //    NSObject *obj2 = [[NSObject alloc] init];
    //
    //    int a;
    //    int b;
    //
    //    NSLog(@"%p", obj1);
    //    NSLog(@"%p", obj2);
    //    NSLog(@"%p", &a);
    //    NSLog(@"%p", &b);
        
    //    for (int i = 0; i < 100; i++) {
    //        dispatch_async(dispatch_get_global_queue(0, 0), ^{
    //            self.name = [NSString stringWithFormat:@"abcdefghijk"];
    //            self.name = @"abcdefghijk";
    //            self.name = [NSString stringWithFormat:@"oooooooooooo"];
    //        });
    //    }
        
    //
    //    NSLog(@"\n%p\n%p\n%p\n%p\n%p\n%p\n%p",
    //          @"abc",
    //          @"sdkjfhsakdjfhasdkjflasdfgdsfgdsafgafkdhjsghaj",
    //          @"abcdefghijk",
    //          [NSString stringWithFormat:@"abcd"],
    //          [NSString stringWithFormat:@"abcsjdkfhkssdfkhjsdhfkj"],
    //          [NSString stringWithFormat:@"kjsdgjgasdfoewiuskjdkjgsjhgkjhgsdkjfhgsdkjfsdfhjkg"],
    //          @"kjsdgjgasdfoewiuskjdkjgsjhgkjhgsdkjfhgsdkjfsdfhjkg");
    //
    //    NSLog(@"-------------------------------------");
    //
    //    NSString *str = [NSString stringWithFormat:@"kjsdgjgasdfoewiuskjdkjgsjhgkjhgsdkjfhgsdkjfsdfhjkg"];
    //    NSLog(@"%p", [str UTF8String]);
    //
    //    NSLog(@"\n%p\n%p\n%p\n%p", @1,@2,@3,@4);
    //    NSLog(@"\n%@\n%@", [@1 class], [@2378623423436282374 class]);
    //
    //    NSLog(@"%@", [@"abd" class]);
    //    NSLog(@"%@", [[NSString stringWithFormat:@"abcde"] class]);
    //    NSLog(@"%@", [[NSString stringWithFormat:@"abcdefghijk"] class]);
        
    //    NSLog(@"%p", [NSString stringWithFormat: @"hdskfjhskjdfhkjsdhfksjdfhsdkjfsdkj"]);
    //    NSLog(@"%p", [NSString stringWithFormat: @"hdskfjhskjdfhkjsdhfksjdfhsdkjfsdkj"]);
    //
    //    NSLog(@"%p", @373824234345);
    //    NSLog(@"%p", [NSNumber numberWithInteger:373824234345]);
}

@end
