//
//  ListNode.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 08.09.2023.
//

import Foundation

public final class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

extension ListNode : CustomDebugStringConvertible {
    public var debugDescription: String {
        var tmp: ListNode? = self
        var description = "["
        
        while tmp != nil {
            if let val = tmp?.val {
                description += "\(String(describing: val)), "
            }
            tmp = tmp?.next
        }
        
        description.removeLast()
        description += "]"
        
        return description
    }
}
