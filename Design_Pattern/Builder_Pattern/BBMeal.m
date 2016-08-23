//
//  BBMeal.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/7.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "BBMeal.h"


@interface BBMeal()

@property (nonatomic,strong) NSMutableArray *arrayList;



@end



@implementation BBMeal

- (instancetype)initWithItem:(BBItem *)item
{
    self = [super init];
    if (self) {
        [self.items addObject:item];
    }
    return self;
}


-(float)getCost{
    float cost = 0.0f;
    for (BBItem *item in self.items) {
        cost += [item price];
    }
    return cost;
}


-(void)showItems{
    for (BBItem *item in self.items) {
        NSLog(@"Item : %@",[item name]);
        NSLog(@", Packing : %@",[[item packing] pack]);
        NSLog(@", Price : %f",[item price]);
    }
}




-(NSMutableArray *)items{
    if (!_items) {
        _items = [NSMutableArray array];
    }
    return _items;
}
@end
