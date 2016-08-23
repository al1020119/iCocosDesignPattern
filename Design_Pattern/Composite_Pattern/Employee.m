//
//  Employee.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Employee.h"
@interface Employee()

{
    NSString *name;
    NSString *dept;
    int salary;
    NSMutableArray *subordinates;
}
@end
@implementation Employee
- (instancetype)initWithName:(NSString *)nameIn dept:(NSString *)deptIn salary:(int)salaryIn
{
    self = [super init];
    if (self) {
        name = nameIn;
        dept = deptIn;
        salary = salaryIn;
        subordinates = [NSMutableArray array];
    }
    return self;
}


-(void)add:(Employee *)e{
    [subordinates addObject:e];
}

-(void)remove:(Employee *)e{
    [subordinates removeObject:e];
}

-(NSMutableArray *)getASubordinates{
    return subordinates;
}

-(NSString *)toString{
    NSString *str = [NSString stringWithFormat:@"Employee :[ Name : %@ , dept : %@ , salary : %d ]",name,dept,salary];
    return str;
}


@end
