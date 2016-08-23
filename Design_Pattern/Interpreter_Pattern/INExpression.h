//
//  INExpression.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface INExpression : NSObject
-(BOOL)interpretWithContext:(NSString *)contextIn;
@end
