//
//  PhotoManager.h
//  InstaKilo
//
//  Created by Pierre Binon on 2017-03-17.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoryObject.h"
#import "LocationObject.h"


@class PhotoObject;



@interface Manager : NSObject

@property (strong, nonatomic) LocationObject *location;
@property (strong, nonatomic) CategoryObject *category;
@property (strong, nonatomic) NSMutableArray <PhotoObject *> *photoObjects;
@property (assign, nonatomic) NSInteger state;

- (void)setUpArrays;

@end
