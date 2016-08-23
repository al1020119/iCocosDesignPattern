//
//  Observer_Pattern.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "SuperDesignPattern.h"

@interface Observer_Pattern : SuperDesignPattern

@end



/*
 
 在OOSubject.m 类中：-(void)notifyAllObservers 方法中，
 
 牵扯到类循环引用问题，用到方法，@class解决不了。
 
 此处至少为了能更深刻的理解这种设计模式，所以用这种代码。
 
 所以，一般用ios自带的NSNotificationCenter (Observer_Pattern.m 中 -(void)NSNotification 方法) 来解决问题。
 
 */