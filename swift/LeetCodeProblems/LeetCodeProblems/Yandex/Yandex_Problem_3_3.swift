//
//  Yandex_Problem_3_3.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 21.09.2023.
//

// 3. Longest Substring Without Repeating Characters
// Medium

// Given a string s, find the length of the longest substring without repeating characters.

// Example 1:
// Input: s = "abcabcbb"
// Output: 3
// Explanation: The answer is "abc", with the length of 3.

// Example 2:
// Input: s = "bbbbb"
// Output: 1
// Explanation: The answer is "b", with the length of 1.

// Example 3:
// Input: s = "pwwkew"
// Output: 3
// Explanation: The answer is "wke", with the length of 3.
// Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
 
// Constraints:
// 0 <= s.length <= 5 * 10^4
// s consists of English letters, digits, symbols and spaces.

extension Yandex_Problems {
    // Approach: Hash Table
    // Time complexity: O(n) => 10 ms
    // Space complexity: O(n) => 14.68 MB
    static func problem_3_lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.count > 1 else { return s.count }
        
        var dict = [Character:Int]()
        let s = Array(s)
        var left = 0
        var right = 1
        var maxLength = 0
        dict[s[0]] = 0
        
        while right < s.count {
            if let idx = dict[s[right]] {
                if left <= idx {
                    left = idx + 1
                }
            }
            
            dict[s[right]] = right
            maxLength = max(maxLength, right - left + 1)
            right += 1
        }
        
        return maxLength
    }
}
