//
//  InStoreViewControllerNature.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/10/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreViewControllerNature.h"
#import "InStoreViewControllerSunsets.h"
#import "InStoreViewControllerHomePage.h"
#import "InStoreSession.h"

@interface InStoreViewControllerNature ()

@end

@implementation InStoreViewControllerNature
- (IBAction)nature1Button:(UIButton *)sender {
        [[InStoreSession sessionVariables] setObject:@"pathwork" forKey:@"painting"];
    InStoreViewControllerSunsets *sunset = [[InStoreViewControllerSunsets alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:sunset animated:YES completion:NULL];
}
- (IBAction)nature2Button:(UIButton *)sender {
        [[InStoreSession sessionVariables] setObject:@"circle" forKey:@"painting"];
    InStoreViewControllerSunsets *sunset = [[InStoreViewControllerSunsets alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:sunset animated:YES completion:NULL];
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
        InStoreViewControllerHomePage *home = [[InStoreViewControllerHomePage alloc] initWithNibName:nil bundle:nil];
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
