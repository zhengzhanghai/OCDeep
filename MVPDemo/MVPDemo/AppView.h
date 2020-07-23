//
//  AppView.h
//  MVPDemo
//
//  Created by 郑章海 on 2020/7/23.
//  Copyright © 2020 zzh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AppViewDelegate <NSObject>

@optional
- (void)onClickBtn;

@end

NS_ASSUME_NONNULL_BEGIN

@interface AppView : UIView

@property (nonatomic, weak)  id<AppViewDelegate>deleagte;
@property (nonatomic, strong) UIButton *touchBtn;

@end


NS_ASSUME_NONNULL_END
