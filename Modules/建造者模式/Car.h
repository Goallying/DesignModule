//
//  Car.h
//  Modules
//
//  Created by 朱来飞 on 2018/4/13.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BuilderProtocol.h"

@interface Car : NSObject 

@property (nonatomic ,copy)NSString * carName ;

+ (Car *)carWithBuilder:(id<BuilderProtocol>(^)(void))builder ;

@end
