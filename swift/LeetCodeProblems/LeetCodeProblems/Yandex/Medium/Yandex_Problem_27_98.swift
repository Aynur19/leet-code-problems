//
//  Yandex_Problem_27_98.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 26.09.2023.
//

// 98. Validate Binary Search Tree
// Medium

// Given the root of a binary tree, determine if it is a valid binary search tree (BST).

// A valid BST is defined as follows:

// The left subtree of a node contains only nodes with keys less than the node's key.
// The right subtree of a node contains only nodes with keys greater than the node's key.
// Both the left and right subtrees must also be binary search trees.
 

// Example 1:
// Input: root = [2,1,3]
// Output: true

// Example 2:
// Input: root = [5,1,4,null,null,3,6]
// Output: false
// Explanation: The root node's value is 5 but its right child's value is 4.
 

// Constraints:
// The number of nodes in the tree is in the range [1, 104].
// -2^31 <= Node.val <= 2^31 - 1

extension Yandex_Problems {
    // Approach: Tree, Binary Search Tree, Recursion
    // Time complexity: O(n) => 39 ms
    // Space complexity: O(n) => 14.68 MB
    static func problem_98_isValidBST(_ root: TreeNode?) -> Bool {
        func isValidBST(_ root: TreeNode?, minVal: Int, maxVal: Int) -> Bool {
            guard let root = root else { return true }
            
            var isValid = root.val < maxVal && root.val > minVal
            
            if isValid, let left = root.left {
                isValid = isValidBST(left, minVal: minVal, maxVal: min(maxVal, root.val))
            }
            
            if isValid, let right = root.right {
                isValid = isValidBST(right, minVal: max(minVal, root.val), maxVal: maxVal)
            }
            
            return isValid
        }

        return isValidBST(root, minVal: Int.min, maxVal: Int.max)
    }
}
