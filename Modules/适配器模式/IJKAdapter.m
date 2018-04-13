//
//  Adapter.m
//  Modules
//
//  Created by 朱来飞 on 2018/4/13.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import "IJKAdapter.h"


@implementation IJKAdapter {
    IJKPlayer * _ijk ;
}
- (instancetype)initWithIJKPlayer:(IJKPlayer *)ijk{
    if (self = [super init]) {
        _ijk = ijk ;
    }
    return self ;
}

- (void)avpause {
    [_ijk ijkPause];
    
}
- (void)avplay {
    [_ijk ijkPlay];
}


@end
