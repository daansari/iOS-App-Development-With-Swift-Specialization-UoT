//
//  AppDelegate.m
//  ObjC vs Swift
//
//  Created by Danish Ahmed Ansari on 02/10/15.
//  Copyright © 2015 Danish Ahmed Ansari. All rights reserved.
//

#import "AppDelegate.h"
#import "UTCity.h"

@implementation AppDelegate

- (void)loadStuff {
    NSArray *cities = @[
                        [[UTCity alloc] initWithName:@"Toronto" andPopulation:300000],
                        [[UTCity alloc] initWithName:@"Vancouver" andPopulation:5]
                        ];
    
    UTCounty *canada = [[UTCounty alloc] initWithName:@"Canada" andCities:cities];
    
    UTCity *vancouver = [canada findCityWithName:@"Vancouver"];
    
    UTCity *largestCity = canada.cityWithLargestPopulation;
    
    NSObject *obj = @"message";
}

@end
