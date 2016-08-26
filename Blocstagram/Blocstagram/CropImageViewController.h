//
//  CropImageViewController.h
//  Blocstagram
//
//  Created by Nikko on 8/25/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import "MediaFullScreenController.h"

@class CropImageViewController;

@protocol CropImageViewControllerDelegate <NSObject>

- (void)cropControllerFinishedWithImage:(UIImage *)croppedImage;

@end

@interface CropImageViewController : MediaFullScreenController

- (instancetype)initWithImage:(UIImage *)sourceImage;

@property (nonatomic, weak) NSObject <CropImageViewControllerDelegate> *delegate;

@end
