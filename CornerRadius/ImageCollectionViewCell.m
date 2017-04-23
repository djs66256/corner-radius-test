//
//  ImageCollectionViewCell.m
//  CornerRadius
//
//  Created by daniel on 2017/4/23.
//  Copyright © 2017年 Daniel. All rights reserved.
//

#import "ImageCollectionViewCell.h"

@implementation ImageCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.contents = (__bridge id)self.image.CGImage;
    }
    return self;
}

- (UIImage *)image {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(10, 10), NO, [UIScreen mainScreen].scale);
    [[UIColor blackColor] setStroke];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0.5, 0.5, 9, 9) cornerRadius:5];
    path.lineWidth = 1;
    [path stroke];
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

@end
