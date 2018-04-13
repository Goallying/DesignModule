//
//  ViewController.m
//  SingleTon(单列模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "ShareObjVC.h"
#import "SharedObject.h"
@interface ShareObjVC ()

@end

@implementation ShareObjVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    SharedObject * s1 = [SharedObject shared];
    SharedObject * s2 = [[SharedObject alloc]init];
    
    NSLog(@"s1 == %p ,s2 == %p",s1 ,s2);
}



@end
