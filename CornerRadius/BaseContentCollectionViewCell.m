//
//  BaseContentCollectionViewCell.m
//  CornerRadius
//
//  Created by daniel on 2017/5/1.
//  Copyright © 2017年 Daniel. All rights reserved.
//

#import "BaseContentCollectionViewCell.h"

@implementation BaseContentCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.contentView.layer.cornerRadius = frame.size.width/2;
        self.contentView.layer.borderColor = [UIColor blackColor].CGColor;
        self.contentView.layer.borderWidth = 1;
        self.contentView.clipsToBounds = YES;
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        label.text = @"F";
        label.font = [UIFont systemFontOfSize:10];
        label.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:label];
    }
    return self;
}

@end
