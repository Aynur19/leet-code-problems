//
//  LRUCache.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 18.09.2023.
//

import Foundation

class LRUCache {
    private var capacity: Int
    private var values = [Int:Int]()
    private var nodes = [Int:DoubleLinkedList<Int>]()
    
    private var head: DoubleLinkedList<Int>?
//    private var last: DoubleLinkedList<Int>?
    
    init(_ capacity: Int) {
        self.capacity = capacity
    }
    
    func get(_ key: Int) -> Int {
        guard let val = values[key] else { return -1 }
        
        if head?.key != nodes[key]?.key {
            nodes[key]?.remove()
            head?.setPrev(key)
            nodes[key] = head?.prev
        }
        
        
        head = head?.getFirst()
        return val
    }
    
    func put(_ key: Int, _ value: Int) {
        if let _ = values[key] {
            if let tmp = nodes[key] {
                values[key] = value
                if head?.key == tmp.key { return }
                tmp.remove()
            }
        } else {
            if values.count >= capacity {
                if let last = head?.getLast() {
                    values[last.key] = nil
                    nodes[last.key] = nil
                    last.remove()
                 
                    if capacity == 1 {
                        head = nil
                    }
                }
            }
        }
        
        values[key] = value
        
        guard let head = head else {
            head = DoubleLinkedList(key: key)
            nodes[key] = head
            return
        }
        
        head.setPrev(DoubleLinkedList(key: key))
        nodes[key] = head.prev
        
        self.head = head.getFirst()
    }
}
