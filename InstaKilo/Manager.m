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

@property (strong, nonatomic) LocationObject *location;
@property (strong, nonatomic) CategoryObject *category;
@property (assign, nonatomic) NSInteger sectionCount;
@property (assign, nonatomic) NSInteger itemCount;

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

    NSMutableArray *tempLocArray = [NSMutableArray new];
    NSMutableArray *tempCatArray = [NSMutableArray new];
    
    for (PhotoObject *obj in self.photoObjects) {
        NSString *locKey = obj.location;
        if (!self.location.locationDict[locKey]) {
            [tempLocArray addObject:obj];
        }
        NSDictionary *tempLocDict = @{locKey: @[tempLocArray]};
        self.location.locationDict = [[NSMutableDictionary alloc]initWithDictionary:tempLocDict];
    }
    
    for (PhotoObject *obj in self.photoObjects) {
        NSString *catKey = obj.category;
        if (!self.category.categoryDict[catKey]) {
            [tempCatArray addObject:obj];
        }
        NSDictionary *tempCatDict = @{catKey: @[tempCatArray]};
        self.category.categoryDict = [[NSMutableDictionary alloc]initWithDictionary:tempCatDict];
    }
}

-(void)toggleSegmentControl: (UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        self.sectionCount = self.category.categoryDict.allKeys.count;
        
        NSArray *categoryArray = [self.category.categoryDict allValues];
        NSOrderedSet *orderedSet = [NSOrderedSet orderedSetWithArray:categoryArray];
        self.itemCount = orderedSet.count;
        
    } else {
        self.sectionCount= self.location.locationDict.allKeys.count;
        
        NSArray *locationArray = [self.location.locationDict allValues];
        NSOrderedSet *orderedSet = [NSOrderedSet orderedSetWithArray:locationArray];
        self.itemCount = orderedSet.count;
    }
}

-(NSInteger)numberOfSectionsInCollectionView {
    return self.sectionCount;
}

-(NSInteger)numberOfItemsInSection {
    return self.itemCount;
}


@end
