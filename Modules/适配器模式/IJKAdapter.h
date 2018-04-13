//
//  Adapter.h
//  Modules
//
//  Created by 朱来飞 on 2018/4/13.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IJKPlayer.h"

#import "AVPlayerProtocol.h"

@interface IJKAdapter : NSObject<AVPlayerProtocol>


- (instancetype)initWithIJKPlayer:(IJKPlayer *)ijk ;


@end
