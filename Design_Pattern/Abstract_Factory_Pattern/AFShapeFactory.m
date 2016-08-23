//
//  AFShapeFactory.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "AFShapeFactory.h"
#import "AFRectangle.h"
#import "AFSquare.h"
#import "AFCircle.h"

@implementation AFShapeFactory



-(AFShape *)getShape:(NSString *)shapeType{
    AFShape *shape;
    if (shapeType == nil) {
        shape =  nil;
    }else if ([shapeType isEqualToString:@"Circle"]) {
        shape = [[AFCircle alloc]init];
    }else if ([shapeType isEqualToString:@"Rectangle"]) {
        shape = [[AFRectangle alloc]init];
    }else if ([shapeType isEqualToString:@"Square"]) {
        shape = [[AFSquare alloc]init];
    }
    return shape;
}



@end
