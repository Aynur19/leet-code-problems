//
//  Yandex_Problem_28_100.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 26.09.2023.
//

// 100. Same Tree
// Easy

// Given the roots of two binary trees p and q, write a function to check if they are the same or not.

// Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.

 
// Example 1:
// Input: p = [1,2,3], q = [1,2,3]
// Output: true

// Example 2:
// Input: p = [1,2], q = [1,null,2]
// Output: false

// Example 3:
// Input: p = [1,2,1], q = [1,1,2]
// Output: false
 

// Constraints:
// The number of nodes in both trees is in the range [0, 100].
// -10^4 <= Node.val <= 10^4

extension Yandex_Problems {
    // Approach: Binary Tree, Recursion
    // Time complexity: O(n)) => 0 ms
    // Space complexity: O(n) => 14.17 MB
    static func problem_100_isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
            if let p = p, let q = q {
                return p.val == q.val && isSameTree(p.left, q.left) && isSameTree(p.right, q.right)
            }
            
            return p == nil && q == nil
        }
        
        return isSameTree(p, q)
    }
}
