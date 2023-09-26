//
//  Yandex_Problem_17_34.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 24.09.2023.
//

// 34. Find First and Last Position of Element in Sorted Array
// Medium

// Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.

// If target is not found in the array, return [-1, -1].

// You must write an algorithm with O(log n) runtime complexity.

 
// Example 1:
// Input: nums = [5,7,7,8,8,10], target = 8
// Output: [3,4]

// Example 2:
// Input: nums = [5,7,7,8,8,10], target = 6
// Output: [-1,-1]

// Example 3:
// Input: nums = [], target = 0
// Output: [-1,-1]
 

// Constraints:
// 0 <= nums.length <= 10^5
// -10^9 <= nums[i] <= 10^9
// nums is a non-decreasing array.
// -10^9 <= target <= 10^9

extension Yandex_Problems {
    // Approach: Pointers, Binary Search, Array
    // Time complexity: O(log n || n) => 34 ms
    // Space complexity: O(1) => 15.22 MB
    static func problem_34_searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        guard nums.count > 1 else {
            if nums.isEmpty { return [-1, -1] }
            else {
                return nums[0] == target ? [0, 0] : [-1, -1]
            }
        }
        
        var l = 0, r = nums.count - 1
        
        var idx = -1
        while l < r {
            let current = l + (r - l) / 2
            
            if current == idx { break }
            idx = current
            
            if target == nums[current] { break }
            else if target > nums[current] {
                l = current
            } else {
                r = current
            }
        }
        
        if nums[idx] != target {
            if nums[l] == target {
                idx = l
            } else if nums[r] == target {
                idx = r
            } else {
                return [-1, -1]
            }
        }
        
        l = idx
        r = idx
        
        while l >= 0 {
            if nums[l] != target { break }
            l -= 1
        }
        if l < 0 || nums[l] != target { l += 1 }
        
        while r < nums.count {
            if nums[r] != target { break }
            r += 1
        }
        if r >= nums.count || nums[r] != target { r -= 1 }
        
        return [l, r]
    }
}
