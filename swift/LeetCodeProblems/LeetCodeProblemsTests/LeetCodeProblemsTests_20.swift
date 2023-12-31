//
//  LeetCodeProblemsTests_20.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 05.10.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LeetCodeProblemsTests_20: XCTestCase {
    // MARK: Problem 20. Valid Parentheses
    func tests_problem_20_isValid() throws {
        lazy var testsData_problem_20: [(s: String, expected: Bool)] = {
            var testsData = [(s: String, expected: Bool)]()
            
            testsData.append((s: "()", expected: true))
            testsData.append((s: "()[]{}", expected: true))
            testsData.append((s: "(]", expected: false))
            
            return testsData
        }()
        
        for data in testsData_problem_20 {
            let actual = LeetCodeProblems.problem_20_isValid(data.s)
            
            XCTAssertEqual(actual, data.expected,
                           "s: \(data.s)")
        }
    }
    
    
    // MARK: Problem 19. Remove Nth Node From End of List
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
                let actual = LeetCodeProblems.problem_19_removeNthFromEnd(data.head, data.n)
            
                XCTAssertTrue(ListNode.equalListNodes(actual, data.expected),
                              "head: \(String(describing: data.head)), n: \(data.n)")
        }
    }
    
    
    // MARK: Problem 18. 4Sum
    func tests_problem_18_fourSum() throws {
        lazy var testsData_problem_18: [(nums: [Int], target: Int, expected: [[Int]])] = {
            var testsData = [(nums: [Int], target: Int, expected: [[Int]])]()
            
            testsData.append((nums: [1, 0, -1, 0, -2, 2],
                              target: 0,
                              expected: [[-2, -1, 1, 2],
                                         [-2, 0, 0, 2],
                                         [-1, 0, 0, 1]]))
            testsData.append((nums: [2, 2, 2, 2, 2],
                              target: 8,
                              expected: [[2, 2, 2, 2]]))
            testsData.append((nums: [-2, -1, -1, 1, 1, 2, 2],
                              target: 0,
                              expected: [[-2, -1, 1, 2],
                                         [-1, -1, 1, 1]]))
            
            return testsData
        }()
        
        for data in testsData_problem_18 {
            let actual = LeetCodeProblems.problem_18_fourSum(data.nums, data.target).sorted { $0.lexicographicallyPrecedes($1) }
            
            XCTAssertEqual(actual, data.expected,
                           "nums: \(data.nums); target: \(data.target)")
        }
    }
    
    
    // MARK: Problem 17. Letter Combinations of a Phone Number
    func tests_problem_17_letterCombinations() throws {
        lazy var testsData_problem_17: [(digits: String, expected: [String])] = {
            var testsData = [(digits: String, expected: [String])]()
            
            testsData.append((digits: "23",
                              expected: ["ad", "ae", "af",
                                         "bd", "be", "bf",
                                         "cd", "ce", "cf"]))
            testsData.append((digits: "", expected: []))
            testsData.append((digits: "2", expected: ["a", "b", "c"]))
            
            return testsData
        }()
        
        for data in testsData_problem_17 {
            let actual = LeetCodeProblems.problem_17_letterCombinations(data.digits)
            
            XCTAssertEqual(actual, data.expected,
                          "digits: \(data.digits)")
        }
    }
    
    
    // MARK: Problem 16. 3Sum Closest
    func tests_problem_16_threeSumClosest() throws {
        lazy var testsData_problem_16: [(nums: [Int], target: Int, expected:  Int)] = {
            var testsData = [(nums: [Int], target: Int, expected:  Int)]()
            
            testsData.append((nums: [-1, 2, 1, -4], target: 1, expected:  2))
            testsData.append((nums: [0, 0, 0], target: 1, expected:  0))
            
            return testsData
        }()
        
        for data in testsData_problem_16 {
            let actual = LeetCodeProblems.problem_16_threeSumClosest(data.nums, data.target)
            
            XCTAssertEqual(actual, data.expected,
                          "nums: \(data.nums)")
        }
    }
    
    
    // MARK: Problem 15. 3Sum
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
            let actual = LeetCodeProblems.problem_15_threeSum(data.nums)
                .sorted(by: { $0.sorted().lexicographicallyPrecedes($1.sorted()) })
            let expected = data.expected
                .sorted(by: { $0.sorted().lexicographicallyPrecedes($1.sorted()) })
            
            XCTAssertEqual(actual, expected,
                          "nums: \(data.nums)")
        }
    }
    
    
    // MARK: Problem 14. Longest Common Prefix
    func tests_problem_14_longestCommonPrefix() throws {
        lazy var testsData_problem_14: [(strs: [String], expected: String)] = {
            var testsData = [(strs: [String], expected: String)]()
            
            testsData.append((strs: ["flower", "flow", "flight"],
                              expected: "fl"))
            testsData.append((strs: ["dog", "racecar", "car"],
                              expected: ""))
            
            return testsData
        }()
        
        for data in testsData_problem_14 {
            let actual = LeetCodeProblems.problem_14_longestCommonPrefix(data.strs)
            
            XCTAssertEqual(actual, data.expected,
                          "strs: '\(data.strs)'")
        }
    }
    
    
    // MARK: Problem 13. Integer to Roman
    func tests_problem_13_romanToInt() throws {
        lazy var testsData_problem_13: [(s: String, expected: Int)] = {
            var testsData = [(s: String, expected: Int)]()
            
            testsData.append((s: "III", expected: 3))
            testsData.append((s: "LVIII", expected: 58))
            testsData.append((s: "MCMXCIV", expected: 1994))
            
            return testsData
        }()
        
        for data in testsData_problem_13 {
            let actual = LeetCodeProblems.problem_13_romanToInt(data.s)
            let actual2 = LeetCodeProblems.problem_13_romanToInt2(data.s)
            
            XCTAssertEqual(actual, data.expected,
                          "s: \(data.s)")
            XCTAssertEqual(actual2, data.expected,
                          "s: \(data.s)")
        }
    }
    
    
    // MARK: Problem 12. Integer to Roman
    func tests_problem_12_intToRoman() throws {
        lazy var testsData_problem_12: [(num: Int, expected: String)] = {
            var testsData = [(num: Int, expected: String)]()
            
            testsData.append((num: 3, expected: "III"))
            testsData.append((num: 58, expected: "LVIII"))
            testsData.append((num: 1994, expected: "MCMXCIV"))
            
            return testsData
        }()
        
        for data in testsData_problem_12 {
            let actual = LeetCodeProblems.problem_12_intToRoman(data.num)
            
            XCTAssertEqual(actual, data.expected,
                          "num: \(data.num)")
        }
    }
    
    
    // MARK: Problem 11. Container With Most Water
    func tests_problem_11_maxArea() throws {
        lazy var testsData_problem_11: [(height: [Int], expected: Int)] = {
            var testsData = [(height: [Int], expected: Int)]()
            
            testsData.append((height: [1, 8, 6, 2, 5, 4, 8, 3, 7], expected: 49))
            testsData.append((height: [1, 1], expected: 1))
            
            return testsData
        }()
        
        for data in testsData_problem_11 {
            let actual = LeetCodeProblems.problem_11_maxArea(data.height)
            
            XCTAssertEqual(actual, data.expected,
                          "height: \(data.height)")
        }
    }
    
    
    // MARK: Problem 10. Regular Expression Matching
    func tests_problem_10_cleanPattern() throws {
        lazy var testsData_problem_10: [(s: String, p: String, expected: Bool)] = {
            var testsData = [(s: String, p: String, expected: Bool)]()
            
            testsData.append((s: "aa", p: "a", expected: false))
            testsData.append((s: "aa", p: "a*", expected: true))
            testsData.append((s: "ab", p: ".*", expected: true))
            
            return testsData
        }()
        
        for data in testsData_problem_10 {
            let actual = LeetCodeProblems.problem_10_cleanPattern(data.s, data.p)
            
            XCTAssertEqual(actual, data.expected,
                           "s: '\(data.s)'; p: '\(data.p)'")
        }
    }
    
    
    // MARK: Problem 9. Palindrome Number
    func tests_problem_9_isPalindrome() throws {
        lazy var testsData_problem_9: [(x: Int, expected: Bool)] = {
            var testsData = [(x: Int, expected: Bool)]()
            
            testsData.append((x: 121, expected: true))
            testsData.append((x: -121, expected: false))
            testsData.append((x: 10, expected: false))
            
            return testsData
        }()
        
        for data in testsData_problem_9 {
            let actual = LeetCodeProblems.problem_9_isPalindrome(data.x)
            
            XCTAssertEqual(actual, data.expected,
                           "x: \(data.x)")
        }
    }
    
    
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
