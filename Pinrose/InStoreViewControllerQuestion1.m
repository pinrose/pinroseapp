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
@synthesize popoverController;

- (IBAction)homeButton:(UIButton *)sender {
    
    if (self.popoverController == nil) {
        InStoreViewControllerHomeModal *home =
        [[InStoreViewControllerHomeModal alloc]
         initWithNibName:@"InStoreViewControllerHomeModal"
         bundle:[NSBundle mainBundle]];
        
        UIPopoverController *popover =
        [[UIPopoverController alloc] initWithContentViewController:home];
        
        popover.delegate = self;
        //[home release];
        
        self.popoverController = popover;
        //[popover release];
    }

    CGRect popoverRect = [self.view convertRect:[_homeButton frame]
                                       fromView:[_homeButton superview]];
    
    //popoverRect.size.width = MIN(popoverRect.size.width, 100);
    [popoverController presentPopoverFromRect:CGRectMake(450, 20, 150, 150) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];
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
