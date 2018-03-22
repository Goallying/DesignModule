//
//  OrderOperation.h
//  Bridge(桥接模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Good.h"
@interface OrderOperation : NSObject

@property (nonatomic ,strong)Good * good;
- (void)setOperation:(NSString *)operation ;
@end
