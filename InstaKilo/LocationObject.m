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

- (instancetype)initLocationWithTitle: (NSString *)title photoObjectsArray: (NSArray<PhotoObject *> *)photoObjects
{
    self = [super init];
    if (self) {
        _locationTitle = title ;
        _photosLocationArray = photoObjects;
    }
    return self;
}

@end
