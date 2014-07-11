//
//  InStoreViewControllerSunsets.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/10/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreViewControllerSunsets.h"
#import "InStoreViewControllerAnimals.h"

@interface InStoreViewControllerSunsets ()

@end

@implementation InStoreViewControllerSunsets
- (IBAction)sunset1Button:(UIButton *)sender {
    InStoreViewControllerAnimals *animals = [[InStoreViewControllerAnimals alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:animals animated:YES completion:^
     {
         NULL;
     }];
}
- (IBAction)sunset2Button:(UIButton *)sender {
    InStoreViewControllerAnimals *animals = [[InStoreViewControllerAnimals alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:animals animated:YES completion:^
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
