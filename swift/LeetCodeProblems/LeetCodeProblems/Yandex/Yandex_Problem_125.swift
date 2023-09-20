//
//  Yandex_Problem_125.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 20.09.2023.
//

import Foundation

extension Yandex_Problems {
    // Approach: Array, Reversing
    // Time complexity: O(n) => 7 ms
    // Space complexity: O(n) => 16.20 MB
    static func problem_125_isPalindrome(_ s: String) -> Bool {
        let s = s.lowercased()                                      // O(n)
        var chars = [Character]()
        
        for char in s {                                             // O(n)
            if let scalar = char.unicodeScalars.first {
                if scalar.value > 47, scalar.value < 58
                    || scalar.value > 64, scalar.value < 91
                    || scalar.value > 96, scalar.value < 123 {
                    chars.append(char)
                }
            }
        }
        
        return chars == chars.reversed()                            // O(1)
    }
    
    
    // Approach: Array, Two Pointer
    // Time complexity: O(n) => 4 ms
    // Space complexity: O(n) => 16.16 MB
    static func problem_125_isPalindrome2(_ s: String) -> Bool {
        let s = s.lowercased()                                      // O(n)
        var chars = [Character]()
        
        for char in s {                                             // O(n)
            if let scalar = char.unicodeScalars.first {
                if scalar.value > 47, scalar.value < 58
                    || scalar.value > 64, scalar.value < 91
                    || scalar.value > 96, scalar.value < 123 {
                    chars.append(char)
                }
            }
        }
        
        var left = 0, right = chars.count - 1
        while left < right {                                        // O(n)
            if chars[left] != chars[right] { return false }
            left += 1
            right -= 1
        }
        
        return true
    }
}
