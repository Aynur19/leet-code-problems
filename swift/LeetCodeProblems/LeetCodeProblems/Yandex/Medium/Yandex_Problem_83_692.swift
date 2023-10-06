//
//  Yandex_Problem_83_692.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 27.09.2023.
//

// 692. Top K Frequent Words
// Medium

// Given an array of strings words and an integer k, return the k most frequent strings.

// Return the answer sorted by the frequency from highest to lowest. Sort the words with the same frequency by their lexicographical order.

 
// Example 1:
// Input: words = ["i","love","leetcode","i","love","coding"], k = 2
// Output: ["i","love"]
// Explanation: "i" and "love" are the two most frequent words.
// Note that "i" comes before "love" due to a lower alphabetical order.

// Example 2:
// Input: words = ["the","day","is","sunny","the","the","the","sunny","is","is"], k = 4
// Output: ["the","is","sunny","day"]
// Explanation: "the", "is", "sunny" and "day" are the four most frequent words, with the number of occurrence being 4, 3, 2 and 1 respectively.
 

// Constraints:
// 1 <= words.length <= 500
// 1 <= words[i].length <= 10
// words[i] consists of lowercase English letters.
// k is in the range [1, The number of unique words[i]]
 
// Follow-up: Could you solve it in O(n log(k)) time and O(n) extra space?

extension Yandex_Problems {
    
    static func problem_692_topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var wordCounts = [String:Int]()
        for word in words {                                                                         // O(n)
            wordCounts[word, default: 0] += 1
        }

        var countWords = [Int:[String]]()
        for (word, count) in wordCounts {                                                           // O(n)
            countWords[count, default: []].append(word)
        }

        let sortedCountWords = countWords
            .sorted(by: { $0.key > $1.key })                                                        // O(n * log(k))    n > k
            .flatMap({                                                                              // O(k)
            $0.value.sorted(by: { str1, str2 in                                                     // O(m * log(m))    but m [1..10] - const
                str1.lexicographicallyPrecedes(str2)
            })
        })
        
        return k >= sortedCountWords.count ? sortedCountWords : Array(sortedCountWords[0..<k])
    }
}
