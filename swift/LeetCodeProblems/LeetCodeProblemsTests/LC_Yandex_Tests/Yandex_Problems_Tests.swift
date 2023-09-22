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
    
    
    // MARK: Problem 5: 11. Container With Most Water
    func tests_problem_11_maxArea() throws {
        lazy var testsData_problem_11: [(height: [Int], expected: Int)] = {
            var testsData = [(height: [Int], expected: Int)]()
            
            testsData.append((height: [1, 8, 6, 2, 5, 4, 8, 3, 7], expected: 49))
            testsData.append((height: [1, 1], expected: 1))
            
            return testsData
        }()
        
        for data in testsData_problem_11 {
            let actual = Yandex_Problems.problem_11_maxArea(data.height)
            
            XCTAssertEqual(actual, data.expected,
                          "height: \(data.height)")
        }
    }
    
    
    // MARK: Problem 6: 12. Integer to Roman
    func tests_problem_12_intToRoman() throws {
        lazy var testsData_problem_12: [(num: Int, expected: String)] = {
            var testsData = [(num: Int, expected: String)]()
            
            testsData.append((num: 3, expected: "III"))
            testsData.append((num: 58, expected: "LVIII"))
            testsData.append((num: 1994, expected: "MCMXCIV"))
            
            return testsData
        }()
        
        for data in testsData_problem_12 {
            let actual = Yandex_Problems.problem_12_intToRoman(data.num)
            
            XCTAssertEqual(actual, data.expected,
                          "num: \(data.num)")
        }
    }
    
    
    // MARK: Problem 7: 13. Integer to Roman
    func tests_problem_13_romanToInt() throws {
        lazy var testsData_problem_13: [(s: String, expected: Int)] = {
            var testsData = [(s: String, expected: Int)]()
            
            testsData.append((s: "III", expected: 3))
            testsData.append((s: "LVIII", expected: 58))
            testsData.append((s: "MCMXCIV", expected: 1994))
            
            return testsData
        }()
        
        for data in testsData_problem_13 {
            let actual = Yandex_Problems.problem_13_romanToInt(data.s)
            let actual2 = Yandex_Problems.problem_13_romanToInt2(data.s)
            
            XCTAssertEqual(actual, data.expected,
                          "s: \(data.s)")
            XCTAssertEqual(actual2, data.expected,
                          "s: \(data.s)")
        }
    }
    
    
    // MARK: Problem 8: 15. 3Sum
    func tests_problem_15_threeSum() throws {
        lazy var testsData_problem_15: [(nums: [Int], expected:  [[Int]])] = {
            var testsData = [(nums: [Int], expected:  [[Int]])]()
            
            testsData.append((nums: [-1, 0, 1, 2, -1, -4], expected: [[-1, -1, 2], [-1, 0, 1]]))
            testsData.append((nums: [0, 1, 1], expected:  []))
            testsData.append((nums: [0, 0, 0], expected:  [[0, 0, 0]]))
            testsData.append((nums: [-1, 0, 1, 0], expected:  [[-1, 0, 1]]))
            testsData.append((nums: [1, -1, -1, 0], expected:  [[-1, 0, 1]]))
            testsData.append((nums: [-2, 0, 1, 1, 2], expected:  [[-2, 0, 2], [-2, 1, 1]]))
            
            return testsData
        }()
        
        for data in testsData_problem_15 {
            let actual = Yandex_Problems.problem_15_threeSum(data.nums)
                .sorted(by: { $0.sorted().lexicographicallyPrecedes($1.sorted()) })
            let expected = data.expected
                .sorted(by: { $0.sorted().lexicographicallyPrecedes($1.sorted()) })
            
            XCTAssertEqual(actual, expected,
                          "nums: \(data.nums)")
        }
    }
    
    
    // MARK: Problem 9: 16. 3Sum Closest
    func tests_problem_16_threeSumClosest() throws {
        lazy var testsData_problem_16: [(nums: [Int], target: Int, expected:  Int)] = {
            var testsData = [(nums: [Int], target: Int, expected:  Int)]()
            
            testsData.append((nums: [-1, 2, 1, -4], target: 1, expected:  2))
            testsData.append((nums: [0, 0, 0], target: 1, expected:  0))
            
            return testsData
        }()
        
        for data in testsData_problem_16 {
            let actual = Yandex_Problems.problem_16_threeSumClosest(data.nums, data.target)
            
            XCTAssertEqual(actual, data.expected,
                          "nums: \(data.nums)")
        }
    }
    
    
    // MARK: Problem 10: 19. Remove Nth Node From End of List
    func tests_problem_19_removeNthFromEnd() throws {
        lazy var testsData_problem_19: [(head: ListNode?, n: Int, expected: ListNode?)] = {
            var testsData = [(head: ListNode?, n: Int, expected: ListNode?)]()
            
            testsData.append((head: ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5))))),
                              n: 2,
                              expected: ListNode(1, ListNode(2, ListNode(3, ListNode(5))))))
            
            testsData.append((head: ListNode(1),
                              n: 1,
                              expected: nil))
            
            testsData.append((head: ListNode(1, ListNode(2)),
                              n: 1,
                              expected: ListNode(1)))
            
            testsData.append((head: ListNode(1, ListNode(2)),
                              n: 2,
                              expected: ListNode(2)))
            
            return testsData
        }()
        
        for data in testsData_problem_19 {
                let actual = Yandex_Problems.problem_19_removeNthFromEnd(data.head, data.n)
            
                XCTAssertTrue(ListNode.equalListNodes(actual, data.expected),
                              "head: \(String(describing: data.head)), n: \(data.n)")
        }
    }
    
    
    // MARK: Problem 11: 20. Valid Parentheses
    func tests_problem_20_isValid() throws {
        lazy var testsData_problem_20: [(s: String, expected: Bool)] = {
            var testsData = [(s: String, expected: Bool)]()
            
            testsData.append((s: "()", expected: true))
            testsData.append((s: "()[]{}", expected: true))
            testsData.append((s: "(]", expected: false))
            
            return testsData
        }()
        
        for data in testsData_problem_20 {
            let actual = Yandex_Problems.problem_20_isValid(data.s)
            
            XCTAssertEqual(actual, data.expected,
                           "s: \(data.s)")
        }
    }
    
    
    // MARK: Problem 12: 21. Merge Two Sorted Lists
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
            let actual = Yandex_Problems.problem_21_mergeTwoLists(data.list1, data.list2)
            
            XCTAssertTrue(ListNode.equalListNodes(actual, data.expected),
                          "list1: \(String(describing: data.list1)); list2: \(String(describing: data.list2))")
        }
    }
    

    // MARK: Problem 13: 22. Generate Parentheses
    func tests_problem_22_generateParenthesis() throws {
        lazy var testsData_problem_22: [(n: Int, expected: [String])] = {
            var testsData = [(n: Int, expected: [String])]()
            
            testsData.append((n: 3, expected: ["((()))", "(()())", "(())()", "()(())", "()()()"]))
            testsData.append((n: 1, expected: ["()"]))
            
            return testsData
        }()
        
        for data in testsData_problem_22 {
            let actual = Yandex_Problems.problem_22_generateParenthesis(data.n)
            let actual2 = Yandex_Problems.problem_22_generateParenthesis2(data.n)
            
            XCTAssertEqual(actual, data.expected, "n: \(data.n)")
            XCTAssertEqual(actual2, data.expected, "n: \(data.n)")
        }
    }
    
    
    // MARK: Problem 14: 26. Remove Duplicates from Sorted Array
    func tests_problem_26_removeDuplicates() throws {
        lazy var testsData_problem_26: [(nums: [Int], expected: Int, expectedNums: [Int])] = {
            var testsData = [(nums: [Int], expected: Int, expectedNums: [Int])]()
            
            testsData.append((nums: [1, 1, 2],
                              expected: 2,
                              expectedNums: [1, 2]))
            testsData.append((nums: [0, 0, 1, 1, 1, 2, 2, 3, 3, 4],
                              expected: 5,
                              expectedNums: [0, 1, 2, 3, 4]))
            
            return testsData
        }()
        
        for data in testsData_problem_26 {
            var nums = data.nums
            let actual = Yandex_Problems.problem_26_removeDuplicates(&nums)
            
            XCTAssertEqual(actual, data.expected, "nums: \(data.nums)")
            XCTAssertEqual(Array(nums[0..<actual]), data.expectedNums, "nums: \(data.nums)")
        }
    }
}
