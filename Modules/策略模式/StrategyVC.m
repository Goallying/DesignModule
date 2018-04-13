//
//  ViewController.m
//  Strategy(策略模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "StrategyVC.h"
#import "UITextField+Input.h"

@interface StrategyVC ()<UITextFieldDelegate>

@end

@implementation StrategyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    策略模式（算法封装）
//    定义一系列算法，把它们一个个封装起来，并且使它们可相互替换。本模式使得算法可独立于使用
//    它的客户而变化。（验证 UITextField 输入是否有效。有两个算法分别是验证邮箱的和验证电话号
//    码的）
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITextField * tf1 = [[UITextField alloc]initWithFrame:CGRectMake(0, 100, 100, 30)];
    tf1.delegate = self ;
    tf1.limit = limit_Num;
    tf1.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:tf1];
    
    UITextField * tf2 = [[UITextField alloc]initWithFrame:CGRectMake(0, 150, 100, 30)];
    tf2.delegate = self ;
    tf2.limit = limit_Letter;
    tf2.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:tf2];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    [textField charge];
}


@end
