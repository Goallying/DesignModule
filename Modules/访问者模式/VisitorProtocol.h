//
//  VisitorProtocol.h
//  Modules
//
//  Created by 朱来飞 on 2018/4/16.
//  Copyright © 2018年 朱来飞. All rights reserved.
//

#ifndef VisitorProtocol_h
#define VisitorProtocol_h


@class WikiEngine,WikiWheel ;

@protocol VisitorProtocol<NSObject>

- (void)visitEngine:(WikiEngine *)engine;
- (void)visitWheel:(WikiWheel *)wheel ;

@end

#endif /* VisitorProtocol_h */
