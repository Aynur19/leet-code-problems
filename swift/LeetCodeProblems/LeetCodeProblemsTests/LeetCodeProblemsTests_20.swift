//
//  LeetCodeProblemsTests_20.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 05.10.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LeetCodeProblemsTests_20: XCTestCase {
    // MARK: Problem 8. String to Integer (atoi)
    func tests_problem_8_myAtoi() throws {
        lazy var testsData_problem_8: [(s: String, expected: Int)] = {
            var testsData = [(s: String, expected: Int)]()
            
            testsData.append((s: "42", expected: 42))
            testsData.append((s: "   -42", expected: -42))
            testsData.append((s: "4193 with words", expected: 4193))
            testsData.append((s: "00000-42a1234", expected: 0))
            testsData.append((s: "words and 987", expected: 0))
            testsData.append((s: "20000000000000000000", expected: Int(Int32.max)))
            
            return testsData
        }()
        
        for data in testsData_problem_8 {
            let actual = LeetCodeProblems.problem_8_myAtoi(data.s)
            
            XCTAssertEqual(actual, data.expected,
                           "s: '\(data.s)'")
        }
    }
    
    
    // MARK: Problem 7. Reverse Integer
    func tests_problem_7_reverse() throws {
        lazy var testsData_problem_7: [(x: Int, expected: Int)] = {
            var testsData = [(x: Int, expected: Int)]()
            
            testsData.append((x: 123, expected: 321))
            testsData.append((x: -123, expected: -321))
            testsData.append((x: 120, expected: 21))
            
            return testsData
        }()
        
        for data in testsData_problem_7 {
            let actual = LeetCodeProblems.problem_7_reverse(data.x)
            
            XCTAssertEqual(actual, data.expected,
                           "x: \(data.x)")
        }
    }
    
    
    // MARK: Problem 6. Zigzag Conversion
    func tests_problem_6_convert() throws {
        lazy var testsData_problem_6: [(s: String, numRows: Int, expected: String)] = {
            var testsData = [(s: String, numRows: Int, expected: String)]()
            
            testsData.append((s: "PAYPALISHIRING", numRows: 3, expected: "PAHNAPLSIIGYIR"))
            testsData.append((s: "PAYPALISHIRING", numRows: 4, expected: "PINALSIGYAHRPI"))
            testsData.append((s: "A", numRows: 1, expected: "A"))
            
            return testsData
        }()
        
        for data in testsData_problem_6 {
            let actual = LeetCodeProblems.problem_6_convert(data.s, data.numRows)
            
            XCTAssertEqual(actual, data.expected,
                           "s: \(data.s); numRows: \(data.numRows)")
        }
    }
    
    
    // MARK: Problem 5. Longest Palindromic Substring
    func tests_problem_5_longestPalindrome() throws {
        lazy var testsData_problem_5: [(s: String, expected: String)] = {
            var testsData = [(s: String, expected: String)]()
            
            testsData.append((s: "babad", expected: "bab"))
            testsData.append((s: "cbbd", expected: "bb"))
            testsData.append((s: "a", expected: "a"))
            
            return testsData
        }()
        
        for data in testsData_problem_5 {
            let actual = LeetCodeProblems.problem_5_longestPalindrome(data.s)
            
            XCTAssertEqual(actual, data.expected,
                          "s: \(data.s)")
        }
    }
    
    
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
