//
//  UITextField+Input.m
//  Strategy(策略模式)
//
//  Created by 朱来飞 on 2018/3/31.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "UITextField+Input.h"
#import <objc/runtime.h>
static void * limitKey = "limitKey";

@implementation UITextField (Input)

- (void)charge {
    [self.limit chargeTF:self];
}

- (void)setLimit:(InputlimitType *)limit{
    
    objc_setAssociatedObject(self, limitKey, limit, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (InputlimitType *)limit{
    return objc_getAssociatedObject(self, limitKey);
}
@end
