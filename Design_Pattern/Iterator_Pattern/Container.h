//
//  Container.h
//  Iterator_Pattern
//
//  Created by Yusone on 16/7/5.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"
@interface Container : NSObject

-(Iterator *)getIterator;

@end
