//
//  RealImage.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/5.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "RealImage.h"

@interface RealImage()
@property (nonatomic,strong) NSString *fileName;
@end

@implementation RealImage

-(instancetype)initWithFileName:(NSString *)fileName{
    self = [super init];
    if (self) {
        self.fileName = fileName;
    }
    return self;
}


-(void)display{
    NSLog(@"display %@",self.fileName);
}

@end
