//
//  OOObserver.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OOSubject.h"


@interface OOObserver : NSObject
@property (nonatomic,strong) OOSubject *subject;
-(void)update;
- (instancetype)initWithSubject:(OOSubject *)subject;
@end
