//
//  simple_jokesApp.swift
//  simple-jokes
//
//  Created by Rakha Fatih Athallah on 23/07/22.
//

import SwiftUI

@main
struct simple_jokesApp: App {
    let jokes = JokesManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(jokes)
        }
    }
}
