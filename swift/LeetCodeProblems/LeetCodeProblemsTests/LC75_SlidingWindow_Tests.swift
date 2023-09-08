//
//  LC75_SlidingWindow_Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 06.09.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LC75_SlidingWindow_Tests: XCTestCase {
    // MARK: Problem 643. Maximum Average Subarray I
    private lazy var testsData_problem_643: [(nums: [Int], k: Int, expected: Double)] = {
        var testsData = [(nums: [Int], k: Int, expected: Double)]()
        
        testsData.append((nums: [1, 12, -5, -6, 50, 3], k: 4, expected: 12.75000))
        testsData.append((nums: [5], k: 1, expected: 5.00000))
        testsData.append((nums: [0, 4, 0, 3, 2], k: 1, expected: 4.00000))
        testsData.append((nums: [-1], k: 1, expected: -1.00000))
        
        return testsData
    }()
    
    func tests_problem_643_findMaxAverage() throws {
        for data in testsData_problem_643 {
            let actual = LC75_SlidingWindow.problem_643_findMaxAverage(data.nums, data.k)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
    
    
    // MARK: Problem 1456. Maximum Number of Vowels in a Substring of Given Length
    private lazy var testsData_problem_1456: [(s: String, k: Int, expected: Int)] = {
        var testsData = [(s: String, k: Int, expected: Int)]()
        
        testsData.append((s: "abciiidef", k: 3, expected: 3))
        testsData.append((s: "aeiou", k: 2, expected: 2))
        testsData.append((s: "leetcode", k: 3, expected: 2))
        testsData.append((s: "zpuerktejfp", k: 3, expected: 2))
        
        return testsData
    }()
    
    func tests_problem_1456_maxVowels() throws {
        for data in testsData_problem_1456 {
            let actual = LC75_SlidingWindow.problem_1456_maxVowels(data.s, data.k)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
    
    
    // MARK: Problem 1004. Max Consecutive Ones III
    private lazy var testsData_problem_1004: [(nums: [Int], k: Int, expected: Int)] = {
        var testsData = [(nums: [Int], k: Int, expected: Int)]()
        
        testsData.append((nums: [1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0], k: 2, expected: 6))
        testsData.append((nums: [0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1], k: 3, expected: 10))
        
        return testsData
    }()
    
    func tests_problem_1004_longestOnes() throws {
        for data in testsData_problem_1004 {
            let actual = LC75_SlidingWindow.problem_1004_longestOnes(data.nums, data.k)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
    
    
    // MARK: Problem 1493. Longest Subarray of 1's After Deleting One Element
    private lazy var testsData_problem_1493: [(nums: [Int], expected: Int)] = {
        var testsData = [(nums: [Int], expected: Int)]()
        
        testsData.append((nums: [1, 1, 0, 1], expected: 3))
        testsData.append((nums: [0, 1, 1, 1, 0, 1, 1, 0, 1], expected: 5))
        testsData.append((nums: [0, 1, 1, 1, 0, 0, 1, 1, 0, 1], expected: 3))
        testsData.append((nums: [0, 1, 1, 0, 0, 0, 1, 1, 0, 1], expected: 3))
        testsData.append((nums: [0, 1, 1, 1, 0, 0, 1, 0, 0, 1], expected: 3))
        testsData.append((nums: [1, 1, 1], expected: 2))
        testsData.append((nums: [1, 1, 0, 0, 1, 1, 1, 0, 1], expected: 4))
        
        return testsData
    }()
    
    func tests_problem_1493_longestSubarray() throws {
        for data in testsData_problem_1493 {
            let actual = LC75_SlidingWindow.problem_1493_longestSubarray(data.nums)
            
            XCTAssertEqual(actual, data.expected, "nums: \(data.nums)")
        }
    }
}
