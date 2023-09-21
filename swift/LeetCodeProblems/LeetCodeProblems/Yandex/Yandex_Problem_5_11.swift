//
//  Yandex_Problem_5_11.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 21.09.2023.
//

// 11. Container With Most Water
// Medium

// You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

// Find two lines that together with the x-axis form a container, such that the container contains the most water.

// Return the maximum amount of water a container can store.

// Notice that you may not slant the container.

// Example 1:
// Input: height = [1,8,6,2,5,4,8,3,7]
// Output: 49
// Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.

// Example 2:
// Input: height = [1,1]
// Output: 1
 
// Constraints:
// n == height.length
// 2 <= n <= 10^5
// 0 <= height[i] <= 10^4

extension Yandex_Problems {
    // Approach: Two Pointer, Array
    // Time complexity: O(n) => 544 ms
    // Space complexity: O(1) => 17.9 MB
    static func problem_11_maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var maxArea = 0
        
        while left < right {
            let h = min(height[left], height[right])
            maxArea = max(maxArea, h * (right - left))
            
            if height[left] > h {
                right -= 1
            } else {
                left += 1
            }
        }
        
        return maxArea
    }
}
