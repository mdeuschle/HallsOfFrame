//
//  CustomView.m
//  HallOfFrame
//
//  Created by K Sabbak on 1/20/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

#import "CustomView.h"

@interface CustomView ()

@end


@implementation CustomView
- (IBAction)onButtonTapped:(UIButton *)sender {

    [self.delegate viewCollectionViewCellColor:self didTapButton:sender];
    [self removeFromSuperview];
}



@end
