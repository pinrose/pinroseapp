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
#import "InStoreReturnPageViewController.h"
#import "SBJson.h"



@interface InStoreViewControllerAge ()
@property (nonatomic, retain) IBOutlet UITextField *textField;
@property (nonatomic, retain) NSURL *urlDestination;
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

- (IBAction)ageBox:(UITextField *)sender {

    _textField.autocorrectionType = UITextAutocorrectionTypeNo;
    _textField.keyboardType = UIKeyboardTypeDefault;
    _textField.returnKeyType = UIReturnKeyDone;
    _textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    _textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
}

- (IBAction)finishButton:(UIButton *)sender {
    NSMutableDictionary *session = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *sessions = [[NSMutableDictionary alloc] init];
    session = InStoreSession.sessionVariables;
    [[InStoreSession sessionDictionary] setObject:session forKey:@"post"];
    sessions = InStoreSession.sessionDictionary;
    
    
    //********************************************************
    //server POST needs to work with this JSON
    
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:sessions
                                                       options:0 // Pass 0 if you don't care about the readability of the generated string
                                                         error:&error];
    
    
    if (! jsonData) {
        NSLog(@"Got an error: %@", error);
    } else {
        BOOL changeDBDestination = (BOOL)[[NSUserDefaults standardUserDefaults] valueForKeyPath:@"staging"];
        if (changeDBDestination) {
            _urlDestination = [[NSURL alloc] initWithString:@"https://staging.pinrose.com/api/ipad_quiz/results"];
        }
        else {
            _urlDestination = [[NSURL alloc] initWithString:@"https://www.pinrose.com/api/ipad_quiz/reslts"];
        }

        NSMutableURLRequest *request =
        [[NSMutableURLRequest alloc] initWithURL:
         _urlDestination];
        
        [request setHTTPMethod:@"POST"];
        [request setValue:@"application/json" forHTTPHeaderField:@"Content-type"];
        [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        [request setHTTPBody:jsonData];
        
        [[NSURLConnection alloc]
         initWithRequest:request delegate:self];
        
        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        NSLog(jsonString);
        
        
        NSData *response = [NSURLConnection sendSynchronousRequest:request
                                                 returningResponse:nil error:nil];
        
        //NSDictionary *myDictionary = (NSDictionary*) [NSKeyedUnarchiver unarchiveObjectWithData:response];
        NSString *json_string = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
        
        NSDictionary *results = [json_string JSONValue];
        NSArray *resultArray = [results valueForKeyPath:@"results.variant.product.name"];
        NSLog(@"%@",resultArray);
        
        [[InStoreSession firstResults] setObject:[resultArray objectAtIndex:0] forKey:@"firstReturn"];
        [[InStoreSession secondResults] setObject:[resultArray objectAtIndex:1] forKey:@"secondReturn"];
        
        
        
        
        
        InStoreReturnPageViewController *returnPage = [[InStoreReturnPageViewController alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:returnPage animated:YES completion:NULL];
    }
}
        //we're just going to initialize the new results page. then in the onload method we'll say if such and such string is equal
        //to this then set the images to this and so forth.
        
        
//**********************************************************************************
    
    
    

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
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [_textField resignFirstResponder];
    return YES;
}

-(void)dismissKeyboard {
    [_textField resignFirstResponder];
}

- (void)viewDidLoad
{
    [_textField setDelegate:self];
    _textField.placeholder = @"Enter Age";
    _textField.returnKeyType=UIReturnKeyDone;
    _textField.textAlignment = NSTextAlignmentCenter;
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    [tap setCancelsTouchesInView:NO];
    [self.view addGestureRecognizer:tap];
    [super viewDidLoad];
    //[textField release];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
