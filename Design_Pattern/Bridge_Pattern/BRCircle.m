//
//  BRCircle.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "BRCircle.h"
@interface BRCircle()
{
    int x;
    int y;
    int radius;
}
@end


@implementation BRCircle

- (instancetype)initWithX:(int)xIn y:(int)yIn radius:(int)radiusIn drawApi:(BRDrawAPI *)drawApiIn
{
    self = [super initWithDrawAPI:drawApiIn];
    if (self) {
        x = xIn;
        y = yIn;
        radius = radiusIn;
    }
    return self;
}

-(void)draw{
    [drawAPI drawCircleWithRadius:radius x:x y:y];
}

@end
