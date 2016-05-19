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
        var current = head
        while current?.next != beforeThisNode  {
            current = current?.next
        }
        newNode.next = beforeThisNode
        current?.next = newNode
        size = size + 1
    }
    
    func insertAfter(newNode: Node<Element>, afterTheisNode: Node<Element>) {
        if afterTheisNode.next != nil {
            newNode.next = afterTheisNode.next
        }
        afterTheisNode.next = newNode
        size = size + 1
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
        var current = head
        while current != beforeThisNode {
            if current?.next?.next == beforeThisNode {
                let toRemove = current?.next
                current?.next = beforeThisNode
                return toRemove
            }
            current = current?.next
        }
        return nil
    }
    
    func removeAfter(afterThisNode: Node<Element>) -> Node<Element>? {
        if afterThisNode.next != nil {
            let toRemove = afterThisNode.next
            if afterThisNode.next?.next != nil {
                afterThisNode.next = afterThisNode.next?.next
            }
            return toRemove
        }
        return nil
    }
    
    func findNode(searchFor: Node<Element>) -> Node<Element>? {
        var current = head
        while current != nil {
            if current == searchFor {
                return current
            }
        }
        return nil
    }

    func findNodeByIndex(searchIndex: Element) -> Node<Element>? {
        var current  = head
        while current != nil {
            if current?.index == searchIndex {
                return current
            }
        }
        return nil
    }
}

/*
extension List : SequenceType {
    
}
 */