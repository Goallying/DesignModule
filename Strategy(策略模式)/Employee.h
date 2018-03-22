//
//  Employee.h
//  Factory(工厂模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EmployeeProtocol.h"
typedef NS_ENUM(NSInteger , Type){
    Type_Designer ,
    Type_Developer
};
@interface Employee : NSObject
+ (id<EmployeeProtocol>)employWithType:(Type)type ;
@end
