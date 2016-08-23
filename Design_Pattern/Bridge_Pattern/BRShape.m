//
//  BRShape.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "BRShape.h"

@interface BRShape ()

@end
@implementation BRShape

- (instancetype)initWithDrawAPI:(BRDrawAPI *)drawAPIIn
{
    self = [super init];
    if (self) {
        drawAPI = drawAPIIn;
    }
    return self;
}


@end
