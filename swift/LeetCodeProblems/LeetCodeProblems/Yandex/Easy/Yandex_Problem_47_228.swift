//
//  Yandex_Problem_47_228.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 27.09.2023.
//

// 228. Summary Ranges
// Easy

// You are given a sorted unique integer array nums.

// A range [a,b] is the set of all integers from a to b (inclusive).

// Return the smallest sorted list of ranges that cover all the numbers in the array exactly. That is, each element of nums is covered by exactly one of the ranges, and there is no integer x such that x is in one of the ranges but not in nums.

// Each range [a,b] in the list should be output as:
//   "a->b" if a != b
//   "a" if a == b


// Example 1:
// Input: nums = [0,1,2,4,5,7]
// Output: ["0->2","4->5","7"]
// Explanation: The ranges are:
// [0,2] --> "0->2"
// [4,5] --> "4->5"
// [7,7] --> "7"

// Example 2:
// Input: nums = [0,2,3,4,6,8,9]
// Output: ["0","2->4","6","8->9"]
// Explanation: The ranges are:
// [0,0] --> "0"
// [2,4] --> "2->4"
// [6,6] --> "6"
// [8,9] --> "8->9"


// Constraints:
// 0 <= nums.length <= 20
// -2^31 <= nums[i] <= 2^31 - 1
// All the values of nums are unique.
// nums is sorted in ascending order.

extension Yandex_Problems {
    // Approach: Array, Two Pointers, Max
    // Time complexity: O(n) => 0 ms
    // Space complexity: O(1) => 14.07 MB
    static func problem_228_summaryRanges(_ nums: [Int]) -> [String] {
        guard !nums.isEmpty else { return [] }
        guard nums.count > 1 else { return ["\(nums[0])"] }
        
        var result = [String]()
        var left = 0
        var right = left + 1
        
        while right < nums.count {
            if nums[right] - nums[right - 1] != 1 {
                if left == right - 1 {
                    result.append("\(nums[left])")
                } else {
                    result.append("\(nums[left])->\(nums[right - 1])")
                }
                
                left = right
            }
            
            right += 1
        }
        
        if left == right - 1 {
            result.append("\(nums[left])")
        } else {
            result.append("\(nums[left])->\(nums[right - 1])")
        }
        
        return result
    }
}
