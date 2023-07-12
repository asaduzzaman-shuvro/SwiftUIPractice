//
//  FavourteButton.swift
//  SwiftUIPractice
//
//  Created by Asaduzzaman Shuvro on 12/7/23.
//

import SwiftUI

struct FavouriteButton: View {
    @Binding var isSet: Bool

    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favourite", systemImage: isSet ? "star.fill" : "star")
        }

    }
}


struct FavouriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteButton(isSet: .constant(false))
    }
}
