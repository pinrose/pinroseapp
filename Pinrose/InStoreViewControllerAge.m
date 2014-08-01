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
    NSString *car = session[@"car"];
    NSString *animal = session[@"animals"];
    NSString *bathroom = session[@"bathroom"];
    NSString *texture = session[@"texture"];
    
    
     NSInteger one = 0, two = 0, three = 0, four = 0, five = 0, six = 0, seven = 0, eight = 0, nine = 0, ten = 0;
     
    if ([shape isEqualToString:@"spikey"]) {
        two++;
        three++;
        four++;
        five++;
        nine++;
    }
    
    if ([shape isEqualToString:@"cloud"]) {
        one++;
        six++;
        seven++;
        eight++;
        ten++;
    }
    
    if ([lips isEqualToString:@"red"]) {
        three++;
        four++;
        nine++;
    }
    if ([lips isEqualToString:@"pink"]) {
        one++;
        six++;
        seven++;
        eight++;
    }
    if ([lips isEqualToString:@"dark_red"]) {
        three++;
        four++;
        five++;
        six++;
        eight++;
    }
    if ([lips isEqualToString:@"tan"]) {
        one++;
        two++;
        five++;
        seven++;
        nine++;
    }
    if ([rose isEqualToString:@"red"]) {
        one++;
        five++;
        six++;
        seven++;
        nine++;
    }
    if ([rose isEqualToString:@"pink_rose"]) {
        two++;
        three++;
        four++;
        eight++;
        ten++;
    }
    if ([color_one isEqualToString:@"pink"]) {
        one++;
        three++;
        seven++;
        eight++;
        ten++;
    }
    if ([color_one isEqualToString:@"purple"]) {
        two++;
        five++;
        six++;
        seven++;
        nine++;
        ten++;
    }
    if ([color_one isEqualToString:@"green"]) {
        two++;
        three++;
        four++;
        five++;
        eight++;
        nine++;
    }
    if ([car isEqualToString:@"lake"]) {
        one++;
        three++;
        ten++;
    }
    if ([car isEqualToString:@"green"]) {
        two++;
        four++;
    }
    if ([car isEqualToString:@"hawaii"]) {
        two++;
        four++;
        seven++;
        eight++;
    }
    if ([car isEqualToString:@"horse"]) {
        five++;
        six++;
        nine++;
    }
    if ([painting isEqualToString:@"pathwork"]) {
        one++;
        two++;
        five++;
        six++;
        eight++;
    }
    
    if ([painting isEqualToString:@"circle"]) {
        one++;
        three++;
        four++;
        six++;
        seven++;
        nine++;
        ten++;
    }
    if ([sunset  isEqualToString:@"ocean"]) {
        two++;
        three++;
        four++;
        seven++;
        eight++;
        ten++;
    }
    if ([sunset isEqualToString:@"land"]) {
        one++;
        five++;
        six++;
        nine++;
    }
    if ([animal isEqualToString:@"otter"]) {
        two++;
        four++;
        eight++;
        nine++;
    }
    if ([animal isEqualToString:@"monkey"]) {
        three++;
        five++;
        seven++;
    }
    if ([animal isEqualToString:@"cat"]) {
        one++;
        six++;
        ten++;
    }
    if ([bathroom isEqualToString:@"top_left"]) {
        four++;
        eight++;
    }
    if ([bathroom isEqualToString:@"top_right"]) {
        one++;
        five++;
        ten++;
    }
    if ([bathroom isEqualToString:@"bottom_left"]) {
        six++;
        seven++;
        nine++;
    }
    if ([bathroom isEqualToString:@"bottom_right"]) {
        two++;
        three++;
    }
    if ([zebra isEqualToString:@"colorful"]) {
        four++;
        six++;
        seven++;
        eight++;
        nine++;
    }
    if ([zebra isEqualToString:@"normal"]) {
        one++;
        two++;
        three++;
        five++;
        ten++;
    }
    if ([texture isEqualToString:@"aligator"]) {
        five++;
        six++;
        nine++;
    }
    if ([texture isEqualToString:@"feathers"]) {
        one++;
        three++;
        seven++;
        eight++;
        ten++;
    }
    if ([texture isEqualToString:@"octopus"]) {
        two++;
        four++;
    }
    NSInteger Numbers[] = {one, two, three, four, five, six, seven, eight, nine, ten};
    
    NSInteger name = 0, name_Second = 0;
    NSInteger max = Numbers[0], second_Max = Numbers[0];
    
    for (int i = 0; i < 10; i ++) {
        if(Numbers[i]>max){
            max=Numbers[i];
            name = i;
        }
        if((Numbers[i]==max) || (Numbers[i]==(max-1))) {
            second_Max = Numbers[i];
            name_Second = i;
        }
    }
    
    NSLog(@"Max %ld %ld", (long)max, (long)name);
    NSLog(@"Second Max %ld %ld", (long)second_Max, (long)name_Second);
    
    
    //int find_max(int numbers[], int N){
    //    int max = numbers[0];
    //    for(int i=1;i<N;i++)
    //        if(max>numbers[i]) {
    //            max=numbers[i];
    //        }
    //    return max;
    //}
    //find_max(Numbers, 10);
    
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
