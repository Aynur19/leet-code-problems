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
    
    func tests_problem_104_maxDepth() throws {
        for data in testsData_problem_104 {
            let actual = LC75_BinaryTree_DFS.problem_104_maxDepth(data.root)
            
            XCTAssertEqual(actual, data.expected, "head: \(String(describing: data.root))")
        }
    }
    
    
    // MARK: Problem 872. Leaf-Similar Trees
    private lazy var testsData_problem_872: [(root1: TreeNode?, root2: TreeNode?, expected: Bool)] = {
        var testsData = [(root1: TreeNode?, root2: TreeNode?, expected: Bool)]()
        
        let root1_1 = TreeNode(3)
        root1_1.left = TreeNode(5, TreeNode(6), TreeNode(2, TreeNode(7), TreeNode(4)))
        root1_1.right = TreeNode(1, TreeNode(9), TreeNode(8))
        
        let root1_2 = TreeNode(3)
        root1_2.left = TreeNode(5, TreeNode(6), TreeNode(7))
        root1_2.right = TreeNode(1, TreeNode(4), TreeNode(2, TreeNode(9), TreeNode(8)))
        testsData.append((root1: root1_1, root2: root1_2, expected: true))

        let root2_1 = TreeNode(1, TreeNode(2), TreeNode(3))
        let root2_2 = TreeNode(1, TreeNode(3), TreeNode(2))
        testsData.append((root1: root2_1, root2: root2_2, expected: false))
        
        return testsData
    }()
    
    func tests_problem_872_leafSimilar() throws {
        for data in testsData_problem_872 {
            let actual = LC75_BinaryTree_DFS.problem_872_leafSimilar(data.root1, data.root2)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
}
