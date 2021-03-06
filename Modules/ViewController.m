//
//  ViewController.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/13.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate ,UITableViewDataSource>
@property (nonatomic ,strong)NSArray * datas ;
@property (nonatomic ,strong)NSArray * vcs ;
@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    _datas = @[@"单列模式" ,@"工厂模式" ,
               @"代理模式" ,@"策略模式",
               @"模板模式",@"建造者模式",
               @"适配器模式",@"外观模式",
               @"中介者模式",@"观察者模式",
               @"组合模式",@"迭代器模式",
               @"访问者模式",@"装饰模式",
               @"责任链模式",@"命令模式",
               @"备忘录模式"];
    
    _vcs = @[@"ShareObjVC",@"FactoryVC",
             @"DelegateVC",@"StrategyVC",
             @"TemplateVC",@"BuilderVC",
             @"AdapterVC",@"FacadeVC",
             @"MediatorVC",@"KVOVC",
             @"ComponentVC",@"EnumeratorVC",
             @"VisitorVC",@"DecorateVC",
             @"ResponsibilityChainVC",@"CommandVC",
             @"MementoVC"];
    
    UITableView * t = [[UITableView alloc]initWithFrame:self.view.bounds];
    t.delegate = self ;
    t.dataSource = self ;
    [t registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:t];
 
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _datas.count ;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"%@ --- %ld",_datas[indexPath.row],indexPath.row + 1];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Class cls = NSClassFromString(_vcs[indexPath.row]);
    UIViewController * vc = [cls new];
    [self.navigationController pushViewController:vc animated:YES];
    
}



@end
