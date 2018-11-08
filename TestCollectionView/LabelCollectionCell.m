//
//  LabelCollectionCell.m
//  TestCollectionView
//
//  Created by yangbo on 2018/10/12.
//  Copyright © 2018年 yang. All rights reserved.
//

#import "LabelCollectionCell.h"
#import <Masonry.h>

@implementation LabelCollectionCell
- (UILabel *)titleLabel {
    if (_titleLabel == nil) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_titleLabel];
     
    }
    return _titleLabel;
}


- (UICollectionViewLayoutAttributes *)preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes {
    UICollectionViewLayoutAttributes *attributes = [super preferredLayoutAttributesFittingAttributes:layoutAttributes];
    NSLog(@"%@+++%@", attributes, NSStringFromCGRect(attributes.frame));
    [self.titleLabel sizeToFit];
   self.titleLabel.frame = CGRectMake(4, 0, _titleLabel.frame.size.width, attributes.frame.size.height);
    attributes.frame = CGRectMake(0, 0, self.titleLabel.frame.size.width + 8, self.frame.size.height);
    
    return attributes;
}

@end
