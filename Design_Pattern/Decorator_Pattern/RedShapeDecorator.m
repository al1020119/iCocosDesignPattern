//
//  RedShapeDecorator.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/6.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "RedShapeDecorator.h"

@interface RedShapeDecorator()
@property (nonatomic,strong) Shape *shape;
@end

@implementation RedShapeDecorator

-(instancetype)initWithShape:(Shape *)decoratedShape{
    self = [super initWithShape:decoratedShape];
    if (self) {
        self.shape = decoratedShape;
    }
    return self;
}



-(void)draw{
    [self.shape draw];
    [self setRedBorderWithShape:self.shape];
}

-(void)setRedBorderWithShape:(Shape *)shape{
    NSLog(@"Border Color: Red");
}


@end
