//
//  Decorator_Pattern.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/6.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Decorator_Pattern.h"
#import "Shape.h"
#import "Rectangle.h"

#import "Circle.h"
#import "RedShapeDecorator.h"
#import "YellowShapeDecorator.h"

@implementation Decorator_Pattern

-(void)startTest{
  
    Shape *circle = [[Circle alloc]init];
    Shape *rectangle = [[Rectangle alloc]init];
    
    Shape *redCircle = [[RedShapeDecorator alloc]initWithShape:circle];
    Shape *redRectangle = [[RedShapeDecorator alloc]initWithShape:rectangle];

    Shape *yellowCircle = [[YellowShapeDecorator alloc]initWithShape:circle];
    Shape *yellowRectangle = [[YellowShapeDecorator alloc]initWithShape:rectangle];
    
  
    //圆形
    NSLog(@"Circle with normal border");
    [circle draw];

    //长方形
    NSLog(@"rectangle with normal border");
    [rectangle draw];
    
    //红色圆
    NSLog(@"Circle with red border");
    [redCircle draw];

    //红色长方形
    NSLog(@"Rectangle with red border");
    [redRectangle draw];

    //黄色圆
    NSLog(@"Circle with yellow border");
    [yellowCircle draw];
    
    //黄色长方形
    NSLog(@"Rectangle with yellow border");
    [yellowRectangle draw];




}

@end
