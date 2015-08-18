//
//  BLViewController.h
//  BlinkingLabel
//
//  Created by Tyler Clemens on 08/17/2015.
//  Copyright (c) 2015 Tyler Clemens. All rights reserved.
//

@import UIKit;
@import BlinkingLabel;

@interface BLViewController : UIViewController

@property BOOL isBlinking;
@property BlinkingLabel *blinkingLabel;
@property UIButton *toggleButton;

@end
