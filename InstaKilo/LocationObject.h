//
//  LocationObject.h
//  InstaKilo
//
//  Created by Chris Jones on 2017-01-25.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PhotoObject;

@interface LocationObject : NSObject

@property (strong, nonatomic) NSString *locationTitle;
@property (strong, nonatomic) NSArray <PhotoObject *> *photosLocationArray;

- (instancetype)initLocationWithTitle: (NSString *)title photoObjectsArray: (NSArray<PhotoObject *> *)photoObjects;

@end
