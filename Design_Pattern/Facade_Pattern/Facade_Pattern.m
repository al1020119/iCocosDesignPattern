//
//  Facade_Pattern.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/6.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Facade_Pattern.h"
#import "FFShapeMaker.h"


@implementation Facade_Pattern

-(void)startTest{
    FFShapeMaker *shaprMaker = [[FFShapeMaker alloc]init];
    [shaprMaker drawCircle];
    [shaprMaker drawSquare];
    [shaprMaker drawRectangle];
}


@end
