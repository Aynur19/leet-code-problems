//
//  Yandex_Problem_97_1493.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 27.09.2023.
//

// 1493. Longest Subarray of 1's After Deleting One Element
// Medium

// Given a binary array nums, you should delete one element from it.

// Return the size of the longest non-empty subarray containing only 1's in the resulting array. Return 0 if there is no such subarray.

 
// Example 1:
// Input: nums = [1,1,0,1]
// Output: 3
// Explanation: After deleting the number in position 2, [1,1,1] contains 3 numbers with value of 1's.

// Example 2:
// Input: nums = [0,1,1,1,0,1,1,0,1]
// Output: 5
// Explanation: After deleting the number in position 4, [0,1,1,1,1,1,0,1] longest subarray with value of 1's is [1,1,1,1,1].

// Example 3:
// Input: nums = [1,1,1]
// Output: 2
// Explanation: You must delete one element.
 

// Constraints:
// 1 <= nums.length <= 10^5
// nums[i] is either 0 or 1.

extension Yandex_Problems {
    // Approach: Array, Pointers, Max
    // Time complexity: O(n) => 256 ms
    // Space complexity: O(1) => 17.48 MB
    static func problem_1493_longestSubarray(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return 0 }

        var zeroIdx = -1
        var left = 0
        while left < nums.count {
            if nums[left] != 0 { break }
            left += 1
        }
        guard left < nums.count else { return 0 }

        var maxLength = 0
        var right = left + 1
        while right < nums.count {
            if nums[right] == 0 {
                let newLength = right - 1 - left + (zeroIdx < 0 ? 1 : 0)
                maxLength = max(maxLength, newLength)

                if zeroIdx >= 0 {
                    left = zeroIdx + 1
                }

                zeroIdx = right
            }
            
            right += 1
        }

        let newLength = right - 1 - left + (zeroIdx < 0 ? 1 : 0)
        maxLength = max(maxLength, newLength)
        maxLength -= maxLength >= nums.count ? 1 : 0

        return maxLength
    }
}
