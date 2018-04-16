//
//  Node.h
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject


@property (nonatomic ,strong)Node * next ;
@property (nonatomic ,strong)id  item ;

+ (instancetype)nodeforItem:(id)item ;

@end
