//
//  Person.h
//  TestiOS
//
//  Created by 郑章海 on 2020/7/10.
//  Copyright © 2020 zzh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;

- (void)print;

@end

NS_ASSUME_NONNULL_END
