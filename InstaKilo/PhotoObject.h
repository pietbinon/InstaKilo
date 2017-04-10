//
//  PhotoObject.h
//  InstaKilo
//
//  Created by Pierre Binon on 2017-03-17.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PhotoObject : NSObject

@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *location;
@property (strong, nonatomic) NSString *category;

- (instancetype)initWithImage: (UIImage *)image category: (NSString *)category location: (NSString *)location;

@end
