//
//  INOrExpression.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "INOrExpression.h"
@interface INOrExpression()
{
    INExpression *expr1;
    INExpression *expr2;
}
@end
@implementation INOrExpression

- (instancetype)initWithexpr1:(INExpression *)expr1In expr2:(INExpression *)expr2In
{
    self = [super init];
    if (self) {
        expr1 = expr1In;
        expr2 = expr2In;
    }
    return self;
}

-(BOOL)interpretWithContext:(NSString *)contextIn{

    BOOL result = [expr1 interpretWithContext:contextIn] || [expr2 interpretWithContext:contextIn];
    return result;
}

@end
