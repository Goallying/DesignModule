//
//  Car.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/13.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "Car.h"

@implementation Car

+ (Car *)carWithBuilder:(id<BuilderProtocol> (^)(void))builder{
    return [builder()  build];
}
@end
