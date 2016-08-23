//
//  INAndExpression.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "INExpression.h"

@interface INAndExpression : INExpression
- (instancetype)initWithexpr1:(INExpression *)expr1In expr2:(INExpression *)expr2In;
@end
