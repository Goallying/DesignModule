//
//  ViewController.m
//  Factory(工厂模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "FactoryVC.h"
#import "FactoryA.h"
#import "FactoryB.h"

#import "Operation.h"
@interface FactoryVC ()

@end

@implementation FactoryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];

    
//1.工厂模式,由具体类实现产出具体输出结果。
//    定义创建对象的接口，让子类决定实例化哪一个类。工厂方法使得一个类的实例化延迟到子类。--《设计模式》
    //工厂方法
    //    Product * aProduct = [FactoryA product];
    //    Product * bProduct = [FactoryB product];
    //    NSLog(@"A == %@, B==%@",aProduct.productName ,bProduct.productName);
//    Operation * o = [Operation operationWith:@"+"];
//    o.a = 1000 ;
//    o.b = 2000 ;
//    NSLog(@"value === %d",o.value);
    
//    类簇
//    类簇和工厂方法很类似，它通过在基类中提供工厂方法，隐藏具体的子类实现。例如Cocoa中的类方法
//
//    NSNumber * a = [NSNumber numberWithBool:YES];
//    NSNumber * b = [NSNumber numberWithInteger:123];
//    NSLog(@"%@",NSStringFromClass([a class])); //__NSCFBoolean
//    NSLog(@"%@",NSStringFromClass([b class])); //__NSCFNumber
    
    
    
    
}




@end
