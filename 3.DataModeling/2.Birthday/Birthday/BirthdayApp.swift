//
//  BirthdayApp.swift
//  Birthday
//
//  Created by jeegarden on 4/11/26.
//

import SwiftUI
import SwiftData

@main
struct BirthdayApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for:  Friend.self)
        }
    }
}
