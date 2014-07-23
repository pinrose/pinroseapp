//
//  InStoreViewControllerAge.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/11/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreViewControllerAge.h"
#import "InStoreViewControllerHomePage.h"
#import "InStoreSession.h"
#import "ReturnOne.h"
#import "ReturnTwo.h"
#import "ReturnThree.h"
#import "ReturnFour.h"
#import "ReturnFive.h"
#import "ReturnSix.h"
#import "ReturnSeven.h"
#import "ReturnEight.h"
#import "ReturnNine.h"
#import "ReturnTen.h"
#import "ReturnEleven.h"


@interface InStoreViewControllerAge ()

@end

@implementation InStoreViewControllerAge

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)finishButton:(UIButton *)sender {
    NSMutableDictionary *session = [[NSMutableDictionary alloc] init];
    session = InStoreSession.sessionVariables;
    
    //********************************************************
    
    //server POST needs to work with this JSON
    
//    NSError *error;
//    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:session
//                                                       options:NSJSONWritingPrettyPrinted // Pass 0 if you don't care about the readability of the generated string
//                                                         error:&error];
//    
//    if (! jsonData) {
//        NSLog(@"Got an error: %@", error);
//    } else {
//        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
//        NSLog(jsonString);
//    }
    
    
    //**********************************************************************************
    
    
    
    NSString *beat=session[@"beat"];
    NSString *lips=session[@"lips"];
    NSString *shape=session[@"shape"];
    NSString *rose=session[@"roses"];
    NSString *sunset=session[@"sunset"];
    NSString *painting=session[@"painting"];
    NSString *zebra = session[@"zebra"];
    NSString *color_one = session[@"colors_one"];
    
    if (([beat  isEqual: @"cool-guy"]) && ([lips isEqual: @"dark_pink"]) && ([shape isEqualToString:@"spikey"]) && ([rose isEqualToString:@"pink_rose"])) {
        //703 704
        ReturnOne *one = [[ReturnOne alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:one animated:YES completion:NULL];
    }
    if (([beat  isEqual: @"draper"]) && (([lips isEqual: @"tan"]) || ([lips isEqualToString:@"red"])) && ([shape isEqualToString:@"spikey"]) && ([rose isEqualToString:@"pink_rose"])) {
        //702 and 709
        ReturnTwo *two = [[ReturnTwo alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:two animated:YES completion:NULL];
    }
    if (([beat  isEqual: @"rock"]) && (([lips isEqual: @"dark_pink"])||([lips isEqualToString:@"pink"])) && ([shape isEqualToString:@"cloud"]) && ([rose isEqualToString:@"peach_rose"])) {
        //701 707
        ReturnThree *three = [[ReturnThree alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:three animated:YES completion:NULL];
        
    }
    if ((([beat  isEqual: @"cool-guy"])) && (([lips isEqual: @"dark_pink"]) || ([lips isEqualToString:@"red"])) && ([shape isEqualToString:@"spikey"]) && ([rose isEqualToString:@"pink_rose"])) {
        //703 704
        ReturnFour *four = [[ReturnFour alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:four animated:YES completion:NULL];
    }
    if (([beat  isEqual: @"draper"]) && (([lips isEqual: @"tan"]) || ([lips isEqualToString:@"red"])) && ([shape isEqualToString:@"spikey"]) && ([rose isEqualToString:@"pink_rose"]) && ([sunset isEqualToString:@"ocean"])) {
        //703 and 710
        ReturnFive *five = [[ReturnFive alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:five animated:YES completion:NULL];
    }
    if (([beat  isEqual: @"draper"]) && (([lips isEqual: @"tan"]) || ([lips isEqualToString:@"red"])) && ([shape isEqualToString:@"spikey"]) && ([rose isEqualToString:@"pink_rose"]) && ([sunset isEqualToString:@"land"])) {
        //705 and 709
        ReturnSix *six = [[ReturnSix alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:six animated:YES completion:NULL];
    }
    if (([beat  isEqual: @"rock"]) && ([painting isEqualToString:@"circle"]) && ([shape isEqualToString:@"cloud"]) && ([rose isEqualToString:@"peach_rose"])) {
        //703 704
        ReturnSeven *seven = [[ReturnSeven alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:seven animated:YES completion:NULL];
        
    }
    if (([zebra isEqualToString:@"colorful"]) && ([rose isEqualToString:@"pink_rose"])) {
        //706 707
        ReturnEight *eight = [[ReturnEight alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:eight animated:YES completion:NULL];
    }
    if (([zebra isEqualToString:@"normal"]) && ([color_one isEqualToString:@"green"])) {
        //702 703
        ReturnNine *nine = [[ReturnNine alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:nine animated:YES completion:NULL];
    }
    else if ([shape isEqualToString:@"cloud"]) {
        //707 708
        ReturnTen *ten = [[ReturnTen alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:ten animated:YES completion:NULL];
    }
    else if ([shape isEqualToString:@"spikey"]) {
        //703 704
        ReturnEleven *eleven = [[ReturnEleven alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:eleven animated:YES completion:NULL];
    }
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
    [super viewDidLoad];
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(350, 300, 300, 40)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.font = [UIFont systemFontOfSize:20];
    textField.placeholder = @"Enter Age";
    textField.autocorrectionType = UITextAutocorrectionTypeNo;
    textField.keyboardType = UIKeyboardTypeDefault;
    textField.returnKeyType = UIReturnKeyDone;
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
   // textField.delegate = self;
    [self.view addSubview:textField];
    //[textField release];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
