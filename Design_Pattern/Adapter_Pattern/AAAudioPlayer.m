//
//  AAAudioPlayer.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/7.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "AAAudioPlayer.h"
#import "AAMediaAdapter.h"

@interface AAAudioPlayer ()
{
    AAMediaAdapter *mediaAdapter;
}
@end

@implementation AAAudioPlayer
-(void)palyWithAudioType:(NSString *)audioType fileName:(NSString *)fileName{
    if ([audioType isEqualToString:@"mp3"]) {
       
        NSLog(@"Playing mp3 file. Name: %@",fileName);
        
    }else if ([audioType isEqualToString:@"vlc"] || [audioType isEqualToString:@"mp4"]){
        
        mediaAdapter = [[AAMediaAdapter alloc]initWithAudioType:audioType];
        [mediaAdapter palyWithAudioType:audioType fileName:fileName];
        
    }else{
       
        NSLog(@"Invalid media. %@ format not supported",audioType);
    }
}
@end
