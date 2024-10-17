//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by ednardo alves on 13/10/24.
//

import SwiftUI

struct FavoriteButton: View {
    
    //indica o estado atual do botao
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label : {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
