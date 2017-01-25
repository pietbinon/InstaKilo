//
//  PhotoObject.h
//  InstaKilo
//
//  Created by Chris Jones on 2017-01-25.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoObject : NSObject

@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *location;
@property (strong, nonatomic) NSString *category;

- (instancetype)initWithImage: (UIImage *)image category: (NSString *)category location: (NSString *)location;

@end
