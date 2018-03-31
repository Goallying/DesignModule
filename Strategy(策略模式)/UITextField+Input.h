//
//  UITextField+Input.h
//  Strategy(策略模式)
//
//  Created by 朱来飞 on 2018/3/31.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NumIlimit.h"
#import "LetterLimit.h"
@interface UITextField (Input)

@property (nonatomic , strong)InputlimitType *  limit ;

- (void)charge ;

@end
