//
//  PhotoManager.h
//  InstaKilo
//
//  Created by Chris Jones on 2017-01-25.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoryObject.h"
#import "LocationObject.h"

@class PhotoObject;
//@class LocationObject;
//@class CategoryObject;

@interface Manager : NSObject

@property (strong, nonatomic) LocationObject *location;
@property (strong, nonatomic) CategoryObject *category;
@property (strong, nonatomic) NSMutableArray <PhotoObject *> *photoObjects;
@property (assign, nonatomic) NSInteger state;

- (void)setUpArrays;
//- (void)toggleSegmentControl: (UISegmentedControl *)sender;
//- (NSInteger)numberOfItemsInSection;
//- (NSInteger)numberOfSectionsInCollectionView;

@end
