//
//  LC75_PrefixSum_Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 06.09.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LC75_PrefixSum_Tests: XCTestCase {
    // MARK: Problem 1732. Find the Highest Altitude
    private lazy var testsData_problem_1732: [(gain: [Int], expected: Int)] = {
        var testsData = [(gain: [Int], expected: Int)]()
        
        testsData.append((gain: [-5, 1, 5, 0, -7], expected: 1))
        testsData.append((gain: [-4, -3, -2, -1, 4, 3, 2], expected: 0))
        
        return testsData
    }()
    
    func tests_problem_1732_largestAltitude() throws {
        for data in testsData_problem_1732 {
            let actual = LC75_PrefixSum.problem_1732_largestAltitude(data.gain)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
    
    // MARK: Problem 724. Find Pivot Index
    private lazy var testsData_problem_724: [(nums: [Int], expected: Int)] = {
        var testsData = [(nums: [Int], expected: Int)]()
        
        testsData.append((nums: [1, 7, 3, 6, 5, 6], expected: 3))
        testsData.append((nums: [1, 2, 3], expected: -1))
        testsData.append((nums: [2, 1, -1], expected: 0))
        
        return testsData
    }()
    
    func tests_problem_724_largestAltitude() throws {
        for data in testsData_problem_724 {
            let actual = LC75_PrefixSum.problem_724_pivotIndex(data.nums)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
}
