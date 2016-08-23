//
//  StartClass.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/5.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "StartClass.h"
#import "SuperDesignPattern.h"
#import "Iterator_Pattern.h"
#import "Proxy_Pattern.h"
#import "Command_Pattern.h"
#import "Strategy_Pattern.h"
#import "Decorator_Pattern.h"
#import "Facade_Pattern.h"
#import "Template_Pattern.h"
#import "Builder_Pattern.h"
#import "Adapter_Pattern.h"
#import "Factory_Pattern.h"

#import "Abstract_Factory_Pattern.h"

#import "Singleton_Pattern.h"
#import "Observer_Pattern.h"

#import "Composite_Pattern.h"
#import "Bridge_Pattern.h"

#import "Interpreter_Pattern.h"




@interface StartClass()
@property (nonatomic,strong) SuperDesignPattern *designPattern;
@end

@implementation StartClass
-(void)startDemo{
    [self.designPattern startTest];
}

-(SuperDesignPattern *)designPattern{
    if (!_designPattern) {
        
        //迭代器模式
        _designPattern = [[Iterator_Pattern alloc]init];
        //代理模式
        _designPattern = [[Proxy_Pattern alloc]init];
        
        //命令模式
        _designPattern = [[Command_Pattern alloc]init];
        
        
        //策略模式
        _designPattern = [[Strategy_Pattern alloc]init];
        
        //装饰器模式
        _designPattern = [[Decorator_Pattern alloc]init];
        
        //外观模式
        _designPattern = [[Facade_Pattern alloc]init];

        //模板模式
        _designPattern = [[Template_Pattern alloc]init];
        
        //建造者模式
       _designPattern = [[Builder_Pattern alloc]init];
        
        //适配器模式
        _designPattern = [[Adapter_Pattern alloc]init];
  
        //观察者模式
        _designPattern = [[Observer_Pattern alloc]init];
        
        //单例模式
        _designPattern = [[Singleton_Pattern alloc]init];
       
        //工厂模式
       _designPattern = [[Factory_Pattern alloc]init];
        
        //抽象工厂模式
       _designPattern = [[Abstract_Factory_Pattern alloc]init];
        
        //MVC模式
        
        //组合模式
        _designPattern = [[Composite_Pattern alloc]init];
        
        
        //桥接模式
        _designPattern = [[Bridge_Pattern alloc]init];
        
        //桥接模式
        _designPattern = [[Interpreter_Pattern alloc]init];
        
    }
    return _designPattern;
}

@end
