//
//  BRShape.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BRDrawAPI.h"

@interface BRShape : NSObject
{
    BRDrawAPI *drawAPI;
}

-(void)draw;
- (instancetype)initWithDrawAPI:(BRDrawAPI *)drawAPIIn;
@end
