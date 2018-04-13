//
//  YellowView.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/13.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "YellowView.h"

@implementation YellowView

- (void)awakeFromNib{
    [super awakeFromNib];
    
    UIButton * b = [[UIButton alloc]initWithFrame:CGRectMake(0, 10, 100, 44)];
    b.backgroundColor = [UIColor redColor];
    [b addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:b];
        
}
- (void)click {
    
    if ([self.delegate respondsToSelector:@selector(yellowClick)]) {
        [self.delegate yellowClick];
    }
    
}

@end
