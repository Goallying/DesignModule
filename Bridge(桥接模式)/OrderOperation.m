//
//  OrderOperation.m
//  Bridge(桥接模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "OrderOperation.h"

@implementation OrderOperation

- (void)setOperation:(NSString *)operation{
    //this is bridge.
    [self.good operation:operation];
}
@end
