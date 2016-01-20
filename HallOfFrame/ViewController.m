//
//  ViewController.m
//  HallOfFrame
//
//  Created by Matt Deuschle on 1/20/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

#import "ViewController.h"


@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
//@property (weak, nonatomic) IBOutlet UICollectionViewCell *pictureImageView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 5;
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCollectionViewCell" forIndexPath:indexPath];
    
    self.pictureImageView.image = [UIImage imageNamed:@"1"];
    
    return cell;
}


@end
