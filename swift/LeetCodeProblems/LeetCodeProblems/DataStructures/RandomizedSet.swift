//
//  RandomizedSet.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 19.09.2023.
//

import Foundation

public final class RandomizedSet {
    var values: Set<Int>
    
    init() {
        values = Set()
    }
    
    func insert(_ val: Int) -> Bool {
        guard values.firstIndex(of: val) == nil else { return false }

        values.insert(val)
        return true
    }
    
    func remove(_ val: Int) -> Bool {
        guard let idx = values.firstIndex(of: val) else { return false }

        _ = values.remove(at: idx)
        return true
    }
    
    func getRandom() -> Int {
        guard let val = values.randomElement() else { return 0 }
        
        return val
    }
}
