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

- (instancetype)init
{
    self = [super init];
    if (self) {
        _locationDict = [NSMutableDictionary new];
    }
    return self;
}

@end
