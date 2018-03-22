//
//  Employee.m
//  Factory(工厂模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "Employee.h"
#import "Designer.h"
#import "Developer.h"
@implementation Employee

+ (id<EmployeeProtocol>)employWithType:(Type)type{
    if (type == Type_Designer) {
        return [[Designer alloc]init];
    }else if (type == Type_Developer){
        return [[Developer alloc]init];
    }
    return nil; 
}
@end
