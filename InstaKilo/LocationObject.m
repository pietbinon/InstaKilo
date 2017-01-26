//
//  LocationObject.m
//  InstaKilo
//
//  Created by Chris Jones on 2017-01-25.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "LocationObject.h"
#import "PhotoObject.h"

@implementation LocationObject

- (instancetype)initLocationWithDictionary: (NSMutableDictionary *) locationDict
{
    self = [super init];
    if (self) {
        _locationDict = locationDict;
    }
    return self;
}

@end
