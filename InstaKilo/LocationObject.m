//
//  LocationObject.m
//  InstaKilo
//
//  Created by Pierre Binon on 2017-03-17.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "LocationObject.h"
#import "PhotoObject.h"



@implementation LocationObject

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        _locationDict = [NSMutableDictionary new];
    }
    return self;
}

@end
