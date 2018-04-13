//
//  BuilderProtocol.h
//  Modules
//
//  Created by 朱来飞 on 2018/4/13.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#ifndef BuilderProtocol_h
#define BuilderProtocol_h


@class Car ;
@protocol BuilderProtocol <NSObject>

- (Car *)build ;

@end

#endif /* BuilderProtocol_h */
