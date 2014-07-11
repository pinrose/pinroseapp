//
//  InStoreViewControllerColor1.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/10/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreViewControllerColor1.h"
#import "InStoreViewControllerColor2.h"


@interface InStoreViewControllerColor1 ()

@end

@implementation InStoreViewControllerColor1
- (IBAction)color1Button:(UIButton *)sender {
    InStoreViewControllerColor2 *color2 = [[InStoreViewControllerColor2 alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:color2 animated:YES completion:^
     {
         NULL;
     }];
}


- (IBAction)color2Button:(UIButton *)sender {
    InStoreViewControllerColor2 *color2 = [[InStoreViewControllerColor2 alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:color2 animated:YES completion:^
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
