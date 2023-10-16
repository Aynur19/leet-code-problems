//
//  Yandex_Problems_Tests.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 20.09.2023.
//

import XCTest
@testable import LeetCodeProblems

final class Yandex_Problems_Tests: XCTestCase {
    
    // MARK: Problem 61: 347. Top K Frequent Elements
    func tests_problem_347_topKFrequent() throws {
        lazy var testsData_problem_347: [(nums: [Int], k: Int, expected: [Int])] = {
            var testsData = [(nums: [Int], k: Int, expected: [Int])]()
            
            testsData.append((nums: [1,1,1,2,2,3], k: 2, expected: [1, 2]))
            testsData.append((nums: [1], k: 1, expected: [1]))
            
            return testsData
        }()
        
        for data in testsData_problem_347 {
            let actual = Yandex_Problems.problem_347_topKFrequent(data.nums, data.k)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
    
    
    // MARK: Problem 97: 1493. Longest Subarray of 1's After Deleting One Element
    func tests_problem_1493_longestSubarray() throws {
        lazy var testsData_problem_1493: [(nums: [Int], expected: Int)] = {
            var testsData = [(nums: [Int], expected: Int)]()
            
            testsData.append((nums: [1, 1, 0, 1], expected: 3))
            testsData.append((nums: [0, 1, 1, 1, 0, 1, 1, 0, 1], expected: 5))
            testsData.append((nums: [1, 1, 1], expected: 2))
            
            return testsData
        }()
        
        for data in testsData_problem_1493 {
            let actual = Yandex_Problems.problem_1493_longestSubarray(data.nums)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
    
    
    // MARK: Problem 63: 356. Line Reflection
    func tests_problem_356_isReflected() throws {
        lazy var testsData_problem_356: [(points: [[Int]], expected: Bool)] = {
            var testsData = [(points: [[Int]], expected: Bool)]()
            
            testsData.append((points: [[1, 1], [-1, 1]],
                              expected: true))
            testsData.append((points: [[1, 1], [-1, -1]],
                              expected: false))
            testsData.append((points: [[1, 1], [1, 1], [-1, 1]],
                              expected: true))
            testsData.append((points: [[1, 1]],
                              expected: true))
            testsData.append((points: [],
                              expected: false))
            
            return testsData
        }()
        
        for data in testsData_problem_356 {
            let actual = Yandex_Problems.problem_356_isReflected(data.points)
            
            XCTAssertEqual(actual, data.expected,
                           "points: \(data.points)")
        }
    }
    
    
    // MARK: Problem 30: 102. Binary Tree Level Order Traversal
    func tests_problem_102_levelOrder() throws {
        lazy var testsData_problem_102: [(root: TreeNode?, expected: [[Int]])] = {
            var testsData = [(root: TreeNode?, expected: [[Int]])]()
            
            testsData.append((root: TreeNode(1, nil, TreeNode(2)),
                              expected: [[1], [2]]))
            testsData.append((root: TreeNode(3,
                                             TreeNode(9),
                                             TreeNode(20, TreeNode(15), TreeNode(7))),
                              expected: [[3], [9, 20], [15, 7]]))
            testsData.append((root: TreeNode(1,
                                             TreeNode(2, TreeNode(4), nil),
                                             TreeNode(3, nil, TreeNode(5))),
                              expected: [[1], [2, 3], [4, 5]]))
            testsData.append((root: TreeNode(1),
                              expected: [[1]]))
            testsData.append((root: nil,
                              expected: []))
            
            return testsData
        }()
        
        for data in testsData_problem_102 {
            let actual = Yandex_Problems.problem_102_levelOrder(data.root)
            
            XCTAssertEqual(actual, data.expected,
                           "root: \(String(describing: data.root))")
        }
    }
    
    
    // MARK: Problem 29: 101. Symmetric Tree
    func tests_problem_101_isSymmetric() throws {
        lazy var testsData_problem_101: [(root: TreeNode?, expected: Bool)] = {
            var testsData = [(root: TreeNode?, expected: Bool)]()
            
            testsData.append((root: TreeNode(1, TreeNode(2, TreeNode(3), TreeNode(4)),
                                             TreeNode(2, TreeNode(4), TreeNode(3))),
                              expected: true))
            testsData.append((root: TreeNode(1, TreeNode(2, nil, TreeNode(3)),
                                             TreeNode(2, nil, TreeNode(3))),
                              expected: false))
            
            return testsData
        }()
        
        for data in testsData_problem_101 {
            let actual = Yandex_Problems.problem_101_isSymmetric(data.root)
            let actual2 = Yandex_Problems.problem_101_isSymmetric2(data.root)
            
            XCTAssertEqual(actual, data.expected,
                           "root: \(String(describing: data.root))")
            XCTAssertEqual(actual2, data.expected,
                           "root: \(String(describing: data.root))")
        }
    }
    
    
    
    // MARK: Problem 28: 100. Same Tree
    func tests_problem_100_isSameTree() throws {
        lazy var testsData_problem_100: [(p: TreeNode?, q: TreeNode?, expected: Bool)] = {
            var testsData = [(p: TreeNode?, q: TreeNode?, expected: Bool)]()
            
            testsData.append((p: TreeNode(1, TreeNode(2), TreeNode(3)),
                              q: TreeNode(1, TreeNode(2), TreeNode(3)),
                              expected: true))
            testsData.append((p: TreeNode(1, TreeNode(2), nil),
                              q: TreeNode(1, nil, TreeNode(2)),
                              expected: false))
            testsData.append((p: TreeNode(1, TreeNode(2), TreeNode(1)),
                              q: TreeNode(1, TreeNode(1), TreeNode(2)),
                              expected: false))
            
            return testsData
        }()
        
        for data in testsData_problem_100 {
            let actual = Yandex_Problems.problem_100_isSameTree(data.p, data.q)
            
            XCTAssertEqual(actual, data.expected,
                           "p: \(String(describing: data.p))")
        }
    }
    
    
    // MARK: Problem 27: 98. Validate Binary Search Tree
    func tests_problem_98_isValidBST() throws {
        lazy var testsData_problem_98: [(root: TreeNode?, expected: Bool)] = {
            var testsData = [(root: TreeNode?, expected: Bool)]()
            
            testsData.append((root: TreeNode(2, TreeNode(1), TreeNode(3)),
                              expected: true))
            testsData.append((root: TreeNode(2, TreeNode(2), TreeNode(2)),
                              expected: false))
            testsData.append((root: TreeNode(5, TreeNode(1), TreeNode(4, TreeNode(3), TreeNode(6))),
                              expected: false))
            testsData.append((root: TreeNode(5, TreeNode(4), TreeNode(6, TreeNode(3), TreeNode(7))),
                              expected: false))
            
            return testsData
        }()
        
        for data in testsData_problem_98 {
            let actual = Yandex_Problems.problem_98_isValidBST(data.root)
            
            XCTAssertEqual(actual, data.expected,
                           "root: \(String(describing: data.root))")
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
    
    
    // MARK: Problem 15: 28. Find the Index of the First Occurrence in a String
    func tests_problem_28_strStr() throws {
        lazy var testsData_problem_28: [(haystack: String, needle: String, expected: Int)] = {
            var testsData = [(haystack: String, needle: String, expected: Int)]()
            
            testsData.append((haystack: "sadbutsad", needle: "sad", expected: 0))
            testsData.append((haystack: "leetcode", needle: "leeto", expected: -1))
            
            return testsData
        }()
        
        for data in testsData_problem_28 {
            let actual = Yandex_Problems.problem_28_strStr(data.haystack, data.needle)
            
            XCTAssertEqual(actual, data.expected,
                           "haystack: \(data.haystack); needle: \(data.needle)")
        }
    }
    
    
    // MARK: Problem 16: 33. Search in Rotated Sorted Array
    func tests_problem_33_search() throws {
        lazy var testsData_problem_33: [(nums: [Int], target: Int, expected: Int)] = {
            var testsData = [(nums: [Int], target: Int, expected: Int)]()
            
            testsData.append((nums: [4, 5, 6, 7, 0, 1, 2],
                              target: 1, expected: 5))
            testsData.append((nums: [4, 5, 6, 7, 8, 1, 2, 3],
                              target: 8, expected: 4))
            
            testsData.append((nums: [4, 5, 6, 7, 0, 1, 2],
                              target: 0, expected: 4))
            testsData.append((nums: [4, 5, 6, 7, 0, 1, 2],
                              target: 3, expected: -1))
            testsData.append((nums: [1], target: 0, expected: -1))
            testsData.append((nums: [1, 3], target: 1, expected: 0))
            testsData.append((nums: [1, 3], target: 2, expected: -1))
            
            return testsData
        }()
        
        for data in testsData_problem_33 {
            let actual = Yandex_Problems.problem_33_search(data.nums, data.target)
            
            XCTAssertEqual(actual, data.expected,
                           "nums: \(data.nums); target: \(data.target)")
        }
    }
    
    
    // MARK: Problem 17: 34. Find First and Last Position of Element in Sorted Array
    func tests_problem_34_searchRange() throws {
        lazy var testsData_problem_34: [(nums: [Int], target: Int, expected: [Int])] = {
            var testsData = [(nums: [Int], target: Int, expected: [Int])]()
            
            testsData.append((nums: [5, 7, 7, 8, 8, 10],
                              target: 8, expected: [3, 4]))
            testsData.append((nums: [5, 7, 7, 8, 8, 10],
                              target: 6, expected: [-1, -1]))
            testsData.append((nums: [],
                              target: 0, expected: [-1, -1]))
            
            testsData.append((nums: [2, 2],
                              target: 2, expected: [0, 1]))
            testsData.append((nums: [1, 4],
                              target: 4, expected: [1, 1]))
            
            return testsData
        }()
        
        for data in testsData_problem_34 {
            let actual = Yandex_Problems.problem_34_searchRange(data.nums, data.target)
            
            XCTAssertEqual(actual, data.expected,
                           "nums: \(data.nums); target: \(data.target)")
        }
    }
    
    
    // MARK: Problem 18: 43. Multiply Strings
    func tests_problem_43_multiply() throws {
        lazy var testsData_problem_43: [(num1: String, num2: String, expected: String)] = {
            var testsData = [(num1: String, num2: String, expected: String)]()
            
            testsData.append((num1: "2", num2: "3", expected: "6"))
            testsData.append((num1: "123", num2: "456", expected: "56088"))
            testsData.append((num1: "498828660196", num2: "840477629533", expected: "419254329864656431168468"))
            testsData.append((num1: "0", num2: "0", expected: "0"))
            
            return testsData
        }()
        
        for data in testsData_problem_43 {
            let actual = Yandex_Problems.problem_43_multiply(data.num1, data.num2)
            
            XCTAssertEqual(actual, data.expected,
                           "num1: \(data.num1); num2: \(data.num2)")
        }
    }
    
    
    // MARK: Problem 19: 48. Rotate Image
    func tests_problem_48_rotate() throws {
        lazy var testsData_problem_48: [(matrix: [[Int]], expected: [[Int]])] = {
            var testsData = [(matrix: [[Int]], expected: [[Int]])]()
            
            testsData.append((matrix: [[1, 2, 3],
                                       [4, 5, 6],
                                       [7, 8, 9]],
                              expected: [[7, 4, 1],
                                         [8, 5, 2],
                                         [9, 6, 3]]))
            
            testsData.append((matrix: [[5, 1, 9, 11],
                                       [2, 4, 8, 10],
                                       [13, 3, 6, 7],
                                       [15, 14, 12, 16]],
                              expected: [[15, 13, 2, 5],
                                         [14, 3, 4, 1],
                                         [12, 6, 8, 9],
                                         [16, 7, 10, 11]]))
            
            return testsData
        }()
        
        for data in testsData_problem_48 {
            var matrix = data.matrix
            Yandex_Problems.problem_48_rotate(&matrix)
            
            XCTAssertEqual(matrix, data.expected,
                           "matrix: \(data.matrix)")
        }
    }
    
    
    // MARK: Problem 20: 49. Group Anagrams
    func tests_problem_49_groupAnagrams() throws {
        lazy var testsData_problem_49: [(strs: [String], expected: [[String]])] = {
            var testsData = [(strs: [String], expected: [[String]])]()
            
            testsData.append((strs: ["eat", "tea", "tan", "ate", "nat", "bat"],
                              expected: [["bat"], ["nat", "tan"], ["ate", "eat", "tea"]]))
            testsData.append((strs: [""], expected: [[""]]))
            testsData.append((strs: ["a"], expected: [["a"]]))
            
            return testsData
        }()
        
        for data in testsData_problem_49 {
            let expected = data.expected.map { $0.sorted().joined() }.sorted()
            let actual = Yandex_Problems.problem_49_groupAnagrams(data.strs).map { $0.sorted().joined() }.sorted()
            let actual2 = Yandex_Problems.problem_49_groupAnagrams2(data.strs).map { $0.sorted().joined() }.sorted()
            
             XCTAssertEqual(actual, expected, "strs: \(data.strs)")
            XCTAssertEqual(actual2, expected, "strs: \(data.strs)")
        }
    }
    
    
    // MARK: Problem 21: 53. Maximum Subarray
    func tests_problem_53_maxSubArray() throws {
        lazy var testsData_problem_53: [(nums: [Int], expected: Int)] = {
            var testsData = [(nums: [Int], expected: Int)]()
            
            testsData.append((nums: [-2, 1, -3, 4, -1, 2, 1, -5, 4],
                              expected: 6))
            testsData.append((nums: [1],
                              expected: 1))
            testsData.append((nums: [5, 4, -1, 7, 8],
                              expected: 23))
            
            return testsData
        }()
        
        for data in testsData_problem_53 {
            let actual = Yandex_Problems.problem_53_maxSubArray(data.nums)
            let actual2 = Yandex_Problems.problem_53_maxSubArray2(data.nums)
            
            XCTAssertEqual(actual, data.expected,
                           "nums: \(data.nums)")
            XCTAssertEqual(actual2, data.expected,
                           "nums: \(data.nums)")
        }
    }
    
    
    // MARK: Problem 22: 56. Merge Intervals
    func tests_problem_56_merge() throws {
        lazy var testsData_problem_56: [(intervals: [[Int]], expected: [[Int]])] = {
            var testsData = [(intervals: [[Int]], expected: [[Int]])]()
            
            testsData.append((intervals: [[1, 3], [2, 6], [8, 10], [15, 18]],
                              expected: [[1, 6], [8, 10], [15, 18]]))
            testsData.append((intervals: [[1, 4], [4, 5]],
                              expected: [[1, 5]]))
            testsData.append((intervals: [[1, 4], [0, 4]],
                              expected: [[0, 4]]))
            
            return testsData
        }()
        
        for data in testsData_problem_56 {
            let actual = Yandex_Problems.problem_56_merge(data.intervals)
            
            XCTAssertEqual(actual, data.expected, "intervals: \(data.intervals)")
        }
    }
    
    
    // MARK: Problem 23: 59. Spiral Matrix II
    func tests_problem_59_generateMatrix() throws {
        lazy var testsData_problem_59: [(n: Int, expected: [[Int]])] = {
            var testsData = [(n: Int, expected: [[Int]])]()
            
            testsData.append((n: 3,
                              expected: [[1, 2, 3], [8, 9, 4], [7, 6, 5]]))
            testsData.append((n: 1,
                              expected: [[1]]))
            testsData.append((n: 4,
                              expected: [
                                [1, 2, 3, 4],
                                [12, 13, 14, 5],
                                [11, 16, 15, 6],
                                [10, 9, 8, 7]]))
            
            return testsData
        }()
        
        for data in testsData_problem_59 {
            let actual = Yandex_Problems.problem_59_generateMatrix(data.n)
            
            XCTAssertEqual(actual, data.expected,
                           "n: \(data.n)")
        }
    }
    
    
    // MARK: Problem 24: 71. Simplify Path
    func tests_problem_71_simplifyPath() throws {
        lazy var testsData_problem_71: [(path: String, expected: String)] = {
            var testsData = [(path: String, expected: String)]()
            
            testsData.append((path: "/home/",
                              expected: "/home"))
            testsData.append((path: "/../",
                              expected: "/"))
            testsData.append((path: "/home//foo/",
                              expected: "/home/foo"))
            testsData.append((path: "../home//foo/",
                              expected: "/home/foo"))
            testsData.append((path: "../home/../foo/",
                              expected: "/foo"))
            testsData.append((path: "/a/./b/../../c/",
                              expected: "/c"))
            
            return testsData
        }()
        
        for data in testsData_problem_71 {
            let actual = Yandex_Problems.problem_71_simplifyPath(data.path)
            
            XCTAssertEqual(actual, data.expected,
                           "path: \(data.path)")
        }
    }
    
    
    // MARK: Problem 25: 74. Search a 2D Matrix
    func tests_problem_74_searchMatrix() throws {
        lazy var testsData_problem_74: [(matrix: [[Int]], target: Int, expected: Bool)] = {
            var testsData = [(matrix: [[Int]], target: Int, expected: Bool)]()
            
            testsData.append((matrix: [[1, 3, 5, 7],
                                       [10, 11, 16, 20],
                                       [23, 30, 34, 60]],
                              target: 3, expected: true))
            testsData.append((matrix: [[1, 3, 5, 7],
                                       [10, 11, 16, 20],
                                       [23, 30, 34, 60]],
                              target: 13, expected: false))
            testsData.append((matrix: [[1]],
                              target: 1, expected: true))
            testsData.append((matrix: [[1, 3]],
                              target: 1, expected: true))
            testsData.append((matrix: [[1], [2]],
                              target: 1, expected: true))
            testsData.append((matrix: [[1], [2]],
                              target: 2, expected: true))
            
            return testsData
        }()
        
        for data in testsData_problem_74 {
            let actual = Yandex_Problems.problem_74_searchMatrix(data.matrix, data.target)
            
            XCTAssertEqual(actual, data.expected,
                           "matrix: \(data.matrix); target: \(data.target)")
        }
    }
    
    
    // MARK: Problem 26: 88. Merge Sorted Array
    func tests_problem_88_merge() throws {
        lazy var testsData_problem_88: [(nums1: [Int], m: Int, nums2: [Int], n: Int, expected: [Int])] = {
            var testsData = [(nums1: [Int], m: Int, nums2: [Int], n: Int, expected: [Int])]()
            
            testsData.append((nums1: [1, 2, 3, 0, 0, 0], m: 3,
                              nums2: [2, 5, 6], n: 3,
                              expected: [1, 2, 2, 3, 5, 6]))
            testsData.append((nums1: [1], m: 1,
                              nums2: [], n: 0,
                              expected: [1]))
            testsData.append((nums1: [0], m: 0,
                              nums2: [1], n: 1,
                              expected: [1]))
            testsData.append((nums1: [-1, 0, 0, 3, 3, 3, 0, 0, 0], m: 6,
                              nums2: [1, 2, 2], n: 3,
                              expected: [-1, 0, 0, 1, 2, 2, 3, 3, 3]))
            testsData.append((nums1: [4, 0, 0, 0, 0, 0], m: 1,
                              nums2: [1, 2, 3, 5, 6], n: 5,
                              expected: [1, 2, 3, 4, 5, 6]))
            
            return testsData
        }()
        
        for data in testsData_problem_88 {
            var nums1 = data.nums1
            Yandex_Problems.problem_88_merge(&nums1, data.m, data.nums2, data.n)
            
            XCTAssertEqual(nums1, data.expected,
                           "nums1: \(data.nums1); nums2: \(data.nums2)")
        }
    }
}

