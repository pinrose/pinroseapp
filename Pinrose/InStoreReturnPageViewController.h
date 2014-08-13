//
//  InStoreReturnPageViewController.h
//  Pinrose
//
//  Created by Joel Wasserman on 8/12/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InStoreViewControllerAge.h"

@interface InStoreReturnPageViewController : UIViewController
@property (strong, nonatomic) InStoreViewControllerAge *ageViewController;
@property (weak, nonatomic) IBOutlet UIImageView *firstResponseImage;
@property (weak, nonatomic) IBOutlet UIImageView *secondResponseImage;
@end
