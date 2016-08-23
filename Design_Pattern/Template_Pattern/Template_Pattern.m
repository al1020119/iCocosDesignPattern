//
//  Template_Pattern.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/7.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Template_Pattern.h"
#import "TTGame.h"
#import "TTCricket.h"
#import "TTFootball.h"


@implementation Template_Pattern
-(void)startTest{
    
    TTGame *game = [[TTCricket alloc]init];
    [game play];
    
    
    game = [[TTFootball alloc]init];
    [game play];
    
}
@end
