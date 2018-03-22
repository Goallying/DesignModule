//
//  ViewController.m
//  Delegate(代理模式)
//
//  Created by 朱来飞 on 2018/3/22.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "ViewController.h"
#import "YellowView.h"
@interface ViewController ()<YellowViewDelegate>
@property (weak, nonatomic) IBOutlet YellowView *yellowView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.yellowView.delegate = self ;
}

- (void)yellowViewBtnClicked:(YellowView *)yellowView{
    NSLog(@"btn clicked");
}

@end
