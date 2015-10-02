//
//  UTCity.h
//  ObjC vs Swift
//
//  Created by Danish Ahmed Ansari on 01/10/15.
//  Copyright © 2015 Danish Ahmed Ansari. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UTCity : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger population;

- (instancetype)initWithName:(NSString *)name andPopulation:(NSInteger)population;

@end

@interface UTCounty : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSArray *cities;

- (instancetype)initWithName:(NSString *)name andCities:(NSArray *)cities;
- (UTCity *)findCityWithName:(NSString *)name;

@property (nonatomic, strong, readonly) UTCity *cityWithLargestPopulation;

@end