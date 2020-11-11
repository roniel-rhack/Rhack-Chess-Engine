//
//  StringExtension.swift
//  Rhack Chess Engine
//
//  Created by Admin on 10/24/20.
//

import Foundation

extension String {
    /// Returns substring starting from given numeric index to the end of the string.
    public func substring(fromOffset n: Int) -> String {
        return self.substring(from: self.index(self.startIndex,
                                               offsetBy: n))
    }
    
    /// Split a `String` into whitespace-separated tokens.
    ///
    /// Arbitrary whitespace between tokens is allowed.
    /// All whitespace will be removed.
    public func whitespaceSeparatedTokens() -> [String] {
        return components(separatedBy: .whitespaces).filter { !$0.isEmpty }
    }
    
    /// Get the character at the specified numeric offset.
    ///
    /// - parameter offset: Numeric offset from start index.
    ///
    /// - returns: `Character`
    func at(offset: Int) -> Character {
        return self[index(startIndex, offsetBy: offset)]
    }
}
