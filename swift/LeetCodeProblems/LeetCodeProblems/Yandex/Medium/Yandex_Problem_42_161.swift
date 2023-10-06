//
//  Yandex_Problem_42_161.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 27.09.2023.
//

// 640. One Edit Distance
// Medium

// Given two strings S and T, determine if they are both one edit distance apart.
// One ediit distance means doing one of these operation:
//   insert one character in any position of S
//   delete one character in S
//   change any one character in S to other character


// Example 1:
// Input: s = "aDb", t = "adb"
// Output: true

// Example 2:
// Input: s = "ab", t = "ab"
// Output: false
// Explanation: s=t ,so they aren't one edit distance apart

extension Yandex_Problems {
    // Approach: Array, Two Pointers
    // Time complexity: O(n + m) => 42 ms
    // Space complexity: O(1) => 3.15 MB (LintCode)
    static func problem_161_isOneEditDistance(_ s: String, _ t: String) -> Bool {
        guard s != t else { return false }

        let sizeS = s.count, sizeT = t.count
        guard abs(sizeS - sizeT) < 2 else { return false }

        let shortStr = sizeS >= sizeT ? Array(t) : Array(s)
        let longStr = sizeS >= sizeT ? Array(s) : Array(t)

        var ptrS = 0, ptrL = 0
        var isDifferent = false

        while ptrL < longStr.count, ptrS < shortStr.count {
            if shortStr[ptrS] != longStr[ptrL] {
                if isDifferent {
                    return false
                }
                
                isDifferent = true
                if longStr.count > shortStr.count {
                    ptrL += 1
                    continue
                }
            }

            ptrL += 1
            ptrS += 1
        }

        return true
    }
}
