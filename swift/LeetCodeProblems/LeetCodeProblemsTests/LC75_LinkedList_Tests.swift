//
//  LC75_LinkedList_Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 08.09.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LC75_LinkedList_Tests: XCTestCase {
    private func equalListNodes(_ l1: ListNode? , _ l2: ListNode?) -> Bool {
        var l1 = l1, l2 = l2

        guard l1 != nil, l2 != nil else {
            if l1 == nil, l2 == nil { return true }
            else { return false }
        }
        
        while l1?.next != nil, l2?.next != nil {
            if l1?.val != l2?.val { return false }
            
            l1 = l1?.next
            l2 = l2?.next
        }
        
        guard l1 != nil, l2 != nil, l1?.val == l2?.val else { return false }
        guard l1?.next == nil, l2?.next == nil else { return false }
        
        return true
    }
    
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
            
            XCTAssertTrue(equalListNodes(actual, data.expected), "head: \(String(describing: data.head))")
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
            
            XCTAssertTrue(equalListNodes(actual, data.expected), "head: \(String(describing: data.head))")
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
            
            XCTAssertTrue(equalListNodes(actual, data.expected), "head: \(String(describing: data.head))")
        }
    }
}
