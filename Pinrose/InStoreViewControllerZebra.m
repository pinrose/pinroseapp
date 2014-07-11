//
//  InStoreViewControllerZebra.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/10/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreViewControllerZebra.h"
#import "InStoreViewControllerTextures.h"

@interface InStoreViewControllerZebra ()

@end

@implementation InStoreViewControllerZebra
- (IBAction)zebra1Button:(UIButton *)sender {
    InStoreViewControllerTextures *texture = [[InStoreViewControllerTextures alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:texture animated:YES completion:NULL];
}
- (IBAction)zebra2Button:(UIButton *)sender {
    InStoreViewControllerTextures   *texture = [[InStoreViewControllerTextures alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:texture animated:YES completion:NULL];
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
