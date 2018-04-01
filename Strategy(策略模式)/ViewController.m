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
#import "CollectionViewCell.h"
#import "UICollectionView+Type.h"
@interface ViewController ()<UITextFieldDelegate ,UICollectionViewDelegate ,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic ,strong)UICollectionView * collectionView ;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //1.策略模式,由用户输入不同类型的策略来觉得输出。
    //缺点：每增加一个新的类型。@Employee导致耦合度太高
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    Employee<EmployeeProtocol> * em1 = [Employee employWithType:Type_Developer];
    Employee<EmployeeProtocol> * em2 = [Employee employWithType:Type_Designer];
    [em1 say];
    [em2 say];
    
//    UITextField * tf1 = [[UITextField alloc]initWithFrame:CGRectMake(0, 100, 100, 30)];
//    tf1.delegate = self ;
//    tf1.limit = [NumIlimit new];
//    tf1.backgroundColor = [UIColor yellowColor];
//    [self.view addSubview:tf1];
//    
//    UITextField * tf2 = [[UITextField alloc]initWithFrame:CGRectMake(0, 150, 100, 30)];
//    tf2.delegate = self ;
//    tf2.limit = [LetterLimit new];
//    tf2.backgroundColor = [UIColor yellowColor];
//    [self.view addSubview:tf2];
    
    
    UICollectionViewFlowLayout * layoyt = [[UICollectionViewFlowLayout alloc]init];
    _collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:layoyt];
    _collectionView.backgroundColor = [UIColor whiteColor];
    _collectionView.delegate = self ;
    _collectionView.dataSource= self ;
    [_collectionView registerNib:[UINib nibWithNibName:@"CollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"cell"];
    [self.view addSubview:_collectionView];
    
    
    UIBarButtonItem * item = [[UIBarButtonItem alloc]initWithTitle:@"change" style:0 target:self action:@selector(change)];
    self.navigationItem.rightBarButtonItem = item ;
    
    
}

- (void)change {
    
    [_collectionView changeType:Type_3];
    
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 20 ;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CGSize size = collectionView.itemSize ;
    return size;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    return cell;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    [textField charge];
}


@end
