//
//  NameIterator.m
//  Iterator_Pattern
//
//  Created by Yusone on 16/7/5.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "NameIterator.h"

@interface NameIterator()
{
    int index;
    NSArray *nameArray;
}
@end

@implementation NameIterator

-(instancetype)initWithArray:(NSArray *)array{
    self = [super init];
    if (self) {
        nameArray = array;
    }
    return self;
}



-(BOOL)hasNext{
    
    if(index < nameArray.count){
        return true;
    }
    return false;
}

-(id)next{
    if ([self hasNext]) {
        return nameArray[index++];
    }
    return nil;
}
@end
