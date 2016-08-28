//
//  FilterCollectionViewCellSubclass.m
//  Blocstagram
//
//  Created by Nikko on 8/27/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import "FilterCollectionViewCellSubclass.h"


@implementation FilterCollectionViewCellSubclass

- (void) filterCollectionViewCell{
    
    if (self) {
        static NSInteger imageViewTag = 1000;
        static NSInteger labelTag = 1001;
        
        self.thumbnail = (UIImageView *)[self.contentView viewWithTag:imageViewTag];
        self.filterLabel =(UILabel *) [self.contentView viewWithTag:labelTag];
    
        //self.flowLayout = self.filterCollectionView.collectionViewLayout;
        CGFloat thumbnailEdgeSize = self.filterFlowLayout.itemSize.width;
    
        if (!self.thumbnail) {
            self.thumbnail = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, thumbnailEdgeSize, thumbnailEdgeSize)];
            self.thumbnail.contentMode = UIViewContentModeScaleAspectFill;
            self.thumbnail.tag = imageViewTag;
            self.thumbnail.clipsToBounds = YES;
        
            [self.contentView addSubview:self.thumbnail];
        }
    
        if (!self.filterLabel) {
            self.filterLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, thumbnailEdgeSize, thumbnailEdgeSize, 20)];
            self.filterLabel.tag = labelTag;
            self.filterLabel.textAlignment = NSTextAlignmentCenter;
            self.filterLabel.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:10];
            [self.contentView addSubview:self.filterLabel];
        }
    }
}

@end
