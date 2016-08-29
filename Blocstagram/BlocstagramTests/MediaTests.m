//
//  MediaTests.m
//  Blocstagram
//
//  Created by Nikko on 8/28/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Media.h"

@interface MediaTests : XCTestCase

@end

@implementation MediaTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatInitilizationWorks {
    NSDictionary *sourceDictionary = @{@"id" : @"3",
                                       @"url" : @"http://www.example.com/example.jpg",};
    Media *testMedia = [[Media alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testMedia.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(testMedia.mediaURL, sourceDictionary[@"images"][@"standard_resolution"][@"url"], @"The image url should be equal");
}
@end
