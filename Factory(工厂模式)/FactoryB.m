//
//  FactoryB.m
//  Factory(工厂模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "FactoryB.h"

@implementation FactoryB
+ (Product *)product{
    Product * proB = [Product new];
    proB.productName = @"B product";
    return proB ;
}
@end
