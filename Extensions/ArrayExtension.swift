//
//  ArrayExtension.swift
//  Rhack Chess Engine
//
//  Created by Admin on 10/24/20.
//

import Foundation

extension Array { // MARK:- appending/prepending
    
    /// Create a copy of this array with the specified element appended.
    ///
    /// - parameter newElement: Element to be appended.
    ///
    /// - returns: New `Array`.
    func appending(_ newElement: Element) -> Array {
        var a = Array(self)
        a.append(newElement)
        return a
    }
    
    /// Create a copy of this array with the specified element inserted before the first element.
    ///
    /// - parameter newElement: Element to be inserted at the head of the array.
    ///
    /// - returns: Hew `Array`.
    func prepending(_ newElement: Element) -> Array {
        var a = [newElement]
        a.append(contentsOf: self)
        return a
    }
    
    /// Append multiple copies of an element.
    ///
    /// - parameter repeatingElement: Element to be appended.
    /// - parameter count: Number of times to append the element.
    public mutating func appendRepeating(element: Element, count: Int) {
        for _ in 0..<count {
            append(element)
        }
    }
    
    /// Pseudorandomly select an element of the array.
    ///
    /// - returns: An `Element`, or `nil` if the array is empty.
    func randomPick() -> Element? {
        if count > 0 {
            let index = arc4random_uniform(UInt32(count))
            return self[Int(index)]
        }
        else {
            return nil
        }
    }
    
    /// Shuffle the elements of the array randomly.
    public mutating func shuffle() {
        for i in 0..<(count - 1) {
            let remainingCount = UInt32(count - i)
            let swapIndex = i + Int(arc4random_uniform(remainingCount))
            if swapIndex != i {
                let temp = self[i]
                self[i] = self[swapIndex]
                self[swapIndex] = temp
            }
        }
    }
}
