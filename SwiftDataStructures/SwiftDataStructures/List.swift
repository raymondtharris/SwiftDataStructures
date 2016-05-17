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
        
    }
    
    func insertAtHead(newNode: Node<Element>) {
        
    }
    
    func insertBefore(newNode: Node<Element>, beforeThisNode: Node<Element>) {
        
    }
    
    func insertAfter(newNode: Node<Element>, afterTheisNode: Node<Element>) {
        
    }
}
