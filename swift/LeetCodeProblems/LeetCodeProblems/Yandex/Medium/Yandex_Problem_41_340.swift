//
//  Yandex_Problem_41_340.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 27.09.2023.
//

// 386. Longest Substring with At Most K Distinct Characters
// Medium

// Given a string S, find the length of the longest substring T that contains at most k distinct characters.


// Example 1:
// Input: S = "eceba" and k = 3
// Output: 4
// Explanation: T = "eceb"

// Example 2:
// Input: S = "WORLD" and k = 4
// Output: 4
// Explanation: T = "WORL" or "ORLD"


// Challenge: O(n) time

extension Yandex_Problems {
    // Approach: Array, Two Pointers, Max
    // Time complexity: O(n) => 591 ms (LintCode)
    // Space complexity: O(2 * n) => 7.82 MB (LintCode)
    static func problem_340_lengthOfLongestSubstringKDistinct(_ s: String, _ k: Int) -> Int {
        guard s.count > 1 else { return min(s.count, k) }

        var s = Array(s)
        var dict = [Character:Int]()
        var left = 0, right = 0
        var maxCount = 0

        while right < s.count {
            dict[s[right], default: 0] += 1

            while dict.count > k {
                if let count = dict[s[left]], count > 1 {
                    dict[s[left]] = count - 1
                } else {
                    dict[s[left]] = nil
                }
                
                left += 1
            }

            maxCount = max(maxCount, right - left + 1)
            right += 1
        }

        return maxCount
    }
}
