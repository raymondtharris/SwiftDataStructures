//
//  Heap.swift
//  SwiftDataStructures
//
//  Created by Tim Harris on 5/23/16.
//  Copyright © 2016 Tim Harris. All rights reserved.
//

import Foundation

enum HeapType {
    case minHeap, maxHeap
}

class Heap<Element where Element : Comparable> {
    var heapType: HeapType
    var keys: [Element] = [Element]()
    
    init(newHeapType: HeapType) {
        heapType = newHeapType
    }
    
    func pop() -> Element? {
        return nil
    }
    
    func push(newKey: Element?) {
        
    }
    func peek() -> Element? {
        return nil
    }
}