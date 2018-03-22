//
//  Operations.h
//  Bridge(桥接模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "OrderOperation.h"

@interface Operations : OrderOperation
//上架
- (void)putOn ;
//下架
- (void)pullOff;

@end
