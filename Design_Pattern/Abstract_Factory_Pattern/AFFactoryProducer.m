//
//  AFFactoryProducer.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "AFFactoryProducer.h"
#import "AFShapeFactory.h"
#import "AFColorFactory.h"


@implementation AFFactoryProducer

-(AFAbstractFactory *)getFactory:(NSString *)choice{
    AFAbstractFactory *abstractFactory;
    if ([choice isEqualToString:@"Shape"]) {
        abstractFactory = [[AFShapeFactory alloc]init];
    }else if ([choice isEqualToString:@"Color"]){
        abstractFactory = [[AFColorFactory alloc]init];
    }
    
    return abstractFactory;
}

@end
