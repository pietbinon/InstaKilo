//
//  CollectionViewCell.h
//  InstaKilo
//
//  Created by Chris Jones on 2017-01-25.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PhotoObject;

@interface CollectionViewCell : UICollectionViewCell

-(void)displayCell:(PhotoObject *) photoObject;

@end
