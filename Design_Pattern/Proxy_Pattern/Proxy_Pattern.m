//
//  Proxy_Pattern.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/5.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Proxy_Pattern.h"
#import "ProxyImage.h"
#import "Image.h"


@implementation Proxy_Pattern

-(void)startTest{
    Image *image = [[ProxyImage alloc]initWithFileName:@"Proxy_Pattern_test_fileName"];
    [image display];
}
@end
