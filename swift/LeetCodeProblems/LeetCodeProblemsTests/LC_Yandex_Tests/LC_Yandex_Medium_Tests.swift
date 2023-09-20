//
//  LC_Yandex_Medium_Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 12.09.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LC_Yandex_Medium_Tests: XCTestCase {
    // MARK: Problem 849. Maximize Distance to Closest Person
    lazy var testsData_problem_849: [(seats: [Int], expected: Int)] = {
        var testsData = [(seats: [Int], expected: Int)]()
        
        testsData.append((seats: [1, 0, 0, 0, 1, 0, 1], expected: 2))
        testsData.append((seats: [1, 0, 0, 0], expected: 3))
        testsData.append((seats: [0, 1], expected: 1))
        
        return testsData
    }()
    
    func tests_problem_849_maxDistToClosest() throws {
        for data in testsData_problem_849 {
            let actual = LC_Yandex_Medium.problem_849_maxDistToClosest(data.seats)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
    
    
    // MARK: Problem 1493. Longest Subarray of 1's After Deleting One Element
    lazy var testsData_problem_1493: [(nums: [Int], expected: Int)] = {
        var testsData = [(nums: [Int], expected: Int)]()
        
        testsData.append((nums: [1, 1, 0, 1], expected: 3))
        testsData.append((nums: [0, 1, 1, 1, 0, 1, 1, 0, 1], expected: 5))
        testsData.append((nums: [1, 1, 1], expected: 2))
        
        return testsData
    }()
    
    func tests_problem_1493_longestSubarray() throws {
        for data in testsData_problem_1493 {
            let actual = LC_Yandex_Medium.problem_1493_longestSubarray(data.nums)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
    
    
    // MARK: Problem 443. String Compression
    lazy var testsData_problem_443: [(chars: [Character], expected: Int, expectedChars: [Character])] = {
        var testsData = [(chars: [Character], expected: Int, expectedChars: [Character])]()
        
        testsData.append((chars: ["a", "a", "b", "b", "c", "c", "c"],
                          expected: 6, expectedChars: ["a", "2", "b", "2", "c", "3"]))
        testsData.append((chars: ["a"],
                          expected: 1, expectedChars: ["a"]))
        testsData.append((chars: ["a", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b"],
                          expected: 4, expectedChars: ["a", "b", "1", "2"]))
        
        return testsData
    }()
    
    func tests_problem_443_compress() throws {
        for data in testsData_problem_443 {
            var chars = data.chars
            let actual = LC_Yandex_Medium.problem_443_compress(&chars)
            
            XCTAssertEqual(actual, data.expected)
            XCTAssertEqual(Array(chars[0..<data.expectedChars.count]), data.expectedChars)
        }
    }
    
    
    // MARK: Problem 567. Permutation in String
    lazy var testsData_problem_567: [(s1: String, s2: String, expected: Bool)] = {
        var testsData = [(s1: String, s2: String, expected: Bool)]()
        
        testsData.append((s1: "ab", s2: "eidbaooo", expected: true))
        testsData.append((s1: "ab", s2: "eidboaoo", expected: false))
        testsData.append((s1: "adc", s2: "dcda", expected: true))
        testsData.append((s1: "hello", s2: "ooolleoooleh", expected: false))
        testsData.append((s1: "abc", s2: "cccccbabbbaaaa", expected: true))
        testsData.append((s1: "trinitrophenylmethylnitramine", s2: "dinitrophenylhydrazinetrinitrophenylmethylnitramine", expected: true))
        
        return testsData
    }()
    
    func tests_problem_567_checkInclusion() throws {
        for data in testsData_problem_567 {
            let actual = LC_Yandex_Medium.problem_567_checkInclusion(data.s1, data.s2)
            
            XCTAssertEqual(actual, data.expected, "s1: \(data.s1), s2: \(data.s2)")
        }
    }
    
    
    // MARK: Problem 986. Interval List Intersections
    lazy var testsData_problem_986: [(firstList: [[Int]], secondList: [[Int]], expected: [[Int]])] = {
        var testsData = [(firstList: [[Int]], secondList: [[Int]], expected: [[Int]])]()
        
        testsData.append((firstList: [[0, 2], [5, 10], [13, 23], [24, 25]],
                          secondList: [[1, 5], [8, 12], [15, 24], [25, 26]],
                          expected: [[1, 2], [5, 5], [8, 10], [15, 23], [24, 24], [25, 25]]))
        
        testsData.append((firstList: [[1, 3], [5, 9]],
                          secondList: [],
                          expected: []))
        
        return testsData
    }()
    
    func tests_problem_986_intervalIntersection() throws {
        for data in testsData_problem_986 {
            let actual = LC_Yandex_Medium.problem_986_intervalIntersection(data.firstList, data.secondList)
            
            XCTAssertEqual(actual, data.expected, "firstList: \(data.firstList), secondList: \(data.secondList)")
        }
    }
    
    
    // MARK: Problem 560. Subarray Sum Equals K
    lazy var testsData_problem_560: [(nums: [Int], k: Int, expected: Int)] = {
        var testsData = [(nums: [Int], k: Int, expected: Int)]()
        
        testsData.append((nums: [1, 1, 1], k: 2, expected: 2))
        testsData.append((nums: [1, 2, 3], k: 3, expected: 2))
        
        return testsData
    }()
    
    func tests_problem_560_subarraySum() throws {
        for data in testsData_problem_560 {
            let actual = LC_Yandex_Medium.problem_560_subarraySum(data.nums, data.k)
            
            XCTAssertEqual(actual, data.expected, "nums: \(data.nums), k: \(data.k)")
        }
    }
    
    
    // MARK: Problem 438. Find All Anagrams in a String
    lazy var testsData_problem_438: [(s: String, p: String, expected: [Int])] = {
        var testsData = [(s: String, p: String, expected: [Int])]()
        
        testsData.append((s: "cbaebabacd", p: "abc", expected: [0, 6]))
        testsData.append((s: "abab", p: "ab", expected: [0, 1, 2]))
        testsData.append((s: "abacbabc", p: "abc", expected: [1, 2, 3, 5]))
        
        return testsData
    }()
    
    func tests_problem_438_findAnagrams() throws {
        for data in testsData_problem_438 {
            let actual = LC_Yandex_Medium.problem_438_findAnagrams(data.s, data.p)
            
            XCTAssertEqual(actual, data.expected, "s: \(data.s), p: \(data.p)")
        }
    }
    
    
    // MARK: Problem 146. LRU Cache
    lazy var testsData_problem_146: [(commands: [String], args: [[Int]], expected: [Int])] = {
        var testsData = [(commands: [String], args: [[Int]], expected: [Int])]()
        
        testsData.append((commands: ["LRUCache", "put", "put", "get", "put", "get", "put", "get", "get", "get"],
                          args: [[2], [1, 1], [2, 2], [1], [3, 3], [2], [4, 4], [1], [3], [4]],
                          expected: [1, -1, -1, 3, 4]))
        
        testsData.append((commands: ["LRUCache", "put", "put", "put", "put", "get", "get", "get", "get", "put", "get", "get", "get", "get", "get"],
                          args: [[3], [1, 1], [2, 2], [3, 3], [4, 4], [4], [3], [2], [1], [5, 5], [1], [2], [3], [4], [5]],
                          expected: [4, 3, 2, -1, -1, 2, 3, -1, 5]))
        
        testsData.append((commands: ["LRUCache", "get", "get", "put", "get", "put", "put", "put", "put", "get", "put"],
                          args: [[1], [6], [8], [12, 1], [2], [15, 11], [5, 2], [1, 15], [4, 2], [5], [15, 15]],
                          expected: [-1, -1, -1, -1]))
        
        return testsData
    }()
    
    func tests_problem_146_LRUCache() throws {
        for data in testsData_problem_146 {
            var actual = [Int]()
            let lruCache = LRUCache(data.args[0][0])
            
            for i in 1..<data.commands.count {
                if data.commands[i] == "put" {
                    lruCache.put(data.args[i][0], data.args[i][1])
                } else if data.commands[i] == "get" {
                    actual.append(lruCache.get(data.args[i][0]))
                }
            }
            
            XCTAssertEqual(actual, data.expected, "commands: \(data.commands), args: \(data.args)")
        }
    }
    
    
    // MARK: Problem 380. Insert Delete GetRandom O(1)
    lazy var testsData_problem_380: [(commands: [String], args: [[Int]], expected: [String])] = {
        var testsData = [(commands: [String], args: [[Int]], expected: [String])]()
        
        testsData.append((commands: ["RandomizedSet", "insert", "remove", "insert", "getRandom", "remove", "insert", "getRandom"],
                          args: [[], [1], [2], [2], [], [1], [2], []],
                          expected: ["true", "false", "true", "true", "false"]))
        
        return testsData
    }()
    
    func tests_problem_380_RandomizedSet() throws {
        for data in testsData_problem_380 {
            var actual = [String]()
            let randomSet = RandomizedSet()
            
            for i in 1..<data.commands.count {
                if data.commands[i] == "insert" {
                    actual.append("\(randomSet.insert(data.args[i][0]))")
                } else if data.commands[i] == "remove" {
                    actual.append("\(randomSet.remove(data.args[i][0]))")
                } else if data.commands[i] == "getRandom" {
                    _ = randomSet.getRandom()
                }
            }
            
            XCTAssertEqual(actual, data.expected, "commands: \(data.commands), args: \(data.args)")
        }
    }
    
    
    // MARK: Problem 22. Generate Parentheses
    lazy var testsData_problem_22: [(n: Int, expected: [String])] = {
        var testsData = [(n: Int, expected: [String])]()
        
        testsData.append((n: 3, expected: ["((()))", "(()())", "(())()", "()(())", "()()()"]))
        testsData.append((n: 1, expected: ["()"]))
        
        return testsData
    }()
    
    func tests_problem_22_generateParenthesis() throws {
        for data in testsData_problem_22 {
            let actual = Yandex_Problems.problem_22_generateParenthesis(data.n)
            
            XCTAssertEqual(actual, data.expected, "n: \(data.n)")
        }
    }
    
    func tests_problem_22_generateParenthesis2() throws {
        for data in testsData_problem_22 {
            let actual = Yandex_Problems.problem_22_generateParenthesis2(data.n)
            
            XCTAssertEqual(actual, data.expected, "n: \(data.n)")
        }
    }
    
    
    // MARK: Problem 49. Group Anagrams
    lazy var testsData_problem_49: [(strs: [String], expected: [[String]])] = {
        var testsData = [(strs: [String], expected: [[String]])]()
        
        testsData.append((strs: ["eat", "tea", "tan", "ate", "nat", "bat"],
                          expected: [["bat"], ["nat", "tan"], ["ate", "eat", "tea"]]))
        testsData.append((strs: [""], expected: [[""]]))
        testsData.append((strs: ["a"], expected: [["a"]]))
        
        return testsData
    }()
    
    func tests_problem_49_groupAnagrams() throws {
        for data in testsData_problem_49 {
            let actual = Yandex_Problems.problem_49_groupAnagrams(data.strs).map { $0.sorted().joined() }.sorted()
            let expected = data.expected.map { $0.sorted().joined() }.sorted()
            
            XCTAssertEqual(actual, expected, "strs: \(data.strs)")
        }
    }
    
    func tests_problem_49_groupAnagrams2() throws {
        for data in testsData_problem_49 {
            let actual = Yandex_Problems.problem_49_groupAnagrams2(data.strs).map { $0.sorted().joined() }.sorted()
            let expected = data.expected.map { $0.sorted().joined() }.sorted()
            
            XCTAssertEqual(actual, expected, "strs: \(data.strs)")
        }
    }
    
    
    // MARK: Problem 125. Valid Palindrome
    lazy var testsData_problem_125: [(s: String, expected: Bool)] = {
        var testsData = [(s: String, expected: Bool)]()
        
        testsData.append((s: "A man, a plan, a canal: Panama", expected: true))
        testsData.append((s: "race a car", expected: false))
        testsData.append((s: " ", expected: true))
        
        return testsData
    }()
    
    func tests_problem_125_isPalindrome() throws {
        for data in testsData_problem_125 {
            let actual = Yandex_Problems.problem_125_isPalindrome(data.s)
            
            XCTAssertEqual(actual, data.expected, "s: \(data.s)")
        }
    }
    
    func tests_problem_125_isPalindrome2() throws {
        for data in testsData_problem_125 {
            let actual = Yandex_Problems.problem_125_isPalindrome2(data.s)
            
            XCTAssertEqual(actual, data.expected, "s: \(data.s)")
        }
    }
}
