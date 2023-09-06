//
//  LC75_TwoPointers_Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 05.09.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LC75_TwoPointers_Tests: XCTestCase {
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
            LC75_TwoPointers.problem_283_moveZeroes(&nums)
            
            XCTAssertEqual(nums, data.expected)
        }
    }
    
    
    // MARK: Problem 392. Is Subsequence
    private lazy var testsData_problem_392: [(s: String, t: String, expected: Bool)] = {
        var testsData = [(s: String, t: String, expected: Bool)]()
        
        testsData.append((s: "abc", t: "ahbgdc", expected: true))
        testsData.append((s: "axc", t: "ahbgdc", expected: false))
        
        return testsData
    }()
    
    func tests_problem_392_isSubsequence() throws {
        for data in testsData_problem_392 {
            let actual = LC75_TwoPointers.problem_392_isSubsequence(data.s, data.t)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
    
    
    // MARK: Problem 11. Container With Most Water
    private lazy var testsData_problem_11: [(height: [Int], expected: Int)] = {
        var testsData = [(height: [Int], expected: Int)]()
        
        testsData.append((height: [1, 8, 6, 2, 5, 4, 8, 3, 7], expected: 49))
        testsData.append((height: [1, 1], expected: 1))
        
        return testsData
    }()
    
    func tests_problem_11_maxArea() throws {
        for data in testsData_problem_11 {
            let actual = LC75_TwoPointers.problem_11_maxArea(data.height)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
    
    
    // MARK: Problem 1679. Max Number of K-Sum Pairs
    private lazy var testsData_problem_1679: [(nums: [Int], k: Int, expected: Int)] = {
        var testsData = [(nums: [Int], k: Int, expected: Int)]()
        
        testsData.append((nums: [1, 2, 3, 4], k: 5, expected: 2))
        testsData.append((nums: [3, 1, 3, 4, 3], k: 6, expected: 1))
        
        return testsData
    }()
    
    func tests_problem_1679_maxOperations() throws {
        for data in testsData_problem_1679 {
            let actual = LC75_TwoPointers.problem_1679_maxOperations(data.nums, data.k)
            
            XCTAssertEqual(actual, data.expected, "nums: \(data.nums)")
        }
    }
}
