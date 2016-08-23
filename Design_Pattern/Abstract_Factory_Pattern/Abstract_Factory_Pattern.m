//
//  Abstract_Factory_Pattern.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//


#import "Abstract_Factory_Pattern.h"
#import "AFAbstractFactory.h"
#import "AFShapeFactory.h"
#import "AFColorFactory.h"
#import "AFFactoryProducer.h"



@implementation Abstract_Factory_Pattern

-(void)startTest{
    
    AFFactoryProducer *fp = [[AFFactoryProducer alloc]init];
    //获取形状工厂
    AFAbstractFactory *shapeFactory = [fp getFactory:@"Shape"];
    //获取形状为 Circle 的对象
    AFShape *shape1 = [shapeFactory getShape:@"Circle"];
    
    //调用 Circle 的 draw 方法
    [shape1 draw];
    
    //获取形状为 Rectangle 的对象
    AFShape *shape2 = [shapeFactory getShape:@"Rectangle"];
    //调用 Rectangle 的 draw 方法
    [shape2 draw];
    
    //获取形状为 Square 的对象
    
    AFShape *shape3 = [shapeFactory getShape:@"Square"];
    //调用 Square 的 draw 方法
    [shape3 draw];
   
    
    
    
    
    //获取颜色工厂
    AFAbstractFactory *colorFactory = [fp getFactory:@"Color"];
    
    //获取颜色为 Red 的对象
    AFColor *color1 = [colorFactory getColor:@"Red"];
    
    //调用 Red 的 fill 方法
    [color1 fill];
    
    //获取颜色为 Green 的对象
    AFColor *color2 = [colorFactory getColor:@"Green"];
    
    //调用 Green 的 fill 方法
    [color2 fill];
    
    //获取颜色为 Blue 的对象
    AFColor *color3 = [colorFactory getColor:@"Blue"];
    
    //调用 Blue 的 fill 方法
    [color3 fill];
}

@end
