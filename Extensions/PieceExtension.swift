//
//  PieceExtension.swift
//  Rhack Chess Engine
//
//  Created by Admin on 10/24/20.
//

import Foundation

/// Extension to Piece for evaluating positions.
extension Piece {
    /// Return the material value of the piece.
    ///
    /// This evaluation uses values suggested by Tomasz Michniewski
    /// for a basic evaluation function.
    ///
    /// See <https://chessprogramming.wikispaces.com/Simplified+evaluation+function>
    /// for more details.
    public var materialValue: Double {
        switch kind {
            case .pawn:   return 1.0
            case .knight: return 3.2
            case .bishop: return 3.3
            case .rook:   return 5.0
            case .queen:  return 9.0
            case .king:   return 20000.0
        }
    }
    
    /// Return FEN representation of the piece.
    public var fen: String {
        switch (player, kind) {
            case (.white, .pawn):   return "P"
            case (.white, .knight): return "N"
            case (.white, .bishop): return "B"
            case (.white, .rook):   return "R"
            case (.white, .queen):  return "Q"
            case (.white, .king):   return "K"
            case (.black, .pawn):   return "p"
            case (.black, .knight): return "n"
            case (.black, .bishop): return "b"
            case (.black, .rook):   return "r"
            case (.black, .queen):  return "q"
            case (.black, .king):   return "k"
        }
    }
}
