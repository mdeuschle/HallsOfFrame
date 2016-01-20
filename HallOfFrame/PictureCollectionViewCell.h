//
//  PictureCollectionViewCell.h
//  HallOfFrame
//
//  Created by K Sabbak on 1/20/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PictureCollectionViewCellDelegate <NSObject>

-(UIImage *)pictureCollectionViewCellPopulateImageView;

@end



@interface PictureCollectionViewCell : UICollectionViewCell

@property (nonatomic, assign) id<PictureCollectionViewCellDelegate> delegate;

@end
