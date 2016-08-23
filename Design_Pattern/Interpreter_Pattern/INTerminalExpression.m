//
//  INTerminalExpression.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "INTerminalExpression.h"

@interface INTerminalExpression()
{
    NSString *data;
}
@end

@implementation INTerminalExpression

- (instancetype)initWithData:(NSString *)dataIn
{
    self = [super init];
    if (self) {
        data = dataIn;
    }
    return self;
}

-(BOOL)interpretWithContext:(NSString *)contextIn{
    if ([contextIn containsString:data]) {
        return YES;
    }
    return NO;
}


@end
