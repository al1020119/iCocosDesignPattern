//
//  Factory_Pattern.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Factory_Pattern.h"
#import "FAShapeFactory.h"

@implementation Factory_Pattern

-(void)startTest{
    FAShapeFactory *shapeFactory = [[FAShapeFactory alloc]init];
    
    //获取 Circle 的对象，并调用它的 draw 方法
    FAShape *shape1 = [shapeFactory getShape:@"CIRCLE"];
    
    //调用 Circle 的 draw 方法
    [shape1 draw];
    
    //获取 Rectangle 的对象，并调用它的 draw 方法
    FAShape *shape2 = [shapeFactory getShape:@"RECTANGLE"];
    
    //调用 Rectangle 的 draw 方法
    [shape2 draw];
    
    //获取 Square 的对象，并调用它的 draw 方法
    FAShape *shape3 = [shapeFactory getShape:@"SQUARE"];
    
    //调用 Square 的 draw 方法
    [shape3 draw];

}

@end
