//
//  ComposeCommentViewTest.m
//  Blocstagram
//
//  Created by Nikko on 8/29/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ComposeCommentView.h"
@interface ComposeCommentViewTest : XCTestCase

@end

@implementation ComposeCommentViewTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSetTextToYesTest {
    ComposeCommentView *testComment;
    testComment = [[ComposeCommentView alloc] init];
    
    [testComment setText:@"Testing testing"];
    XCTAssertTrue(testComment.isWritingComment == YES, @"Error you fucked up");
    
    [testComment setText:@""];
    XCTAssertTrue(testComment.isWritingComment == NO, @"Error you fucked up");
}
@end
