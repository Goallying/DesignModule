//
//  UITextField+Input.h
//  Strategy(策略模式)
//
//  Created by 朱来飞 on 2018/3/31.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger ,LimitType) {
    limit_Num ,
    limit_Letter
};
@interface UITextField (Input)

@property (nonatomic , assign)LimitType  limit ;

- (void)charge ;

@end
