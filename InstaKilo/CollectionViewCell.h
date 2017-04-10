//
//  CollectionViewCell.h
//  InstaKilo
//
//  Created by Pierre Binon on 2017-03-17.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PhotoObject;



@interface CollectionViewCell : UICollectionViewCell

-(void)displayCell:(PhotoObject *) photoObject;

@end
