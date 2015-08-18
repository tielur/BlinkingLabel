//
//  BLViewController.m
//  BlinkingLabel
//
//  Created by Tyler Clemens on 08/17/2015.
//  Copyright (c) 2015 Tyler Clemens. All rights reserved.
//

#import "BLViewController.h"
@import BlinkingLabel;

@interface BLViewController ()

@end

@implementation BLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    self.blinkingLabel = [[BlinkingLabel alloc] initWithFrame:CGRectMake(10, 20, 200, 30)];
    self.blinkingLabel.text = @"I blink!";
    self.blinkingLabel.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:self.blinkingLabel];
    [self.blinkingLabel startBlinking];
    self.isBlinking = YES;

    self.toggleButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 60, 125, 30)];
    [self.toggleButton setTitle:@"Toggle Blinking" forState:UIControlStateNormal];
    [self.toggleButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.toggleButton addTarget:self action:@selector(toggleBlinking) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.toggleButton];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)toggleBlinking {
    if (self.isBlinking) {
        [self.blinkingLabel stopBlinking];
    } else {
        [self.blinkingLabel startBlinking];
    }
    self.isBlinking = !self.isBlinking;
}

@end
