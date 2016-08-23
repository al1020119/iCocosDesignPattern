//
//  OOSubject.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "OOObserver.h"
@class OOObserver;

@interface OOSubject : NSObject
-(void)notifyAllObservers;
-(void)attach:(OOObserver *)observer;
-(void)setAState:(int)state;
-(int)getAState;
@end
