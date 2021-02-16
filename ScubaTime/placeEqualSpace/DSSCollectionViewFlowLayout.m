//
//  DSSCollectionViewFlowLayout.m
//  ScubaTime
//
//  Created by Cassandra Holmquist on 2021-02-15.
//

#import "DSSCollectionViewFlowLayout.h"

@interface DSSCollectionViewFlowLayout ()
@end

@implementation DSSCollectionViewFlowLayout

-(void)prepareLayout{
    [super prepareLayout];
    
    if (self.placeEqualSpaceAroundAllCells) {
        CGSize  contentSize;
        CGSize  itemSize;
        ldiv_t  contentByItems;
        CGFloat layoutSpacingValue;
        CGFloat originalMinimumLineSpacing;
        CGFloat originalMinimumInteritemSpacing;
        UIEdgeInsets    originalSectionInset;
        
        contentSize = self.collectionViewContentSize;
        itemSize = self.itemSize;
        
        if (UICollectionViewScrollDirectionVertical == self.scrollDirection) {
            contentByItems = ldiv (contentSize.width,itemSize.width);
        }
        else {
            contentByItems = ldiv (contentSize.height,itemSize.height);
        }
        
        layoutSpacingValue = (NSInteger )((CGFloat )contentByItems.rem / (CGFloat )(contentByItems.quot + 1));
        
        originalMinimumLineSpacing = self.minimumLineSpacing;
        originalMinimumInteritemSpacing = self.minimumInteritemSpacing;
        originalSectionInset = self.sectionInset;
        if ((layoutSpacingValue != originalMinimumLineSpacing) ||
            (layoutSpacingValue != originalMinimumInteritemSpacing) ||
            (layoutSpacingValue != originalSectionInset.left) ||
            (layoutSpacingValue != originalSectionInset.right) ||
            (layoutSpacingValue != originalSectionInset.top) ||
            (layoutSpacingValue != originalSectionInset.bottom))
        {
            UIEdgeInsets    insetsForItem;
            
            insetsForItem.left = insetsForItem.right =
            insetsForItem.top = insetsForItem.bottom =
            layoutSpacingValue;
            
            self.minimumInteritemSpacing = layoutSpacingValue;
            self.minimumInteritemSpacing = layoutSpacingValue;
            self.sectionInset = insetsForItem;
        }
    }
}

@end
