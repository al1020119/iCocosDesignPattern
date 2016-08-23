//
//  Interpreter_Pattern.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Interpreter_Pattern.h"
#import "INExpression.h"
#import "INTerminalExpression.h"
#import "INOrExpression.h"
#import "INAndExpression.h"


@implementation Interpreter_Pattern


-(void)startTest{
    INExpression *isMale = [self getMaleExpression];
       INExpression *isMarriedWoman = [self getMarriedWomanExpression];


    NSLog(@"John is male? %@", [isMale interpretWithContext:@"John"]?@"YES":@"NO");
   NSLog(@"Julie is a married women? %@", [isMarriedWoman interpretWithContext:@"Married Julie"]?@"YES":@"NO");
    
}


//规则：Robert 和 John 是男性
-(INExpression *)getMaleExpression{
    
    INExpression *robert = [[INTerminalExpression alloc]initWithData:@"Robert"];
    INExpression *john = [[INTerminalExpression alloc]initWithData:@"John"];
    
    INOrExpression *inor = [[INOrExpression alloc]initWithexpr1:robert expr2:john];
    return inor;
}


//规则：Julie 是一个已婚的女性
-(INExpression *)getMarriedWomanExpression{
    
    INExpression *julie = [[INTerminalExpression alloc]initWithData:@"julie"];
    INExpression *married = [[INTerminalExpression alloc]initWithData:@"married"];
    
    INAndExpression *inand = [[INAndExpression alloc]initWithexpr1:julie expr2:married];
    return inand;
}

@end
