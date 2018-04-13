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
    
    //模板模式只是简单的继承？？比如UIView - drawRect 方法，在子类里面具体自定义当前view。
    // Do any additional setup after loading the view, typically from a nib.
    Doctor * doc = [[Doctor alloc]init];
    [doc work];
    
    Teacher * teacher = [[Teacher alloc]init];
    [teacher work];
    
}



@end
