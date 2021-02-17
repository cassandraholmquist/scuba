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
    self = [super initWithPicture:picture andName:name andFamily:family];
    if(self) {
        self.size = size;
    }
    return self;
}

@end
