//
//  Problem_844.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 19.10.2023.
//

// 844. Backspace String Compare
// Easy
// URL:
// Topics:

// Given two strings s and t, return true if they are equal when both are typed into empty text editors. '#' means a backspace character.

// Note that after backspacing an empty text, the text will continue empty.


// Example 1:
// Input: s = "ab#c", t = "ad#c"
// Output: true
// Explanation: Both s and t become "ac".

// Example 2:
// Input: s = "ab##", t = "c#d#"
// Output: true
// Explanation: Both s and t become "".

// Example 3:
// Input: s = "a#c", t = "b"
// Output: false
// Explanation: s becomes "c" while t becomes "b".


// Constraints:
// 1 <= s.length, t.length <= 200
// s and t only contain lowercase letters and '#' characters.


// Follow up: Can you solve it in O(n) time and O(1) space?

extension LeetCodeProblems {
    // Approach: Two Pointers, Array
    // Time complexity: O(n) => 8 ms
    // Space complexity: O(1) => 13.82 MB
    static func problem_844_backspaceCompare(_ s: String, _ t: String) -> Bool {
        let nS = s.count, nT = t.count
        
        var ptrS = 1, ptrT = 1
        var countS = 0, countT = 0
        var charS: Character = "#"
        var charT: Character = "#"
        
        while ptrS <= nS || ptrT <= nT {
            while ptrS <= nS {
                charS = s[s.index(s.endIndex, offsetBy: -ptrS)]
                
                if charS == "#" {
                    ptrS += 1
                    countS += 1
                } else if countS > 0 {
                    ptrS += 1
                    countS -= 1
                } else {
                    break
                }
            }
            
            while ptrT <= nT {
                charT = t[t.index(t.endIndex, offsetBy: -ptrT)]
                
                if charT == "#" {
                    ptrT += 1
                    countT += 1
                } else if countT > 0 {
                    ptrT += 1
                    countT -= 1
                } else {
                    break
                }
            }
            
            
            if ptrS <= nS && ptrT <= nT && charS != charT {
                return false
            } else if (ptrS > nS) != (ptrT > nT) {
                return false
            }
            
            ptrS += 1
            ptrT += 1
        }
        
        return true
    }
}
