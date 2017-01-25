//
//  PhotoManager.m
//  InstaKilo
//
//  Created by Chris Jones on 2017-01-25.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "Manager.h"
#import "PhotoObject.h"
#import "LocationObject.h"
#import "CategoryObject.h"

@interface Manager ()

@property (strong, nonatomic) PhotoObject *photoObject;
@property (strong, nonatomic) NSMutableArray <LocationObject *> *locationArray;

//@property (strong, nonatomic) NSArray *europeArray;
//@property (strong, nonatomic) NSArray *asiaArray;
//@property (strong, nonatomic) NSArray *northAmericaArray;
//@property (strong, nonatomic) NSArray *indoorsArray;
//@property (strong, nonatomic) NSArray *outdoorsArray;
//@property (strong, nonatomic) NSArray *normalArray;

@end

@implementation Manager

-(void)setUpArrays {
    PhotoObject *photo1 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Bruges"]
                                                   category:@"Outdoors"
                                                   location:@"Europe"];
    PhotoObject *photo2 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Buckingham"]
                                                   category:@"Outdoors"
                                                   location:@"Europe"];
    PhotoObject *photo3 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Catacombs"]
                                                   category:@"Indoors"
                                                   location:@"Europe"];
    PhotoObject *photo4 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Celine"]
                                                   category:@"Normal"
                                                   location:@"North America"];
    PhotoObject *photo5 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Food"]
                                                   category:@"Normal"
                                                   location:@"Asia"];
    PhotoObject *photo6 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Korea"]
                                                   category:@"Outdoors"
                                                   location:@"Asia"];
    PhotoObject *photo7 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Louvre"]
                                                   category:@"Indoors"
                                                   location:@"Europe"];
    PhotoObject *photo8 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Restaurant"]
                                                   category:@"Normal"
                                                   location:@"North America"];
    PhotoObject *photo9 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Rotterdam"]
                                                   category:@"Outdoors"
                                                   location:@"Europe"];
    PhotoObject *photo10 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Thailand"]
                                                   category:@"Outdoors"
                                                   location:@"Asia"];
    
    NSArray *tempArray = @[photo1, photo2, photo3, photo4, photo5, photo6, photo7, photo8, photo9, photo10];
    self.photoObjects = [[NSMutableArray alloc]initWithArray:tempArray];
    
    for (PhotoObject *photo in self.photoObjects) {
        if([photo.location isEqualToString:@"Europe"]) {
            NSMutableArray *tempArray = [NSMutableArray new];
            [tempArray addObject:photo];
        }
        LocationObject *locObj = [[LocationObject alloc]initLocationWithTitle:@"Europe" photoObjectsArray:tempArray];
        [self.locationArray addObject:locObj];
    }
    
}

-(void)setDisplayObjectType: (NSUInteger)selectedSegmentIndex {
    if (selectedSegmentIndex == 0) {
        
    }
}






-(NSInteger)numberOfSections {

    return self.photoObjects.count;
}

-(NSInteger)numberOfItemsInSection:(NSInteger)section {
    
    for (PhotoObject *object in self.photoObjects) {
        if([object.location isEqualToString:@"Europe"]) {
            [self.europeArray arrayByAddingObject:object];
            return self.europeArray.count;
        }
        if ([object.location isEqualToString:@"Asia"]) {
            [self.asiaArray arrayByAddingObject:object];
            return self.asiaArray.count;
        }
        if ([object.location isEqualToString:@"North America"]) {
            [self.northAmericaArray arrayByAddingObject:object];
            return self.northAmericaArray.count;
        }
    } return 1;
}

-(PhotoObject *)objectInPhotoObjectsAtIndex:(NSIndexPath *)indexPath {
    NSInteger section = indexPath.section;
    PhotoObject *photo = self.photoObjects[section];
    return photo;
}

@end
