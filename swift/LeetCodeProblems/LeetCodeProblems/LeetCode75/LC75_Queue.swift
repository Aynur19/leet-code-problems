//
//  LC75_Queue.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 08.09.2023.
//

import Foundation

public final class LC75_Queue {
    public final class RecentCounter {
        let maxInterval = 3000
        private var pings: [Int]
        
        init() {
            pings = []
        }
        
        func ping(_ t: Int) -> Int {
            pings.append(t)
            let minT = pings[pings.count - 1] - maxInterval
            var i = 0
            
            while i < pings.count {
                if pings[i] >= minT { break }
                i += 1
            }
            
            pings.removeFirst(i)
            
            return pings.count
        }
    }
    
    static func problem_649_predictPartyVictory(_ senate: String) -> String {
        var senate = Array(senate.reversed())
        var currentIdx = senate.count - 1
        
        while !senate.isEmpty {
            if currentIdx < 0 {
                currentIdx = senate.count - 1
            }
            let senator = senate[currentIdx]
            var isFound = false
            let start = (currentIdx > 0 ? currentIdx : senate.count) - 1
            for i in stride(from: start, to: -1, by: -1) {
                if senate[i] != senator {
                    senate.remove(at: i)
                    currentIdx -= 1
                    isFound = true
                    break
                }
            }
            
            if !isFound {
                for i in stride(from: senate.count - 1, to: -1, by: -1) {
                    if senate[i] != senator {
                        senate.remove(at: i)
                        currentIdx -= 1
                        isFound = true
                        break
                    }
                }
            }
            
            if !isFound {
                return senator == "R" ? "Radiant" : "Dire"
            }
            
            currentIdx -= 1
        }
        
        return .init()
    }
}
