//
//  LC75_HashMap&Set_Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 06.09.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LC75_HashMap_Set_Tests: XCTestCase {
    // MARK: Problem 2215. Find the Difference of Two Arrays
    private lazy var testsData_problem_2215: [(nums1: [Int], nums2: [Int], expected: [[Int]])] = {
        var testsData = [(nums1: [Int], nums2: [Int], expected: [[Int]])]()
        
        testsData.append((nums1: [1, 2, 3], nums2: [2, 4, 6], expected: [[1, 3], [4, 6]]))
        testsData.append((nums1: [1, 2, 3, 3], nums2: [1, 1, 2, 2], expected: [[3], []]))
        
        return testsData
    }()
    
    func tests_problem_2215_largestAltitude() throws {
        for data in testsData_problem_2215 {
            let actual = LC75_HashMap_Set.problem_2215_findDifference(data.nums1, data.nums2)
            
            XCTAssertEqual(actual.map { $0.sorted() }, data.expected.map { $0.sorted() })
        }
    }
    
    // MARK: Problem 1207. Unique Number of Occurrences
    private lazy var testsData_problem_1207: [(arr: [Int], expected: Bool)] = {
        var testsData = [(arr: [Int], expected: Bool)]()
        
        testsData.append((arr: [1, 2, 2, 1, 1, 3], expected: true))
        testsData.append((arr: [1, 2], expected: false))
        testsData.append((arr: [-3, 0, 1, -3, 1, 1, 1, -3, 10, 0], expected: true))
        
        return testsData
    }()
    
    func tests_problem_1207_largestAltitude() throws {
        for data in testsData_problem_1207 {
            let actual = LC75_HashMap_Set.problem_1207_uniqueOccurrences(data.arr)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
}
