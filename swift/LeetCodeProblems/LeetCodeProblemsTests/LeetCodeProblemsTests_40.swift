//
//  LeetCodeProblemsTests_40.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 16.10.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LeetCodeProblemsTests_40: XCTestCase {
    // MARK: Problem 29. Divide Two Integers
    func tests_problem_29_divide() throws {
        lazy var testsData_problem_29: [(dividend: Int, divisor: Int, expected: Int)] = {
            var testsData = [(dividend: Int, divisor: Int, expected: Int)]()
            
            testsData.append((
                dividend: 10,
                divisor: 3,
                expected: 3
            ))
            testsData.append((
                dividend: 7,
                divisor: -3,
                expected: -2
            ))
            testsData.append((
                dividend: 1004958205,
                divisor: -2137325331,
                expected: 0
            ))
            testsData.append((
                dividend: -1,
                divisor: 1,
                expected: -1
            ))
            testsData.append((
                dividend: -2147483648,
                divisor: 2,
                expected: -1073741824
            ))
            
            return testsData
        }()
        
        for data in testsData_problem_29 {
            let actual = LeetCodeProblems.problem_29_divide(data.dividend, data.divisor)
            
            XCTAssertEqual(actual, data.expected,
                           "dividend: \(data.dividend); divisor: \(data.divisor)")
        }
    }
    
    
    // MARK: Problem 28. Find the Index of the First Occurrence in a String
    func tests_problem_28_strStr() throws {
        lazy var testsData_problem_28: [(haystack: String, needle: String, expected: Int)] = {
            var testsData = [(haystack: String, needle: String, expected: Int)]()
            
            testsData.append((
                haystack: "sadbutsad",
                needle: "sad",
                expected: 0
            ))
            testsData.append((
                haystack: "leetcode",
                needle: "leeto",
                expected: -1
            ))
            
            return testsData
        }()
        
        for data in testsData_problem_28 {
            let actual = LeetCodeProblems.problem_28_strStr(data.haystack, data.needle)
            
            XCTAssertEqual(actual, data.expected,
                           "haystack: \(data.haystack); needle: \(data.needle)")
        }
    }
    
    
    // MARK: Problem 26. Remove Duplicates from Sorted Array
    func tests_problem_27_removeElement() throws {
        lazy var testsData_problem_27: [(nums: [Int], val: Int, expected: Int, expectedNums: [Int])] = {
            var testsData = [(nums: [Int], val: Int, expected: Int, expectedNums: [Int])]()
            
            testsData.append((
                nums: [3, 2, 2, 3],
                val: 3,
                expected: 2,
                expectedNums: [2, 2]
            ))
            testsData.append((
                nums: [0, 1, 2, 2, 3, 0, 4, 2],
                val: 2,
                expected: 5,
                expectedNums: [0, 1, 3, 0, 4]
            ))
            
            return testsData
        }()
        
        for data in testsData_problem_27 {
            var nums = data.nums
            let actual = LeetCodeProblems.problem_27_removeElement(&nums, data.val)
            
            XCTAssertEqual(actual, data.expected, "nums: \(data.nums)")
            XCTAssertEqual(Array(nums[0..<actual]), data.expectedNums, "nums: \(data.nums)")
        }
    }
    
    
    // MARK: Problem 26. Remove Duplicates from Sorted Array
    func tests_problem_26_removeDuplicates() throws {
        lazy var testsData_problem_26: [(nums: [Int], expected: Int, expectedNums: [Int])] = {
            var testsData = [(nums: [Int], expected: Int, expectedNums: [Int])]()
            
            testsData.append((
                nums: [1, 1, 2],
                expected: 2,
                expectedNums: [1, 2]
            ))
            testsData.append((
                nums: [0, 0, 1, 1, 1, 2, 2, 3, 3, 4],
                expected: 5,
                expectedNums: [0, 1, 2, 3, 4]
            ))
            
            return testsData
        }()
        
        for data in testsData_problem_26 {
            var nums = data.nums
            let actual = LeetCodeProblems.problem_26_removeDuplicates(&nums)
            
            XCTAssertEqual(actual, data.expected, "nums: \(data.nums)")
            XCTAssertEqual(Array(nums[0..<actual]), data.expectedNums, "nums: \(data.nums)")
        }
    }
    
    
    // MARK: Problem 25. Reverse Nodes in k-Group
    func tests_problem_25_reverseKGroup() throws {
        lazy var testsData_problem_25: [(head: ListNode?, k: Int, expected: ListNode?)] = {
            var testsData = [(head: ListNode?, k: Int, expected: ListNode?)]()
            
            testsData.append((
                head: ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5))))),
                k: 2,
                expected: ListNode(2, ListNode(1, ListNode(4, ListNode(3, ListNode(5)))))
            ))
            testsData.append((
                head: ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5))))),
                k: 3,
                expected: ListNode(3, ListNode(2, ListNode(1, ListNode(4, ListNode(5)))))
            ))
            
            return testsData
        }()
        
        for data in testsData_problem_25 {
            let actual = LeetCodeProblems.problem_25_reverseKGroup(data.head, data.k)
            
            XCTAssertTrue(ListNode.equalListNodes(actual, data.expected),
                          "head: \(String(describing: data.head)), k: \(data.k)")
        }
    }
    
    
    // MARK: Problem 24. Swap Nodes in Pairs
    func tests_problem_24_swapPairs() throws {
        lazy var testsData_problem_24: [(head: ListNode?, expected: ListNode?)] = {
            var testsData = [(head: ListNode?, expected: ListNode?)]()
            
            testsData.append((
                head: ListNode(1, ListNode(2, ListNode(3, ListNode(4)))),
                expected: ListNode(2, ListNode(1, ListNode(4, ListNode(3))))
            ))
            testsData.append((
                head: nil,
                expected: nil
            ))
            testsData.append((
                head: ListNode(1),
                expected: ListNode(1)
            ))
            
            return testsData
        }()
        
        for data in testsData_problem_24 {
            let actual = LeetCodeProblems.problem_24_swapPairs(data.head)
            
            XCTAssertTrue(ListNode.equalListNodes(actual, data.expected),
                          "head: \(String(describing: data.head))")
        }
    }
    
    
    // MARK: Problem 23. Merge k Sorted Lists
    func tests_problem_23_mergeKLists() throws {
        lazy var testsData_problem_23: [(lists: [ListNode?], expected: ListNode?)] = {
            var testsData = [(lists: [ListNode?], expected: ListNode?)]()
            
            testsData.append((lists: [
                ListNode(1, ListNode(4, ListNode(5))),
                ListNode(1, ListNode(3, ListNode(4))),
                ListNode(2, ListNode(6))
            ],
                              expected: ListNode(1, ListNode(1, ListNode(2,
                                        ListNode(3, ListNode(4, ListNode(4,
                                        ListNode(5, ListNode(6))))))))
                             ))
            testsData.append((lists: [], expected: nil))
            testsData.append((lists: [nil], expected: nil))
            
            return testsData
        }()
        
        for data in testsData_problem_23 {
            let actual = LeetCodeProblems.problem_23_mergeKLists(data.lists)
            
            XCTAssertTrue(ListNode.equalListNodes(actual, data.expected),
                          "lists: \(data.lists)")
        }
    }
    
    
    // MARK: Problem 22. Generate Parentheses
    func tests_problem_22_generateParenthesis() throws {
        lazy var testsData_problem_22: [(n: Int, expected: [String])] = {
            var testsData = [(n: Int, expected: [String])]()
            
            testsData.append((n: 3, expected: ["((()))", "(()())", "(())()", "()(())", "()()()"]))
            testsData.append((n: 1, expected: ["()"]))
            
            return testsData
        }()
        
        for data in testsData_problem_22 {
            let actual = LeetCodeProblems.problem_22_generateParenthesis(data.n)
            let actual2 = LeetCodeProblems.problem_22_generateParenthesis2(data.n)
            
            XCTAssertEqual(actual, data.expected, "n: \(data.n)")
            XCTAssertEqual(actual2, data.expected, "n: \(data.n)")
        }
    }
    
    
    // MARK: Problem 21. Merge Two Sorted Lists
    func tests_problem_21_mergeTwoLists() throws {
        lazy var testsData_problem_21: [(list1: ListNode?, list2: ListNode?, expected: ListNode?)] = {
            var testsData = [(list1: ListNode?, list2: ListNode?, expected: ListNode?)]()
            
            testsData.append((list1: ListNode(1, ListNode(2, ListNode(4))),
                              list2: ListNode(1, ListNode(3, ListNode(4))),
                              expected: ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(4))))))))
            
            testsData.append((list1: nil, list2: nil, expected: nil))
            testsData.append((list1: nil, list2: ListNode(0), expected: ListNode(0)))
            
            return testsData
        }()
        
        for data in testsData_problem_21 {
            let actual = LeetCodeProblems.problem_21_mergeTwoLists(data.list1, data.list2)
            
            XCTAssertTrue(ListNode.equalListNodes(actual, data.expected),
                          "list1: \(String(describing: data.list1)); list2: \(String(describing: data.list2))")
        }
    }
}
