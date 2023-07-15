//
//  CategoryIem.swift
//  SwiftUIPractice
//
//  Created by Asaduzzaman Shuvro on 16/7/23.
//

import SwiftUI

struct CategoryIem: View {
    var landmark: Landmark

    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)

            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryIem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryIem(landmark: ModelData().landmarks[0])
    }
}
