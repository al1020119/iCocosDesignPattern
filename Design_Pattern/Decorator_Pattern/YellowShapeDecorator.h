//
//  YellowShapeDecorator.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/6.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "ShapeDecorator.h"

@interface YellowShapeDecorator : ShapeDecorator
-(instancetype)initWithShape:(Shape *)decoratedShape;
@end
