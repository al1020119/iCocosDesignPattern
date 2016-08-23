//
//  SellStock.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/5.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Order.h"
#import "Stock.h"

@interface SellStock : Order
-(instancetype)initWithStock:(Stock *)stock;

-(void)execute;
@end
