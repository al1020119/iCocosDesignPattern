//
//  FAShapeFactory.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "FAShapeFactory.h"
#import "FASquare.h"
#import "FACircle.h"
#import "FARectangle.h"

@implementation FAShapeFactory

-(FAShape *)getShape:(NSString *)shapeType{
        FAShape *shape;
    if (shapeType == nil) {
        shape = nil;
    }else if ([shapeType isEqualToString:@"CIRCLE"]) {
        shape = [[FACircle alloc]init];
    }else if ([shapeType isEqualToString:@"RECTANGLE"]) {
       shape = [[FARectangle alloc]init];
    }else if ([shapeType isEqualToString:@"SQUARE"]) {
       shape = [[FASquare alloc]init];
    }
   return shape;
}

@end
