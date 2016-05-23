//
//  Stack.swift
//  SwiftDataStructures
//
//  Created by Tim Harris on 5/21/16.
//  Copyright © 2016 Tim Harris. All rights reserved.
//

import Foundation

public class Stack<Element where Element : Comparable> {
    var bottom: Node<Element>? = nil
    var top: Node<Element>? = nil
    var isEmpty: Bool = true
    var size: Int = 0
    
    init(){}
    init(newNode: Node<Element>?){
        top = newNode
        bottom = top
        isEmpty = false
        size += 1
    }
    
    func push(newNode: Node<Element>) -> Void {
        if top != nil {
            top?.nextNode = newNode
            top = newNode
        } else{
            top = newNode
            bottom = top
        }
        size += 1
    }
    
    func pop() -> Node<Element>?{
        if top != nil {
            var current = bottom
            while current?.nextNode != top {
                current = current?.nextNode
            }
            let toRemove = top
            top = current
            current?.nextNode = nil
            size -= 1
            return toRemove
        }
        return nil
    }
    
    func peek() ->Node<Element>? {
        if size > 1 {
            var current = bottom
            while current?.nextNode != top {
                current = current?.nextNode
            }
            let toReturn = current
            return toReturn
        }
        return nil
    }
}