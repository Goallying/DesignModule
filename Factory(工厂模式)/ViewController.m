//
//  ViewController.m
//  Factory(工厂模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "ViewController.h"
#import "FactoryA.h"
#import "FactoryB.h"

#import "Operation.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    //1.工厂模式,由具体类实现产出具体输出结果。
//    Product * aProduct = [FactoryA product];
//    Product * bProduct = [FactoryB product];
//    NSLog(@"A == %@, B==%@",aProduct.productName ,bProduct.productName);

    
    Operation * o = [Operation operationWith:@"+"];
    o.a = 1000 ;
    o.b = 2000 ;
    NSLog(@"value === %d",o.value);
    
}




@end
