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
    var current: Node<Element>? = nil
    
    
    init(newHead: Node<Element>) {
        head = newHead
        tail = head
        size = 1
        isEmpty = false
        current = head
    }
    
    init(){ }
    
    func insertAtTail(newNode: Node<Element>) {
        if head == nil {
            head = newNode
            tail = newNode
        } else {
            tail!.nextNode = newNode
            tail = newNode
        }
        size = size + 1
    }
    
    func insertAtHead(newNode: Node<Element>) {
        if head == nil {
            head = newNode
            tail = newNode
        } else {
            newNode.nextNode = head
            head = newNode
        }
        size = size + 1
    }
    
    func insertBefore(newNode: Node<Element>, beforeThisNode: Node<Element>) {
        var current = head
        while current?.nextNode != beforeThisNode  {
            current = current?.nextNode
        }
        newNode.nextNode = beforeThisNode
        current?.nextNode = newNode
        size = size + 1
    }
    
    func insertAfter(newNode: Node<Element>, afterTheisNode: Node<Element>) {
        if afterTheisNode.nextNode != nil {
            newNode.nextNode = afterTheisNode.nextNode
        }
        afterTheisNode.nextNode = newNode
        size = size + 1
    }
    
    func removeAtTail() -> Node<Element>? {
        if head != nil {
            let toRemove = tail!
            var current = head
            while current != nil {
                if current?.nextNode == tail {
                    current?.nextNode = nil
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
            head = head?.nextNode
            size = size - 1
            return toRemove
        }
        return nil
    }
    
    func removeBefore(beforeThisNode: Node<Element>) -> Node<Element>? {
        var current = head
        while current != beforeThisNode {
            if current?.nextNode?.nextNode == beforeThisNode {
                let toRemove = current?.nextNode
                current?.nextNode = beforeThisNode
                return toRemove
            }
            current = current?.nextNode
        }
        return nil
    }
    
    func removeAfter(afterThisNode: Node<Element>) -> Node<Element>? {
        if afterThisNode.nextNode != nil {
            let toRemove = afterThisNode.nextNode
            if afterThisNode.nextNode?.nextNode != nil {
                afterThisNode.nextNode = afterThisNode.nextNode?.nextNode
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





extension List : SequenceType {
    public func generate() -> AnyGenerator<Element> {
        return AnyGenerator(body: {
            if self.current?.next() == nil {
                return nil
            }
            return self.current?.next()?.index
        })
    }
    
}
 