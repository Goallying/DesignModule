//
//  YellowView.m
//  Delegate(代理模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "YellowView.h"

@implementation YellowView

- (IBAction)btnClick:(UIButton *)sender {
    if([self.delegate respondsToSelector:@selector(yellowViewBtnClicked:)]){
        [self.delegate yellowViewBtnClicked:self];
    }
}


@end
