//
//  Adapter_Pattern.m
//  Design_Pattern
//
//  Created by Yusone on 16/7/7.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "Adapter_Pattern.h"
#import "AAAudioPlayer.h"

@implementation Adapter_Pattern

-(void)startTest{
    AAAudioPlayer *audioPlayer = [[AAAudioPlayer alloc]init];
    
    [audioPlayer palyWithAudioType:@"mp3" fileName:@"beyond the horizon.mp3"];
    [audioPlayer palyWithAudioType:@"mp4" fileName:@"alone.mp4"];
    [audioPlayer palyWithAudioType:@"vlc" fileName:@"far far away.vlc"];
    [audioPlayer palyWithAudioType:@"avi" fileName:@"mind me.avi"];
}
@end
