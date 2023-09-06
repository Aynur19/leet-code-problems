//
//  LC75_HashMap&Set.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 06.09.2023.
//

import Foundation

public final class LC75_HashMap_Set {
    static func problem_2215_findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        let set1 = Set<Int>(nums1)
        let set2 = Set<Int>(nums2)
        
        var answers1 = [Int]()
        var answers2 = [Int]()
        
        for num in set1 where !set2.contains(num) {
            answers1.append(num)
        }
        
        for num in set2 where !set1.contains(num) {
            answers2.append(num)
        }
        
        return [answers1, answers2]
    }
    
    static func problem_1207_uniqueOccurrences(_ arr: [Int]) -> Bool {
        var dict = [Int:Int]()
        
        for i in arr.indices {
            if let count = dict[arr[i]] {
                dict[arr[i]] = count + 1
            } else {
                dict[arr[i]] = 1
            }
        }
        
        return dict.count == Set(dict.values).count
    }
}
