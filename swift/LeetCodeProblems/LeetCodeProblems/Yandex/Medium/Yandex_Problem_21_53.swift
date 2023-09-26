//
//  Yandex_Problem_21_53.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 25.09.2023.
//

// 53. Maximum Subarray
// Medium

// Given an integer array nums, find the subarray with the largest sum, and return its sum.

 
// Example 1:
// Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
// Output: 6
// Explanation: The subarray [4,-1,2,1] has the largest sum 6.

// Example 2:
// Input: nums = [1]
// Output: 1
// Explanation: The subarray [1] has the largest sum 1.

// Example 3:
// Input: nums = [5,4,-1,7,8]
// Output: 23
// Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.
 

// Constraints:
// 1 <= nums.length <= 10^5
// -10^4 <= nums[i] <= 10^4
 

// Follow up: If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.


extension Yandex_Problems {
    // Approach: Kadane's algorithm
    // Time complexity: O(n) => 660 ms
    // Space complexity: O(1) => 18.51 MB
    static func problem_53_maxSubArray(_ nums: [Int]) -> Int {
        var maxEndsHere = nums[0]
        var result = nums[0]
        
        for i in 1..<nums.count {
            maxEndsHere = max(maxEndsHere + nums[i], nums[i])
            result = max(result, maxEndsHere)
        }
        
        return result
    }
    
    // Approach: Recursion
    // Time complexity: O(n) => 699 ms
    // Space complexity: O(log n) => 18.66 MB
    static func problem_53_maxSubArray2(_ nums: [Int]) -> Int {
        func maxsubarray(_ nums: inout [Int], _ first: Int, _ after: Int)
        -> (maxSubarray: Int, maxPrefixSum: Int, maxSuffixSum: Int, sum: Int) {
            
            if first + 1 == after {
                return (nums[first], nums[first], nums[first], nums[first])
            }
            
            let size = after - first
            var half1 = maxsubarray(&nums, first, first + size / 2)
            var half2 = maxsubarray(&nums, first + size / 2, after)
            
            return (
                maxSubarray: [
                    half1.maxSubarray, half2.maxSubarray, half1.maxSuffixSum + half2.maxPrefixSum
                ].max() ?? 0,
                maxPrefixSum: max(half1.maxPrefixSum, half1.sum + half2.maxPrefixSum),
                maxSuffixSum: max(half2.maxSuffixSum, half2.sum + half1.maxSuffixSum),
                sum: half1.sum + half2.sum
            )
        }
        
        var nums = nums
        return maxsubarray(&nums, 0, nums.count).maxSubarray
    }
}
