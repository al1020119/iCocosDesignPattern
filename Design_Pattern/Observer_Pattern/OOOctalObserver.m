//
//  OOOctalObserver.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/8.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "OOOctalObserver.h"

@implementation OOOctalObserver
-(void)update{
    NSLog(@"Octal String: %d",[self.subject getAState]);
}

- (instancetype)initWithSubject:(OOSubject *)subject
{
    self = [super init];
    if (self) {
        self.subject = subject;
        [self.subject attach:self];
    }
    return self;
}
@end
