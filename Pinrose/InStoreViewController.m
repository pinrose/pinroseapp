//
//  InStoreViewController.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/10/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "InStoreViewController.h"
#import "InStoreViewControllerQuestion1.h"
#import "InStoreSettings.h"

@interface InStoreViewController ()

@end

@implementation InStoreViewController

- (IBAction)startButton:(UIButton *)sender {
    
    
    InStoreViewControllerQuestion1 *Q1 = [[InStoreViewControllerQuestion1 alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:Q1 animated:YES completion:^
     {
         NULL;
     }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
