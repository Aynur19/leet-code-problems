//
//  Yandex_Problem_63_356.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 27.09.2023.
//

// 356. Line Reflection
// Medium

// Given n points on a 2D plane, find if there is such a line parallel to y-axis that reflect the given points.


// Example 1
// Input: [[1,1],[-1,1]]
// Output: true

// Example2
// Input: [[1,1],[-1,-1]]
// Output: false

// Could you do better than O(n2)?

extension Yandex_Problems {
    static func problem_356_isReflected(_ points: [[Int]]) -> Bool {
        guard !points.isEmpty else { return false }
        guard points.count > 1 else { return true }
       
        var minX = Int.max
        var maxX = Int.min
        var dictPoints = [Double:Int]()
        
        for point in points {
            if minX > point[0] { minX = point[0] }
            if maxX < point[0] { maxX = point[0] }
            
            dictPoints[Double(point[0])] = point[1]
        }
        
        let middleX = Double(minX) + Double(maxX - minX) / 2
        var mirrowX: Double
        
        for point in points {
            let x = Double(point[0])

            if x == middleX {
                continue
            } else if x < middleX {
                mirrowX = middleX + (middleX - x)
            } else {
                mirrowX = middleX - (x - middleX)
            }

            guard let mirrowY = dictPoints[mirrowX],
                  point[1] == mirrowY
            else { return false }
        }
        
        return true
    }
}
