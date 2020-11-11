//
//  Player.swift
//  Rhack Chess Engine
//
//  Created by Admin on 10/24/20.
//

/// Which player, white or black?
public enum Player {
    case white
    case black
    
    public var symbol: String {
        switch self {
            case .white: return "W"
            case .black: return "B"
        }
    }
    
    public var opponent: Player {
        switch self {
            case .white: return .black
            case .black: return .white
        }
    }
}

// MARK:= CustomStringConvertible

extension Player: CustomStringConvertible {
    public var description: String {
        switch self {
            case .white: return "white"
            case .black: return "black"
        }
    }
}

