//
//  LetterLimit.m
//  Strategy(策略模式)
//
//  Created by 朱来飞 on 2018/3/31.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "LetterLimit.h"

@implementation LetterLimit

- (void)chargeTF:(UITextField *)tf{
    // 正则
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
    
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:[tf text] options:NSMatchingAnchored range:NSMakeRange(0, [[tf text] length])];
    
    
    if (numberOfMatches == 0) {
         NSLog(@"字母,输入有问题");
    } else {
        NSLog(@"输入正确");
    }
}
@end
