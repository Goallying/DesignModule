//
//  DemesticGoodFactory.m
//  Bridge(桥接模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "DemesticGoodFactory.h"
#import "DemesticGood.h"
@implementation DemesticGoodFactory

+ (Good *)produce{
    return [DemesticGood new];
}
@end
