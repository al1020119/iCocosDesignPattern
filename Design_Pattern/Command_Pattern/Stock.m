//
//  Stock.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/5.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Stock.h"

@interface Stock()
@property (nonatomic,strong) NSString *name;
@property (nonatomic,assign) int quantity;
@end


@implementation Stock

-(instancetype)init{
   self = [super init];
    if (self) {
        self.name = @"ABC";
        self.quantity = 10;
    }
    return self;
}


-(void)buy{
    NSLog(@"Stock [ Name:%@ , Quantity:%d ] buy",self.name,self.quantity);
}

-(void)sell{
    NSLog(@"Stock [ Name:%@ , Quantity:%d ] sell",self.name,self.quantity);
}

@end
