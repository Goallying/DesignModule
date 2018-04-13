//
//  YellowView.h
//  Modules
//
//  Created by 朱来飞 on 2018/4/13.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol YellowDelegate<NSObject>

- (void)yellowClick ;

@end

@interface YellowView : UIView

@property (nonatomic ,weak)id <YellowDelegate> delegate  ;
@end
