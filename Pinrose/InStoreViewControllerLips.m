//
//  InStoreViewControllerLips.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/10/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreViewControllerLips.h"
#import "InStoreViewControllerColor1.h"

@interface InStoreViewControllerLips ()

@end

@implementation InStoreViewControllerLips
- (IBAction)lips1Button:(UIButton *)sender {
    InStoreViewControllerColor1 *color1 = [[InStoreViewControllerColor1 alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:color1 animated:YES completion:^
     {
         NULL;
     }];

}

- (IBAction)lips2Button:(UIButton *)sender {
    InStoreViewControllerColor1 *color1 = [[InStoreViewControllerColor1 alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:color1 animated:YES completion:^
     {
         NULL;
     }];
}

- (IBAction)lips3Button:(UIButton *)sender {
    InStoreViewControllerColor1 *color1 = [[InStoreViewControllerColor1 alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:color1 animated:YES completion:^
     {
         NULL;
     }];
}

- (IBAction)lips4Button:(UIButton *)sender {
    InStoreViewControllerColor1 *color1 = [[InStoreViewControllerColor1 alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:color1 animated:YES completion:^
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
