//
//  LayerCollectionViewCell.m
//  CornerRadius
//
//  Created by daniel on 2017/4/23.
//  Copyright © 2017年 Daniel. All rights reserved.
//

#import "LayerCollectionViewCell.h"

@implementation LayerCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.cornerRadius = frame.size.width/2;
        self.layer.borderColor = [UIColor blackColor].CGColor;
        self.layer.borderWidth = 1;
        self.clipsToBounds = YES;
        
        
//        self.contentView.layer.cornerRadius = frame.size.width/2;
//        self.contentView.layer.borderColor = [UIColor blackColor].CGColor;
//        self.contentView.layer.borderWidth = 1;
//        self.contentView.clipsToBounds = YES;
    }
    return self;
}

@end
