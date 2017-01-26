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

- (instancetype)initCategoryWithDictionary: (NSMutableDictionary *) categoryDict
{
    self = [super init];
    if (self) {
        _categoryDict = categoryDict;
    }
    return self;
}

@end
