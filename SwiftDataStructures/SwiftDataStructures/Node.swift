//
//  Node.swift
//  SwiftDataStructures
//
//  Created by Tim Harris on 5/15/16.
//  Copyright © 2016 Tim Harris. All rights reserved.
//

import Foundation

public class Node<Element where Element : Comparable> {
    var index:Element
    var next: Node<Element>? = nil
    
    init(newIndex: Element) {
        self.index = newIndex
        self.next = nil
    }
    
    init(newIndex: Element, newNext: Node<Element>) {
        self.index = newIndex
        self.next = newNext
    }
    
    
    
}


extension Node : Equatable { }

public func == <Element where Element : Equatable> (lhs: Node<Element>, rhs: Node<Element>) -> Bool {
    return lhs.index == rhs.index && lhs.next! == rhs.next!
}
    
extension Node : Comparable { }

public func < <Element where Element : Comparable> (lhs: Node<Element>, rhs: Node<Element>) -> Bool {
    return lhs.index < rhs.index
}
