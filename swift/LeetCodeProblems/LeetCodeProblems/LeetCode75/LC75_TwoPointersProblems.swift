//
//  LC75_TwoPointersProblems.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 05.09.2023.
//

import Foundation

public final class LC75_TwoPointersProblems {
    static func problem_283_moveZeroes(_ nums: inout [Int]) {
        guard nums.count > 1 else { return }
        
        var left = 0
        var right = 1
        let n = nums.count
        
        while right < n {
            if nums[left] == 0, nums[right] != 0 {
                let tmp = nums[left]
                nums[left] = nums[right]
                nums[right] = tmp
            }
            
            right += 1
            
            if nums[left] != 0 {
                left += 1
            }
        }
    }
    
    static func problem_392_isSubsequence(_ s: String, _ t: String) -> Bool {
        guard s.count <= t.count else { return false }
        
        let s = Array(s)
        let t = Array(t)
        
        var sIdx = 0
        var tIdx = 0
        
        while sIdx < s.count {
            if tIdx >= t.count { return false }
            
            if s[sIdx] != t[tIdx] {
                tIdx += 1
                continue
            }
            
            tIdx += 1
            sIdx += 1
        }
                
        return true
    }
    
    static func problem_11_maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var volume = 0
        
        while left < right {
            volume = max(volume, min(height[left], height[right]) * (right - left))
            
            if height[left] > height[right] {
                right -= 1
            } else {
                left += 1
            }
        }
        
        return volume
    }
}
