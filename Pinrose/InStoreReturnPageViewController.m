//
//  InStoreReturnPageViewController.m
//  Pinrose
//
//  Created by Joel Wasserman on 8/12/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreReturnPageViewController.h"
#import "InStoreViewControllerAge.h"
#import "InStoreSession.h"
#import "InStoreViewControllerHomePage.h"

@interface InStoreReturnPageViewController ()
@end

@implementation InStoreReturnPageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)recomendedProductsButton:(UIButton *)sender {
    
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
- (void)viewDidLoad
{
    [_lowerBarImage.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [_lowerBarImage.layer setBorderWidth: 1.0];
    [_bannerImage setImage:[UIImage imageNamed:@"topbar.jpg"]];
    NSMutableDictionary *firstResponse = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *secondResponse = [[NSMutableDictionary alloc] init];
    firstResponse = InStoreSession.firstResults;
    secondResponse = InStoreSession.secondResults;
    NSString *first = [firstResponse objectForKey:@"firstReturn"];
    NSString *second = [secondResponse objectForKey:@"secondReturn"];
    NSLog(@"stuff %@, %@", first, second);
    
    if ([first  isEqual: @"PILLOWTALK POET"]) {
        [_firstResponseImage setImage:[UIImage imageNamed:@"70pillow_talk_poet.png"]];
    }
    if ([first  isEqual: @"BALLROOM PHILOSOPHER"]) {
        [_firstResponseImage setImage:[UIImage imageNamed:@"70ballroom_philosopher.png"]];
    }
    if ([first  isEqual: @"CAMPFIRE REBEL"]) {
        [_firstResponseImage setImage:[UIImage imageNamed:@"70campfire_rebel.png"]];
    }
    if ([first  isEqual: @"MERRY MAKER"]) {
        [_firstResponseImage setImage:[UIImage imageNamed:@"70merry_maker.png"]];
    }
    if ([first  isEqual: @"MOONLIGHT GYPSY"]) {
        [_firstResponseImage setImage:[UIImage imageNamed:@"70moonlight_gypsy.png"]];
    }
    if ([first  isEqual: @"RENEGADE STARLET"]) {
        [_firstResponseImage setImage:[UIImage imageNamed:@"70renegade_scarlet.png"]];
    }
    if ([first  isEqual: @"ROOFTOP SOCIALITE"]) {
        [_firstResponseImage setImage:[UIImage imageNamed:@"70rooftop_socialite.png"]];
    }
    if ([first  isEqual: @"SUGAR BANDIT"]) {
        [_firstResponseImage setImage:[UIImage imageNamed:@"70sugar_bandit.png"]];
    }
    if ([first  isEqual: @"SURF SIREN"]) {
        [_firstResponseImage setImage:[UIImage imageNamed:@"70surf_siren.png"]];
    }
    if ([first  isEqual: @"TREEHOUSE ROYAL"]) {
        [_firstResponseImage setImage:[UIImage imageNamed:@"70treehouse_royal.png"]];
    }
    if ([second  isEqual: @"BALLROOM PHILOSOPHER"]) {
        [_secondResponseImage setImage:[UIImage imageNamed:@"30ballroom_philosopher.png"]];
    }
    if ([second  isEqual: @"CAMPFIRE REBEL"]) {
        [_secondResponseImage setImage:[UIImage imageNamed:@"30campfire_rebel.png"]];
    }
    if ([second  isEqual: @"MERRY MAKER"]) {
        [_secondResponseImage setImage:[UIImage imageNamed:@"30merry_maker.png"]];
    }
    if ([second  isEqual: @"MOONLIGHT GYPSY"]) {
        [_secondResponseImage setImage:[UIImage imageNamed:@"30moonlight_gypsy.png"]];
    }
    if ([second  isEqual: @"RENEGADE STARLET"]) {
        [_secondResponseImage setImage:[UIImage imageNamed:@"30renegade_scarlet.png"]];
    }
    if ([second  isEqual: @"ROOFTOP SOCIALITE"]) {
        [_secondResponseImage setImage:[UIImage imageNamed:@"30rooftop_socialite.png"]];
    }
    if ([second  isEqual: @"SUGAR BANDIT"]) {
        [_secondResponseImage setImage:[UIImage imageNamed:@"30sugar_bandit.png"]];
    }
    if ([second  isEqual: @"SURF SIREN"]) {
        [_secondResponseImage setImage:[UIImage imageNamed:@"30surf_siren.png"]];
    }
    if ([second  isEqual: @"TREEHOUSE ROYAL"]) {
        [_secondResponseImage setImage:[UIImage imageNamed:@"30treehouse_royal.png"]];
    }
    if ([second  isEqual: @"PILLOWTALK POET"]) {
        [_secondResponseImage setImage:[UIImage imageNamed:@"30pillowtalk_poet.png"]];
    }
    
//    NSLog(@"first response in return page: %@", firstResponse);
//    NSLog(@"first response in return page: %@", secondResponse);
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
