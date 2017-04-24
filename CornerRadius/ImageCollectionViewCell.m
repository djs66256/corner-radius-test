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
        self.layer.contents = (__bridge id)[self imageWithSize:frame.size].CGImage;
    }
    return self;
}

- (UIImage *)imageWithSize:(CGSize)size {
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    [[UIColor blackColor] setStroke];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0.5, 0.5, size.width - 1, size.height - 1) cornerRadius:size.width/2];
    path.lineWidth = 1;
    [path stroke];
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

@end
