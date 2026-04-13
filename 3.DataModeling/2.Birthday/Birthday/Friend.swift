//
//  Friend.swift
//  Birthday
//
//  Created by jeegarden on 4/11/26.
//
import Foundation
import SwiftData

@Model
class Friend{
    var name:String
    var birthday: Date
    
    init(name: String, birthday: Date){
        self.name = name
        self.birthday = birthday
    }
    
    var isBirthdayToday : Bool{
        Calendar.current.isDateInToday(birthday)
    }
}
