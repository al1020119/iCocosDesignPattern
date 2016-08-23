//
//  AAMediaAdapter.h
//  Design_Pattern
//
//  Created by Yusone on 16/7/7.
//  Copyright © 2016年 yusone. All rights reserved.
//

#import "AAMediaPlayer.h"

@interface AAMediaAdapter : AAMediaPlayer
- (instancetype)initWithAudioType:(NSString *)audioType;

@end
