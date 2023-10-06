//
//  Yandex_Problem_61_347.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 27.09.2023.
//

// 347. Top K Frequent Elements
// Medium

// Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.

 
// Example 1:
// Input: nums = [1,1,1,2,2,3], k = 2
// Output: [1,2]

// Example 2:
// Input: nums = [1], k = 1
// Output: [1]
 

// Constraints:
// 1 <= nums.length <= 10^5
// -10^4 <= nums[i] <= 10^4
// k is in the range [1, the number of unique elements in the array].
// It is guaranteed that the answer is unique.
 
// Follow up: Your algorithm's time complexity must be better than O(n log n), where n is the array's size.

extension Yandex_Problems {
    // Approach: Hash Table, Array, Sorting
    // Time complexity: O(n) => 66 ms
    // Space complexity: O(n) => 15.84 MB
    static func problem_347_topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var numCounts = [Int:Int]()
        for num in nums {
            numCounts[num, default: 0] += 1
        }

        var countNums = [Int:[Int]]()
        for (num, count) in numCounts {
            countNums[count, default: []].append(num)
        }

        let sortedCountNums = countNums.sorted(by: { $0.key > $1.key })
        var result = [Int]()
        
        for tuple in sortedCountNums {
            let needCount = k - result.count
            if needCount <= 0 { break }
            
            if needCount > tuple.value.count {
                result.append(contentsOf: tuple.value)
            } else {
                result.append(contentsOf: Array(tuple.value[0..<needCount]))
                break
            }
        }
        
        return result
    }
}
