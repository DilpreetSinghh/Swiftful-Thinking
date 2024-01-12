//
//  Mastering_SwiftUIApp.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 12/01/24.
//

import SwiftUI
import SwiftData

@main
struct Mastering_SwiftUIApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
