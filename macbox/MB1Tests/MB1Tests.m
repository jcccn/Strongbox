//
//  MB1Tests.m
//  MB1Tests
//
//  Created by Mark on 27/11/2018.
//  Copyright © 2018 Mark McGuill. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SafeMetaData.h"

@interface MB1Tests : XCTestCase

@end

@implementation MB1Tests

- (void)testEmpty {
    SafeMetaData* metadata = [[SafeMetaData alloc] initWithNickName:@"Hello" storageProvider:kLocalDevice fileName:@"" fileIdentifier:@""];
    
    metadata.touchIdPassword = @"";
    
    XCTAssertNotNil(metadata.touchIdPassword);
    XCTAssert(metadata.touchIdPassword.length == 0);
}

- (void)testNil {
    SafeMetaData* metadata = [[SafeMetaData alloc] initWithNickName:@"Hello" storageProvider:kLocalDevice fileName:@"" fileIdentifier:@""];
    
    metadata.touchIdPassword = nil;
    
    XCTAssertNil(metadata.touchIdPassword);
}

- (void)testSomething {
    SafeMetaData* metadata = [[SafeMetaData alloc] initWithNickName:@"Hello" storageProvider:kLocalDevice fileName:@"" fileIdentifier:@""];
    
    metadata.touchIdPassword = @"Something";
    
    XCTAssert([metadata.touchIdPassword isEqualToString:@"Something"]);
}

@end
