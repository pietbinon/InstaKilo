//
//  CategoryObject.m
//  InstaKilo
//
//  Created by Chris Jones on 2017-01-25.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "CategoryObject.h"
#import "PhotoObject.h"

@implementation CategoryObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        _categoryDict = [NSMutableDictionary new];
    }
    return self;
}

@end
