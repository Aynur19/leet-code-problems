//
//  LC_Yandex_Easy_Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 13.09.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LC_Yandex_Easy_Tests: XCTestCase {
    // MARK: Problem 228. Summary Ranges
    lazy var testsData_problem_228: [(nums: [Int], expected: [String])] = {
        var testsData = [(nums: [Int], expected: [String])]()
        
        testsData.append((nums: [0, 1, 2, 4, 5, 7],
                          expected: ["0->2", "4->5", "7"]))
        testsData.append((nums: [0, 2, 3, 4, 6, 8, 9],
                          expected: ["0", "2->4", "6", "8->9"]))
        
        return testsData
    }()
    
    func tests_problem_228_summaryRanges() throws {
        for data in testsData_problem_228 {
            let actual = LC_Yandex_Easy.problem_228_summaryRanges(data.nums)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
    
    
    // MARK: Problem 283. Move Zeroes
    lazy var testsData_problem_283: [(nums: [Int], expected: [Int])] = {
        var testsData = [(nums: [Int], expected: [Int])]()
        
        testsData.append((nums: [0, 1, 0, 3, 12], expected: [1, 3, 12, 0, 0]))
        testsData.append((nums: [0], expected: [0]))
        
        return testsData
    }()
    
    func tests_problem_283_moveZeroes() throws {
        for data in testsData_problem_283 {
            var nums = data.nums
            LC_Yandex_Easy.problem_283_moveZeroes(&nums)
            
            XCTAssertEqual(nums, data.expected)
        }
    }
    
    
    // MARK: Problem 206. Reverse Linked List
    private lazy var testsData_problem_206: [(head: ListNode?, expected: ListNode?)] = {
        var testsData = [(head: ListNode?, expected: ListNode?)]()
        
        testsData.append((head: ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5))))),
                          expected: ListNode(5, ListNode(4, ListNode(3, ListNode(2, ListNode(1)))))))
        
        testsData.append((head: ListNode(1, ListNode(2)),
                          expected: ListNode(2, ListNode(1))))
        
        testsData.append((head: nil,
                          expected: nil))
        
        return testsData
    }()
    
    func tests_problem_206_reverseList() throws {
        for data in testsData_problem_206 {
            let actual = Yandex_Problems.problem_206_reverseList(data.head)
            
            XCTAssertTrue(ListNode.equalListNodes(actual, data.expected), "head: \(String(describing: data.head))")
        }
    }
}
