//
//  Context.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/6.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Context.h"


@interface Context()
@property (nonatomic,strong) Strategy *strategy;
@end

@implementation Context


-(instancetype)initWithStrategy:(Strategy *)strategy{
    self = [super init];
    if (self) {
        self.strategy = strategy;
    }
    return self;
}

-(int)executeStrategyWithnumber1:(int)num1 number2:(int)num2{
    int result = [self.strategy doOperationWithnumber1:num1 number2:num2];
    return result;
}



@end
