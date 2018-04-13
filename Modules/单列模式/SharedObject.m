//
//  SharedObject.m
//  SingleTon(单列模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "SharedObject.h"
static SharedObject * obj = nil ;

@implementation SharedObject
+ (instancetype)shared{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        obj = [[super allocWithZone:NULL]init];
    });
    return obj ;
}
+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    return [self shared];
}
@end
