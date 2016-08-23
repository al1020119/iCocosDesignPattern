//
//  FFShapeMaker.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/6.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "FFShapeMaker.h"
#import "FFShape.h"
#import "FFCircle.h"
#import "FFRectangle.h"
#import "FFSquare.h"

@interface FFShapeMaker()
@property (nonatomic,strong) FFShape *circle;
@property (nonatomic,strong) FFShape *rectangle;
@property (nonatomic,strong) FFShape *square;
@end


@implementation FFShapeMaker

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.circle = [[FFCircle alloc]init];
        self.rectangle = [[FFRectangle alloc]init];
        self.square = [[FFSquare alloc]init];
    }
    
    return self;
}

-(void)drawCircle{
    [self.circle draw];
}
-(void)drawRectangle{
    [self.rectangle draw];
}
-(void)drawSquare{
    [self.square draw];
}

@end



