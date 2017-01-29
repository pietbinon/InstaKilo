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
@property (strong, nonatomic) NSMutableArray <NSArray *> *catSections;
@property (strong, nonatomic) NSMutableArray <NSArray *> *locSections;

@end

@implementation CollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [Manager new];

    [self.manager setUpArrays];
    self.manager.state = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    if (self.manager.state == 0) {
        NSArray *catDictKeys = [self.manager.category.categoryDict allKeys];
        self.catSections = [[NSMutableArray alloc]initWithArray:catDictKeys];
    return self.catSections.count;
    }
    else {
        NSArray *locDictKeys = [self.manager.location.locationDict allKeys];
        self.locSections = [[NSMutableArray alloc]initWithArray:locDictKeys];
        return self.locSections.count;
    }
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if (self.manager.state == 0) {
        return [self.manager.category.categoryDict allValues][section].count;
    } else {
        return [self.manager.location.locationDict allValues][section].count;
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];

    if (self.manager.state == 0) {
        NSArray *temp = [self.manager.category.categoryDict allValues][indexPath.section];
        PhotoObject *photo = temp[indexPath.row];
        [cell displayCell:photo];
    }
    
    else {
        NSArray *temp = [self.manager.location.locationDict allValues][indexPath.section];
        PhotoObject *photo = temp[indexPath.row];
        [cell displayCell:photo];
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
    if (sender.selectedSegmentIndex == 0) {
        self.manager.state = 0;
    } else {
        self.manager.state = 1;
    }
    [self.collectionView reloadData];
}

@end
