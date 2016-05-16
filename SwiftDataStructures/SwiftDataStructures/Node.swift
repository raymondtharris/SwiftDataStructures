//
//  Node.swift
//  SwiftDataStructures
//
//  Created by Tim Harris on 5/15/16.
//  Copyright © 2016 Tim Harris. All rights reserved.
//

import Foundation

public class Node<Element> {
    var index:Element? = nil
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

extension Node where Element : Comparable {
    
}