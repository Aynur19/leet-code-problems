//
//  LC_Yandex_Medium.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 12.09.2023.
//

import Foundation

final class LC_Yandex_Medium {
    // Time complexity O(n)
    // Space complexity O(1)
    static func problem_849_maxDistToClosest(_ seats: [Int]) -> Int {
        var maxDistance = 0
        
        var left = 0
        while left < seats.count {
            if seats[left] == 0 { break }
            
            left += 1
        }
        
        var right = left + 1
        while right < seats.count {
            if seats[right] == 1 {
                if left == 0 {
                    maxDistance = max(maxDistance, right)
                } else if left > 0 {
                    maxDistance = max(maxDistance, (right - left + 1) / 2)
                }
                
                left = -1
            }
            
            if seats[right] == 0, left < 0 {
                left = right
            }
            
            right += 1
        }
        
        if seats[right - 1] == 0 {
            maxDistance = max(maxDistance, right - left)
        }
           
        return maxDistance
    }
    
    
    // Time complexity: O(n)
    // Space complexity: O(1)
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
    

    // Time complexity: O(n)
    // Space complexity: O(1)
    static func problem_443_compress(_ chars: inout [Character]) -> Int {
        guard chars.count > 1 else { return 1 }
        
        func compress(_ chars: inout [Character], _ count: Int, _ char: Character, _ charIdx: inout Int) {
            chars[charIdx] = char
            
            if count > 1 {
                let countChars = Array(String(count))
                let start = charIdx + 1
        
                for i in countChars.indices {
                    chars[start + i] = countChars[i]
                }

                charIdx += countChars.count
            }
        }

        var count = 0
        var charIdx = 0
        var char = chars[charIdx]
        
        for i in chars.indices {
            if chars[i] == char {
                count += 1
            } else {
                compress(&chars, count, char, &charIdx)
                count = 1
                charIdx += 1
                char = chars[i]
            }
        }
        compress(&chars, count, char, &charIdx)

        return charIdx + 1
    }

    
    // Time complexity: O(n1 + n2)
    // Space complexity: O(n1)
    static func problem_567_checkInclusion(_ s1: String, _ s2: String) -> Bool {
        guard s1.count > 1 else {
            return s2.contains(s1)
        }
        
        func dictIsEmpty(_ dict: [Character:Int]) -> Bool {
            for (_, val) in dict {
                if val != 0 { return false }
            }
            
            return true
        }

        let s1 = Array(s1)
        var dict = [Character:Int]()
        for i in s1.indices {
            dict[s1[i], default: 0] += 1
        }

        let s2 = Array(s2)
        var left = 0
        while left < s2.count {
            if dict[s2[left]] != nil { break }
            left += 1
        }
        guard left < s2.count else { return false }
        dict[s2[left], default: 0] -= 1

        var right = left + 1
        while right < s2.count {
            if let count = dict[s2[right]] {
                dict[s2[right]] = count - 1
                
                if right - left >= s1.count {
                    if let count = dict[s2[left]] {
                        dict[s2[left]] = count + 1
                    }
                    
                    left += 1
                }
                
                if count == 1, dictIsEmpty(dict) {
                    return true
                }
            } else {
                if let count = dict[s2[left]] {
                    dict[s2[left]] = count + 1
                }
                left += 1
            }

            right += 1
        }

        return dictIsEmpty(dict)
    }
    
    
    // Approach: Two Pointer
    // Time complexity: O(n)
    // Space complexity: O(1)
    static func problem_986_intervalIntersection(_ firstList: [[Int]], _ secondList: [[Int]]) -> [[Int]] {
        guard !firstList.isEmpty, !secondList.isEmpty else { return [] }
        
        var result = [[Int]]()
        var ptr1 = 0, ptr2 = 0

        while ptr1 < firstList.count, ptr2 < secondList.count {
            if firstList[ptr1][1] < secondList[ptr2][0] {
                ptr1 += 1
            } else if firstList[ptr1][0] > secondList[ptr2][1] {
                ptr2 += 1
            } else {
                let start = max(firstList[ptr1][0], secondList[ptr2][0])
                if firstList[ptr1][1] >= secondList[ptr2][1] {
                    result.append([start, secondList[ptr2][1]])
                    ptr2 += 1
                } else {
                    result.append([start, firstList[ptr1][1]])
                    ptr1 += 1
                }
            }
        }

        return result
    }
    
    
    // Approach: Hash Table + Prefix Sum
    // Time complexity: O(n)
    // Space complexity: O(n)
    static func problem_560_subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var prefixSum = [Int]()
        prefixSum.append(nums[0])

        for i in 1..<nums.count {
            prefixSum.append(prefixSum[i - 1] + nums[i])
        }

        var dict = [Int:Int]()
        var count = 0

        for i in nums.indices {
            if prefixSum[i] == k {
                count += 1
            }

            if let value = dict[prefixSum[i] - k] {
                count += value
            }

            dict[prefixSum[i], default: 0] += 1
        }

        return count
    }
    
    
    // Approach: Hash Table (Counter) + Sliding Window
    // Time complexity: O(Np) + O(Ns)
    // Space complexity: O(2*26)
    static func problem_438_findAnagrams(_ s: String, _ p: String) -> [Int] {
        guard s.count >= p.count else { return [] }

        let n = 26
        let s = Array(s)
        let p = Array(p)
        let aIdx = Character("a").asciiValue!
        var countS = Array<Int>(repeating: 0, count: n)
        var countP = countS
        var matches = 0
        var result = [Int]()
        
        for i in 0..<p.count {
            if let sIdx = s[i].asciiValue, let pIdx = p[i].asciiValue {
                countS[Int(sIdx - aIdx)] += 1
                countP[Int(pIdx - aIdx)] += 1
            }
        }
        
        for i in 0..<n where countS[i] == countP[i] {
            matches += 1
        }

        if matches == n { result.append(0) }
        
        for i in p.count..<s.count {
            if let idx = s[i - p.count].asciiValue {
                let charIdx = Int(idx - aIdx)
                let diff = countS[charIdx] - countP[charIdx]
                if diff == 1 {
                    matches += 1
                } else if diff == 0 {
                    matches -= 1
                }

                countS[charIdx] -= 1
            }

            if let idx = s[i].asciiValue {
                let charIdx = Int(idx - aIdx)
                let diff = countS[charIdx] - countP[charIdx]
                if diff == -1 {
                    matches += 1
                } else if diff == 0 {
                    matches -= 1
                }

                countS[charIdx] += 1
            }

            if matches == n { result.append(i - p.count + 1) }
        }

        return result
    }
    
    // Approach: Recursion
    // Time complexity: O(C(n) * n)
    // Space complexity: O(C(n) * n)
    // C(n) - Catalan number
    static func problem_22_generateParenthesis(_ n: Int) -> [String] {
        func generateParenthesis(_ result: inout [String], _ current: inout [Character], _ openN: Int, _ closeN: Int) {
            if openN == 0, closeN == 0 {
                result.append(String(current))
                return
            }
            
            if openN > 0 {
                current.append("(")
                generateParenthesis(&result, &current, openN - 1, closeN + 1)
                _ = current.removeLast()
            }
            
            if closeN > 0 {
                current.append(")")
                generateParenthesis(&result, &current, openN, closeN - 1)
                current.removeLast()
            }
        }
        
        var result = [String]()
        var current = [Character]()
        
        generateParenthesis(&result, &current, n, 0)
                
        return result
    }
}
