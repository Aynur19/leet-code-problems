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
            let actual = Yandex_Problems.problem_1_twoSum(data.nums, data.target)
            
            XCTAssertEqual(actual, data.expected,
                           "nums: \(data.nums), target: \(data.target)")
        }
    }
    
    
    // MARK: Problem 2: 2. Add Two Numbers
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
            let actual = Yandex_Problems.problem_2_addTwoNumbers(data.l1, data.l2)
            
            XCTAssertTrue(ListNode.equalListNodes(actual, data.expected),
                          "l1: \(String(describing: data.l1)), l2: \(String(describing: data.l2))")
        }
    }
    
    
    // MARK: Problem 3: 3. Longest Substring Without Repeating Characters
    func tests_problem_3_lengthOfLongestSubstring() throws {
        lazy var testsData_problem_3: [(s: String, expected: Int)] = {
            var testsData = [(s: String, expected: Int)]()
            
            testsData.append((s: "abcabcbb", expected: 3))
            testsData.append((s: "bbbbb", expected: 1))
            testsData.append((s: "pwwkew", expected: 3))
            
            return testsData
        }()
        
        for data in testsData_problem_3 {
            let actual = Yandex_Problems.problem_3_lengthOfLongestSubstring(data.s)
            
            XCTAssertEqual(actual, data.expected,
                          "s: \(data.s)")
        }
    }
    
    
    // MARK: Problem 4: 5. Longest Palindromic Substring
    func tests_problem_5_longestPalindrome() throws {
        lazy var testsData_problem_5: [(s: String, expected: String)] = {
            var testsData = [(s: String, expected: String)]()
            
            testsData.append((s: "babad", expected: "bab"))
            testsData.append((s: "cbbd", expected: "bb"))
            testsData.append((s: "a", expected: "a"))
            
            return testsData
        }()
        
        for data in testsData_problem_5 {
            let actual = Yandex_Problems.problem_5_longestPalindrome(data.s)
            
            XCTAssertEqual(actual, data.expected,
                          "s: \(data.s)")
        }
    }
}
