//
//  Problem_4.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 08.10.2023.
//

// 4. Median of Two Sorted Arrays
// Hard

// Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

// The overall run time complexity should be O(log (m+n)).

 
// Example 1:
// Input: nums1 = [1,3], nums2 = [2]
// Output: 2.00000
// Explanation: merged array = [1,2,3] and median is 2.

// Example 2:
// Input: nums1 = [1,2], nums2 = [3,4]
// Output: 2.50000
// Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
 

// Constraints:
// nums1.length == m
// nums2.length == n
// 0 <= m <= 1000
// 0 <= n <= 1000
// 1 <= m + n <= 2000
// -10^6 <= nums1[i], nums2[i] <= 10^6

import Foundation

extension LeetCodeProblems {
    // Approach: Hash Table
    // Time complexity: O(log (n + m)) => 66 ms
    // Space complexity: O(1) => 14.26 MB
    static func problem_4_findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let shortNums = nums1.count > nums2.count ? nums2 : nums1
        let longNums = nums1.count > nums2.count ? nums1 : nums2
        
        let n = shortNums.count + longNums.count
        let nIsEven = n % 2 == 0
        let half = n / 2
        
        var l = 0, r = shortNums.count - 1
        while true {
            let i = Int(floor(Double(l + r) / 2))
            let j = half - i - 2
            
            let shortL = i >= 0 ? Double(shortNums[i]) : -Double.infinity
            let shortR = i + 1 < shortNums.count ? Double(shortNums[i + 1]) : Double.infinity
            
            let longL = j >= 0 ? Double(longNums[j]) : -Double.infinity
            let longR = j + 1 < longNums.count ? Double(longNums[j + 1]) : Double.infinity
            
            if shortL <= longR, longL <= shortR {
                if !nIsEven { return min(shortR, longR) }
                
                return (max(shortL, longL) + min(shortR, longR)) / 2
            } else if shortL > longR {
                r = i - 1
            } else {
                l = l + 1
            }
        }
    }
}
