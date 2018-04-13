//
//  UITextField+Input.m
//  Strategy(策略模式)
//
//  Created by 朱来飞 on 2018/3/31.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "UITextField+Input.h"
#import <objc/runtime.h>

#import "NumIlimit.h"
#import "LetterLimit.h"

static void * limitKey = "limitKey";

@implementation UITextField (Input)

- (void)setLimit:(LimitType)limit{
    
    id<UITextInputProtol> obj = nil ;
    if (limit == limit_Num) {
        obj = [NumIlimit new];
    }else if (limit == limit_Letter){
        obj = [LetterLimit new];
    }
    objc_setAssociatedObject(self, limitKey, obj, OBJC_ASSOCIATION_RETAIN);
}

- (void)charge {
    
    id <UITextInputProtol> obj = objc_getAssociatedObject(self, limitKey);
    [obj chargeTF:self];
}
@end
