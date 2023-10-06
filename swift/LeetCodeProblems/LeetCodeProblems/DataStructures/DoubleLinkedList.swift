//
//  DoubleLinkedList.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 18.09.2023.
//

import Foundation

public class DoubleLinkedList<Key> {
    var key: Key
    
    var prev: DoubleLinkedList?
    var next: DoubleLinkedList?
    
    init(key: Key, prev: DoubleLinkedList? = nil, next: DoubleLinkedList? = nil) {
        self.key = key
        self.prev = prev
        self.next = next
    }
    
    func setNext(_ node: DoubleLinkedList) {
        if let next = self.next {
            node.next = next
            next.prev = node
        }
        
        self.next = node
        node.prev = self
    }
    
    func setPrev(_ node: DoubleLinkedList) {
        if let prev = self.prev {
            node.prev = prev
            prev.next = node
        }
        
        self.prev = node
        node.next = self
    }
    
    func setPrev(_ key: Key) {
        let node = DoubleLinkedList(key: key, prev: prev, next: self)
        
        if let prev = self.prev {
            prev.next = node
        }
        
        prev = node
    }
    
    func remove() {
        prev?.next = next
        next?.prev = prev
        
        prev = nil
        next = nil
    }
    
    func removeNext() -> DoubleLinkedList? {
        if let next = self.next {
            next.prev = nil
            next.next?.prev = self
            self.next = next.next
            next.next = nil
            return next
        }
        
        return nil
    }
    
    func removePrev() -> DoubleLinkedList? {
        if let prev = self.prev {
            prev.next = nil
            prev.prev?.next = self
            self.prev = prev.prev
            prev.prev = nil
            return prev
        }
        
        return nil
    }
    
    func getFirst() -> DoubleLinkedList {
        guard let prev = self.prev else { return self }
        
        return prev.getFirst()
    }
    
    func getLast() -> DoubleLinkedList {
        guard let next = self.next else { return self }
        
        return next.getLast()
    }
}
