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
