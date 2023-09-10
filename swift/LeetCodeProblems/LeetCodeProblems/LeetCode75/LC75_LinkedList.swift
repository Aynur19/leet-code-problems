//
//  LC75_LinkedList.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 08.09.2023.
//

import Foundation

public final class LC75_LinkedList {
    static func problem_2095_deleteMiddle(_ head: ListNode?) -> ListNode? {
        guard head?.next != nil else { return nil }
        
        var count = 1
        var tmp: ListNode? = head
        
        while tmp?.next != nil {
            count += 1
            tmp = tmp?.next
        }
        
        count = count / 2 - 1
        tmp = head
        while count > 0 {
            tmp = tmp?.next
            count -= 1
        }
        
        if tmp?.next != nil, tmp?.next?.next != nil {
            tmp?.next = tmp?.next?.next
        } else {
            tmp?.next = nil
        }
        
        return head
    }
}
