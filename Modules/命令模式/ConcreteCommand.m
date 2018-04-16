


//
//  ConcreteCommand.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "ConcreteCommand.h"

@implementation ConcreteCommand


- (instancetype)initWithReceiver:(CommandReceiver *)receiver{
    if (self = [super init]) {
        _receiver = receiver ;
    }
    return self ;
}
- (void)execute {
    [_receiver action];
    
}
@end
