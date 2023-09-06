//
//  LC75_SlidingWindow.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 06.09.2023.
//

import Foundation

public final class LC75_SlidingWindow {
    static func problem_643_findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var currentSum = 0
        var maxSum = 0
        
        for idx in 0..<k {
            currentSum += nums[idx]
        }
        maxSum = currentSum
        
        for i in k..<nums.count {
            currentSum += -nums[i - k] + nums[i]
            maxSum = max(maxSum, currentSum)
        }
        
        return Double(maxSum) / Double(k)
    }
    
    static func problem_1456_maxVowels(_ s: String, _ k: Int) -> Int {
        let vowels: [Character] = ["a", "e", "i", "o", "u"]
        let chars = Array(s)
        var count = 0
        var maxCount = 0
        
        for i in 0..<k {
            if vowels.contains(chars[i]) {
                count += 1
            }
        }
        maxCount = count
        if maxCount == k { return maxCount }
        
        for i in k..<chars.count {
            if vowels.contains(chars[i]) {
                count += 1
            }
            
            if vowels.contains(chars[i - k]) {
                count -= 1
            }
            
            maxCount = max(maxCount, count)
            if maxCount == k { return maxCount }
        }
        
        return maxCount
    }
    
    static func problem_1004_longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var maxCount = 0
        var count = 0
        var kCount = k
        var left = 0
        var right = 0
        
        while kCount > 0, right < nums.count {
            if nums[right] == 0 {
                kCount -= 1
            }
            
            count += 1
            right += 1
        }
        maxCount = count
        if kCount > 0 { return maxCount }
        
        while right < nums.count {
            if nums[right] == 0 {
                while nums[left] != 0 {
                    left += 1
                    count -= 1
                }
                left += 1
            } else {
                count += 1
            }
            
            maxCount = max(maxCount, count)
            right += 1
        }
        
        return maxCount
    }
    
    static func problem_1493_longestSubarray(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return 0 }
        
        var left = 0
        while left < nums.count {
            if nums[left] == 1 { break }
            
            left += 1
        }
        guard left < nums.count else { return 0 }
        
        var right = left + 1
        var count = 1
        var maxCount = count
        var hasZero = false
        
        while right < nums.count {
            if nums[right] == 0 {
                if hasZero {
                    while nums[left] != 0 {
                        count -= 1
                        left += 1
                    }
                    
                    left += 1
                } else {
                    hasZero = true
                }
            } else {
                count += 1
            }
            
            maxCount = max(maxCount, count)
            right += 1
        }
        
        return maxCount == nums.count ? maxCount - 1 : maxCount
    }
}
