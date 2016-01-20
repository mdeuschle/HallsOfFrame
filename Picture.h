//
//  Picture.h
//  HallOfFrame
//
//  Created by K Sabbak on 1/20/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Picture : NSObject

@property UIColor *frameColor;
@property UIImage *image;

-(instancetype)initWithFrameColor:(UIColor *)frameColor andImage:(UIImage *)image;

@end
