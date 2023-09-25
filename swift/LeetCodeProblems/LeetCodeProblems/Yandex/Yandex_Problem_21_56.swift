//
//  Yandex_Problem_21_56.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 25.09.2023.
//

// 56. Merge Intervals
// Medium

// Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.

 
// Example 1:
// Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
// Output: [[1,6],[8,10],[15,18]]
// Explanation: Since intervals [1,3] and [2,6] overlap, merge them into [1,6].

// Example 2:
// Input: intervals = [[1,4],[4,5]]
// Output: [[1,5]]
// Explanation: Intervals [1,4] and [4,5] are considered overlapping.
 

// Constraints:
// 1 <= intervals.length <= 10^4
// intervals[i].length == 2
// 0 <= start_i <= end_i <= 10^4

extension Yandex_Problems {
    // Approach: Array, Pointers, Sorting
    // Time complexity: O(n + log(n)) => 106 ms
    // Space complexity: O(n) => 15.27 MB
    static func problem_56_merge(_ intervals: [[Int]]) -> [[Int]] {
        guard intervals.count > 1 else { return intervals }
        var result = [[Int]]()
        
        var intervals = intervals.sorted(by: { $0[0] < $1[0] })         // O(log n)
        var l = intervals[0][0]
        var r = intervals[0][1]
        
        for i in 1..<intervals.count {                                  // O(n)
            if intervals[i][1] <= r {
                continue
            } else if intervals[i][0] > r {
                result.append([l, r])
                l = intervals[i][0]
                r = intervals[i][1]
            } else {
                r = intervals[i][1]
            }
        }
        
        if result.isEmpty || result[result.count - 1] != [l, r] {
            result.append([l, r])
        }
        
        return result
    }
}
