//
//  InStoreViewControllerDontThink.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/10/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreViewControllerDontThink.h"
#import "InStoreViewControllerQuestion2.h"
#import "InStoreViewController.h"


@interface InStoreViewControllerDontThink ()

@end

@implementation InStoreViewControllerDontThink
- (IBAction)question2Button:(UIButton *)sender {
    InStoreViewControllerQuestion2 *Q2 = [[InStoreViewControllerQuestion2 alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:Q2 animated:YES completion:^
     {
         NULL;
     }];
}
- (IBAction)homeButton:(UIButton *)sender {
        UIAlertView *prompt = [[UIAlertView alloc] initWithTitle:@"Are you sure you want to go home?"
                                                         message:@"\n"
                                                        delegate:self
                                               cancelButtonTitle:@"Cancel"
                                               otherButtonTitles:@"Home", nil];
        
        [prompt show];
        
    }
    - (void)alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 1){
        InStoreViewController *home = [[InStoreViewController alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:home animated:YES completion:NULL];
    }else{
        
    }
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
