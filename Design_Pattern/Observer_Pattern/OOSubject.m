//
//  OOSubject.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "OOSubject.h"

@interface OOSubject()
@property (nonatomic,strong) NSMutableArray *observers;
@property (nonatomic,assign) int state;
@end

@implementation OOSubject

-(int)getAState{
    return self.state;
}

-(void)setAState:(int)state{
    self.state = state;
    [self notifyAllObservers];
}

-(void)attach:(OOObserver *)observer{
    [self.observers addObject:observer];
}

-(void)notifyAllObservers{
    
    /*
     
     在OOSubject.m 类中：-(void)notifyAllObservers 方法中，
     
     牵扯到类循环引用问题，用到方法，@class解决不了。
     
     此处至少为了能更深刻的理解这种设计模式，所以用这种代码。
     
     所以，一般用ios自带的NSNotificationCenter (Observer_Pattern.m 中 -(void)NSNotification 方法) 来解决问题。
     
     */
    
    for (OOObserver *observer in self.observers) {
//        [observer update];
        NSLog(@"%@",observer);
    }
}

-(NSMutableArray *)observers{
    if (!_observers) {
        _observers = [NSMutableArray array];
    }
    return _observers;
}

@end
