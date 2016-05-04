//
//  UI_TestsDemoUITests.m
//  UI TestsDemoUITests
//
//  Created by MAC on 16/5/4.
//  Copyright © 2016年 MAC. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface UI_TestsDemoUITests : XCTestCase

@end

@implementation UI_TestsDemoUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElementQuery *nameElementsQuery = [app.otherElements containingType:XCUIElementTypeStaticText identifier:@"name:"];
    XCUIElement *textField = [[nameElementsQuery childrenMatchingType:XCUIElementTypeTextField] elementBoundByIndex:0];
    [textField tap];
    [textField typeText:@"123"];
    
    XCUIElement *textField2 = [[nameElementsQuery childrenMatchingType:XCUIElementTypeTextField] elementBoundByIndex:1];
    [textField2 tap];
    [textField2 tap];
    [textField2 typeText:@"123"];
    [app.buttons[@"Login"] tap];
    
}


@end
