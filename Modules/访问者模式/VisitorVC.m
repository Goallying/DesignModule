//
//  VisitorVC.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "VisitorVC.h"
#import "WikiCar.h"
#import "Visitor.h"

@interface VisitorVC ()

@end

@implementation VisitorVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    表示一个作用于某对象结构中的各元素的操作，它让我们可以在不改变各元素的类的前提下定义作用
//    于这些元素的新操作。
    WikiCar * car = [WikiCar new];
    Visitor * v = [Visitor new];
    
    [car.engine acceptVisitor:v];
    for (WikiWheel * w in car.wheels) {
        [w acceptVisitor:v];
    }
}


@end
