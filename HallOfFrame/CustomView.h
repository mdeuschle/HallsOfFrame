//
//  CustomView.h
//  HallOfFrame
//
//  Created by K Sabbak on 1/20/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PictureCollectionViewCell.h"

@protocol ChangeColorDelegate <NSObject>

-(void)viewCollectionViewCellColor:(id)thing didTapButton:(UIButton *)button;

@end

@interface CustomView : UIView

@property (nonatomic, assign) id<ChangeColorDelegate>delegate;

@end

