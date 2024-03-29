//
//  CategroyHome.swift
//  SwiftUIPractice
//
//  Created by Asaduzzaman Shuvro on 16/7/23.
//

import SwiftUI

struct CategroyHome: View {
    @EnvironmentObject var modelData: ModelData

    @State private var showingProfile = false

    var body: some View {
        NavigationView {
            List {
                PageView(pages: modelData.features.map {
                    FeatureCard(landmark: $0)
                })
                .aspectRatio(3 / 2, contentMode: .fit)
                .listRowInsets(EdgeInsets())

                ForEach(modelData.categories.keys.sorted(), id: \.self) {
                    key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())

            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environmentObject(modelData)
            }
        }
    }
}

struct CategroyHome_Preview: PreviewProvider {
    static var previews: some View {
        CategroyHome()
            .environmentObject(ModelData())
    }
}
