//
//  CategoryHome.swift
//  Landmarks
//
//  Created by ednardo alves on 16/10/24.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView {
            List{
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) {
                    key in
//                    Text(key) // antes
                    CategoryRow(categoryName: key, items:  modelData.categories[key]!) //depois
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured Landmarks")
        } detail: {
            Text("Selected a landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
