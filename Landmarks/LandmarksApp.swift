//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by ednardo alves on 12/10/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
