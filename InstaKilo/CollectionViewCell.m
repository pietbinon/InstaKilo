//
//  CollectionViewCell.m
//  InstaKilo
//
//  Created by Pierre Binon on 2017-03-17.
//  Copyright © 2017 Pierre Binon. All rights reserved.
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
