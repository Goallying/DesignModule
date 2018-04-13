//
//  BenzBuilder.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/13.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "BenzBuilder.h"
#import "BenzCar.h"

@implementation BenzBuilder

- (Car *)build {
    
    BenzCar * car = [BenzCar new];
    car.carName = @"Benz";
    return car ;
}

@end
