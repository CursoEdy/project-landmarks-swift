//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by ednardo alves on 12/10/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    Group {
        let landmarks = ModelData().landmarks
        return Group {
            LandmarkDetail(landmark: landmarks[0])
            LandmarkDetail(landmark: landmarks[1])
        }
    }
    
}
