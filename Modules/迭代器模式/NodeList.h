//
//  NodeList.h
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface NodeList : NSObject


@property (nonatomic ,strong ,readonly)Node * head ;
@property (nonatomic ,assign, readonly)NSInteger nodeCount ;
- (void) addItem:(id)item ;

@end
