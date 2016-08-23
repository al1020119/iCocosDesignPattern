//
//  SITestClass1.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "SITestClass1.h"

@implementation SITestClass1

/*
 Class1 dispatch_once 写法来自苹果官方文档，
 
 该写法具有以下几个特性：
 
 1. 线程安全。
 
 2. 满足静态分析器的要求。
 
 3. 兼容了ARC
 
 */


+ (SITestClass1 *)sharedManager
{
    static SITestClass1 *sharedInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

-(id)copy{
    return self;
}

@end
