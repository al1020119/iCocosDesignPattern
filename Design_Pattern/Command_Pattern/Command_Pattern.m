//
//  Command_Pattern.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/5.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Command_Pattern.h"
#import "Stock.h"
#import "BuyStock.h"
#import "SellStock.h"
#import "Broker.h"


@implementation Command_Pattern


-(void)startTest{

    Stock *abcStock = [[Stock alloc]init];
    
    BuyStock *buyStockOrder = [[BuyStock alloc]initWithStock:abcStock];
    SellStock *sellStockOrder = [[SellStock alloc]initWithStock:abcStock];
    
    Broker *broker = [[Broker alloc]init];
    [broker takeOrder:buyStockOrder];
    [broker takeOrder:sellStockOrder];
    
    [broker placeOrders];
    
}
@end
