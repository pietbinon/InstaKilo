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

@property (strong, nonatomic) NSString *catKey;
@property (strong, nonatomic) NSString *locKey;

@end

@implementation Manager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _location = [LocationObject new];
        _category = [CategoryObject new];
    }
    return self;
}

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
    
    for (PhotoObject *obj in self.photoObjects) {
        self.locKey = obj.location;
        if (!self.location.locationDict[self.locKey]) {
            [self.location.locationDict setObject:[NSMutableArray new] forKey:self.locKey];
        }
        NSMutableArray *tempArray = [[NSMutableArray alloc]initWithArray:[self.location.locationDict valueForKey:self.locKey]];
        [tempArray addObject:obj];
        [self.location.locationDict setObject:tempArray forKey:self.locKey];
    }
    
    for (PhotoObject *obj in self.photoObjects) {
        self.catKey = obj.category;
        if (!self.category.categoryDict[self.catKey]) {
            [self.category.categoryDict setObject:[NSMutableArray new] forKey:self.catKey];
            
        }
        NSMutableArray *tempArray = [[NSMutableArray alloc]initWithArray:[self.category.categoryDict valueForKey:self.catKey]];
        [tempArray addObject:obj];
        [self.category.categoryDict setObject:tempArray forKey:self.catKey];
    }
}

-(void)toggleSegmentControl: (UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        
        [self numberOfCategories];
        [self numberOfItemsInCategory];
        self.state = 0;
        
    } else {
        [self numberOfLocations];
        [self numberOfItemsInLocation];
        self.state = 1;

            }
}

-(NSInteger)numberOfSectionsInCollectionView {
    if (self.state == 0) {
        return [self numberOfCategories];
    }
return [self numberOfLocations];
}


- (NSInteger)numberOfItemsInSection {
    if (self.state == 0) {
        return [self numberOfItemsInCategory];
    }
    return [self numberOfItemsInLocation];
}


-(NSInteger)numberOfLocations {
    return self.location.locationDict.allKeys.count;
}

-(NSInteger)numberOfCategories {
    return self.category.categoryDict.allKeys.count;
}

-(NSInteger)numberOfItemsInLocation {
    return [self.location.locationDict objectForKey:self.locKey].count;
}

-(NSInteger)numberOfItemsInCategory {
    return [self.category.categoryDict objectForKey:self.catKey].count;
}


@end
