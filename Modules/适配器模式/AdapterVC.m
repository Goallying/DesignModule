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
