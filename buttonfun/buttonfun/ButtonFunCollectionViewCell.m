//
//  ButtonFunCollectionViewCell.m
//  buttonfun
//
//  Created by Shannon Sullivan on 7/30/15.
//  Copyright (c) 2015 Sam Courtney. All rights reserved.
//

#import "ButtonFunCollectionViewCell.h"

NSString *const BUTTON_FUN_CELL_REUSE_IDENTIFIER = @"ButtonFunCollectionViewCellIdent";

@implementation ButtonFunCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    // This is called when we are first created - make sure we start off with a random color
    self = [super initWithFrame:frame];
    if (self) {
        [self setRandomColor];
    }
    
    return self;
}

- (void)setRandomColor {
    // Get a random number up to 255, then turn it into a float between 0 and 1 so we can plug it into UIColor to get random colors.
    // Alternatively we could have an array of colors we pick from randomly if we wanted a limited selection of random colors. That would work just as well, and if we didn't want a huge possible range of random colors would potentially be better.
    CGFloat red = arc4random_uniform(255) / 255.0;
    CGFloat green = arc4random_uniform(255) / 255.0;
    CGFloat blue = arc4random_uniform(255) / 255.0;
    
    self.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1];
}

@end
