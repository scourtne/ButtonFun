//
//  ButtonFunCollectionViewCell.h
//  buttonfun
//
//  Created by Shannon Sullivan on 7/30/15.
//  Copyright (c) 2015 Sam Courtney. All rights reserved.
//

#import <UIKit/UIKit.h>

FOUNDATION_EXPORT NSString *const BUTTON_FUN_CELL_REUSE_IDENTIFIER;

@interface ButtonFunCollectionViewCell : UICollectionViewCell

/**
 * Choose a random color for this cells background.
 */
- (void)setRandomColor;

@end
