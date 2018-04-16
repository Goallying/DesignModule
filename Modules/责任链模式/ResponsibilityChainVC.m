

//
//  ResponsibilityChainVC.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "ResponsibilityChainVC.h"

@interface ResponsibilityChainVC ()

@end

@implementation ResponsibilityChainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    使多个对象都有机会处理请求，从而避免请求的发送者和接受者之间发生耦合。此模式将这些对象连
//    成一条链，并沿着这条链传递请求，直到有一个对象处理它为止。（Cocoa Touch 中的事件处理流
//    程--响应者链就实现了责任链模式
    
    //事件传递过程相反
    //aView->superView->UIViewController->UIWindow->UIApplication->Appdelegate.
    
    // 查找view 所在的viewController
//- (UIViewController *)viewController {
//    for (UIView* next = [self superview]; next; next = next.superview) {
//        UIResponder *nextResponder = [next nextResponder];
//        if ([nextResponder isKindOfClass:[UIViewController class]]) {
//            return (UIViewController *)nextResponder;
//        }
//    }
//    return nil;
//}
}


@end
