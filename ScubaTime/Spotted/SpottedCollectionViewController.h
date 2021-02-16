//
//  SpottedCollectionViewController.h
//  ScubaTime
//
//  Created by Cassandra Holmquist on 2021-01-30.
//

#import <UIKit/UIKit.h>
#import "Animal.h"

NS_ASSUME_NONNULL_BEGIN

@interface SpottedCollectionViewController : UICollectionViewController {
    
    MarineLife *marineLife;
    Animal *animal;
    
    NSArray *spottedMarineLives;
}

@end

NS_ASSUME_NONNULL_END
