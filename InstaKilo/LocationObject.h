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

@property (strong, nonatomic) NSMutableDictionary <NSString *, NSArray <PhotoObject *>*> *locationDict;

- (instancetype)initLocationWithDictionary: (NSMutableDictionary *) locationDict;

@end
