//
//  LC75_TwoPointersProblems.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 05.09.2023.
//

import Foundation

public final class LC75_TwoPointersProblems {
    // 0 0 1 2 0 0 3 0 4 5 3 0
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
}
