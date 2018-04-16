//
//  WikiCar.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "WikiCar.h"

@implementation WikiCar

- (instancetype)init {
    
    if (self = [super init]) {
        
        _engine = [WikiEngine new];
        
        WikiWheel * w1 = [WikiWheel new];
        WikiWheel * w2 = [WikiWheel new];
        WikiWheel * w3 = [WikiWheel new];
        WikiWheel * w4 = [WikiWheel new];
        _wheels = @[w1,w2,w3,w4];
    }
    return self ;
}
@end
