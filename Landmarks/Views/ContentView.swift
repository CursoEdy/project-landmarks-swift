//
//  ContentView.swift
//  Landmarks
//
//  Created by ednardo alves on 12/10/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab  {
        case featured
        case list
    }
    
    var body: some View {
//        LandmarkList() //antes
        
        TabView {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("list", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

//private let itemFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .short
//    formatter.timeStyle = .medium
//    return formatter
//}()

#Preview {
    ContentView()
        .environment(ModelData())
}
