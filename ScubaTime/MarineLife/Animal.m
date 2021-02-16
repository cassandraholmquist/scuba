//
//  Animal.m
//  ScubaTime
//
//  Created by Cassandra Holmquist on 2021-01-31.
//

#import "Animal.h"
// MarineLife *marineLife;

@implementation Animal

-(id)initWithPicture:(NSString *)picture andName:(NSString *)name andFamily:(nonnull NSString *)family andSize:(NSString *)size {
    self = [super init];
    if(self) {
        self.picture = picture;
        self.name = name;
        self.family = family;
        self.size = size;
    }
    return self;
}

@end
