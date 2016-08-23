//
//  BBItem.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/7.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BBPacking.h"

@interface BBItem : NSObject
-(NSString *)name;
-(BBPacking *)packing;
-(float) price;

@end
