//
//  ConcreteCommand.h
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"
#import "CommandReceiver.h"

@interface ConcreteCommand : NSObject<CommandProtocol>

@property (nonatomic ,strong)CommandReceiver * receiver ;
- (instancetype)initWithReceiver:(CommandReceiver *)receiver ;

@end
