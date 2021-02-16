//
//  InformationViewController.h
//  ScubaTime
//
//  Created by Cassandra Holmquist on 2021-01-30.
//

#import <UIKit/UIKit.h>
#import "Animal.h"
#import "MarineLife.h"
#import "SpottedCollectionViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface InformationViewController : UIViewController

@property (strong, nonatomic) MarineLife *marineLife;
@property (strong, nonatomic) Animal *animal;

@property (weak, nonatomic) IBOutlet UIImageView *clickedPicture;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

@property (strong, nonatomic) NSString *info;

- (void) displayInfo:(MarineLife *)marinelife;

@end

NS_ASSUME_NONNULL_END
