//
//  ProxyImage.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/5.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "ProxyImage.h"
#import "RealImage.h"


@interface ProxyImage()
@property (nonatomic,strong) NSString *fileName;
@property (nonatomic,strong) RealImage *realImage;
@end


@implementation ProxyImage

-(instancetype)initWithFileName:(NSString *)fileName{
    self = [super init];
    if (self) {
        self.fileName = fileName;
    }
    return self;
}


-(void)display{
    if (!self.realImage) {
        self.realImage = [[RealImage alloc]initWithFileName:self.fileName];
        [self.realImage display];
    }
}
@end
