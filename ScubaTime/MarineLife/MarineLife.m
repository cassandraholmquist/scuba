//
//  MarineLife.m
//  ScubaTime
//
//  Created by Cassandra Holmquist on 2021-02-01.
//

#import "MarineLife.h"

@implementation MarineLife
-(id)initWithPicture:(NSString *)picture andName:(NSString *)name andFamily:(NSString *)family {
    self = [super init];
    if(self) {
        self.picture = picture;
        self.name = name;
        self.family = family;
    }
    return self;
}

@end
