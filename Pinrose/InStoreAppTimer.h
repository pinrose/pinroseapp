//
//  InStoreAppTimer.h
//  Pinrose
//
//  Created by Joel Wasserman on 7/18/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kApplicationTimeoutInMinutes .5

#define kApplicationDidTimeoutNotification @"ApplicationDidTimeout"

@interface InStoreAppTimer : UIApplication {
       NSTimer *_idleTimer;
}

- (void)resetIdleTimer;


@end
