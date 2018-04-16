//
//  Invoker.h
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

@interface Invoker : NSObject

@property (nonatomic ,strong)id<CommandProtocol> command;

- (void)excuteCommand; 
@end
