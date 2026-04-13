//
//  Player.swift
//  ScoreKeeper
//
//  Created by jeegarden on 4/9/26.
//
import Foundation
struct Player: Identifiable{
    let id = UUID()
    
    var name:String
    var score: Int
}

extension Player: Equatable{
    static func == (lhs: Player, rhs: Player) -> Bool{
        lhs.name == rhs.name && lhs.score == rhs.score
    }
}
