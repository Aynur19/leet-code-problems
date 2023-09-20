//
//  Yandex_Problems_Tests.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 20.09.2023.
//

import XCTest
@testable import LeetCodeProblems

final class Yandex_Problems_Tests: XCTestCase {
    // MARK: Problem 1: 1. Two Sum
    lazy var testsData_problem_1: [(nums: [Int], target: Int, expected: [Int])] = {
        var testsData = [(nums: [Int], target: Int, expected: [Int])]()
        
        testsData.append((nums: [2, 7, 11, 15],
                          target: 9, expected: [0, 1]))
        testsData.append((nums: [3, 2, 4],
                          target: 6, expected: [1, 2]))
        testsData.append((nums: [3, 3],
                          target: 6, expected: [0, 1]))
        
        return testsData
    }()
    
    func tests_problem_228_summaryRanges() throws {
        for data in testsData_problem_1 {
            let actual = Yandex_Problems.problem_1_twoSum(data.nums, data.target)
            
            XCTAssertEqual(actual, data.expected,
                           "nums: \(data.nums), target: \(data.target)")
        }
    }
    
}
