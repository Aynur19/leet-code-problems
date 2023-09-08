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
}
