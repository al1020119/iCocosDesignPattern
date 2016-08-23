//
//  Broker.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/5.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Order.h"


@interface Broker : NSObject

@property (nonatomic,strong) NSMutableArray *orderList;

-(void)takeOrder:(Order *)order;
-(void)placeOrders;
@end
