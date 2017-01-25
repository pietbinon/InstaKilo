//
//  CollectionViewCell.m
//  InstaKilo
//
//  Created by Chris Jones on 2017-01-25.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "CollectionViewCell.h"
#import "PhotoObject.h"

@interface CollectionViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation CollectionViewCell

-(void)setPhotoObject:(PhotoObject *)photoObject{
    self.imageView.image = photoObject.image;
}


@end
