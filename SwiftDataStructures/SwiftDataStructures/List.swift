//
//  List.swift
//  SwiftDataStructures
//
//  Created by Tim Harris on 5/16/16.
//  Copyright © 2016 Tim Harris. All rights reserved.
//

import Foundation

public class List<Element where Element : Comparable> {
    var head: Node<Element>? = nil
    var tail: Node<Element>? = nil
    var size: Int = 0
    var isEmpty: Bool = true
    
    init(newHead: Node<Element>) {
        head = newHead
        tail = head
        size = 1
        isEmpty = false
    }
    
    init(){ }
    
    func insertAtTail(newNode: Node<Element>) {
        if head == nil {
            head = newNode
            tail = newNode
        } else {
            tail!.next = newNode
            tail = newNode
        }
        size = size + 1
    }
    
    func insertAtHead(newNode: Node<Element>) {
        if head == nil {
            head = newNode
            tail = newNode
        } else {
            newNode.next = head
            head = newNode
        }
        size = size + 1
    }
    
    func insertBefore(newNode: Node<Element>, beforeThisNode: Node<Element>) {
        
    }
    
    func insertAfter(newNode: Node<Element>, afterTheisNode: Node<Element>) {
        
    }
    
    func removeAtTail() -> Node<Element>? {
        if head != nil {
            let toRemove = tail!
            var current = head
            while current != nil {
                if current?.next == tail {
                    current?.next = nil
                    tail = current
                    size = size - 1
                    return toRemove
                }
            }
        }
        return nil
        
    }
    
    func removeAtHead() -> Node<Element>? {
        if head != nil {
            let toRemove = head
            head = head?.next
            size = size - 1
            return toRemove
        }
        return nil
    }
    
    func removeBefore(beforeThisNode: Node<Element>) -> Node<Element>? {
        return nil
    }
    
    func removeAfter(afterThisNode: Node<Element>) -> Node<Element>? {
        return nil
    }
    
    func findNode(searchFor: Node<Element>) -> Node<Element>? {
        
        return nil
    }

    func findNodeByIndex(searchIndex: Element) -> Node<Element>? {
        return nil
    }
}

/*
extension List : SequenceType {
    
}
 */