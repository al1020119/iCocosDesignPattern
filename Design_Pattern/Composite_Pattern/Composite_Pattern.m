//
//  Composite_Pattern.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Composite_Pattern.h"
#import "Employee.h"

@implementation Composite_Pattern

-(void)startTest{
    
    
    Employee *CEO = [[Employee alloc]initWithName:@"张三" dept:@"CEO" salary:30000];
    Employee *headSales = [[Employee alloc]initWithName:@"李四" dept:@"Head Sales" salary:20000];
    Employee *headMarketing = [[Employee alloc]initWithName:@"王五" dept:@"Head Marketing" salary:20000];
    Employee *clerk1 = [[Employee alloc]initWithName:@"赵六" dept:@"Marketing" salary:10000];
    Employee *clerk2 = [[Employee alloc]initWithName:@"田七" dept:@"Marketing" salary:10000];
    
    Employee *salesExecutive1 = [[Employee alloc]initWithName:@"周八" dept:@"Sales" salary:10000];
    Employee *salesExecutive2 = [[Employee alloc]initWithName:@"老九" dept:@"Sales" salary:10000];

    
    
    [CEO add:headSales];
    [CEO add:headMarketing];
    
    [headSales add:salesExecutive1];
    [headSales add:salesExecutive2];
    
    [headMarketing add:clerk1];
    [headMarketing add:clerk2];


    NSLog(@"%@",[CEO toString]);
    for (Employee *headEmployee in [CEO getASubordinates]) {
       NSLog(@"%@",[headEmployee toString]);
        for (Employee *employee in [headEmployee getASubordinates]) {
           NSLog(@"%@",[employee toString]);
        }
    }


}

@end
