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

@property (strong, nonatomic) NSString *categoryTitle;
@property (strong, nonatomic) NSArray <PhotoObject *> *photosCategoryArray;

@end
