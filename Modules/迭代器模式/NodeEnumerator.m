

//
//  NodeEnumerator.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "NodeEnumerator.h"

@implementation NodeEnumerator

+ (instancetype)enumberator_for_list:(NodeList *)list {
    NodeEnumerator * en = [NodeEnumerator new];
    en.list = list ;
    en.currentNode = list.head ;
    return en ;
}
- (id)nextObj {
    _currentNode = _currentNode.next ;
    return _currentNode ;
}
@end
