//
//  YellowShapeDecorator.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/6.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "YellowShapeDecorator.h"
@interface YellowShapeDecorator()
@property (nonatomic,strong) Shape *shape;
@end
@implementation YellowShapeDecorator
-(instancetype)initWithShape:(Shape *)decoratedShape{
    self = [super initWithShape:decoratedShape];
    if (self) {
        self.shape = decoratedShape;
    }
    return self;
}

-(void)draw{
    [self.shape draw];
    [self setYellowBorderWithShape:self.shape];
}

-(void)setYellowBorderWithShape:(Shape *)shape{
    NSLog(@"Border Color: Yellow");
}


@end
