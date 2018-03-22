//
//  ViewController.m
//  SingleTon(单列模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "ViewController.h"
#import "SharedObject.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SharedObject * s1 = [SharedObject shared];
    SharedObject * s2 = [[SharedObject alloc]init];
    
    NSLog(@"s1 == %p ,s2 == %p",s1 ,s2);
}



@end
