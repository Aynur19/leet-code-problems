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
        
        return problem_1448_goodNode(Int.min, root)
    }
    
    static private func problem_1448_goodNode(_ maxValue: Int, _ node: TreeNode?) -> Int {
        guard let node = node else { return 0 }

        let maxValue = max(maxValue, node.val)
        let left = problem_1448_goodNode(maxValue, node.left)
        let right = problem_1448_goodNode(maxValue, node.right)
        
        return left + right + (node.val >= maxValue ? 1 : 0)
    }
    
    static func problem_437_pathSum(_ root: TreeNode?, _ targetSum: Int) -> Int {
        var count = 0
        var prefixSums = [Int:Int]()
        var prefixSum = 0
        
        func prefixSumsCompute(_ node: TreeNode?, _ prefixSum: inout Int, _ prefixSums: inout [Int:Int]) {
            guard let node = node else { return }

            prefixSum += node.val

            count += prefixSum == targetSum ? 1 : 0
            count += prefixSums[prefixSum - targetSum] ?? 0

            prefixSums[prefixSum, default: 0] += 1

            prefixSumsCompute(node.left, &prefixSum, &prefixSums)
            prefixSumsCompute(node.right, &prefixSum, &prefixSums)

            prefixSums[prefixSum, default: 0] -= 1
            prefixSum -= node.val
        }
        
        prefixSumsCompute(root, &prefixSum, &prefixSums)
        
        return count
    }
    
    static func problem_1372_longestZigZag(_ root: TreeNode?) -> Int {
        guard let root = root, (root.left != nil || root.right != nil) else { return 0 }
        var maxCount = 0
        
        func longestZigZag(_ node: TreeNode, _ isLeft: Bool = true) -> Int {
            var leftCount = 0
            var rightCount = 0
            
            if let left = node.left {
                leftCount = longestZigZag(left) + 1
            }
            
            if let right = node.right {
                rightCount = longestZigZag(right, false) + 1
            }
            
            maxCount = max(maxCount, max(leftCount, rightCount))
            return isLeft ? rightCount : leftCount
        }
        
        
        if let left = root.left {
            let leftCount = longestZigZag(left) + 1
            maxCount = max(maxCount, leftCount)
        }
        
        if let right = root.right {
            let rightCount = longestZigZag(right, false) + 1
            maxCount = max(maxCount, rightCount)
        }
        
        return maxCount
    }
}
