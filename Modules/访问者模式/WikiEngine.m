

//
//  WikiEngine.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "WikiEngine.h"

@implementation WikiEngine


- (void)acceptVisitor:(id<VisitorProtocol>)v{
    [v visitEngine:self];
}
@end
