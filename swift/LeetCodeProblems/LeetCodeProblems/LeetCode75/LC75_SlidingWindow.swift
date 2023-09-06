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
}
