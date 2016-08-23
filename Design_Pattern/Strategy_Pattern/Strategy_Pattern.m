//
//  Strategy_Pattern.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/6.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Strategy_Pattern.h"
#import "Context.h"
#import "OperationAdd.h"
#import "OperationSubstract.h"
#import "OperationMultiply.h"

@interface Strategy_Pattern()
{
    Context *context;
    OperationAdd *operationAdd;
    OperationSubstract *operationSubstract;
    OperationMultiply *operationMultiply;
}

@end

@implementation Strategy_Pattern


-(void)startTest{
    
    int a = arc4random_uniform(3);
    switch (a) {
        case 0:
            context = [self getContextWithAdd];
            break;
        case 1:
            context = [self getContextWithSub];
            break;
        case 2:
            context = [self getContextWithMult];
            break;
            
        default:
            break;
    }
    
    
    
    int num1 = 10;
    int num2 = 5;
    int resule = [context executeStrategyWithnumber1:num1 number2:num2];
    NSLog(@"%d",resule);
}




-(Context *)getContextWithAdd{
    operationAdd = [[OperationAdd alloc]init];
    context = [[Context alloc]initWithStrategy:operationAdd];
    return context;
}

-(Context *)getContextWithSub{
    operationSubstract = [[OperationSubstract alloc]init];
    context = [[Context alloc]initWithStrategy:operationSubstract];
    return context;
}

-(Context *)getContextWithMult{
    operationMultiply = [[OperationMultiply alloc]init];
    context = [[Context alloc]initWithStrategy:operationMultiply];
    return context;
}

@end
