//
//  Yandex_Problem_29_101.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 26.09.2023.
//

// 101. Symmetric Tree
// Easy

// Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).

 
// Example 1:
// Input: root = [1,2,2,3,4,4,3]
// Output: true

// Example 2:
// Input: root = [1,2,2,null,3,null,3]
// Output: false
 

// Constraints:

// The number of nodes in the tree is in the range [1, 1000].
// -100 <= Node.val <= 100
 

// Follow up: Could you solve it both recursively and iteratively?

extension Yandex_Problems {
    // Approach: Binary Tree, Recursion
    // Time complexity: O(n) => 6 ms
    // Space complexity: O(n) => 12.22 MB
    static func problem_101_isSymmetric(_ root: TreeNode?) -> Bool {
        func isSymmetric(_ l: TreeNode?, _ r: TreeNode?) -> Bool {
            if let l = l, let r = r {
                return l.val == r.val && isSymmetric(l.left, r.right) && isSymmetric(l.right, r.left)
            }

            return l == nil && r == nil
        }

        return isSymmetric(root?.left, root?.right)
    }
    
    
    // Approach: Binary Tree, Array, Stack
    // Time complexity: O(n) => 9 ms
    // Space complexity: O(log (n)) => 13.9 MB
    static func problem_101_isSymmetric2(_ root: TreeNode?) -> Bool {
        func addNodes(_ leftNodes: inout [TreeNode], _ rightNodes: inout [TreeNode], _ left: TreeNode?, _ right: TreeNode?) -> Bool {
            guard let left = left,
                  let right = right,
                  left.val == right.val
            else {
                return left == nil && right == nil
            }
            
            leftNodes.append(left)
            rightNodes.append(right)
            
            return true
        }
        
        guard let root = root else { return false }
        
        var leftNodes = [TreeNode]()
        var rightNodes = [TreeNode]()
        
        if !addNodes(&leftNodes, &rightNodes, root.left, root.right) { return false }
        
        while !leftNodes.isEmpty, !rightNodes.isEmpty {
            let leftRoot = leftNodes.removeLast()
            let rightRoot = rightNodes.removeLast()
            
            if !addNodes(&leftNodes, &rightNodes, leftRoot.left, rightRoot.right)
                || !addNodes(&leftNodes, &rightNodes, leftRoot.right, rightRoot.left)
            { return false }
        }

        return true
    }
}
