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
}
