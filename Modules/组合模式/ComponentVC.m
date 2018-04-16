//
//  ComponentVC.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "ComponentVC.h"

@interface ComponentVC ()

@end

@implementation ComponentVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    将对象组合成树形结构以表示部分-整体的层次结构，使得用户对单个对象和组合对象使用具有一致
//    性
    // 适用于树形数据结构，参考签收选项页面。
    
    //数组包含（全部签收，全部退货，半收半退）三种Model。
    //上述model ，都具备subOptions ，继承自Option 顶级Model。
}


@end
