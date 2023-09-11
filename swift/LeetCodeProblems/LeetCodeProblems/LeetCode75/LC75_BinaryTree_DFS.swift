//
//  LC75_BinaryTree_DFS.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 10.09.2023.
//

import Foundation

public final class LC75_BinaryTree_DFS {
    static func problem_104_maxDepth(_ root: TreeNode?) -> Int {
        guard let current = root else { return 0 }
        
        if current.left == nil, current.right == nil { return 1 }
        
        let left = problem_104_maxDepth(current.left)
        let right = problem_104_maxDepth(current.right)
        
        return max(left, right) + 1
    }
    
    static func problem_872_leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        guard let root1 = root1, let root2 = root2 else { return false }
        
        var current: TreeNode
        var nodes = [TreeNode]()
        
        var leaves1 = [Int]()
        nodes.append(root1)
        while !nodes.isEmpty {
            current = nodes.removeLast()
            
            if let left = current.left { nodes.append(left) }
            if let right = current.right { nodes.append(right) }
            
            if current.left == nil && current.right == nil {
                leaves1.append(current.val)
            }
        }
        
        var leaves2 = [Int]()
        nodes.append(root2)
        while !nodes.isEmpty {
            current = nodes.removeLast()
            
            if let left = current.left { nodes.append(left) }
            if let right = current.right { nodes.append(right) }
            
            if current.left == nil && current.right == nil {
                leaves2.append(current.val)
            }
        }
        
        return leaves1 == leaves2
    }
    
    static func problem_1448_goodNodes(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        return goodNode(Int.min, root)
    }
    
    static private func goodNode(_ maxValue: Int, _ node: TreeNode?) -> Int {
        guard let node = node else { return 0 }

        let maxValue = max(maxValue, node.val)
        let left = goodNode(maxValue, node.left)
        let right = goodNode(maxValue, node.right)
        
        return left + right + (node.val >= maxValue ? 1 : 0)
    }
}
