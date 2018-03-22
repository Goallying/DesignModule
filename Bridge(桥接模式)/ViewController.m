//
//  ViewController.m
//  Bridge(桥接模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "ViewController.h"
#import "Operations.h"

//#import "DemesticGood.h"
//#import "OverseaGood.h"

#import "DemesticGoodFactory.h"
#import "OverseaGoodFactory.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Operations * operation = [Operations new];
    
//    DemesticGood * demesticGoods = [DemesticGood new];
//    OverseaGood * overseaGood = [OverseaGood new];
//
//    operation.good = demesticGoods ;
//    [operation putOn];
//    //
//    operation.good = overseaGood ;
//    [operation pullOff];
    
    //大规模的桥接模式运用，应该是 桥接 两种模式， 一下桥接就是桥接Operation和工厂模式下的商品。已经运用于实际开发。
    Good * demestic = [DemesticGoodFactory produce];
    Good * overseaGood = [OverseaGoodFactory produce];
    
    operation.good = demestic ;
    [operation putOn];
    //
    operation.good = overseaGood;
    [operation pullOff];
    
}

@end
