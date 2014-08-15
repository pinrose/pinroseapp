//
//  InStoreViewControllerBathroom.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/10/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreViewControllerBathroom.h"
#import "InStoreViewControllerZebra.h"
#import "InStoreViewControllerHomePage.h"
#import "InStoreSession.h"


@interface InStoreViewControllerBathroom ()

@end

@implementation InStoreViewControllerBathroom
- (IBAction)bathroom1Button:(UIButton *)sender {
            [[InStoreSession sessionVariables] setObject:@"modern_neutral" forKey:@"bathroom"];
    InStoreViewControllerZebra *zebra = [[InStoreViewControllerZebra alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:zebra animated:YES completion:^
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
        InStoreViewControllerHomePage *home = [[InStoreViewControllerHomePage alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:home animated:YES completion:NULL];
    }else{
        
    }
}
- (IBAction)bathroom2Button:(UIButton *)sender {
            [[InStoreSession sessionVariables] setObject:@"shabby_chic" forKey:@"bathroom"];
    InStoreViewControllerZebra *zebra = [[InStoreViewControllerZebra alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:zebra animated:YES completion:NULL];
}
- (IBAction)bathroom3Button:(UIButton *)sender {
            [[InStoreSession sessionVariables] setObject:@"natural" forKey:@"bathroom"];
    InStoreViewControllerZebra *zebra = [[InStoreViewControllerZebra alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:zebra animated:YES completion:NULL];
}
- (IBAction)bathroom4Button:(UIButton *)sender {
            [[InStoreSession sessionVariables] setObject:@"bright_simple" forKey:@"bathroom"];
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
