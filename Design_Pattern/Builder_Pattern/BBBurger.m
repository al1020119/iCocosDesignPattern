//
//  BBBurger.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/7.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "BBBurger.h"
#import "BBWrapper.h"

@implementation BBBurger

-(BBPacking *)packing{
    BBWrapper *warpper = [[BBWrapper alloc]init];
    return warpper;
}

@end
