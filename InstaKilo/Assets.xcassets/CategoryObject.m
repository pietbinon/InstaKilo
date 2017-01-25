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

- (instancetype)initCategoryWithTitle: (NSString *)title photoObjectsArray: (NSArray<PhotoObject *> *)photoObjects
{
    self = [super init];
    if (self) {
        _categoryTitle = title;
        _photosCategoryArray = photoObjects;
    }
    return self;
}

@end
