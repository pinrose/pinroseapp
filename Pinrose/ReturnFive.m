//
//  ReturnFive.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/23/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "ReturnFive.h"
#import "InStoreViewControllerHomePage.h"

@interface ReturnFive ()

@end

@implementation ReturnFive

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)homeButton:(UIButton *)sender {
    UIAlertView *prompt = [[UIAlertView alloc] initWithTitle:@"Are you sure you want to start a new quiz?"
                                                     message:@"\n"
                                                    delegate:self
                                           cancelButtonTitle:@"Cancel"
                                           otherButtonTitles:@"Yes!", nil];
    
    [prompt show];
    
}
- (void)alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 1){
        InStoreViewControllerHomePage *home = [[InStoreViewControllerHomePage alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:home animated:YES completion:NULL];
    }else{
        
    }
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
