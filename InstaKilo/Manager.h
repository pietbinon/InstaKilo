//
//  PhotoManager.h
//  InstaKilo
//
//  Created by Chris Jones on 2017-01-25.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PhotoObject;

@interface Manager : NSObject

@property (strong, nonatomic) NSMutableArray <PhotoObject *> *photoObjects;
@property (strong, nonatomic) NSMutableDictionary <NSString *, PhotoObject *> *sortDict;

-(void)setUpArrays;
-(NSInteger)numberOfSections;
-(NSInteger)numberOfItemsInSection:(NSInteger)section;
-(PhotoObject *)objectInPhotoObjectsAtIndex:(NSIndexPath *)indexPath;
-(void)setDisplayObjectType: (NSUInteger)segmentIndex;

@end
