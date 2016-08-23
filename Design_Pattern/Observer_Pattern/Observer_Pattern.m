//
//  Observer_Pattern.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Observer_Pattern.h"
#import "OOSubject.h"
#import "OOOctalObserver.h"
#import "OOHexaObserver.h"
#import "OOBinaryObserver.h"



@implementation Observer_Pattern
-(void)startTest{
    OOSubject *subject = [[OOSubject alloc]init];
    
    OOBinaryObserver *oob = [[OOBinaryObserver alloc]initWithSubject:subject];
    OOHexaObserver *ooh = [[OOHexaObserver alloc]initWithSubject:subject];
    OOOctalObserver *ooo = [[OOOctalObserver alloc]initWithSubject:subject];

    NSLog(@"First state change: 15");
    [subject setAState:15];
    
    NSLog(@"First state change: 10");
    [subject setAState:10];
    
}


/*
 
 在OOSubject.m 类中：-(void)notifyAllObservers 方法中，
 
 牵扯到类循环引用问题，用到方法，@class解决不了。
 
 此处至少为了能更深刻的理解这种设计模式，所以用这种代码。
 
 所以，一般用ios自带的NSNotificationCenter (Observer_Pattern.m 中 -(void)NSNotification 方法) 来解决问题。

 */

-(void)NSNotification{
    
    
    //在消息中心中注册消息
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(clickBtn:)
                                                 name:@"clickBtn" object:nil];
 
    //向消息中心推荐送名为"clickBtn"的消息
    [[NSNotificationCenter defaultCenter] postNotificationName:@"clickBtn"
                                                        object:nil
                                                      userInfo:[NSDictionary dictionaryWithObject:@"jory" forKey:@"name"]];
 
    //移除通知
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:@"clickBtn"
                                                  object:nil];//object 与注册时相同
    //或
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
 
    
}

-(void)clickBtn:(NSNotification *)noti{
    NSDictionary *dict = noti.userInfo;
    
}

@end
