//
//  Context.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/6.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Strategy.h"


@interface Context : NSObject

-(instancetype)initWithStrategy:(Strategy *)strategy;

-(int)executeStrategyWithnumber1:(int)num1 number2:(int)num2;

@end
