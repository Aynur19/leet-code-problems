//
//  Yandex_Problem_206.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 20.09.2023.
//

import Foundation

extension Yandex_Problems {
    // Approach: Linked List
    // Time complexity: O(n)
    // Space complexity: O(1)
    static func problem_206_reverseList(_ head: ListNode?) -> ListNode? {
        guard let head = head, head.next != nil else { return head }

        var prev: ListNode? = head
        var current = head.next

        while current != nil {
            let tmp = current?.next
            current?.next = prev

            prev = current
            current = tmp
        }
        head.next = nil

        return prev
    }
}
