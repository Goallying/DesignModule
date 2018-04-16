
//
//  EnumeratorVC.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "EnumeratorVC.h"
#import "NodeEnumerator.h"

@interface EnumeratorVC ()

@end

@implementation EnumeratorVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
// 提供一种方法顺序访问一个聚合对象中的各个元素，而又不需要暴露该对象的内部表示
    
    NodeList * list = [NodeList new];
    [list addItem:@"A"];
    [list addItem:@"B"];
    [list addItem:@"c"];
    [list addItem:@"d"];
    [list addItem:@"E"];

    NodeEnumerator * en = [NodeEnumerator enumberator_for_list:list];
    Node * n = nil ;
    while (n = [en nextObj]) {
        NSLog(@"======== %@",n.item);
    }
}
@end
