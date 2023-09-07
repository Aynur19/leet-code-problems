//
//  LC75_Stack.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 07.09.2023.
//

import Foundation

public final class LC75_Stack {
    static func problem_2390_removeStars(_ s: String) -> String {
        var stack = [Character]()
        
        for char in s {
            if char == "*" {
                _ = stack.removeLast()
            } else {
                stack.append(char)
            }
        }
        
        return String(stack)
    }
    
    static func problem_735_asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack = [Int]()
        stack.append(asteroids[0])
        
        var i = 1
        while i < asteroids.count {
            let tmp = asteroids[i]
            if let last = stack.last {
                if tmp > 0 || last < 0 && tmp < 0 {
                    stack.append(asteroids[i])
                } else {
                    let sum = tmp + last
                    if sum <= 0 {
                        _ = stack.removeLast()
                    }
                    
                    if sum < 0 { i -= 1 }
                }
            } else {
                stack.append(asteroids[i])
            }
            
            i += 1
        }
        
        return stack
    }
}
