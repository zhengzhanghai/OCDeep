//
//  LockBaseDemo.h
//  Thread
//
//  Created by 郑章海 on 2020/7/17.
//  Copyright © 2020 zzh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LockBaseDemo : NSObject

+ (void)lockTest;

- (void)lockTest;

- (void)lockThread;

- (void)unlockThread;

@end

NS_ASSUME_NONNULL_END
