//
//  DelegateVC.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/13.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "DelegateVC.h"
#import "YellowView.h"

@interface DelegateVC ()<YellowDelegate>
@property (weak, nonatomic) IBOutlet YellowView *yellowView;

@end

@implementation DelegateVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.yellowView.delegate = self; 
}

- (void)yellowClick {
    NSLog(@"yellow click");
}


@end
