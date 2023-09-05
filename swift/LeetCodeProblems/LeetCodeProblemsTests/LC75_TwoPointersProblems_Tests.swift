//
//  LC75_TwoPointersProblems_Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 05.09.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LC75_TwoPointersProblems_Tests: XCTestCase {
    // MARK: Problem 283. Move Zeroes
    private lazy var testsData_problem_238: [(nums: [Int], expected: [Int])] = {
        var testsData = [(nums: [Int], expected: [Int])]()
        
        testsData.append((nums: [0, 1, 0, 3, 12], expected: [1, 3, 12, 0, 0]))
        testsData.append((nums: [0], expected: [0]))
        testsData.append((nums: [45192, 0, -659, -52359, -99225, -75991, 0, -15155, 27382, 59818, 0, -30645, -17025, 81209, 887, 64648],
                          expected: [45192, -659, -52359, -99225, -75991, -15155, 27382, 59818, -30645, -17025, 81209, 887, 64648, 0, 0, 0]))
        
        return testsData
    }()
    
    func tests_problem_283_moveZeroes() throws {
        for data in testsData_problem_238 {
            var nums = data.nums
            LC75_TwoPointersProblems.problem_283_moveZeroes(&nums)
            
            XCTAssertEqual(nums, data.expected)
        }
    }
}
