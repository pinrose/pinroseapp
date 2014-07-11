//
//  InStoreViewControllerBathroom.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/10/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreViewControllerBathroom.h"
#import "InStoreViewControllerZebra.h"

@interface InStoreViewControllerBathroom ()

@end

@implementation InStoreViewControllerBathroom
- (IBAction)bathroom1Button:(UIButton *)sender {
    InStoreViewControllerZebra *zebra = [[InStoreViewControllerZebra alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:zebra animated:YES completion:^
     {
         NULL;
     }];
}
- (IBAction)bathroom2Button:(UIButton *)sender {
    InStoreViewControllerZebra *zebra = [[InStoreViewControllerZebra alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:zebra animated:YES completion:NULL];
}
- (IBAction)bathroom3Button:(UIButton *)sender {
    InStoreViewControllerZebra *zebra = [[InStoreViewControllerZebra alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:zebra animated:YES completion:NULL];
}
- (IBAction)bathroom4Button:(UIButton *)sender {
    InStoreViewControllerZebra *zebra = [[InStoreViewControllerZebra alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:zebra animated:YES completion:NULL];
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
