//
//  AAMediaAdapter.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/7.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "AAMediaAdapter.h"
#import "AAAdvancedMediaPlayer.h"
#import "AAVlcPlayer.h"
#import "AAMp4Player.h"



@interface AAMediaAdapter()

{
    AAAdvancedMediaPlayer *advancedMediaPlayer;
}
@end

@implementation AAMediaAdapter

- (instancetype)initWithAudioType:(NSString *)audioType
{
    self = [super init];
    if (self) {
        
        [self initSetValueWith:audioType];

        
    }
    return self;
}

-(void)initSetValueWith:(NSString *)audioType{
    if ([audioType isEqualToString:@"vlc"]) {
        advancedMediaPlayer = [[AAVlcPlayer alloc]init];
    }else if ([audioType isEqualToString:@"mp4"]){
        advancedMediaPlayer = [[AAMp4Player alloc]init];
    }
}

-(void)palyWithAudioType:(NSString *)audioType fileName:(NSString *)fileName{
    if ([audioType isEqualToString:@"vlc"]) {
        [advancedMediaPlayer playVlc:fileName];
    }else if ([audioType isEqualToString:@"mp4"]){
        [advancedMediaPlayer playMp4:fileName];
    }
}



@end
