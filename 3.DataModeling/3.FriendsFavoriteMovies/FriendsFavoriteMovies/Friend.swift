//
//  Friend.swift
//  FriendsFavoriteMovies
//
//  Created by jeegarden on 4/12/26.
//
import Foundation
import SwiftData

@Model
class Friend{
    var name: String
    
    init(name:String){
        self.name = name
    }
    
    static let SampleData = [
        Friend(name: "Elena"),
        Friend(name: "Graham"),
        Friend(name: "Mayuri"),
        Friend(name: "Rich"),
        Friend(name: "Rody"),
    ]
}
