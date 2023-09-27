//
//  HitCounter.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 27.09.2023.
//

public final class HitCounter {
    private let maxInterval = 300
    private var hitTimes = [Int]()
    
    init() { }

    func hit(_ timestamp: Int) {
        hitTimes.append(timestamp)
    }
    
    func getHits(_ timestamp: Int) -> Int {
        guard !hitTimes.isEmpty else { return 0 }
        
        let i = 0
        while i < hitTimes.count {
            if timestamp - 300 <= hitTimes[i] {
                break
            }
        }
        
        let result = hitTimes.count - i
        hitTimes = Array(hitTimes.dropFirst())
        
        return result
    }
}
