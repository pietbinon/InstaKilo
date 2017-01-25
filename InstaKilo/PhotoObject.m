//
//  PhotoObject.m
//  InstaKilo
//
//  Created by Chris Jones on 2017-01-25.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "PhotoObject.h"

@implementation PhotoObject

- (instancetype)initWithImage: (UIImage *)image category: (NSString *)category location: (NSString *)location
{
    self = [super init];
    if (self) {
        _image = image;
        _category = category;
        _location = location;
    }
    return self;
}


@end
