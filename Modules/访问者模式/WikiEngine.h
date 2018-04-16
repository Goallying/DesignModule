//
//  WikiEngine.h
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VisitorProtocol.h"
@interface WikiEngine : NSObject

- (void)acceptVisitor:(id<VisitorProtocol>) v;

@end
