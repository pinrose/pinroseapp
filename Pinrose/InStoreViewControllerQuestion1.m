//
//  InStoreViewControllerQuestion1.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/10/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreViewControllerQuestion1.h"
#import "InStoreViewControllerDontThink.h"
#import "InStoreViewController.h"
#import "InStoreViewControllerHomeModal.h"

@interface InStoreViewControllerQuestion1 ()

@end

@implementation InStoreViewControllerQuestion1

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
- (IBAction)nextQuestion:(UIButton *)sender {
    InStoreViewControllerDontThink *dontThink = [[InStoreViewControllerDontThink alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:dontThink animated:YES completion:^
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
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    testObject[@"foo"] = @"bar";
    [testObject saveInBackground];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
