//
//  NumIlimit.m
//  Strategy(策略模式)
//
//  Created by 朱来飞 on 2018/3/31.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "NumIlimit.h"

@implementation NumIlimit

- (void)chargeTF:(id)tf{
    
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
    
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:[tf text] options:NSMatchingAnchored range:NSMakeRange(0, [[tf text] length])];
    
    if (numberOfMatches == 0) {
        NSLog(@"数字,输入有问题") ;
    } else {
        NSLog(@"输入正确") ;
    }
}
@end
