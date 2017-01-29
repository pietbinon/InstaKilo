//
//  CollectionViewController.m
//  InstaKilo
//
//  Created by Chris Jones on 2017-01-25.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "CollectionViewController.h"
#import "Manager.h"
#import "CollectionViewCell.h"
#import "HeaderCollectionReusableView.h"

@interface CollectionViewController ()

@property (strong, nonatomic) Manager *manager;
@property (strong, nonatomic) NSMutableArray *catSections;
@property (strong, nonatomic) NSMutableArray *locSections;

@end

@implementation CollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [Manager new];

    [self.manager setUpArrays];
    self.catSections = [NSMutableArray new];
    self.locSections = [NSMutableArray new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.manager numberOfSectionsInCollectionView];
    
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.manager numberOfItemsInSection];
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    if (self.manager.state == 0) {
        
        NSArray *sections = [self.manager.category.categoryDict allKeys];
        for (NSString *rows in sections) {
             NSArray *temp = [self.manager.category.categoryDict valueForKey:rows];
            [self.catSections addObject:temp];
        }
        NSArray *temp = self.catSections[indexPath.section];
        PhotoObject *photoObject = temp[indexPath.row];
        [cell displayCell:photoObject];
    }
    if (self.manager.state == 1) {
        NSArray *sections = [self.manager.location.locationDict allKeys];
        for (NSString *rows in sections) {
            NSArray *temp = [self.manager.location.locationDict valueForKey:rows];
            [self.locSections addObject:temp];
        }
        NSArray *temp2 = self.locSections[indexPath.section];
        PhotoObject *photoObject = temp2[indexPath.row];
        [cell displayCell:photoObject];
    }
    
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(nonnull NSString *)kind atIndexPath:(nonnull NSIndexPath *)indexPath {
    
    HeaderCollectionReusableView *header = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"Header" forIndexPath:indexPath];
    
    if (self.manager.state == 0) {
        NSArray *catKeys = [self.manager.category.categoryDict allKeys];
        header.headerLabel.text = catKeys[indexPath.section];
    }
    if (self.manager.state == 1) {
        NSArray *locKeys = [self.manager.location.locationDict allKeys];
        header.headerLabel.text = locKeys[indexPath.section];
    }
    return header;
}

- (IBAction)sectionControl:(UISegmentedControl *)sender {
    [self.manager toggleSegmentControl:sender];
}

@end
