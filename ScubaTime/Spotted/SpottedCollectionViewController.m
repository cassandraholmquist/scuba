//
//  SpottedCollectionViewController.m
//  ScubaTime
//
//  Created by Cassandra Holmquist on 2021-01-30.
//

#import "SpottedCollectionViewController.h"
#import "CellCollectionViewCell.h"
#import "InformationViewController.h"
#import "MarineLife.h"
#import "Animal.h"

@interface SpottedCollectionViewController ()

@end

@implementation SpottedCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

Animal *animal01, *animal02, *animal03, *animal04, *animal05, *animal06, *animal07, *animal08, *animal09;

MarineLife *marineLife01, *marineLife02, *marineLife03;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self instantiateObjectsForDisplay];
    [self initArrayWithObjects];
    
}

- (void)instantiateObjectsForDisplay {
    
    animal01 = [[Animal alloc] initWithPicture:@"Barracuda" andName:@"Barracuda" andFamily:@"Sphyraenidae" andSize:@"60-100cm"];
    
    animal02 = [[Animal alloc] initWithPicture:@"BoxFish" andName:@"Yellow boxfish (juvenile)" andFamily:@"Ostracion cubicus" andSize:@"Up to 8cm"];
    
    animal03 = [[Animal alloc] initWithPicture:@"Frogfish" andName:@"Giant frogfish" andFamily:@"Sargassoulkar" andSize:@"Up to 30cm"];
    
    animal04 =[[Animal alloc] initWithPicture:@"GreenTurtle" andName:@"Green turtle" andFamily:@"Cheloniidae" andSize:@"Up to 150cm"];
    
    animal05 = [[Animal alloc] initWithPicture:@"MantaRay" andName:@"Giant manta ray" andFamily:@"Myliobatidae" andSize:@"Up to 670cm"];
    
    animal06 =[[Animal alloc] initWithPicture:@"PharaohCuttlefish" andName:@"Pharaoh cuttlefish" andFamily:@"Sepiidae" andSize:@"Body to 25cm"];
    
    animal07 = [[Animal alloc] initWithPicture:@"PygmySeahorse" andName:@"Bargibanti pygmy seahorse" andFamily:@"Syngnathidae" andSize:@"Up to 2cm"];
    
    animal08 = [[Animal alloc] initWithPicture:@"ThresherShark" andName:@"Pelagic thresher shark" andFamily:@"Alopiidae" andSize:@"Up to 300cm"];
    
    animal09 = [[Animal alloc] initWithPicture:@"WhaleShark" andName:@"Whale shark" andFamily:@"Rhincodontidae" andSize:@"Up to 1800cm"];
    
    marineLife01 = [[MarineLife alloc] initWithPicture:@"brainCoral" andName:@"Brain coral" andFamily:@"Mussidae and Merulinidae"];
    
    marineLife02 = [[MarineLife alloc] initWithPicture:@"seaFan" andName:@"Sea fan" andFamily:@"Gorgoniidae"];
    
    marineLife03 = [[MarineLife alloc] initWithPicture:@"bubbleCoral" andName:@"Bubble coral" andFamily:@"Euphyllidae"];
    
}

-(void)initArrayWithObjects {
    spottedMarineLives = [NSArray arrayWithObjects:animal01, animal02, animal03, animal04, animal05, animal06, animal07, animal08, animal09, marineLife01, marineLife02, marineLife03, nil];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"infoSegue"]) {
        InformationViewController *infoView = [segue destinationViewController];
        
        NSArray *arrayIndexPath = [self.collectionView indexPathsForSelectedItems];
        
        NSIndexPath *indexPath = [arrayIndexPath firstObject];
        int row = (int)[indexPath row];
        infoView.marineLife = spottedMarineLives[row];
    }
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return spottedMarineLives.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CellCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell
    Animal *animal = spottedMarineLives[indexPath.row];
    cell.cellImage.image = [UIImage imageNamed:animal.picture];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

@end
