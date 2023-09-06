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
}
