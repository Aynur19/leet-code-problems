//
//  Yandex_Problem_30_102.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 26.09.2023.
//

// 102. Binary Tree Level Order Traversal
// Medium

// Given the root of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).

 
// Example 1:
// Input: root = [3,9,20,null,null,15,7]
// Output: [[3],[9,20],[15,7]]

// Example 2:
// Input: root = [1]
// Output: [[1]]

// Example 3:
// Input: root = []
// Output: []
 

// Constraints:
// The number of nodes in the tree is in the range [0, 2000].
// -1000 <= Node.val <= 1000

extension Yandex_Problems {
    // Approach: Binary Tree, BFS
    // Time complexity: O(n) => 15 ms
    // Space complexity: O(n) => 14.44 MB
    static func problem_102_levelOrder(_ root: TreeNode?) -> [[Int]] {
        func bfs(_ nodesFrom: inout [TreeNode], _ nodesTo: inout [TreeNode], _ result: inout [[Int]]) {
            for node in nodesFrom {
                if let left = node.left {
                    nodesTo.append(left)
                    values.append(left.val)
                }
                
                if let right = node.right {
                    nodesTo.append(right)
                    values.append(right.val)
                }
            }
            nodesFrom.removeAll()
            if !values.isEmpty {
                result.append(values)
                values.removeAll()
            }
        }
        
        guard let root = root else { return [] }
        
        var nodes1 = [root]
        var nodes2 = [TreeNode]()
        var values = [Int]()
        
        var result = [[root.val]]
        
        while !nodes1.isEmpty {
            bfs(&nodes1, &nodes2, &result)
            bfs(&nodes2, &nodes1, &result)
        }
        
        return result
    }
}
