//
//  CategoryObject.h
//  InstaKilo
//
//  Created by Pierre Binon on 2017-03-17.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PhotoObject;



@interface CategoryObject : NSObject

@property (strong, nonatomic) NSMutableDictionary <NSString *, NSArray <PhotoObject *>*> *categoryDict;

@end
