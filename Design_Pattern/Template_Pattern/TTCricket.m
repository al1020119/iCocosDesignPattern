//
//  TTCricket.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/7.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "TTCricket.h"

@implementation TTCricket

-(void)initialize{
    NSLog(@"板球游戏准备工作已经完成，即将开始！");
}

-(void)startPlay{
    NSLog(@"板球游戏现在开始，玩的愉快！");
}

-(void)endPlay{
    NSLog(@"板球游戏结束，请按顺序离场！");
}
@end
