


//
//  DecorateVC.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "DecorateVC.h"

@interface DecorateVC ()

@end

@implementation DecorateVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    动态地给一个对象添加一些额外的职责。就扩展功能来说，装饰模式相比
//    生成子类更为灵活。（Category 就是实现了装饰的设计模式）
    
    //@protocol  - cost ;
    // id<protocol> = obj.cost ,
    
    // anther obj<protocol> = [obj alloc]initWith:obj];
    // anther obj cost.(20 + self.obj.cost);
    
    
}

@end
