//
//  NodeEnumerator.h
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NodeList.h"

@interface NodeEnumerator : NSObject



- (id)nextObj ;
+ (instancetype)enumberator_for_list:(NodeList *)list ;

@property (nonatomic ,strong)NodeList * list ;
@property (nonatomic ,strong)Node * currentNode ;
@end
