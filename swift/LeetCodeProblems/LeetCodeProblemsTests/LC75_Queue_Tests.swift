//
//  LC75_Queue_Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 08.09.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LC75_Queue_Tests: XCTestCase {
    func tests_() throws {
        let rc = LC75_Queue.RecentCounter()
        
        XCTAssertEqual(rc.ping(1), 1)
        XCTAssertEqual(rc.ping(100), 2)
        XCTAssertEqual(rc.ping(3001), 3)
        XCTAssertEqual(rc.ping(3002), 3)
    }
}
