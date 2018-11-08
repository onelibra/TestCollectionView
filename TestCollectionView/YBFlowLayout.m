//
//  YBFlowLayout.m
//  TestCollectionView
//
//  Created by yangbo on 2018/10/12.
//  Copyright © 2018年 yang. All rights reserved.
//

#import "YBFlowLayout.h"

@implementation YBFlowLayout
- (NSArray *) layoutAttributesForElementsInRect:(CGRect)rect {
    NSArray *allAttributes = [super layoutAttributesForElementsInRect:rect];
    
    if (YES) { //for the case there are only 1 or 2 titles, we center them.
        UICollectionViewLayoutAttributes *attributes = [allAttributes lastObject];
        CGRect collectionViewFrame = self.collectionView.frame;
        CGFloat leftWidth = collectionViewFrame.size.width - attributes.frame.origin.x - attributes.frame.size.width;
        if (leftWidth > 0.0 ) {
            CGFloat margin = leftWidth / (allAttributes.count + 1);
            
            for (int i=0; i<allAttributes.count; i++) {
                UICollectionViewLayoutAttributes *_attributes = allAttributes[i];
                CGRect frame = _attributes.frame;
                frame.origin.x += margin * (i + 1);
                _attributes.frame = frame;
            }
        }
    }
    
    return allAttributes;
}

- (CGSize)collectionViewContentSize {
    [super collectionViewContentSize];
    NSLog(@"%@", NSStringFromCGRect(self.collectionView.frame));
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, self.collectionView.frame.size.height);
}

@end
