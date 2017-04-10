//
//  PhotoManager.m
//  InstaKilo
//
//  Created by Pierre Binon on 2017-03-17.
//  Copyright © 2017 Pierre Binon. All rights reserved.
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

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        _location = [LocationObject new];
        _category = [CategoryObject new];
    }
    return self;
}


-(void)setUpArrays {
    
    PhotoObject *photo1 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Boeing737Lufthansa"]
                                                   category:@"Outdoors"
                                                   location:@"Europe"];
    PhotoObject *photo2 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Boeing737Unknown"]
                                                   category:@"Outdoors"
                                                   location:@"Europe"];
    PhotoObject *photo3 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Boeing737Cockpit"]
                                                   category:@"Indoors"
                                                   location:@"Europe"];
    PhotoObject *photo4 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Boeing767AirCanada"]
                                                   category:@"Outdoors"
                                                   location:@"North America"];
    PhotoObject *photo5 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Boeing767BritishAirways"]
                                                   category:@"Outdoors"
                                                   location:@"Europe"];
    PhotoObject *photo6 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Boeing767Cockpit"]
                                                   category:@"Indoors"
                                                   location:@"Asia"];
    PhotoObject *photo7 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Boeing777KLM"]
                                                   category:@"Outdoors"
                                                   location:@"Europe"];
    PhotoObject *photo8 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Boeing777Swiss"]
                                                   category:@"Outdoors"
                                                   location:@"Europe"];
    PhotoObject *photo9 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"Boeing777Cockpit"]
                                                   category:@"Indoors"
                                                   location:@"North America"];
    PhotoObject *photo10 = [[PhotoObject alloc]initWithImage:[UIImage imageNamed:@"A330200ERBrussels"]
                                                   category:@"Home Country"
                                                   location:@"Europe"];
    
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

@end
