////
////  NestedInteger.swift
////  LeetCodeProblems
////
////  Created by Aynur Nasybullin on 20.10.2023.
////
//
//// 341. Flatten Nested List Iterator
//// Medium
//// URL: https://leetcode.com/problems/flatten-nested-list-iterator/description/?envType=daily-question&envId=2023-10-20
//// Topics: Stack, Tree, Depth-First Search, Design, Queue, Iterator
//
//// You are given a nested list of integers nestedList. Each element is either an integer or a list whose elements may also be integers or other lists. Implement an iterator to flatten it.
//
//// Implement the NestedIterator class:
//// - NestedIterator(List<NestedInteger> nestedList) Initializes the iterator with the nested list nestedList.
//// - int next() Returns the next integer in the nested list.
//// - boolean hasNext() Returns true if there are still some integers in the nested list and false otherwise.
//
//// Your code will be tested with the following pseudocode:
////
//// initialize iterator with nestedList
//// res = []
//// while iterator.hasNext()
////     append iterator.next() to the end of res
//// return res
//
//// If res matches the expected flattened list, then your code will be judged as correct.
//
// 
//// Example 1:
//// Input: nestedList = [[1,1],2,[1,1]]
//// Output: [1,1,2,1,1]
//// Explanation: By calling next repeatedly until hasNext returns false, the order of elements returned by next should be: [1,1,2,1,1].
//
//// Example 2:
//// Input: nestedList = [1,[4,[6]]]
//// Output: [1,4,6]
//// Explanation: By calling next repeatedly until hasNext returns false, the order of elements returned by next should be: [1,4,6].
// 
//
//// Constraints:
//// 1 <= nestedList.length <= 500
//// The values of the integers in the nested list is in the range [-10^6, 10^6].
//
//class NestedInteger {
//    struct ListPosition {
//        let list: [NestedInteger]
//        var nextPos: Int
//    }
//    
//    var positions: [ListPosition]
//    
//    private var currentIsFilled = false
//    private var current = 0
//    
//    init(_ nestedList: [NestedInteger]) {
//        self.positions = [ListPosition(list: nestedList, nextPos: 0)]
//    }
//    
//    func next() -> Int {
//        if hasNext() {
//            currentIsFilled = false
//            return current
//        }
//        
//        return 0
//    }
//    
//    func hasNext() -> Bool {
//        fillCurrent()
//        return currentIsFilled
//    }
//    
//    private func fillCurrent() {
//        if currentIsFilled { return }
//        
//        while true {
//            if positions.isEmpty { return }
//            
//            if let list = positions.last?.getList,
//               let nextPos = positions.last?.nextPos {
//                if nextPos >= positions.count {
//                    _ = positions.removeLast()
//                    continue
//                }
//                
//                
//            }
//        }
//    }
//}
//
////extension NestedInteger {
////    // Return true if this NestedInteger holds a single integer, rather than a nested list.
////    public func isInteger() -> Bool {
////        return value != nil
////    }
////
////    // Return the single integer that this NestedInteger holds, if it holds a single integer
////    // The result is undefined if this NestedInteger holds a nested list
////    public func getInteger() -> Int {
////        return value ?? 0
////    }
////
////    // Set this NestedInteger to hold a single integer.
////    public func setInteger(value: Int) {
////
////    }
////
////    // Set this NestedInteger to hold a nested list and adds a nested integer to it.
////    public func add(elem: NestedInteger) {
////
////    }
////
////    // Return the nested list that this NestedInteger holds, if it holds a nested list
////    // The result is undefined if this NestedInteger holds a single integer
////    public func getList() -> [NestedInteger] {
////
////    }
////}
