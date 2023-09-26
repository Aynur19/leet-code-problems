//
//  Yandex_Problem_25_74.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 25.09.2023.
//

// 74. Search a 2D Matrix
// Medium

// You are given an m x n integer matrix matrix with the following two properties:

// Each row is sorted in non-decreasing order.
// The first integer of each row is greater than the last integer of the previous row.
// Given an integer target, return true if target is in matrix or false otherwise.

// You must write a solution in O(log(m * n)) time complexity.

 
// Example 1:
// Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
// Output: true

// Example 2:
// Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13
// Output: false
 

// Constraints:
// m == matrix.length
// n == matrix[i].length
// 1 <= m, n <= 100
// -10^4 <= matrix[i][j], target <= 10^4

extension Yandex_Problems {
    // Approach: Binary Search, Matrix, Pointers
    // Time complexity: O(log (n * m)) => 19 ms
    // Space complexity: O(1) => 14.21 MB
    static func problem_74_searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let n = matrix.count
        let m = matrix[0].count
        
        guard matrix[0][0] <= target, matrix[n - 1][m - 1] >= target else { return false }
        if n == 1, m == 1 { return target == matrix[0][0] }
        
        var l = 0, r = n - 1, i = 0
        while l < r {
            i = l + (r - l + 1) / 2
            
            if matrix[i][0] <= target, matrix[i][m - 1] >= target {
                l = i
                r = i
                break
            }
            if i == l || i == r { break }
            
            matrix[i][0] > target ? (r = i) : (l = i)
        }
        
        if l != r {
            matrix[r][0] > target ? (i = l) : (i = r)
        }
        
        if m == 1 { return target == matrix[i][0] }
        
        l = 0
        r = matrix[i].count - 1
        while l < r {
            let j = l + (r - l + 1) / 2
            
            if matrix[i][j] == target { return true }
            if j == l || j == r { break }
            
            matrix[i][j] > target ? (r = j) : (l = j)
        }
        
        return matrix[i][l] == target || matrix[i][r] == target
    }
}
