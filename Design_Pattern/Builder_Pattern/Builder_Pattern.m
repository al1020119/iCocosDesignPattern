//
//  Builder_Pattern.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/7.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Builder_Pattern.h"
#import "BBMeal.h"
#import "BBMealBuilder.h"

@implementation Builder_Pattern


-(void)startTest{
    BBMealBuilder *mealBuilder = [[BBMealBuilder alloc]init];
    
    
    BBMeal *vegMeal = [mealBuilder prepareVegMeal];
    NSLog(@"蔬菜-肉");
    [vegMeal showItems];
    NSLog(@"总花费：%f\n\n",[vegMeal getCost]);
    
    
    BBMeal *nonVegMeal = [mealBuilder prepareNonVegMeal];
    NSLog(@"No-蔬菜-肉");
    [nonVegMeal showItems];
    NSLog(@"总花费：%f",[nonVegMeal getCost]);
    
}


@end
