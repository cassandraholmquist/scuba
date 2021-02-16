//
//  Animal.h
//  ScubaTime
//
//  Created by Cassandra Holmquist on 2021-01-31.
//

#import <Foundation/Foundation.h>
#import "MarineLife.h"

NS_ASSUME_NONNULL_BEGIN

@interface Animal : MarineLife

@property NSString *size;

-(id)initWithPicture:(NSString *)picture andName:(NSString *)name andFamily:(NSString *)family andSize:(NSString *)size;

@end

NS_ASSUME_NONNULL_END
