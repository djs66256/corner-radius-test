//
//  ImageCacheCollectionViewCell.m
//  CornerRadius
//
//  Created by daniel on 2017/4/23.
//  Copyright © 2017年 Daniel. All rights reserved.
//

#import "ImageCacheCollectionViewCell.h"

@implementation ImageCacheCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    static NSCache *cache = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        cache = [[NSCache alloc] init];
    });
    self = [super initWithFrame:frame];
    if (self) {
        UIImage *img = [cache objectForKey:@"img"];
        if (img == nil) {
            img = [self imageWithSize:frame.size];
            [cache setObject:img forKey:@"img"];
        }
        self.layer.contents = (__bridge id)img.CGImage;
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
