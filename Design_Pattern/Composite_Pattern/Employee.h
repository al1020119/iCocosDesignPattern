//
//  Employee.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

- (instancetype)initWithName:(NSString *)nameIn dept:(NSString *)deptIn salary:(int)salaryIn;


-(void)add:(Employee *)e;

-(void)remove:(Employee *)e;

-(NSMutableArray *)getASubordinates;

-(NSString *)toString;

@end
