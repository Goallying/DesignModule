//
//  Visitor.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "Visitor.h"

@implementation Visitor

- (void)visitWheel:(WikiWheel *)wheel {
    
    NSLog(@"正在访问 wheel");
}
- (void)visitEngine:(WikiEngine *)engine {
    NSLog(@"正在访问 engine");
}

@end
