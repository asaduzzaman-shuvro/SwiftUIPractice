//
//  CategroyHome.swift
//  SwiftUIPractice
//
//  Created by Asaduzzaman Shuvro on 16/7/23.
//

import SwiftUI

struct CategroyHome: View {
    @EnvironmentObject var modelData: ModelData

    var body: some View {
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())

                ForEach(modelData.categories.keys.sorted(), id: \.self) {
                    key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())

            }.navigationTitle("Featured")
        }
    }
}

struct CategroyHome_Preview: PreviewProvider {
    static var previews: some View {
        CategroyHome()
            .environmentObject(ModelData())
    }
}
