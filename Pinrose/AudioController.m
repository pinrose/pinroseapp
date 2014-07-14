//
//  AudioController.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/14/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "AudioController.h"

@import AVFoundation;

@interface AudioController () <AVAudioPlayerDelegate>

@property (strong, nonatomic) AVAudioSession *audioSession;
@property (assign) SystemSoundID pewPewSound;

@end

@implementation AudioController

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self configureAudioSession];
//        [self configureAudioPlayer];
        [self configureSystemSound];
    }
    return self;
}

- (void)playSystemSound {
    AudioServicesPlaySystemSound(self.pewPewSound);
}

- (void) configureAudioSession {
    // Implicit initialization of audio session
    self.audioSession = [AVAudioSession sharedInstance];
    
    // Set category of audio session
	// See handy chart on pg. 46 of the Audio Session Programming Guide for what the categories mean
	// Not absolutely required in this example, but good to get into the habit of doing
	// See pg. 10 of Audio Session Programming Guide for "Why a Default Session Usually Isn't What You Want"
	
    NSError *setCategoryError = nil;
    if ([self.audioSession isOtherAudioPlaying]) { // mix sound effects with music already playing
        [self.audioSession setCategory:AVAudioSessionCategorySoloAmbient error:&setCategoryError];
        //self.backgroundMusicPlaying = NO;
    } else {
        [self.audioSession setCategory:AVAudioSessionCategoryAmbient error:&setCategoryError];
    }
    if (setCategoryError) {
        NSLog(@"Error setting category! %ld", (long)[setCategoryError code]);
    }
}

- (void)configureSystemSound {
    // This is the simplest way to play a sound.
	// But note with System Sound services you can only use:
	// File Formats (a.k.a. audio containers or extensions): CAF, AIF, WAV
	// Data Formats (a.k.a. audio encoding): linear PCM (such as LEI16) or IMA4
	// Sounds must be 30 sec or less
	// And only one sound plays at a time!
	NSString *pewPewPath = [[NSBundle mainBundle] pathForResource:@"Beat1" ofType:@"caf"];
	NSURL *pewPewURL = [NSURL fileURLWithPath:pewPewPath];
	AudioServicesCreateSystemSoundID((__bridge CFURLRef)pewPewURL, &_pewPewSound);
}

@end
