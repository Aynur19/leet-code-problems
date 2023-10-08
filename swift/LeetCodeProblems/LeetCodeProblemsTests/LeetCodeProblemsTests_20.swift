//
//  LeetCodeProblemsTests_20.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 05.10.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LeetCodeProblemsTests_20: XCTestCase {
    
    // MARK: Problem: 4. Median of Two Sorted Arrays
    func tests_problem_4_findMedianSortedArrays() throws {
        lazy var testsData_problem_4: [(nums1: [Int], nums2: [Int], expected: Double)] = {
            var testsData = [(nums1: [Int], nums2: [Int], expected: Double)]()
            
            testsData.append((nums1: [1, 3], nums2: [2], expected: 2))
            testsData.append((nums1: [1, 2], nums2: [3, 4], expected: 2.5))
            
            return testsData
        }()
        
        for data in testsData_problem_4 {
            let actual = LeetCodeProblems.problem_4_findMedianSortedArrays(data.nums1, data.nums2)
            
            XCTAssertEqual(actual, data.expected,
                           "nums1: \(data.nums1); nums2: \(data.nums2)")
        }
    }
    
    
    // MARK: Problem: 3. Longest Substring Without Repeating Characters
    func tests_problem_3_lengthOfLongestSubstring() throws {
        lazy var testsData_problem_3: [(s: String, expected: Int)] = {
            var testsData = [(s: String, expected: Int)]()
            
            testsData.append((s: "abcabcbb", expected: 3))
            testsData.append((s: "bbbbb", expected: 1))
            testsData.append((s: "pwwkew", expected: 3))
            
            return testsData
        }()
        
        for data in testsData_problem_3 {
            let actual = LeetCodeProblems.problem_3_lengthOfLongestSubstring(data.s)
            
            XCTAssertEqual(actual, data.expected,
                          "s: \(data.s)")
        }
    }
    
    // MARK: Problem: 2. Add Two Numbers
    func tests_problem_2_addTwoNumbers() throws {
        lazy var testsData_problem_2: [(l1: ListNode?, l2: ListNode?, expected: ListNode?)] = {
            var testsData = [(l1: ListNode?, l2: ListNode?, expected: ListNode?)]()
            
            testsData.append((l1: ListNode(2, ListNode(4, ListNode(3))),
                              l2: ListNode(5, ListNode(6, ListNode(4))),
                              expected: ListNode(7, ListNode(0, ListNode(8)))))
            
            testsData.append((l1: ListNode(0),
                              l2: ListNode(0),
                              expected: ListNode(0)))
            
            testsData.append((l1: ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9))))))),
                              l2: ListNode(9, ListNode(9, ListNode(9, ListNode(9)))),
                              expected: ListNode(8, ListNode(9, ListNode(9, ListNode(9, ListNode(0, ListNode(0, ListNode(0, ListNode(1))))))))))
            
            testsData.append((l1: ListNode(2, ListNode(4, ListNode(9))),
                              l2: ListNode(5, ListNode(6, ListNode(4, ListNode(9)))),
                              expected: ListNode(7, ListNode(0, ListNode(4, ListNode(0, ListNode(1)))))))
            
            return testsData
        }()
        
        for data in testsData_problem_2 {
            let actual = LeetCodeProblems.problem_2_addTwoNumbers(data.l1, data.l2)
            
            XCTAssertTrue(ListNode.equalListNodes(actual, data.expected),
                          "l1: \(String(describing: data.l1)), l2: \(String(describing: data.l2))")
        }
    }
    
    
    // MARK: Problem: 1. Two Sum
    func tests_problem_228_summaryRanges() throws {
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
        
        for data in testsData_problem_1 {
            let actual = LeetCodeProblems.problem_1_twoSum(data.nums, data.target)
            
            XCTAssertEqual(actual, data.expected,
                           "nums: \(data.nums), target: \(data.target)")
        }
    }
}
