//
//  LC75_LinkedList_Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 08.09.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LC75_LinkedList_Tests: XCTestCase {
    // MARK: Problem 2095. Delete the Middle Node of a Linked List
    private lazy var testsData_problem_2095: [(head: ListNode?, expected: ListNode?)] = {
        var testsData = [(head: ListNode?, expected: ListNode?)]()
        
        testsData.append((head: ListNode(1, ListNode(3, ListNode(4, ListNode(7, ListNode(1, ListNode(2, ListNode(6))))))),
                          expected: ListNode(1, ListNode(3, ListNode(4, ListNode(1, ListNode(2, ListNode(6))))))))
        testsData.append((head: ListNode(1, ListNode(2, ListNode(3, ListNode(4)))),
                          expected: ListNode(1, ListNode(2, ListNode(4)))))
        testsData.append((head: ListNode(2, ListNode(1)),
                          expected: ListNode(2)))
        testsData.append((head: ListNode(1),
                          expected: ListNode?.none))
        
        return testsData
    }()
    
    func tests_problem_2095_deleteMiddle() throws {
        for data in testsData_problem_2095 {
            let actual = LC75_LinkedList.problem_2095_deleteMiddle(data.head)
            
            XCTAssertTrue(ListNode.equalListNodes(actual, data.expected), "head: \(String(describing: data.head))")
        }
    }
    
    
    // MARK: Problem 328. Odd Even Linked List
    private lazy var testsData_problem_328: [(head: ListNode?, expected: ListNode?)] = {
        var testsData = [(head: ListNode?, expected: ListNode?)]()
        
        testsData.append((head: ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5))))),
                          expected: ListNode(1, ListNode(3, ListNode(5, ListNode(2, ListNode(4)))))))
        
        testsData.append((head: ListNode(2, ListNode(1, ListNode(3, ListNode(5, ListNode(6, ListNode(4, ListNode(7))))))),
                          expected: ListNode(2, ListNode(3, ListNode(6, ListNode(7, ListNode(1, ListNode(5, ListNode(4)))))))))
        
        testsData.append((head: ListNode(1, ListNode(1)),
                          expected: ListNode(1, ListNode(1))))
        
        return testsData
    }()
    
    func tests_problem_328_oddEvenList() throws {
        for data in testsData_problem_328 {
            let actual = LC75_LinkedList.problem_328_oddEvenList(data.head)
            
            XCTAssertTrue(ListNode.equalListNodes(actual, data.expected), "head: \(String(describing: data.head))")
        }
    }
    
    
    // MARK: Problem 206. Reverse Linked List
    private lazy var testsData_problem_206: [(head: ListNode?, expected: ListNode?)] = {
        var testsData = [(head: ListNode?, expected: ListNode?)]()
        
        testsData.append((head: ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5))))),
                          expected: ListNode(5, ListNode(4, ListNode(3, ListNode(2, ListNode(1)))))))
        
        testsData.append((head: ListNode(1, ListNode(2)),
                          expected: ListNode(2, ListNode(1))))
        
        testsData.append((head: nil,
                          expected: nil))
        
        return testsData
    }()
    
    func tests_problem_206_reverseList() throws {
        for data in testsData_problem_206 {
            let actual = LC75_LinkedList.problem_206_reverseList(data.head)
            
            XCTAssertTrue(ListNode.equalListNodes(actual, data.expected), "head: \(String(describing: data.head))")
        }
    }
    
    
    // MARK: Problem 2130. Maximum Twin Sum of a Linked List
    private lazy var testsData_problem_2130: [(head: ListNode?, expected: Int)] = {
        var testsData = [(head: ListNode?, expected: Int)]()
        
        testsData.append((head: ListNode(5, ListNode(4, ListNode(2, ListNode(1)))),
                          expected: 6))
        
        testsData.append((head: ListNode(4, ListNode(2, ListNode(2, ListNode(3)))),
                          expected: 7))

        testsData.append((head: ListNode(1, ListNode(100000)),
                          expected: 100001))
        
        return testsData
    }()
    
    func tests_problem_2130_pairSum() throws {
        for data in testsData_problem_2130 {
            let actual = LC75_LinkedList.problem_2130_pairSum(data.head)
            
            XCTAssertEqual(actual, data.expected, "head: \(String(describing: data.head))")
        }
    }
}
