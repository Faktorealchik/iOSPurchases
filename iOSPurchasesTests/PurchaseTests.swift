//
//  PurchaseTests.swift
//  PurchaseTests
//
//  Created by Alexandr Nesterov on 4/30/19.
//  Copyright © 2019 Alexandr Nesterov. All rights reserved.
//

import XCTest
@testable import Purchase

class PurchaseTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let cancelled = "cancelled"
        let str = cancelled.localized
        
        XCTAssertNotEqual(str, cancelled)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
