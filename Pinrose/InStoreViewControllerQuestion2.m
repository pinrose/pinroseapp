//
//  InStoreViewControllerQuestion2.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/10/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreViewControllerQuestion2.h"
#import "InStoreViewControllerLips.h"

@interface InStoreViewControllerQuestion2 ()


@end

@implementation InStoreViewControllerQuestion2
- (IBAction)explosionButton:(UIButton *)sender {
    InStoreViewControllerLips *lips = [[InStoreViewControllerLips alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:lips animated:YES completion:^
     {
         NULL;
     }];

}

- (IBAction)cloudButton:(UIButton *)sender {
    InStoreViewControllerLips *lips = [[InStoreViewControllerLips alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:lips animated:YES completion:^
     {
         NULL;
     }];

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