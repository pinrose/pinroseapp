//
//  InStoreViewControllerPaintings.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/10/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreViewControllerPaintings.h"
#import "InStoreViewControllerNature.h"
#import "InStoreViewControllerHomePage.h"
#import "InStoreSession.h"

@interface InStoreViewControllerPaintings ()

@end

@implementation InStoreViewControllerPaintings
- (IBAction)painting1Button:(UIButton *)sender {
    [[InStoreSession sessionVariables] setObject:@"lake" forKey:@"car"];
    InStoreViewControllerNature *nature = [[InStoreViewControllerNature alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:nature animated:YES completion:^
     {
         NULL;
     }];
}
- (IBAction)painting2Button:(UIButton *)sender {
        [[InStoreSession sessionVariables] setObject:@"green" forKey:@"car"];
    InStoreViewControllerNature *nature = [[InStoreViewControllerNature alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:nature animated:YES completion:^
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
- (IBAction)painting3Button:(UIButton *)sender {
        [[InStoreSession sessionVariables] setObject:@"hawaii" forKey:@"car"];
    InStoreViewControllerNature *nature = [[InStoreViewControllerNature alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:nature animated:YES completion:^
     {
         NULL;
     }];
}
- (IBAction)painting4Button:(UIButton *)sender {
        [[InStoreSession sessionVariables] setObject:@"horse" forKey:@"car"];
    InStoreViewControllerNature *nature = [[InStoreViewControllerNature alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:nature animated:YES completion:^
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
