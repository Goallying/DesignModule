//
//  BMWBuilder.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/13.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "BMWBuilder.h"
#import "BMWCar.h"

@implementation BMWBuilder

- (Car *)build {
    
    BMWCar * car = [BMWCar new];
    car.carName = @"BMW";
    return car ;
    
    
}

@end
