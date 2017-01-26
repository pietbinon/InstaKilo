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

@interface CollectionViewController ()

@property (strong, nonatomic) IBOutlet UICollectionView *sectionLabel;
@property (strong, nonatomic) Manager *manager;

@end

@implementation CollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
    PhotoObject *photoObj = self.manager.photoObjects[indexPath.row];
    cell.photoObject = photoObj;
    return cell;
}

- (IBAction)sectionControl:(UISegmentedControl *)sender {
    [self.manager toggleSegmentControl:sender];
}


@end
