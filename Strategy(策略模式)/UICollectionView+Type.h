//
//  UICollectionView+Type.h
//  Strategy(策略模式)
//
//  Created by 朱来飞 on 2018/4/1.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef  NS_ENUM(NSInteger ,ShowType){
    Type_2 ,
    Type_3
};
@interface UICollectionView (Type)

- (void)changeType:(ShowType)type ;

@property (nonatomic ,assign)CGSize itemSize ;

@end
