//
//  NameRepository.m
//  Iterator_Pattern
//
//  Created by Yusone on 16/7/5.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "NameRepository.h"
#import "NameIterator.h"

@implementation NameRepository
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameArray = @[@"张三" , @"李四" ,@"王五" , @"赵六"];
    }
    return self;
}


-(Iterator *)getIterator{
    Iterator *iter = [[NameIterator alloc]initWithArray:self.nameArray];
    return iter;
}
@end
