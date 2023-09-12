//
//  LC_Yandex_Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 12.09.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LC_Yandex_Medium_Tests: XCTestCase {
    // MARK: Problem 849. Maximize Distance to Closest Person
    lazy var testsData_problem_849: [(seats: [Int], expected: Int)] = {
        var testsData = [(seats: [Int], expected: Int)]()
        
        testsData.append((seats: [1, 0, 0, 0, 1, 0, 1], expected: 2))
        testsData.append((seats: [1, 0, 0, 0], expected: 3))
        testsData.append((seats: [0, 1], expected: 1))
        
        return testsData
    }()
    
    func tests_problem_849_maxDistToClosest() throws {
        for data in testsData_problem_849 {
            let actual = LC_Yandex_Medium.problem_849_maxDistToClosest(data.seats)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
}
