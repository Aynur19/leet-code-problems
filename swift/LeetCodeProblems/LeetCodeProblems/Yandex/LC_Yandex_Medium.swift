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
    
    
    static func problem_443_compress(_ chars: inout [Character]) -> Int {
        guard chars.count > 1 else { return 1 }

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

    static private func compress(_ chars: inout [Character], _ count: Int, _ char: Character, _ charIdx: inout Int) {
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
}
