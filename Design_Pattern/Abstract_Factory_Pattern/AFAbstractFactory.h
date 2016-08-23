//
//  AFAbstractFactory.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFShape.h"
#import "AFColor.h"

@interface AFAbstractFactory : NSObject

-(AFShape *)getShape:(NSString *)shapeType;

-(AFColor *)getColor:(NSString *)colorType;

@end
