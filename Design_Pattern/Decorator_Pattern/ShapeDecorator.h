//
//  ShapeDecorator.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/6.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Shape.h"

@interface ShapeDecorator : Shape
@property (nonatomic,strong) Shape *decoratedShape;

-(instancetype)initWithShape:(Shape *)shape;

@end
