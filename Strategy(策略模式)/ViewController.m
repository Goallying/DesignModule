//
//  ViewController.m
//  Strategy(策略模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+Input.h"
//策略模式
#import "Employee.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //1.策略模式,由用户输入不同类型的策略来觉得输出。
    //缺点：每增加一个新的类型。@Employee导致耦合度太高
    // Do any additional setup after loading the view, typically from a nib.
    Employee<EmployeeProtocol> * em1 = [Employee employWithType:Type_Developer];
    Employee<EmployeeProtocol> * em2 = [Employee employWithType:Type_Designer];
    [em1 say];
    [em2 say];
    
    UITextField * tf1 = [[UITextField alloc]initWithFrame:CGRectMake(0, 100, 100, 30)];
    tf1.delegate = self ;
    tf1.limit = [NumIlimit new];
    tf1.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:tf1];
    
    UITextField * tf2 = [[UITextField alloc]initWithFrame:CGRectMake(0, 150, 100, 30)];
    tf2.delegate = self ;
    tf2.limit = [LetterLimit new];
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
