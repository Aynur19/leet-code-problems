//
//  Yandex_Problem_18_43.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 24.09.2023.
//

// 43. Multiply Strings
// Medium

// Given two non-negative integers num1 and num2 represented as strings, return the product of num1 and num2, also represented as a string.

// Note: You must not use any built-in BigInteger library or convert the inputs to integer directly.

 
// Example 1:
// Input: num1 = "2", num2 = "3"
// Output: "6"

// Example 2:
// Input: num1 = "123", num2 = "456"
// Output: "56088"
 

// Constraints:
// 1 <= num1.length, num2.length <= 200
// num1 and num2 consist of digits only.
// Both num1 and num2 do not contain any leading zero, except the number 0 itself.

extension Yandex_Problems {
    // Approach: Hash Table, Array
    // Time complexity: O(n1 * n2) => 45 ms
    // Space complexity: O(n1 + n2) => 14.5 MB
    static func problem_43_multiply(_ num1: String, _ num2: String) -> String {
        let dict: [Character:Int] = ["0": 0, "1": 1,
                                     "2": 2, "3": 3,
                                     "4": 4, "5": 5,
                                     "6": 6, "7": 7,
                                     "8": 8, "9": 9]
        
        var shortNum: [Character]
        var longNum: [Character]
        var result = Array<Character>(repeating: "0", count: num1.count + num2.count)
        
        if num1.count >= num2.count {
            longNum = Array(num1.reversed())
            shortNum = Array(num2.reversed())
        } else {
            longNum = Array(num1.reversed())
            shortNum = Array(num2.reversed())
        }
        
        var count = 0
        for i in longNum.indices {
            count = 0
            for j in shortNum.indices {
                if let digit1 = dict[longNum[i]],
                   let digit2 = dict[shortNum[j]],
                   let digit = dict[result[i + j]] {
                    
                    let multiply = digit1 * digit2 + count + digit
                    count = multiply / 10
                    
                    if let digitStr = String(multiply % 10).last {
                        result[i + j] = digitStr
                    }
                }
            }
            
            if count > 0, let digitStr = String(count).last {
                result[i + shortNum.count] = digitStr
            }
        }
        
        if count > 0, let char = String(count).last {
            result[result.count - 1] = char
        } else {
            count = 0
            for i in stride(from: result.count - 1, to: -1, by: -1) {
                if result[i] != "0" { break }
                count += 1
            }
            
            result.removeLast(count)
        }
        
        return !result.isEmpty ? String(result.reversed()) : "0"
    }
}
