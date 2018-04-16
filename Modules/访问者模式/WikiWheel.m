//
//  WikiWheel.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "WikiWheel.h"

@implementation WikiWheel


- (void)acceptVisitor:(id<VisitorProtocol>)v {
    [v visitWheel:self];
    
}
@end
