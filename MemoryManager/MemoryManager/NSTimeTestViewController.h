//
//  NSTimeTestViewController.h
//  MemoryManager
//
//  Created by 郑章海 on 2020/7/20.
//  Copyright © 2020 zzh. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimerProxy : NSProxy

+ (instancetype)adaterWithTarget:(id)target;

@end

@interface NSTimeTestViewController : UIViewController

@end

NS_ASSUME_NONNULL_END
