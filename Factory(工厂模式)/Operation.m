//
//  Operation.m
//  Factory(工厂模式)
//
//  Created by 朱来飞 on 2018/3/27.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "Operation.h"
#import "OperationAdd.h"
@implementation Operation

+ (Operation *)operationWith:(NSString *)o{
    if ([o isEqualToString:@"+"]) {
        return [OperationAdd new];
    }
    return 0 ;
}
@end
