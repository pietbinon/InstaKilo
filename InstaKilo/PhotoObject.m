//
//  PhotoObject.m
//  InstaKilo
//
//  Created by Pierre Binon on 2017-03-17.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "PhotoObject.h"


@implementation PhotoObject

- (instancetype)initWithImage: (UIImage *)image category: (NSString *)category location: (NSString *)location {
    
    self = [super init];
    
    if (self) {
        
        _image = image;
        _category = category;
        _location = location;
    }
    
    return self;
}

@end
