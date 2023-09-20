//
//  Yandex_Problem_49.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 20.09.2023.
//

import Foundation

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
