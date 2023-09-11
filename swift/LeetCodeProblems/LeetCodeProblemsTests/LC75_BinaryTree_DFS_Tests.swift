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
    
    
    // MARK: Problem 1448. Count Good Nodes in Binary Tree
    private lazy var testsData_problem_1448: [(root: TreeNode?, expected: Int)] = {
        var testsData = [(root: TreeNode?, expected: Int)]()
        
        let root1 = TreeNode(3)
        root1.left = TreeNode(1, TreeNode(3), nil)
        root1.right = TreeNode(4, TreeNode(1), TreeNode(5))
        
        let root2 = TreeNode(3)
        root2.left = TreeNode(3, TreeNode(4), TreeNode(2))
        
        let root3 = TreeNode(1)
        
        testsData.append((root: root1, expected: 4))
        testsData.append((root: root2, expected: 3))
        testsData.append((root: root3, expected: 1))
        
        return testsData
    }()
    
    func tests_problem_1448_goodNodes() throws {
        for data in testsData_problem_1448 {
            let actual = LC75_BinaryTree_DFS.problem_1448_goodNodes(data.root)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
    
    
    // MARK: Problem 1448. Count Good Nodes in Binary Tree
    private lazy var testsData_problem_437: [(root: TreeNode?, targetSum: Int, expected: Int)] = {
        var testsData = [(root: TreeNode?, targetSum: Int, expected: Int)]()
        
        let leftLeft_1 = TreeNode(3, TreeNode(3), TreeNode(-2))
        let leftRight_1 = TreeNode(2, nil, TreeNode(1))
        let right_1 = TreeNode(-3, nil, TreeNode(11))
        let root_1 = TreeNode(10, TreeNode(5, leftLeft_1, leftRight_1), right_1)
        
        let leftLeft_2 = TreeNode(11, TreeNode(7), TreeNode(2))
        let rightRight_2 = TreeNode(4, TreeNode(5), TreeNode(11))
        let root_2 = TreeNode(5, TreeNode(4, leftLeft_2, nil), TreeNode(8, TreeNode(8), rightRight_2))
        
        testsData.append((root: root_1, targetSum: 8, expected: 3))
        testsData.append((root: root_2, targetSum: 22, expected: 3))
        
        return testsData
    }()
    
    func tests_problem_437_pathSum() throws {
        for data in testsData_problem_437 {
            let actual = LC75_BinaryTree_DFS.problem_437_pathSum(data.root, data.targetSum)
            
            XCTAssertEqual(actual, data.expected)
        }
    }
}

///                 5
///         4                                    8
///     11              nil                  13              4
///  7              2                                       5            11
