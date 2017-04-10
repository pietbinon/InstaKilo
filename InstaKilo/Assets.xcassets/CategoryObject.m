//
//  CategoryObject.m
//  InstaKilo
//
//  Created by Pierre Binon on 2017-03-17.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "CategoryObject.h"
#import "PhotoObject.h"



@implementation CategoryObject

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        _categoryDict = [NSMutableDictionary new];
    }
    return self;
}

@end
