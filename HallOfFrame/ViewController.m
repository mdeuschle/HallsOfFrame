//
//  ViewController.m
//  HallOfFrame
//
//  Created by Matt Deuschle on 1/20/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

#import "ViewController.h"
#import "Picture.h"
#import "PictureCollectionViewCell.h"


@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
//@property (weak, nonatomic) IBOutlet Picture *pictureImageView;
@property NSArray *picturesArray;
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
    
    self.picturesArray = [NSArray arrayWithObjects: picOne, picTwo, picThree, picFour, picFive, nil];
}

-(UIImage *)pictureCollectionViewCellPopulateImageView;
{
    Picture *picture = self.picturesArray[0];
    UIImage *pictureFill = picture.image;
    
    return pictureFill;

    
}


-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 5;
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCollectionViewCell" forIndexPath:indexPath];
    
    Picture *picture = self.picturesArray[0];
    UIImage *pictureFill = picture.image;
    
    cell.pictureImageView.image = pictureFill;
    
    return cell;
}


@end
