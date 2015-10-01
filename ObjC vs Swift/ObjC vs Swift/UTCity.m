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
