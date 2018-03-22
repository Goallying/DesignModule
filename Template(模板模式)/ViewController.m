//
//  ViewController.m
//  Template(模板模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "ViewController.h"
#import "Doctor.h"
#import "Teacher.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //模板模式只是简单的继承？？
    // Do any additional setup after loading the view, typically from a nib.
    Doctor * doc = [[Doctor alloc]init];
    [doc work];
    
    Teacher * teacher = [[Teacher alloc]init];
    [teacher work];
    
}



@end
