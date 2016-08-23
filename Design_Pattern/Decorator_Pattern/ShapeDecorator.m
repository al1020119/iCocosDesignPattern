//
//  ShapeDecorator.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/6.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "ShapeDecorator.h"


@implementation ShapeDecorator

-(instancetype)initWithShape:(Shape *)shape{
    self = [super init];
    if (self) {
        
        self.decoratedShape = shape;
    }
    return self;
}


@end
