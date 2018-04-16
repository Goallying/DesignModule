//
//  GoodsSaler.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "GoodsSaler.h"

@implementation GoodsSaler


- (void)saleGood:(NSString *)goodsId {
    
    [self sale:^{
        [self requestForGift];
    }];
    
}

- (void)requestForGift{
    
    NSLog(@"赠品查询中。。。。");
}

- (void)sale:(void(^)(void))finish {
    
    //销售 request。
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        finish();
    });
}
@end
