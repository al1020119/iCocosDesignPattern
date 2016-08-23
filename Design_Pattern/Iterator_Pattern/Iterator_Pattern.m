//
//  Iterator_Pattern.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/5.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Iterator_Pattern.h"
#import "NameRepository.h"
#import "NameIterator.h"


@implementation Iterator_Pattern

-(void)startTest{
    
    NameRepository *nameRepository = [[NameRepository alloc]init];
    
    Iterator *iter = [nameRepository getIterator];
    
    while ([iter hasNext]) {
        NSString *name = [iter next];
        NSLog(@"Name : %@",name);
    }
    
}

@end
