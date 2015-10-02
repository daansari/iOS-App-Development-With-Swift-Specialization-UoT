//
//  UTCity.m
//  ObjC vs Swift
//
//  Created by Danish Ahmed Ansari on 01/10/15.
//  Copyright © 2015 Danish Ahmed Ansari. All rights reserved.
//

#import "UTCity.h"

@implementation UTCity

- (instancetype)initWithName:(NSString *)name andPopulation:(NSInteger)population
{
    self = [super init];
    if (self) {
        self.name = name;
        self.population = population;
    }
    return self;
}

@end

@implementation UTCounty

- (instancetype)initWithName:(NSString *)name andCities:(NSArray *)cities {
    self = [super init];
    if (self) {
        self.name = name;
        self.cities = cities;
    }
    return self;
}

- (UTCity *)findCityWithName:(NSString *)name {
    for (UTCity *city in self.cities) {
        if ([city.name isEqualToString:name]) {
            return city;
        }
    }
    return nil;
}

- (UTCity *)cityWithLargestPopulation {
    NSInteger maxPopulation = 0;
    UTCity *largestCity;
    
    for (UTCity *city in self.cities) {
        if (city.population > maxPopulation) {
            largestCity = city;
            maxPopulation = city.population;
        }
    }
    
    return largestCity;
}

@end