//
//  LC_Yandex_Easy.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 13.09.2023.
//

import Foundation

final class LC_Yandex_Easy {
    // Time complexity: O(n)
    // Space complexity: O(1)
    static func problem_228_summaryRanges(_ nums: [Int]) -> [String] {
        guard !nums.isEmpty else { return [] }
        guard nums.count > 1 else { return ["\(nums[0])"] }

        var result = [String]()
        var left = 0
        var right = left + 1

        while right < nums.count {
            if nums[right] - nums[right - 1] != 1 {
                if left == right - 1 {
                    result.append("\(nums[left])")
                } else {
                    result.append("\(nums[left])->\(nums[right - 1])")
                }

                left = right
            }

            right += 1
        }

        if left == right - 1 {
            result.append("\(nums[left])")
        } else {
            result.append("\(nums[left])->\(nums[right - 1])")
        }

        return result
    }
}
