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

- (void)lock;

- (void)unlock;

- (void)saveMoney;

- (void)saveMoneyByLock;

- (void)outMoney;

- (void)outMoneyByLock;

@end

NS_ASSUME_NONNULL_END
