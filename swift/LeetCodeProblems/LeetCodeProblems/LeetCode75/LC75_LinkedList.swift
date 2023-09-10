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
    
    /// 2  1  3  5  6  4  7
    /// 2  3  5  6  4  7
    /// 1  5  6  4  7
    /// 2  3  1  5  6  4  7
    ///
    /// 2 - current
    /// 1 - tmp
    /// 3 - tmp2
    static func problem_328_oddEvenList(_ head: ListNode?) -> ListNode? {
        guard head != nil && head?.next != nil && head?.next?.next != nil else { return head }
        
        let evenNode: ListNode? = head?.next
        var evenTmpNode: ListNode? = evenNode
        
        var oddNode: ListNode? = evenNode?.next
        head?.next = oddNode
        
        guard oddNode != nil else { return head }
        
        var current = oddNode?.next
        var count = 1
        while current != nil {
            if count % 2 == 0 {
                oddNode?.next = current
                oddNode = oddNode?.next
            } else {
                evenTmpNode?.next = current
                evenTmpNode = evenTmpNode?.next
            }
            
            current = current?.next
            count += 1
        }
        
        oddNode?.next = evenNode
        evenTmpNode?.next = nil
        
        return head
    }
}
