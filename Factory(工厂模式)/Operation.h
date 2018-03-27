//
//  Operation.h
//  Factory(工厂模式)
//
//  Created by 朱来飞 on 2018/3/27.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Operation : NSObject

@property (nonatomic ,assign) int a ;
@property (nonatomic ,assign) int b ;
@property (nonatomic ,assign ,readonly) int value ;

+ (Operation *)operationWith:(NSString *)o ;

@end
