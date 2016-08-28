//
//  FilterCollectionViewCellSubclass.h
//  Blocstagram
//
//  Created by Nikko on 8/27/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FilterCollectionViewCellSubclass : UICollectionViewCell

@property (nonatomic, strong) UIImageView *thumbnail;
@property (nonatomic, strong) UICollectionViewFlowLayout *filterFlowLayout;
@property (nonatomic, strong) UILabel *filterLabel;
- (void) filterCollectionViewCell;
@end
