//
//  Yandex_Problem_16_33.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 23.09.2023.
//

// 33. Search in Rotated Sorted Array
// Medium

// There is an integer array nums sorted in ascending order (with distinct values).

// Prior to being passed to your function, nums is possibly rotated at an unknown pivot index k (1 <= k < nums.length) such that the resulting array is [nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]] (0-indexed). For example, [0,1,2,4,5,6,7] might be rotated at pivot index 3 and become [4,5,6,7,0,1,2].

// Given the array nums after the possible rotation and an integer target, return the index of target if it is in nums, or -1 if it is not in nums.

// You must write an algorithm with O(log n) runtime complexity.


// Example 1:
// Input: nums = [4,5,6,7,0,1,2], target = 0
// Output: 4

// Example 2:
// Input: nums = [4,5,6,7,0,1,2], target = 3
// Output: -1

// Example 3:
// Input: nums = [1], target = 0
// Output: -1


// Constraints:
// 1 <= nums.length <= 5000
// -10^4 <= nums[i] <= 10^4
// All values of nums are unique.
// nums is an ascending array that is possibly rotated.
// -10^4 <= target <= 10^4

extension Yandex_Problems {
    // Approach: Pointers, Binary Search, Array
    // Time complexity: O(log n) => 7 ms
    // Space complexity: O(1) => 14.12 MB
    static func problem_33_search(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 1 else { return nums[0] == target ? 0 : -1 }
        
        var left = (idx: 0, val: nums[0])
        var right = (idx: nums.count - 1, val: nums[nums.count - 1])
        
        if left.val == target { return left.idx }
        if right.val == target { return right.idx }
        var lastIdx = -1
        
        while left.idx < right.idx {
            let idx = left.idx + (right.idx - left.idx) / 2
            let val = nums[idx]
            
            if lastIdx == idx { break }
            lastIdx = idx
            
            if target == val { return idx }
            let tmp = (idx: idx, val: val)
            
            if val >= left.val {
                if val < target {
                    left = tmp
                } else {
                    if target < left.val {
                        left = tmp
                    } else {
                        right = tmp
                    }
                }
            } else {
                if val > target {
                    right = tmp
                } else {
                    if target < left.val {
                        left = tmp
                    } else {
                        right = tmp
                    }
                }
            }
        }
        
        if left.val == target { return left.idx }
        else if right.val == target { return right.idx }
        
        return -1
    }
}
