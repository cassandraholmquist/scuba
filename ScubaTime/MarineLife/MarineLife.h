//
//  MarineLife.h
//  ScubaTime
//
//  Created by Cassandra Holmquist on 2021-02-01.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MarineLife : NSObject

@property NSString *picture, *name, *family;

-(id)initWithPicture:(NSString *)picture andName:(NSString *)name andFamily:(NSString *)family;

@end



NS_ASSUME_NONNULL_END
