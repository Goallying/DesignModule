//
//  YellowView.h
//  Delegate(代理模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YellowView ;
@protocol YellowViewDelegate<NSObject>

- (void)yellowViewBtnClicked:(YellowView *)yellowView ;
@end

@interface YellowView : UIView

@property (nonatomic ,weak)id<YellowViewDelegate>delegate ;
@end
