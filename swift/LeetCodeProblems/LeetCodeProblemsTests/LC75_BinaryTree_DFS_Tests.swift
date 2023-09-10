//
//  LC75_BinaryTree_DFS_Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Aynur Nasybullin on 10.09.2023.
//

import XCTest
@testable import LeetCodeProblems

final class LC75_BinaryTree_DFS_Tests: XCTestCase {
    // MARK: Problem 104. Maximum Depth of Binary Tree
    private lazy var testsData_problem_104: [(root: TreeNode?, expected: Int)] = {
        var testsData = [(root: TreeNode?, expected: Int)]()
        
        let root1 = TreeNode(3)
        root1.left = TreeNode(9)
        root1.right = TreeNode(20, TreeNode(15), TreeNode(7))
        testsData.append((root: root1, expected: 3))

        let root2 = TreeNode(1, nil, TreeNode(7))
        testsData.append((root: root2, expected: 2))
        
        return testsData
    }()
    
    func tests_problem_2130_pairSum() throws {
        for data in testsData_problem_104 {
            let actual = LC75_BinaryTree_DFS.problem_104_maxDepth(data.root)
            
            XCTAssertEqual(actual, data.expected, "head: \(String(describing: data.root))")
        }
    }
}
