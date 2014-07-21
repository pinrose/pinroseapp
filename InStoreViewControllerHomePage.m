//
//  InStoreViewControllerHomePage.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/21/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreViewControllerHomePage.h"
#import "InStoreViewControllerQuestion1.h"

@interface InStoreViewControllerHomePage ()

@end

@implementation InStoreViewControllerHomePage

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)startButton:(UIButton *)sender {
    InStoreViewControllerQuestion1 *q1 = [[InStoreViewControllerQuestion1 alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:q1 animated:YES completion:NULL];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
