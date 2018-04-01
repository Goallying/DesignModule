//
//  UICollectionView+Type.m
//  Strategy(策略模式)
//
//  Created by 朱来飞 on 2018/4/1.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "UICollectionView+Type.h"
#import <objc/runtime.h>

static void * TypeKey = "TypeKey";
@interface TypeInfo:NSObject

@property (nonatomic ,assign)ShowType type ;

@end

@implementation TypeInfo

@end

@implementation UICollectionView (Type)

- (void)changeType:(ShowType)type{
    
    TypeInfo * info = [TypeInfo new];
    info.type = type ;
    objc_setAssociatedObject(self, TypeKey, info, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self reloadData];
}

@dynamic itemSize ;
- (CGSize)itemSize{
    
    TypeInfo * info = objc_getAssociatedObject(self, TypeKey) ;
    if (info.type== Type_2) {
        return CGSizeMake(200, 200);
    }
    return CGSizeMake(100, 100);
}
@end
