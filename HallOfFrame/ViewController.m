//
//  ViewController.m
//  HallOfFrame
//
//  Created by Matt Deuschle on 1/20/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

#import "ViewController.h"
#include "Picture.h"


@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
//@property (weak, nonatomic) IBOutlet UICollectionViewCell *pictureImageView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    Picture *picOne = [[Picture alloc]initWithFrameColor:[UIColor redColor] andImage:[UIImage imageNamed:@"1"]];

    Picture *picTwo = [[Picture alloc]initWithFrameColor:[UIColor redColor] andImage:[UIImage imageNamed:@"2"]];

    Picture *picThree = [[Picture alloc]initWithFrameColor:[UIColor redColor] andImage:[UIImage imageNamed:@"3"]];

    Picture *picFour = [[Picture alloc]initWithFrameColor:[UIColor redColor] andImage:[UIImage imageNamed:@"4"]];

    Picture *picFive = [[Picture alloc]initWithFrameColor:[UIColor redColor] andImage:[UIImage imageNamed:@"5"]];
}


-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 5;
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCollectionViewCell" forIndexPath:indexPath];
    
//    self.pictureImageView.image = [UIImage imageNamed:@"1"];
    
    return cell;
}


@end
