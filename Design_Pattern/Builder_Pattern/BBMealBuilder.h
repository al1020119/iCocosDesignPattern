//
//  BBMealBuilder.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/7.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BBMeal.h"

@interface BBMealBuilder : NSObject
-(BBMeal *)prepareVegMeal;
-(BBMeal *)prepareNonVegMeal;
@end
