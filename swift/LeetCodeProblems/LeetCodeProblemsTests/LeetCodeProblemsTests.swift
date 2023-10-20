//
//  LeetCodeProblemsTests.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 19.10.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LeetCodeProblemsTests: XCTestCase {
    // MARK: Problem 844. Backspace String Compare
    func tests_problem_844_backspaceCompare() throws {
        lazy var testsData_problem_844: [(s: String, t: String, expected: Bool)] = {
            var testsData = [(s: String, t: String, expected: Bool)]()
            
            testsData.append((
                s: "ab#c",
                t: "ad#c",
                expected: true
            ))

            testsData.append((
                s: "ab##",
                t: "c#d#",
                expected: true
            ))

            testsData.append((
                s: "a#c",
                t: "b",
                expected: false
            ))

            testsData.append((
                s: "xywrrmp",
                t: "xywrrmu#p",
                expected: true
            ))

            testsData.append((
                s: "xywrrmp",
                t: "xywrrm#p",
                expected: false
            ))

            testsData.append((
                s: "bxj##tw",
                t: "bxj###tw",
                expected: false
            ))
            
            testsData.append((
                s: "a##c",
                t: "#a#c",
                expected: true
            ))
            
            testsData.append((
                s: "gtc#uz#",
                t: "gtcm##uz#",
                expected: true
            ))
            
            testsData.append((
                s: "ab##",
                t: "c#d#",
                expected: true
            ))
            
            testsData.append((
                s: "y#fo##f",
                t: "y#fx#o##f",
                expected: true
            ))
            
            return testsData
        }()
        
        for data in testsData_problem_844 {
            let actual = LeetCodeProblems.problem_844_backspaceCompare(data.s, data.t)
            
            XCTAssertEqual(actual, data.expected,
                           "s: '\(data.s)'; t: '\(data.t)'")
        }
    }
}
