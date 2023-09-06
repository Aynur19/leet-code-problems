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
}
