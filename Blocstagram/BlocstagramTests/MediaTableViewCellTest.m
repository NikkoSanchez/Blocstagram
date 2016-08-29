//
//  MediaTableViewCellTest.m
//  Blocstagram
//
//  Created by Nikko on 8/29/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MediaTableViewCell.h"
#import "Media.h"
@interface MediaTableViewCellTest : XCTestCase

@end

@implementation MediaTableViewCellTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testHeightExample {
    NSDictionary *sourceDictionary = @{@"id": @"8675309",
                                       @"user" : @{@"id": @"8675309",
                                                   @"username" : @"d'oh",
                                                   @"full_name" : @"Homer Simpson",
                                                   @"profile_picture" : @"http://www.example.com/example.jpg"},
                                       @"images" : @{@"standard_resolution" : @{@"url" : @"http://distillery.s3.amazonaws.com/media/2010/07/16/4de37e03aa4b4372843a7eb33fa41cad_7.jpg"}},
                                       @"caption" : @{@"text" : @"this is a caption"}};
    
    // Test to make sure the 2 images will return the same height after passed through method
    
    Media *testMedia = [[Media alloc] initWithDictionary:sourceDictionary];
    testMedia.image = [UIImage imageNamed:@"1.jpg"];
   // NSLog(@"IMAGE HEIGHT: %f", testMedia.image.size.height);
    CGFloat imageHeight = [MediaTableViewCell heightForMediaItem:testMedia width:320 traitCollection:nil];
    
    testMedia.image = [UIImage imageNamed:@"2.jpg"];
    CGFloat imageHeight2 = [MediaTableViewCell heightForMediaItem:testMedia width:320 traitCollection:nil];
    XCTAssertEqual(imageHeight, imageHeight2);
}

@end
