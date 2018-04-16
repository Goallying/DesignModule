//
//  FacadeVC.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "FacadeVC.h"
#import "GoodsSaler.h"

@interface FacadeVC ()

@end

@implementation FacadeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    为系统中的一组接口提供一个统一的接口，外观顶！d=====(￣▽￣*)b一个高层接口，让子系统更
//    容易使用
    GoodsSaler * saler = [GoodsSaler new];
    [saler saleGood:@"20188888"];
    
}


@end
