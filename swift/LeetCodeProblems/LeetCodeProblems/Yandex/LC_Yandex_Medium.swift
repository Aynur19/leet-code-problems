//
//  LC_Yandex_Medium.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 12.09.2023.
//

import Foundation

final class LC_Yandex_Medium {
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
}
