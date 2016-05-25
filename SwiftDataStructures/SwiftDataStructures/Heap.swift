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
    var heapsize: Int = 0
    
    init(newHeapType: HeapType) {
        heapType = newHeapType
    }
    
    func pop() -> Element? {
        let toReturn = keys[0]
        
        return toReturn
    }
    
    func push(newKey: Element?) {
        if heapType == .maxHeap {
            
        } else {
            
        }
    }
    func peek() -> Element? {
        if heapType == .maxHeap {
            
        } else {
            
        }
        return nil
    }
    
    
    func maxHeapify(Index:Int) -> Void {
        
    }
    
    func minHeapify(Index: Int) -> Void {
        
    }
    
    func sort() {
        
    }
    
}

func parent(index: Int) -> Int {
    return index / 2
}

func left(index: Int) -> Int {
    return 2 * index
}

func right(index: Int) -> Int {
    return 2 * index + 1;
}

