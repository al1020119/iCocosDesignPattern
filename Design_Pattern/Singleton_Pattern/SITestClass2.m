//
//  SITestClass2.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "SITestClass2.h"

@implementation SITestClass2

static SITestClass2 *sharedInstance = nil;

+ (SITestClass2 *)defaultManager {
    if (!sharedInstance){
        sharedInstance = [[self allocWithZone:NULL] init];
    }
    return sharedInstance;
}

@end
