//
//  InStoreViewControllerQuestion1.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/10/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreViewControllerQuestion1.h"
#import "InStoreViewControllerDontThink.h"
#import "InStoreViewControllerHomePage.h"
#import "InStoreViewControllerHomeModal.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface InStoreViewControllerQuestion1 ()
@property (nonatomic, strong) AVAudioPlayer* player1;
@property (nonatomic, strong) AVAudioPlayer* player2;
@property (nonatomic, strong) AVAudioPlayer* player3;
@end

@implementation InStoreViewControllerQuestion1

@synthesize player1 = mPlayer1;
@synthesize player2 = mPlayer2;
@synthesize player3 = mPlayer3;



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
        [self.player1 stop];
        [self.player2 stop];
        [self.player3 stop];
        InStoreViewControllerHomePage *home = [[InStoreViewControllerHomePage alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:home animated:YES completion:NULL];
    }else{
        
    }
}

- (IBAction)button:(id)sender {

    [self bounceAnimation:_button];
    [self.player2 stop];
    [self.player3 stop];
    [self.player1 play];
}
- (IBAction)button2:(id)sender {
    
    [self bounceAnimationOne:_button1];
    [self.player1 stop];
    [self.player3 stop];
    [self.player2 play];
}
- (IBAction)button3:(id)sender {
    
    [self bounceAnimationTwo:_button2];
    [self.player1 stop];
    [self.player2 stop];
    [self.player3 play];
}



- (IBAction)nextQuestion:(UIButton *)sender {
    [self.player1 stop];
    [self.player2 stop];
    [self.player3 stop];
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
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"Beat1" withExtension:@"aif"];
    NSAssert(url, @"URL is valid.");
    NSError* error = nil;
    self.player1 = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    if(!self.player1)
    {
        NSLog(@"Error creating player: %@", error);
    }
    NSURL *url2 = [[NSBundle mainBundle] URLForResource:@"high hat strut" withExtension:@"aif"];
    NSAssert(url, @"URL is valid.");
    NSError* error2 = nil;
    self.player2 = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:&error2];
    if(!self.player2)
    {
        NSLog(@"Error creating player: %@", error2);
    }
    NSURL *url3 = [[NSBundle mainBundle] URLForResource:@"southern rock" withExtension:@"aif"];
    NSAssert(url3, @"URL is valid.");
    NSError* error3 = nil;
    self.player3 = [[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:&error3];
    if(!self.player3)
    {
        NSLog(@"Error creating player: %@", error3);
    }
    UIImage *button1Image = [UIImage imageNamed:@"Circle1.jpg"];
    [_button setBackgroundImage:button1Image forState:UIControlStateNormal];
    
    UIImage *button2Image = [UIImage imageNamed:@"Circle 2.jpeg"];
    [_button1 setBackgroundImage:button2Image forState:UIControlStateNormal];
    
    UIImage *button3Image = [UIImage imageNamed:@"Circle 3.jpeg"];
    [_button2 setBackgroundImage:button3Image forState:UIControlStateNormal];
    // Do any additional setup after loading the view from its nib.
}

-(void)bounceAnimation:(id)sender
{
    CAKeyframeAnimation *bounce = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    // create value it will pass through
    CATransform3D forward = CATransform3DMakeScale(1, 1, 1);
    CATransform3D back = CATransform3DMakeScale(1.1, 1.1, .75);
    CATransform3D forward2 = CATransform3DMakeScale(1, 1, .8);
    CATransform3D back2 = CATransform3DMakeScale(1.1, 1.1, 1);
    
    [bounce setValues:
     @[
       [NSValue valueWithCATransform3D:CATransform3DIdentity],
       [NSValue valueWithCATransform3D:forward],
       [NSValue valueWithCATransform3D:back],
       [NSValue valueWithCATransform3D:forward2],
       [NSValue valueWithCATransform3D:back2],
       [NSValue valueWithCATransform3D:CATransform3DIdentity]
       ]];
    
    [bounce setDuration:0.6];
    
    [[_button layer] addAnimation:bounce forKey:@"bounceAnimation"];
    

}

-(void)bounceAnimationOne:(id)sender
{
    CAKeyframeAnimation *bounce = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    // create value it will pass through
    CATransform3D forward = CATransform3DMakeScale(1, 1, 1);
    CATransform3D back = CATransform3DMakeScale(1.1, 1.1, .75);
    CATransform3D forward2 = CATransform3DMakeScale(1, 1, .8);
    CATransform3D back2 = CATransform3DMakeScale(1.1, 1.1, 1);
    
    [bounce setValues:
     @[
       [NSValue valueWithCATransform3D:CATransform3DIdentity],
       [NSValue valueWithCATransform3D:forward],
       [NSValue valueWithCATransform3D:back],
       [NSValue valueWithCATransform3D:forward2],
       [NSValue valueWithCATransform3D:back2],
       [NSValue valueWithCATransform3D:CATransform3DIdentity]
       ]];
    
    [bounce setDuration:0.6];
    
    [[_button1 layer] addAnimation:bounce forKey:@"bounceAnimation"];
    
    
}
-(void)bounceAnimationTwo:(id)sender
{
    CAKeyframeAnimation *bounce = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    // create value it will pass through
    CATransform3D forward = CATransform3DMakeScale(1, 1, 1);
    CATransform3D back = CATransform3DMakeScale(1.1, 1.1, .75);
    CATransform3D forward2 = CATransform3DMakeScale(1, 1, .8);
    CATransform3D back2 = CATransform3DMakeScale(1.1, 1.1, 1);
    
    [bounce setValues:
     @[
       [NSValue valueWithCATransform3D:CATransform3DIdentity],
       [NSValue valueWithCATransform3D:forward],
       [NSValue valueWithCATransform3D:back],
       [NSValue valueWithCATransform3D:forward2],
       [NSValue valueWithCATransform3D:back2],
       [NSValue valueWithCATransform3D:CATransform3DIdentity]
       ]];
    
    [bounce setDuration:0.6];
    
    [[_button2 layer] addAnimation:bounce forKey:@"bounceAnimation"];
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
