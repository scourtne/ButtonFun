//
//  ViewController.m
//  buttonfun
//
//  Created by Shannon Sullivan on 7/30/15.
//  Copyright (c) 2015 Sam Courtney. All rights reserved.
//

#import "ViewController.h"

#import "ButtonFunCollectionViewCell.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *funButtonCollectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Register our collection view cell
    [self.funButtonCollectionView registerClass:[ButtonFunCollectionViewCell class] forCellWithReuseIdentifier:BUTTON_FUN_CELL_REUSE_IDENTIFIER];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewDataSource

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    // Grab one of our nice fun button cells
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:BUTTON_FUN_CELL_REUSE_IDENTIFIER forIndexPath:indexPath];
    
    // We don't need to change the color - it's done when the cell is first created and when it is selected
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    // In some cases, we don't have an even number of rows and columns. To avoid a black line on the screen, go ahead and make these round up
    NSInteger rows = ceilf(self.view.frame.size.height / 40);
    NSInteger cols = ceilf(self.view.frame.size.width / 40);
    
    return rows * cols;
}

#pragma mark - UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    // Cheap and easy way to get our cell back - just ask ourself for it
    ButtonFunCollectionViewCell *cell = (ButtonFunCollectionViewCell *)[self collectionView:collectionView cellForItemAtIndexPath:indexPath];
    [cell setRandomColor];
    
    [collectionView reloadItemsAtIndexPaths:@[indexPath]];
}

@end
