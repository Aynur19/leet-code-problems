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
}
