//
//  ViewController.m
//  Runloop
//
//  Created by 郑章海 on 2020/7/13.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "ViewController.h"
#import "ZHThread.h"
#import "FirstViewController.h"

@interface ViewController ()

@property (nonatomic, strong) ZHThread *thread;

@end

@implementation ViewController

void observeRunloopActivities(CFRunLoopObserverRef observer, CFRunLoopActivity activity, void *info) {
    switch (activity) {
        case kCFRunLoopEntry:
            NSLog(@"Runloop kCFRunLoopEntry");
            break;
            
        case kCFRunLoopBeforeTimers:
            NSLog(@"Runloop kCFRunLoopBeforeTimers");
            break;
            
        case kCFRunLoopBeforeSources:
            NSLog(@"Runloop kCFRunLoopBeforeSources");
            break;
            
        case kCFRunLoopBeforeWaiting:
            NSLog(@"Runloop kCFRunLoopBeforeWaiting");
            break;
            
        case kCFRunLoopAfterWaiting:
            NSLog(@"Runloop kCFRunLoopAfterWaiting");
            break;
            
        case kCFRunLoopExit:
            NSLog(@"Runloop kCFRunLoopExit");
            break;
        default:
            break;
    }
    
//    typedef CF_OPTIONS(CFOptionFlags, CFRunLoopActivity) {
//        kCFRunLoopEntry = (1UL << 0),
//        kCFRunLoopBeforeTimers = (1UL << 1),
//        kCFRunLoopBeforeSources = (1UL << 2),
//        kCFRunLoopBeforeWaiting = (1UL << 5),
//        kCFRunLoopAfterWaiting = (1UL << 6),
//        kCFRunLoopExit = (1UL << 7),
//        kCFRunLoopAllActivities = 0x0FFFFFFFU
//    };
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _thread = [[ZHThread alloc] initWithTarget:self selector:@selector(keepLiveThread) object:nil];
    [_thread start];
}

- (void)keepLiveThread {
    NSLog(@"%@", [NSThread currentThread]);
    
    [[NSRunLoop currentRunLoop] addPort:[[NSPort alloc] init] forMode:NSDefaultRunLoopMode];
    [[NSRunLoop currentRunLoop] run];
    
    NSLog(@"end  ednd ----");
}

- (void)runThreadAction {
    NSLog(@"-- %@", [NSThread currentThread]);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self performSelector:@selector(runThreadAction) onThread:self.thread withObject:nil waitUntilDone:false];
    
    [self presentViewController:[[FirstViewController alloc] init] animated:true completion:nil];
}

- (void)test {
    CFRunLoopObserverRef observer = CFRunLoopObserverCreate(kCFAllocatorDefault, kCFRunLoopAllActivities, true, 0, observeRunloopActivities, NULL);
    CFRunLoopAddObserver(CFRunLoopGetMain(), observer, kCFRunLoopCommonModes);
    CFRelease(observer);
    
    
    [NSTimer scheduledTimerWithTimeInterval:5 repeats:true block:^(NSTimer * _Nonnull timer) {
        NSLog(@"-------");
    }];
}
@end
