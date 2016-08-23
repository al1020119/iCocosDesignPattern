//
//  BRCircle.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "BRShape.h"
#import "BRDrawAPI.h"

@interface BRCircle : BRShape
- (instancetype)initWithX:(int)xIn y:(int)yIn radius:(int)radiusIn drawApi:(BRDrawAPI *)drawApiIn;
@end
