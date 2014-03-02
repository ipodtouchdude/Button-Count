//
//  ViewController.m
//  Button-Count
//
//  Created by ipodtouchdude on 02/03/2014.
//  Copyright (c) 2014 ipodtouchdude. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize timer = mTimer;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// This part of the code sets the counter to 0 when the applcation starts.
    
    mainTimer = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchDown:(id)sender {
    NSLog(@"The button has been pressed.");
    
    // This part of the code is for starting the timer when the button is pressed.
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateTimeLable) userInfo:nil repeats:YES];
}

- (IBAction)touchUpInside:(id)sender {
    /* This part of the code is ran once the user has finished releases the button so you can do something with that information here.
    
    if ([timeLable.text isEqualToString:@"1"]) {
        
    }
    else if ([timeLable.text isEqualToString:@"1.5"]) {
        
    }
    else {
     
    }*/
    
    NSLog(@"The button has been released.");
    
    //This part of the code resets the timer.
    
    [self.timer invalidate];
    self.timer = nil;
    mainTimer = 0;
}

- (void)updateTimeLable {
    
    // This part of the code is for counting and outputing to the user.
    
    double value = [mainTimer doubleValue];
    mainTimer = [NSNumber numberWithDouble:value + .1];
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    [formatter setMaximumFractionDigits:1];
    NSString *numberString = [formatter stringFromNumber:mainTimer];
    timeLable.text = numberString;
}

@end