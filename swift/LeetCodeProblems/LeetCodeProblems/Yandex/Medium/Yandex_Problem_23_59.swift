//
//  Yandex_Problem_23_59.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 25.09.2023.
//

// 59. Spiral Matrix II
// Medium

// Given a positive integer n, generate an n x n matrix filled with elements from 1 to n2 in spiral order.

 
// Example 1:
// Input: n = 3
// Output: [[1,2,3],[8,9,4],[7,6,5]]

// Example 2:
// Input: n = 1
// Output: [[1]]
 

// Constraints:
// 1 <= n <= 20

extension Yandex_Problems {
    // Approach: Array, Pointers
    // Time complexity: O(n) => 0 ms
    // Space complexity: O(1) => 14.11 MB
    static func problem_59_generateMatrix(_ n: Int) -> [[Int]] {
        guard n > 1 else { return [[1]] }
        
        var matrix = Array(repeating: Array(repeating: 0, count: n), count: n)
        
        var left = -1, top = 0
        var right = n, bottom = n
        var count = 1
        var row = 0, column = 0
        
        while count < n * n {
            while column < right {
                matrix[row][column] = count
                count += 1
                column += 1
            }
            column -= 1
            right = column
            row += 1
            
            while row < bottom {
                matrix[row][column] = count
                count += 1
                row += 1
            }
            row -= 1
            bottom = row
            column -= 1
            
            while column > left {
                matrix[row][column] = count
                count += 1
                column -= 1
            }
            column += 1
            left = column
            row -= 1
            
            while row > top {
                matrix[row][column] = count
                count += 1
                row -= 1
            }
            row += 1
            top = row
            column += 1
        }
        
        if count == n * n {
            matrix[row][column] = count
        }
        
        return matrix
    }
}
