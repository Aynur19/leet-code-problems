//
//  LC75_PrefixSum.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 06.09.2023.
//

import Foundation

public final class LC75_PrefixSum {
    static func problem_1732_largestAltitude(_ gain: [Int]) -> Int {
        var altitude = 0
        var highestAltitude = 0
        
        for diff in gain {
            altitude += diff
            highestAltitude = max(highestAltitude, altitude)
        }
        
        return highestAltitude
    }
    
    static func problem_724_pivotIndex(_ nums: [Int]) -> Int {
        let n = nums.count
        var leftSum = Array<Int>(repeating: nums[0], count: n)
        var rightSum = Array<Int>(repeating: nums[n - 1], count: n)
        
        for i in 1..<n {
            leftSum[i] = leftSum[i - 1] + nums [i]
            rightSum[n - 1 - i] = rightSum[n - i] + nums[n - 1 - i]
        }
        
        for i in nums.indices {
            if leftSum[i] == rightSum[i] {
                return i
            }
        }
        
        return -1
    }
}
