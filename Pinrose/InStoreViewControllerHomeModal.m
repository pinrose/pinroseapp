//
//  InStoreViewControllerHomeModal.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/11/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreViewControllerHomeModal.h"
#import "InStoreViewController.h"
#import "InStoreAppDelegate.h"

@interface InStoreViewControllerHomeModal ()

@end

@implementation InStoreViewControllerHomeModal
- (IBAction)homeButton:(UIButton *)sender {
    InStoreViewController *home = [[InStoreViewController alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:home animated:YES completion:NULL];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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
