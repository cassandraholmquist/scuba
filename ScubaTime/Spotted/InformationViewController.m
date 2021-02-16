//
//  InformationViewController.m
//  ScubaTime
//
//  Created by Cassandra Holmquist on 2021-01-30.
//

#import "InformationViewController.h"
#import "Animal.h"
#import "SpottedCollectionViewController.h"


@interface InformationViewController ()


@end

@implementation InformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self displayInfo: self.marineLife];

}

- (void)displayInfo:(MarineLife *)marineLife{

    if([marineLife isKindOfClass:[Animal class]]) {
        Animal *animal = (Animal *)marineLife;
        
        self.clickedPicture.image = [UIImage imageNamed: self.marineLife.picture];
        self.nameLabel.text = [NSString stringWithFormat:@"%@", self.marineLife.name];
        self.infoLabel.text = [NSString stringWithFormat:@" Information:\n Family: %@ \n Size: %@", self.marineLife.family, animal.size];
        
    } else {
        self.clickedPicture.image = [UIImage imageNamed: self.marineLife.picture];
        self.nameLabel.text = [NSString stringWithFormat:@"%@", self.marineLife.name];
        self.infoLabel.text = [NSString stringWithFormat: @" Information:\n Family: %@ \n Size: Varies", self.marineLife.family];
      }
    }

@end
