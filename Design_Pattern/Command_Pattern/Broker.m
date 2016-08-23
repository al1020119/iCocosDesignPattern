//
//  Broker.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/5.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Broker.h"

@implementation Broker

-(void)takeOrder:(Order *)order{
    
    [self.orderList addObject:order];
    
}



-(void)placeOrders{
    
    for (Order *order in self.orderList) {
        [order execute];
    }
    
    [self.orderList removeAllObjects];
}


-(NSMutableArray *)orderList{
    if (!_orderList) {
        _orderList = [[NSMutableArray alloc]init];
    }
    return _orderList;
}

@end
