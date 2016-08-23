//
//  Singleton_Pattern.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "SuperDesignPattern.h"

@interface Singleton_Pattern : SuperDesignPattern

@end


/*
 Class1 dispatch_once 写法来自苹果官方文档，
 
 该写法具有以下几个特性：
 
 1. 线程安全。
 
 2. 满足静态分析器的要求。
 
 3. 兼容了ARC
 
 */