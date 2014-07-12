//
//  InStoreViewControllerQuestion1.h
//  Pinrose
//
//  Created by Joel Wasserman on 7/10/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface InStoreViewControllerQuestion1 : UIViewController <UIPopoverControllerDelegate> {
    UIPopoverController *popoverController;
}

@property (nonatomic, retain) UIPopoverController *popoverController;
@property (nonatomic, retain) UIButton *homeButton;

@end
