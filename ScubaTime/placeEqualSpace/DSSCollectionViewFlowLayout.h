//
//  DSSCollectionViewFlowLayout.h
//  ScubaTime
//
//  Created by Cassandra Holmquist on 2021-02-15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DSSCollectionViewFlowLayout : UICollectionViewFlowLayout

@property (readwrite, nonatomic, assign) BOOL placeEqualSpaceAroundAllCells;

@end

NS_ASSUME_NONNULL_END
