//
//  SellStock.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/5.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "SellStock.h"

@interface SellStock()
@property (nonatomic,strong) Stock *abcStock;
@end

@implementation SellStock

-(instancetype)initWithStock:(Stock *)stock{
    self = [super init];
    if (self) {
        self.abcStock = stock;
    }
    return self;
}

-(void)execute{
    [self.abcStock sell];
}

@end
