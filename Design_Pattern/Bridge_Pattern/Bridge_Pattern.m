//
//  Bridge_Pattern.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Bridge_Pattern.h"
#import "BRShape.h"
#import "BRCircle.h"
#import "BRRedCircle.h"
#import "BRGreenCircle.h"

@implementation Bridge_Pattern

-(void)startTest{
    
    BRRedCircle *redC = [[BRRedCircle alloc]init];
    BRGreenCircle *greenC = [[BRGreenCircle alloc]init];
    
    
    BRShape *redCircle = [[BRCircle alloc]initWithX:100 y:100 radius:10 drawApi:redC];
    
    BRShape *greenCircle = [[BRCircle alloc]initWithX:200 y:200 radius:20 drawApi:greenC];
    
    [redCircle draw];
    [greenCircle draw];
}

@end
