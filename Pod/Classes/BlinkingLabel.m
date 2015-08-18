//
//  BlinkingLabel.m
//  Pods
//
//  Created by Tyler Clemens on 8/17/15.
//
//

#import <Foundation/Foundation.h>
#import "BlinkingLabel.h"

@implementation BlinkingLabel : UILabel

-(void)startBlinking {
    UIViewAnimationOptions options = UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse;
    [UIView animateWithDuration:0.25 delay:0.0 options:options animations:^{
        self.alpha = 0;
    } completion:nil];
}

-(void)stopBlinking {
    self.alpha = 1;
    [self.layer removeAllAnimations];
}

@end

