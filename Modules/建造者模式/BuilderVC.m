//
//  BuilderVC.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/13.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "BuilderVC.h"

#import "Car.h"

#import "BenzBuilder.h"
#import "BMWBuilder.h"

@interface BuilderVC ()

@end

@implementation BuilderVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
//    生成器模式
//    将一个复杂对象的构建与它的表现分离，使得同样的构建过程可以创建不同的变现
    Car * car1 = [Car carWithBuilder:^id<BuilderProtocol>{
        BMWBuilder * bmwBuilder = [BMWBuilder new];
        return bmwBuilder ;
    }];
    Car * car2 = [Car carWithBuilder:^id<BuilderProtocol>{
        BenzBuilder * benzBuilder = [BenzBuilder new];
        return benzBuilder ;
    }];
    NSLog(@"car1 == %@ \n car2 == %@",car1.carName ,car2.carName);
    
}


@end
