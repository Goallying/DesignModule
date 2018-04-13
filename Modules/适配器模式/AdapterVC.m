//
//  AdapterVC.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/13.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "AdapterVC.h"

#import "AVPlayer.h"
#import "IJKAdapter.h"


@interface AdapterVC ()

@end

@implementation AdapterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    适配器模式
//    将一个类的接口转换成客户希望的另一个接口，适配器模式使得原本由于接口不兼容而不能一起工
//    作的类可以一起工作
    self.view.backgroundColor = [UIColor whiteColor];
    
//    AVPlayer * av = [AVPlayer new];
//    [av avplay];
//    [av avpause];
    
    IJKPlayer * ijkPlayer = [IJKPlayer new];
    IJKAdapter * adaptedPlayer = [[IJKAdapter alloc]initWithIJKPlayer:ijkPlayer];
    [adaptedPlayer avplay];
    [adaptedPlayer avpause];

}

@end
