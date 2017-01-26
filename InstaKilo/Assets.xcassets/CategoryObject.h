//
//  CategoryObject.h
//  InstaKilo
//
//  Created by Chris Jones on 2017-01-25.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PhotoObject;

@interface CategoryObject : NSObject

@property (strong, nonatomic) NSMutableDictionary <NSString *, NSArray <PhotoObject *>*> *categoryDict;

- (instancetype)initCategoryWithDictionary: (NSMutableDictionary *) categoryDict;

@end
