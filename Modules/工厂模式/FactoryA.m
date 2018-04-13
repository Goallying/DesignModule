//
//  FactoryA.m
//  Factory(工厂模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "FactoryA.h"

@implementation FactoryA

+ (Product *)product{
    Product * proA = [Product new];
    proA.productName = @"A product";
    return proA ;
}
@end
