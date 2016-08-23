//
//  BBColdDrink.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/7.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "BBColdDrink.h"
#import "BBBottle.h"
@implementation BBColdDrink
-(BBPacking *)packing{
    BBBottle *bottle = [[BBBottle alloc]init];
    return bottle;
}
@end
