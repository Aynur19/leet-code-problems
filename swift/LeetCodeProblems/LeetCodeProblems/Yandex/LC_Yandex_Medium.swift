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
