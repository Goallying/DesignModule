//
//  Operations.m
//  Bridge(桥接模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "Operations.h"

@implementation Operations

- (void)putOn{
    [super setOperation:@"上架商品"];
}
- (void)pullOff{
    [super setOperation:@"下架商品"];
}

@end
