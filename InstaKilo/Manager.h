//
//  PhotoManager.h
//  InstaKilo
//
//  Created by Chris Jones on 2017-01-25.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PhotoObject;

@interface Manager : NSObject

@property (strong, nonatomic) NSMutableArray <PhotoObject *> *photoObjects;

-(void)setUpArrays;
-(void)toggleSegmentControl: (UISegmentedControl *)sender;
-(NSInteger)numberOfSectionsInCollectionView;
-(NSInteger)numberOfItemsInSection;


@end
