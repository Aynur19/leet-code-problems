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
}
