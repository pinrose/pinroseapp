//
//  InStoreViewControllerHomeModal.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/11/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreViewControllerHomeModal.h"
#import "InStoreViewController.h"
#import "InStoreAppDelegate.h"
#import "InStoreHomePage.h"

@interface InStoreViewControllerHomeModal ()
@property (weak, nonatomic) IBOutlet UILabel *coutnDownLabel;

@end

@implementation InStoreViewControllerHomeModal

-(void) updateCountdown {
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval: 1.0 target:self selector:@selector(updateCountdown) userInfo:nil repeats: YES];
    
    int seconds = 30;
    _coutnDownLabel.text = [NSString stringWithFormat:@"%02d", seconds];
}



- (IBAction)homeButton:(UIButton *)sender {
    InStoreViewController *home = [[InStoreViewController alloc] initWithNibName:nil bundle:nil];
    
    [self presentViewController:home animated:YES completion:NULL];
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
