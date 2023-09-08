//
//  LC75_Queue_Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 08.09.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LC75_Queue_Tests: XCTestCase {
    // MARK: Problem 933. Number of Recent Calls
    func tests_problem_933_RecentCounter_ping() throws {
        let rc = LC75_Queue.RecentCounter()
        
        XCTAssertEqual(rc.ping(1), 1)
        XCTAssertEqual(rc.ping(100), 2)
        XCTAssertEqual(rc.ping(3001), 3)
        XCTAssertEqual(rc.ping(3002), 3)
    }
    
    // MARK: Problem 649. Dota2 Senate
    private lazy var testsData_problem_649: [(senate: String, expected: String)] = {
        var testsData = [(senate: String, expected: String)]()
        
        testsData.append((senate: "RD", expected: "Radiant"))
        testsData.append((senate: "RDD", expected: "Dire"))
        testsData.append((senate: "RRDDD", expected: "Radiant"))
        testsData.append((senate: "DRRDRDRDRDDRDRDR", expected: "Radiant"))
        testsData.append((senate: "RRDRDDRDRRDDDDDRDRDR", expected: "Radiant"))
        
        return testsData
    }()
    
    func tests_problem_394_decodeString() throws {
        for data in testsData_problem_649 {
            let actual = LC75_Queue.problem_649_predictPartyVictory(data.senate)
            
            XCTAssertEqual(actual, data.expected, "senate: \(data.senate)")
        }
    }
}
