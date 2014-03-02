//
//  ViewController.h
//  Button-Count
//
//  Created by ipodtouchdude on 02/03/2014.
//  Copyright (c) 2014 ipodtouchdude. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UILabel *timeLable;
    NSNumber *mainTimer;
}

@property (nonatomic, strong) NSTimer *timer;

- (IBAction)touchDown:(id)sender;
- (IBAction)touchUpInside:(id)sender;

- (void)updateTimeLable;

@end
