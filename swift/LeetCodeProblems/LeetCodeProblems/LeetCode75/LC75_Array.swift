//
//  LC75_Array.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 04.09.2023.
//

import Foundation

public final class LC75_Array {
    public static func problem_443_compress(_ chars: inout [Character]) -> Int {
        let n = chars.count
        chars.append(chars[0])
        var count = 1
        
        for idx in 1..<n {
            if chars[idx] == chars.last {
                count += 1
            } else {
                if count > 1 {
                    chars.append(contentsOf: Array(String(count)))
                }
                
                chars.append(chars[idx])
                count = 1
            }
        }
        
        if count > 1 {
            chars.append(contentsOf: Array(String(count)))
        }
        
        chars.removeFirst(n)
        return chars.count
    }
    
    public static func problem_334_increasingTriplet(_ nums: [Int]) -> Bool {
        var left = Int.max
        var middle = Int.max
        
        for idx in nums.indices {
            if nums[idx] > middle {
                return true
            } else if nums[idx] > left, nums[idx] <= middle {
                middle = nums[idx]
            } else if nums[idx] <= left {
                left = nums[idx]
            }
        }
        
        return false
    }
    
    public static func problem_238_productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = Array<Int>(repeating: 1, count: nums.count)
        var tmp = 1
        let n = nums.count
        
        for idx in 1..<nums.count {
            tmp = tmp * nums[idx - 1]
            result[idx] = tmp
        }
        
        tmp = 1
        for idx in stride(from: n - 2, to: -1, by: -1) {
            tmp = tmp * nums[idx + 1]
            result[idx] = result[idx] * tmp
        }
        
        return result
    }
    
    public static func problem_151_reverseWords(_ s: String) -> String {
        return s
            .split(separator: " ", omittingEmptySubsequences: true)
            .reversed()
            .joined(separator: " ")
    }
    
    public static func problem_345_reverseVowels(_ s: String) -> String {
        let vowels: [Character] = ["A", "a", "E", "e", "I", "i", "O", "o", "U", "u"]
        var strVowels = [Character]()
        var strVowelsIdx = [Int]()
        var chars = Array(s)
        
        for idx in chars.indices {
            if vowels.contains(chars[idx]) {
                strVowels.append(chars[idx])
                strVowelsIdx.append(idx)
            }
        }
        
        let lastIdx = strVowelsIdx.count - 1
        for idx in strVowelsIdx.indices {
            chars[strVowelsIdx[idx]] = strVowels[lastIdx - idx]
        }
        
        return String(chars)
    }
    
    public static func problem_605_canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var flowerbed = flowerbed
        var count = 0
        
        if flowerbed[0] == 0 {
            flowerbed[0] = 2
            count += 1
        }
        
        for idx in 1..<flowerbed.count {
            if flowerbed[idx] == 1 {
                if flowerbed[idx - 1] == 2 {
                    flowerbed[idx - 1] = 0
                    count -= 1
                }
            } else {
                if flowerbed[idx - 1] == 0 {
                    flowerbed[idx] = 2
                    count += 1
                }
            }
        }
        
        return count >= n
    }
    
    public static func problem_1431_kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var maxCandie = 0
        for candie in candies {
            if maxCandie < candie {
                maxCandie = candie
            }
        }
        
        var result = Array<Bool>(repeating: false, count: candies.count)
        for idx in candies.indices {
            if candies[idx] + extraCandies >= maxCandie {
                result[idx] = true
            }
        }
        
        return result
    }
    
    public static func problem_1071_gcdOfStrings(_ str1: String, _ str2: String) -> String {
        var size = min(str1.count, str2.count)
        var str: String = .init()
        var checkStr: String = .init()
        
        while size > 0 {
            if str1.count % size == 0, str2.count % size == 0 {
                str = str1.prefix(size).description
                
                checkStr = String(str1)
                while !checkStr.isEmpty {
                    if !checkStr.hasPrefix(str) { break }
                    checkStr.removeFirst(size)
                }
                
                if checkStr.isEmpty {
                    checkStr = String(str2)
                    while !checkStr.isEmpty {
                        if !checkStr.hasPrefix(str) { break }
                        checkStr.removeFirst(size)
                    }
                    
                    if checkStr.isEmpty { break }
                }
            }
            
            size -= 1
        }
        
        return size > 0 ? str : .init()
    }
    
    public static func problem_1768_mergeAlternately(_ word1: String, _ word2: String) -> String {
        let chars1 = Array(word1)
        let chars2 = Array(word2)
        var result = [Character]()
        
        var minCount = min(chars1.count, chars2.count)
        for idx in 0..<minCount {
            result.append(chars1[idx])
            result.append(chars2[idx])
        }
        
        while chars1.count > minCount {
            result.append(chars1[minCount])
            minCount += 1
        }
        
        while chars2.count > minCount {
            result.append(chars2[minCount])
            minCount += 1
        }
        
        return String(result)
    }
}
