//
//  ViewController.m
//  Template(模板模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "TemplateVC.h"
#import "Doctor.h"
#import "Teacher.h"

@interface TemplateVC ()

@end

@implementation TemplateVC

- (void)viewDidLoad {
    [super viewDidLoad];
//    模板模式
//    定义一个操作中算法的骨架，而将一些步骤延迟到子类中。模板方法使子类可以重定义算法的某些特
//    定步骤而不改变该算法的结构。（模板方法可以提高可扩展性与可复用性，比如 UIView 类中的定制
//    绘图,UIView 的结构不改变，只是继承 UIView,再重载 - (void)drawRect:(CGRect)rect 方法。）
    Doctor * doc = [[Doctor alloc]init];
    [doc work];
    
    Teacher * teacher = [[Teacher alloc]init];
    [teacher work];
    
}



@end
