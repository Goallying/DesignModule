//
//  NodeList.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "NodeList.h"

@implementation NodeList


- (instancetype)init{
    if (self = [super init]) {
        _head = [Node new];
    }
    return self ;
}

- (void)addItem:(id)item{
    if (_head == nil) {
        _head = [Node nodeforItem:item];
    }else{
        [self _addItem:item node:_head];
    }
}

- (void)_addItem:(id)item node:(Node *)node {
    if (node.next == nil) {
        node.next = [Node nodeforItem:item];
    }else{
        //递归
        [self _addItem:item node:node.next];
    }
    
}

@end
