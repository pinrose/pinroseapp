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

- (void)viewDidLoad
{
    NSMutableDictionary *firstResponse = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *secondResponse = [[NSMutableDictionary alloc] init];
    firstResponse = InStoreSession.firstResults;
    secondResponse = InStoreSession.secondResults;
    NSString *first = [firstResponse objectForKey:@"firstReturn"];
    NSString *second = [firstResponse objectForKey:@"secondReturn"];
    
    
    if ([first  isEqual: @"PILLOWTALK POET"]) {
        NSLog(@"PILLOWTALK POET");
    }
    if ([first  isEqual: @"BALLROOM PHILOSOPHER"]) {
        NSLog(@"BALLROOM PHILOSOPHER");
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
