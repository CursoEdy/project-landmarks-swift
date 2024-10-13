//
//  ContentView.swift
//  Landmarks
//
//  Created by ednardo alves on 12/10/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        LandmarkList()
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
