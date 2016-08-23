//
//  BBMealBuilder.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/7.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "BBMealBuilder.h"
#import "BBVegBurger.h"
#import "BBCoke.h"
#import "BBChickenBurger.h"
#import "BBPepsi.h"


@implementation BBMealBuilder

-(BBMeal *)prepareVegMeal{
    BBMeal *meal = [[BBMeal alloc]init];
    BBVegBurger *vb = [[BBVegBurger alloc]init];
    BBCoke *coke = [[BBCoke alloc]init];
    
    
    [meal.items addObject:vb];
    [meal.items addObject:coke];
    
    return meal;
}

-(BBMeal *)prepareNonVegMeal{
    BBMeal *meal = [[BBMeal alloc]init];
    BBChickenBurger *cb = [[BBChickenBurger alloc]init];
    BBPepsi *pepsi = [[BBPepsi alloc]init];
    
    
    [meal.items addObject:cb];
    [meal.items addObject:pepsi];
    return meal;
}

@end
