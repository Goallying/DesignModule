



//
//  CommandVC.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "CommandVC.h"
#import "CommandReceiver.h"
#import "Invoker.h"
#import "ConcreteCommand.h"

@interface CommandVC ()

@end

@implementation CommandVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    将请求封装为一个对象，从而可用不同的请求对客户进行参数化，对请求排队或记录请求日志，以及
//    支持可撤销的操作。（Cocoa Touch 框架中的 NSInvocation 就是实现了命令模式。）
    CommandReceiver * receiver = [CommandReceiver new];
    ConcreteCommand * command = [[ConcreteCommand alloc]initWithReceiver:receiver];
    
    Invoker * invoker = [Invoker new];
    invoker.command = command ;
    [invoker excuteCommand];
}


@end
