//
//  AFColorFactory.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "AFColorFactory.h"
#import "AFRed.h"
#import "AFGreen.h"
#import "AFBlue.h"

@implementation AFColorFactory

-(AFColor *)getColor:(NSString *)colorType{
    AFColor *color;
    if (colorType == nil) {
        color = nil;
    }else if ([colorType isEqualToString:@"Red"]) {
        color = [[AFRed alloc]init];
    }else if ([colorType isEqualToString:@"Green"]) {
        color = [[AFGreen alloc]init];
    }else if ([colorType isEqualToString:@"Blue"]) {
        color = [[AFBlue alloc]init];
    }
    return color;
}
@end
