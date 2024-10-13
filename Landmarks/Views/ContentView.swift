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
        VStack{
            
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack  (alignment: .leading){
                Text("Tutle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title)
                Text("Descriptive text goes here")
            }
            .padding()
            Spacer()
        }
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
