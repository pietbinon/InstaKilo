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

@property (weak, nonatomic) IBOutlet UIImageView *photoView;

@end

@implementation CollectionViewCell

-(void)displayCell: (PhotoObject *) photoObject {
    self.photoView.image = photoObject.image;
}


@end
