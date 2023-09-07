//
//  LC75_Stack_Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 07.09.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LC75_Stack_Tests: XCTestCase {
    // MARK: Problem 2390. Removing Stars From a String
    private lazy var testsData_problem_2390: [(s: String, expected: String)] = {
        var testsData = [(s: String, expected: String)]()
        
        testsData.append((s: "leet**cod*e", expected: "lecoe"))
        testsData.append((s: "erase*****", expected: ""))
        
        return testsData
    }()
    
    func tests_problem_2390_removeStars() throws {
        for data in testsData_problem_2390 {
            let actual = LC75_Stack.problem_2390_removeStars(data.s)
            
            XCTAssertEqual(actual, data.expected, "s: \(data.s)")
        }
    }
    
    // MARK: Problem 735. Asteroid Collision
    private lazy var testsData_problem_735: [(asteroids: [Int], expected: [Int])] = {
        var testsData = [(asteroids: [Int], expected: [Int])]()
        
        testsData.append((asteroids: [5, 10, -5], expected: [5, 10]))
        testsData.append((asteroids: [8, -8], expected: []))
        testsData.append((asteroids: [10, 2, -5], expected: [10]))
        testsData.append((asteroids: [-2, -1, 1, 2], expected: [-2, -1, 1, 2]))
        
        return testsData
    }()
    
    func tests_problem_735_asteroidCollision() throws {
        for data in testsData_problem_735 {
            let actual = LC75_Stack.problem_735_asteroidCollision(data.asteroids)
            
            XCTAssertEqual(actual, data.expected, "asteroids: \(data.asteroids)")
        }
    }
}
