//
//  InStoreViewControllerAge.h
//  Pinrose
//
//  Created by Joel Wasserman on 7/11/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InStoreViewControllerAge : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) NSMutableDictionary *session;
- (void) returnFunction;
@end
