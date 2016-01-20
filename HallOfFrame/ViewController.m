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
#import "CustomView.h"


@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, ChangeColorDelegate>
//@property (weak, nonatomic) IBOutlet Picture *pictureImageView;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
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

-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomView *customView = [[[NSBundle mainBundle] loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:0];
    [self.view addSubview:customView];
}

-(void)viewCollectionViewCellColor:(id)thing didTapButton:(UIButton *)button
{
    
    NSArray *indexPath = self.collectionView.indexPathsForSelectedItems;
    Picture *picture = [indexPath objectAtIndex:0];
    
    if ([button.titleLabel.text isEqualToString:@"Red"])
         {
             picture.frameColor = [UIColor redColor];
         }
    else if ([button.titleLabel.text isEqualToString:@"Green"])
    {
        picture.frameColor = [UIColor greenColor];
    }
    else
    {
        picture.frameColor = [UIColor greenColor];
    }
    
}



-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 5;
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCollectionViewCell" forIndexPath:indexPath];
    
    Picture *picture = self.picturesArray[indexPath.row];
    UIImage *pictureFill = picture.image;
    
    cell.pictureImageView.image = pictureFill;

    
    
    return cell;
}


@end
