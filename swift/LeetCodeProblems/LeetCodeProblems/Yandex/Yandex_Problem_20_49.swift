//
//  Yandex_Problem_20_49.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 25.09.2023.
//

// 49. Group Anagrams
// Solved

// Given an array of strings strs, group the anagrams together. You can return the answer in any order.

// An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

 
// Example 1:
// Input: strs = ["eat","tea","tan","ate","nat","bat"]
// Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

// Example 2:
// Input: strs = [""]
// Output: [[""]]

// Example 3:
// Input: strs = ["a"]
// Output: [["a"]]
 

// Constraints:
// 1 <= strs.length <= 10^4
// 0 <= strs[i].length <= 100
// strs[i] consists of lowercase English letters.

extension Yandex_Problems {
    // Approach: Hash Table
    // Time complexity: O(n * m) => 113 ms
    // Space complexity: O(n * m) => 19.32 MB
    static func problem_49_groupAnagrams(_ strs: [String]) -> [[String]] {
        guard strs.count > 1 else { return [strs] }
        var dict = [[Character:Int]:[String]]()

        for i in strs.indices {                                     // O(n)
            var charsCounter = [Character:Int]()

            for char in strs[i] {                                   // O(m)
                charsCounter[char, default: 0] += 1                 // O(1)
            }

            dict[charsCounter, default: []].append(strs[i])         // O(1)
        }

        return Array(dict.values)
    }
    
    // Approach: Hash Table
    // Time complexity: O(n * m * log(m)) => 86 ms
    // Space complexity: O(n) => 15.99 MB
    static func problem_49_groupAnagrams2(_ strs: [String]) -> [[String]] {
        guard strs.count > 1 else { return [strs] }
        
        var dict = [String:[String]]()

        for i in strs.indices {                                     // O(n)
            let key = String(strs[i].sorted())                      // O(m*log(m))
            dict[key, default: []].append(strs[i])                  // O(1)
        }

        return Array(dict.values)
    }
}
