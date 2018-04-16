
//
//  Node.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "Node.h"

@implementation Node

+ (instancetype)nodeforItem:(id)item {
    Node * n = [Node new];
    n.item = item ;
    return n ;
    
}
@end
