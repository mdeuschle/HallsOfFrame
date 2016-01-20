//
//  Picture.m
//  HallOfFrame
//
//  Created by K Sabbak on 1/20/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

#import "Picture.h"

@interface Picture ()



@end


@implementation Picture

-(instancetype)initWithFrameColor:(UIColor *)frameColor andImage:(UIImage *)image
{
    self = [super init];

    if (self){
        self.frameColor = frameColor;
        self.image = image;
    }
    return self;
}

@end
